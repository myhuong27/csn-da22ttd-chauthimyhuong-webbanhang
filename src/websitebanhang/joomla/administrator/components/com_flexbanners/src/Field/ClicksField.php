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
 * Clicks field.
 *
 * @since  1.6
 */
class ClicksField extends FormField
{

	protected $type = 'Clicks';

	protected function getInput()
	{
		$onclick = ' onclick="document.getElementById(\'' . $this->id . '\').value=\'0\';"';

		return '<div class="input-group"><input class="form-control" type="text" name="' . $this->name . '" id="' . $this->id . '" value="'
			. htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '" readonly="readonly">'
			. '<span class="input-group-append"><button type="button" class="btn btn-secondary" ' . $onclick . '>'
			. '<span class="icon-refresh" aria-hidden="true"></span> ' . Text::_('ADMIN_FLEXBANNER_RESET') . '</button></span></div>';

	}
}
