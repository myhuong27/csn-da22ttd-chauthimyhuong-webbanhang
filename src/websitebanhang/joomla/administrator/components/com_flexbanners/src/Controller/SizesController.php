<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Controller;

\defined('_JEXEC') or die;

use Joomla\CMS\MVC\Controller\AdminController;

class SizesController extends AdminController
{

	protected $text_prefix = 'COM_FLEXBANNERS_SIZES';

	public function getModel($name = 'Size', $prefix = 'Administrator', $config = array('ignore_request' => true))
	{
		return parent::getModel($name, $prefix, $config);
	}
}