<?php
/**
* @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\View\Flexbanners;

\defined('_JEXEC') or die;

use Exception;
use Joomla\CMS\Factory;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Pagination\Pagination;
use Joomla\CMS\Toolbar\Toolbar;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Inch\Component\Flexbanners\Administrator\Model\FlexbannersModel;
use Joomla\Registry\Registry;

class HtmlView extends BaseHtmlView
{
	public $filterForm;
	public $activeFilters = [];
	protected $categories = [];
	protected $clients = [];
	protected $locations = [];
	protected $items = [];
	protected $pagination;
	protected $state;
	private $isEmptyState = false;

	/**
	 * Display the view
	 */
	public function display($tpl = null): void
	{
		$model              	= $this->getModel();
		$this->categories		= $model->getCategoryOrders();
		$this->clients			= $model->getClientOrders();
		$this->locations		= $model->getLocationOrders();
		$this->items			= $model->getItems();
		$this->pagination		= $model->getPagination();
		$this->state			= $model->getState();
		$this->filterForm    	= $model->getFilterForm();
		$this->activeFilters 	= $model->getActiveFilters();
		
		if (is_countable($this->items) && count($this->items) > 0) :
		if (!\count($this->items) && $this->isEmptyState = $this->get('IsEmptyState'))
		{
			$this->setLayout('emptystate');
		}
		endif;
		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new GenericDataException(implode("\n", $errors), 500);
		}

		$this->addToolbar();

		// We do not need to filter by language when multilingual is disabled
		if (!Multilanguage::isEnabled())
		{
			unset($this->activeFilters['language']);
			$this->filterForm->removeField('language', 'filter');
		}

		parent::display($tpl);
	}

	protected function addToolbar(): void
	{
		$canDo = ContentHelper::getActions('com_flexbanners', 'category', $this->state->get('filter.category_id'));
		$user  = Factory::getApplication()->getIdentity();

		// Get the toolbar object instance
		$toolbar = Toolbar::getInstance('toolbar');
		
		ToolBarHelper::title(Text::_('ADMIN_FLEXBANNER_BANNERMANAGER'), 'bookmark flexbanners');

		if ($canDo->get('core.create') || count($user->getAuthorisedCategories('com_flexbanners', 'core.create')) > 0)
		{
			$toolbar->addNew('flexbanner.add');
		}

		if (!$this->isEmptyState && ($canDo->get('core.edit.state') || ($this->state->get('filter.published') == -2 && $canDo->get('core.delete'))))
		{
			$dropdown = $toolbar->dropdownButton('status-group')
				->text('JTOOLBAR_CHANGE_STATUS')
				->toggleSplit(false)
				->icon('icon-ellipsis-h')
				->buttonClass('btn btn-action')
				->listCheck(true);

			$childBar = $dropdown->getChildToolbar();

			if ($canDo->get('core.edit.state'))
			{
				if ($this->state->get('filter.published') != 2)
				{
					$childBar->publish('flexbanners.publish')->listCheck(true);

					$childBar->unpublish('flexbanners.unpublish')->listCheck(true);
				}

				if ($this->state->get('filter.published') != -1)
				{
					if ($this->state->get('filter.published') != 2)
					{
						$childBar->archive('flexbanners.archive')->listCheck(true);
					}
					elseif ($this->state->get('filter.published') == 2)
					{
						$childBar->publish('publish')->task('flexbanners.publish')->listCheck(true);
					}
				}

				$childBar->checkin('flexbanners.checkin')->listCheck(true);

				if ($this->state->get('filter.published') != -2)
				{
					$childBar->trash('flexbanners.trash')->listCheck(true);
				}
			}

			if ($this->state->get('filter.published') == -2 && $canDo->get('core.delete'))
			{
				$toolbar->delete('flexbanners.delete')
					->text('JTOOLBAR_EMPTY_TRASH')
					->message('JGLOBAL_CONFIRM_DELETE')
					->listCheck(true);
			}

			// Add a batch button
			if ($user->authorise('core.create', 'com_flexbanners')
				&& $user->authorise('core.edit', 'com_flexbanners')
				&& $user->authorise('core.edit.state', 'com_flexbanners'))
			{
				$childBar->popupButton('batch')
					->text('JTOOLBAR_BATCH')
					->selector('collapseModal')
					->listCheck(true);
			}
		}

		if ($user->authorise('core.admin', 'com_flexbanners') || $user->authorise('core.options', 'com_flexbanners'))
		{
			$toolbar->preferences('com_flexbanners');
		}

		$toolbar->help('Flexbanners');
	}
}
