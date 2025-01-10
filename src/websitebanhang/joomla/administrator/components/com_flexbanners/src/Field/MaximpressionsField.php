<?php
/**
* @copyright Copyright (C) 2009-2018 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Field;

defined('JPATH_BASE') or die;

use Joomla\CMS\Form\FormField;
use Joomla\CMS\Language\Text;

/**
 * Total Impressions field.
 *
 * @since  1.6
 */
class MaximpressionsField extends FormField
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 * @since  1.6
	 */
	protected $type = 'MaImpressions';

	/**
	 * Method to get the field input markup.
	 *
	 * @return  string	The field input markup.
	 *
	 * @since   1.6
	 */
	protected function getInput()
	{
		$class    = ' class="form-control validate-numeric text_area"';
		$onchange = ' onchange="document.getElementById(\'' . $this->id . '_unlimited\').checked=document.getElementById(\'' . $this->id
			. '\').value==\'\';"';
		$onclick  = ' onclick="if (document.getElementById(\'' . $this->id . '_unlimited\').checked) document.getElementById(\'' . $this->id
			. '\').value=\'\';"';
		$value    = empty($this->value) ? '' : $this->value;
		$checked  = empty($this->value) ? ' checked="checked"' : '';

		return '<input type="text" name="' . $this->name . '" id="' . $this->id . '" size="9" value="' . htmlspecialchars($value, ENT_COMPAT, 'UTF-8')
			. '" ' . $class . $onchange . '>'
			. '<fieldset class="checkbox impunlimited"><input id="' . $this->id . '_unlimited" type="checkbox"' . $checked . $onclick . '>'
			. '<label for="' . $this->id . '_unlimited" id="jform-imp" type="text">' . Text::_('COM_FLEXBANNERS_UNLIMITED') . '</label></fieldset>';
	}
}
