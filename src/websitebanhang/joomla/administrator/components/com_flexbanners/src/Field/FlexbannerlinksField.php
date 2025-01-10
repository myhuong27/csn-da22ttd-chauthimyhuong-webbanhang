<?php
/**
* @copyright Copyright (C) 2009-2018 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Field;

defined('JPATH_BASE') or die;

use Joomla\CMS\Form\FormHelper;

\JLoader::register('FlexbannersHelper', JPATH_ADMINISTRATOR . '/components/com_flexbanners/helpers/flexbanners.php');

FormHelper::loadFieldClass('list');

class FlexbannerlinksField extends \JFormFieldList
{

	protected $type = 'FlexbannerLinks';

	public function getOptions()
	{
		return array_merge(parent::getOptions(), \FlexbannersHelper::getLinksOptions());

	}
}
 