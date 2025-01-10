<?php
/**
* @copyright Copyright (C) 2009-2020 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/

namespace Inch\Component\Flexbanners\Administrator\View\Link;

defined('_JEXEC') or die;

use Exception;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Object\CMSObject;
use Joomla\CMS\Toolbar\ToolbarHelper;
use Inch\Component\Flexbanners\Administrator\Model\LocationModel;

class HtmlView extends BaseHtmlView
{
	protected $form;
	protected $item;
	protected $state;
	protected $canDo;

	/**
	 * Display the view
	 */
	public function display($tpl = null)
	{
		/** @var ClientModel $model */
		$model       = $this->getModel();
		$this->form  = $model->getForm();
		$this->item  = $model->getItem();
		$this->state = $model->getState();
		$this->canDo = ContentHelper::getActions('com_flexbanners');
		
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
		$isNew      = ($this->item->linkid == 0);
		$checkedOut = !($this->item->checked_out == 0 || $this->item->checked_out == $user->id);
		$canDo      = $this->canDo;

		ToolBarHelper::title(
			$isNew ? Text::_('COM_FLEXBANNERS_MANAGER_LINK_NEW') : Text::_('COM_FLEXBANNERS_MANAGER_LINK_EDIT'),
			'bookmark flexbanners-links');

		$toolbarButtons = [];

		// If not checked out, can save the item.
		if (!$checkedOut && ($canDo->get('core.edit') || $canDo->get('core.create')))
		{
			ToolbarHelper::apply('link.apply');
			$toolbarButtons[] = ['save', 'link.save'];
		}

		if (!$checkedOut && $canDo->get('core.create'))
		{
			$toolbarButtons[] = ['save2new', 'link.save2new'];
		}

		// If an existing item, can save to a copy.
		if (!$isNew && $canDo->get('core.create'))
		{
			$toolbarButtons[] = ['save2copy', 'link.save2copy'];
		}

		ToolBarHelper::saveGroup(
			$toolbarButtons,
			'btn-success'
		);

		if (empty($this->item->linkid))
		{
			ToolBarHelper::cancel('link.cancel');
		}
		else
		{
			if (ComponentHelper::isEnabled('com_contenthistory') && $this->state->params->get('save_history', 0) && $canDo->get('core.edit'))
			{
				ToolbarHelper::versions('com_flexbanners.link', $this->item->id);
			}

			ToolbarHelper::cancel('link.cancel', 'JTOOLBAR_CLOSE');
		}

		ToolBarHelper::divider();
		ToolBarHelper::help('JHELP_COMPONENTS_FLEXBANNERS_LINKS_EDIT');
	}
}
