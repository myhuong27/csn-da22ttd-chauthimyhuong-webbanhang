<?php
/**
* @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Controller;

\defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\Router\Route;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper;

class DisplayController extends BaseController
{
	/**
	 * The default view.
	 *
	 * @var    string
	 * @since  1.6
	 */
	protected $default_view = 'flexbanners';

	public function display($cachable = false, $urlparams = array())
	{
		FlexbannersHelper::updateReset();

		$view   = $this->input->get('view', 'flexbanners');
		$layout = $this->input->get('layout', 'default');
		$id     = $this->input->getInt('id');

		// Check for edit form.
		if ($view == 'flexbanner' && $layout == 'edit' && !$this->checkEditId('com_flexbanners.edit.flexbanner', $id))
		{
			// Somehow the person just went to the form - we don't allow that.
			$this->setMessage(\JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $id), 'error');
			$this->setRedirect(\JRoute::_('index.php?option=com_flexbanners&view=flexbanners', false));

			return false;
		}
		elseif ($view == 'client' && $layout == 'edit' && !$this->checkEditId('com_flexbanners.edit.client', $id))
		{
			// Somehow the person just went to the form - we don't allow that.
			$this->setMessage(\JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $id), 'error');
			$this->setRedirect(\JRoute::_('index.php?option=com_flexbanners&view=clients', false));

			return false;
		}
		elseif ($view == 'size' && $layout == 'edit' && !$this->checkEditId('com_flexbanners.edit.size', $id))
		{
			// Somehow the person just went to the form - we don't allow that.
			$this->setMessage(\JText::sprintf('JLIB_APPLICATION_ERROR_UNHELD_ID', $id), 'error');
			$this->setRedirect(\JRoute::_('index.php?option=com_flexbanners&view=sizes', false));

			return false;
		}

		return parent::display();
	}
}
