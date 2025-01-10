<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_flexbanners
 *
 * @copyright   Copyright (C) 2005 - 2021 Inch Communications Ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace Inch\Component\Flexbanners\Administrator\View\Sizes;

\defined('_JEXEC') or die;

use Exception;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Object\CMSObject;
use Joomla\CMS\Pagination\Pagination;
use Joomla\CMS\Toolbar\Toolbar;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Inch\Component\Flexbanners\Administrator\Model\SizesModel;

class HtmlView extends BaseHtmlView
{
	public $filterForm;
	public $activeFilters = [];
	protected $items = [];
	protected $pagination;
	protected $state;
	protected $sizes = [];
	private $isEmptyState = false;
	
	/**
	 * Display the view
	 */
	public function display($tpl = null): void
	{
		/** @var SizesModel $model */
		$model              	= $this->getModel();
		$this->items			= $model->getItems();
		$this->pagination		= $model->getPagination();
		$this->state			= $model->getState();
		$this->filterForm    	= $model->getFilterForm();
		$this->activeFilters 	= $model->getActiveFilters();

		if (!\count($this->items) && $this->isEmptyState = $this->get('IsEmptyState'))
		{
			$this->setLayout('emptystate');
		}

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new GenericDataException(implode("\n", $errors), 500);
		}

		$this->addToolbar();

		parent::display($tpl);
	}

	protected function addToolbar(): void
	{
		$canDo = ContentHelper::getActions('com_flexbanners');

		ToolBarHelper::title(Text::_('ADMIN_FLEXBANNER_BANNERMANAGER'), 'bookmark flexbanners-sizes');

		// Get the toolbar object instance
		$toolbar = Toolbar::getInstance('toolbar');

		if ($canDo->get('core.create'))
		{
			$toolbar->addNew('size.add');
		}

		if (!$this->isEmptyState && ($canDo->get('core.edit.state') || $canDo->get('core.admin')))
		{
			$dropdown = $toolbar->dropdownButton('status-group')
				->text('JTOOLBAR_CHANGE_STATUS')
				->toggleSplit(false)
				->icon('icon-ellipsis-h')
				->buttonClass('btn btn-action')
				->listCheck(true);

			$childBar = $dropdown->getChildToolbar();

			$childBar->publish('sizes.publish')->listCheck(true);
			$childBar->unpublish('sizes.unpublish')->listCheck(true);
			$childBar->archive('sizes.archive')->listCheck(true);

			if ($canDo->get('core.admin'))
			{
				$childBar->checkin('sizes.checkin')->listCheck(true);
			}

			if (!$this->state->get('filter.state') == -2)
			{
				$childBar->trash('sizes.trash')->listCheck(true);
			}
		}

		if (!$this->isEmptyState && $this->state->get('filter.state') == -2 && $canDo->get('core.delete'))
		{
			$toolbar->delete('sizes.delete')
				->text('JTOOLBAR_EMPTY_TRASH')
				->message('JGLOBAL_CONFIRM_DELETE')
				->listCheck(true);
		}

		if ($canDo->get('core.admin') || $canDo->get('core.options'))
		{
			$toolbar->preferences('com_flexbanners');
		}

		$toolbar->help('Flexbanners:_Sizes');
	}

}
