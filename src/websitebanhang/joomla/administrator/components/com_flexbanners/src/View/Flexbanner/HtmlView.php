<?php
/**
* @copyright Copyright (C) 2009-2024 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/

namespace Inch\Component\Flexbanners\Administrator\View\Flexbanner;

\defined('_JEXEC') or die;

use Exception;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Inch\Component\Flexbanners\Administrator\Model\FlexannerModel;

class HtmlView extends BaseHtmlView
{
	protected $form;
	protected $item;
	protected $pagination;
	protected $state;
	protected $canDo;

	/**
	 * Display the view
	 */
	public function display($tpl = null): void
	{
		/** @var FlexbannerModel $model */
		$model       = $this->getModel();
		$this->form  = $model->getForm();
		$this->item  = $model->getItem();
		$this->state = $model->getState();

		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new GenericDataException(implode("\n", $errors), 500);
		}

		$this->addToolbar();

		parent::display($tpl);
	}

	/**
	 * Add the page title and toolbar.
	 *
	 * @since	1.6
	 */
	protected function addToolbar(): void
	{
		Factory::getApplication()->input->set('hidemainmenu', true);

		$user       = Factory::getUser();
		$userId     = $user->id;
		$isNew      = ($this->item->id == 0);
		$checkedOut = !(is_null($this->item->checked_out) || $this->item->checked_out == $userId);

		// Since we don't track these assets at the item level, use the category id.
		$canDo = ContentHelper::getActions('com_flexbanners', 'category', $this->item->catid);

		ToolbarHelper::title($isNew ? Text::_('COM_FLEXBANNERS_MANAGER_BANNER_NEW') : Text::_('COM_FLEXBANNERS_MANAGER_BANNER_EDIT'), 'bookmark flexbanners');

		$toolbarButtons = [];

		// If not checked out, can save the item.
		if (!$checkedOut && ($canDo->get('core.edit') || $canDo->get('core.create')))
		{
			ToolbarHelper::apply('flexbanner.apply');
			$toolbarButtons[] = ['save', 'flexbanner.save'];
		}

		if (!$checkedOut && $canDo->get('core.create'))
		{
			$toolbarButtons[] = ['save2new', 'location.save2new'];
		}
		
		// If an existing item, can save to a copy.
		if (!$isNew && $canDo->get('core.create')) 
		{
			$toolbarButtons[] = ['save2copy', 'flexbanner.save2copy'];
		}

		ToolBarHelper::saveGroup(
			$toolbarButtons,
			'btn-success'
		);
		
		if (empty($this->item->id))  
		{
			ToolBarHelper::cancel('flexbanner.cancel');
		}
		else
		{
			if (ComponentHelper::isEnabled('com_contenthistory') && $this->state->params->get('save_history', 0) && $canDo->get('core.edit'))
			{
				ToolBarHelper::versions('com_flexbanners.flexbanner', $this->item->id);
			}

			ToolBarHelper::cancel('flexbanner.cancel', 'JTOOLBAR_CLOSE');
		}

		ToolBarHelper::divider();
		ToolBarHelper::help('JHELP_COMPONENTS_FLEXBANNERS_FLEXBANNERS_EDIT');


	}
}
