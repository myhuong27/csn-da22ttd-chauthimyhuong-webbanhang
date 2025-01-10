<?php
/**
* @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Site\Controller;

use Joomla\CMS\MVC\Controller\BaseController;
use Inch\Component\Flexbanners\Site\Helper\FlexbannersHelper;

\defined('_JEXEC') or die;

class DisplayController extends BaseController
{
	public function click()
	{
		$id = $this->input->getInt('id', 0);

		if ($id)
		{
			/** @var \Inch\Component\Flexbanners\Site\Model\FlexAdBannerModel $model */
			$model = $this->getModel('Flexbanners', 'Site', array('ignore_request' => true));
			$model->setState('flexbanner.id', $id);
			$model->click();
			$this->setRedirect($model->getUrl()); 
		}
	}
	protected $default_view = 'flexbanners';

	public function display($cachable = false, $urlparams = array())
	{
//		FlexbannersHelper::updateReset();

		$view   = $this->input->get('view', 'client');
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

