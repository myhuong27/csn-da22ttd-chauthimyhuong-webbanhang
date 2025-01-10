<?php
/**
 * @subpackage  com_flexbanners
 *
* @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
 */

namespace Inch\Component\Flexbanners\Administrator\Service\Html;

defined('JPATH_BASE') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;

/**
 * Flexbanner HTML class.
 *
 * @since  2.5
 */
class Flexbanner
{
	/**
	 * Display a batch widget for the client selector.
	 *
	 * @return  string  The necessary HTML for the widget.
	 *
	 * @since   2.5
	 */
	public function clients()
	{
		// Create the batch selector to change the client on a selection list.
		return implode(
			"\n",
			array(
				'<label id="batch-client-lbl" for="batch-client">',
				Text::_('COM_FLEXBANNERS_BATCH_CLIENT_LABEL'),
				'</label>',
				'<select class="custom-select" name="batch[clientid]" id="batch-client-id">',
				'<option value="">' . Text::_('COM_FLEXBANNERS_BATCH_CLIENT_NOCHANGE') . '</option>',
				'<option value="0">' . Text::_('COM_FLEXBANNERS_NO_CLIENT') . '</option>',
				HTMLHelper::_('select.options', static::clientlist(), 'value', 'text'),
				'</select>'
			)
		);
	}

	/**
	 * Method to get the field options.
	 *
	 * @return  array  The field option objects.
	 *
	 * @since   1.6
	 */
	public function clientlist()
	{
		$db = Factory::getDbo();
		$query = $db->getQuery(true)
			->select(
				[
					$db->quoteName('clientid', 'value'),
					$db->quoteName('name', 'text'),
				]
			)
			->from($db->quoteName('#__flexbannersclient'))
			->order($db->quoteName('name'));

		// Get the options.
		$db->setQuery($query);

		try
		{
			$options = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

		return $options;
	}
}
