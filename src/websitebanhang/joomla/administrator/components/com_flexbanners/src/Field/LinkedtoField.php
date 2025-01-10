<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Field;

\defined('JPATH_BASE') or die;

use Joomla\CMS\Form\Field\ListField;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper;
/*
\JLoader::register('FlexbannersHelper', JPATH_ADMINISTRATOR . '/components/com_flexbanners/helpers/flexbanners.php');
*/
//FormHelper::loadFieldClass('list');

class LinkedtoField extends ListField
{
		protected $type = 'Linkedto';
	
	public function getOptions()
	{
		return array_merge(parent::getOptions(), FlexbannersHelper::getLinkedtoOptions());
	}
}