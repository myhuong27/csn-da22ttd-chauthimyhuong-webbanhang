<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Controller;

defined('_JEXEC') or die;

use Joomla\CMS\Application\CmsApplication;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\Controller\AdminController;
use Joomla\CMS\MVC\Factory\MVCFactoryInterface;
use Joomla\Utilities\ArrayHelper;

class FlexbannersController extends AdminController
{

protected $text_prefix = 'COM_FLEXBANNERS_FLEXBANNERS';

	public function getModel($name = 'Flexbanner', $prefix = 'Administrator', $config = array('ignore_request' => true))
	{
		return parent::getModel($name, $prefix, $config);
	}
}