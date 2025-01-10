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
 * Impressions field.
 *
 * @since  1.6
 */
class ImpmadeField extends FormField
{
	/**
	 * The form field type.
	 *
	 * @var    string
	 * @since  1.6
	 */
	protected $type = 'ImpMade';

	/**
	 * Method to get the field input markup.
	 *
	 * @return  string	The field input markup.
	 *
	 * @since   1.6
	 */
	protected function getInput()
	{
		$onclick = ' onclick="document.getElementById(\'' . $this->id . '\').value=\'0\';"';

		return '<div class="input-group"><input class="form-control" type="text" name="' . $this->name . '" id="' . $this->id . '" value="'
			. htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '" readonly="readonly">'
			. '<span class="input-group-append"><button type="button" class="btn btn-secondary" ' . $onclick . '>'
			. '<span class="icon-refresh" aria-hidden="true"></span> ' . Text::_('ADMIN_FLEXBANNER_IMP_RESET') . '</button></span></div>';


		$onclick = ' onclick="document.getElementById(\'' . $this->id . '\').value=\'0\';"';

		return '<div class="input-group"><input class="form-control" type="text" name="' . $this->name . '" id="' . $this->id . '" value="'
			. htmlspecialchars($this->value, ENT_COMPAT, 'UTF-8') . '" readonly="readonly">'
			. '<span class="input-group-btn"><a class="btn btn-secondary" ' . $onclick . '>'
			. '<span class="icon-refresh" aria-hidden="true"></span> ' . Text::_('ADMIN_FLEXBANNER_IMP_RESET') . '</a></span></div>';
	}
}
