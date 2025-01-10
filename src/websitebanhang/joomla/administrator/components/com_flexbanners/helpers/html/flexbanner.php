<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

defined('_JEXEC') or die;

abstract class JHtmlFlexbanner
{
	/**
	 * Display a batch widget for the client selector.
	 *
	 * @return  string  The necessary HTML for the widget.
	 *
	 * @since   2.5
	 */

	 	public static function clients()
			{
				JHtml::_('bootstrap.tooltip');
				
		// Create the batch selector to change the client on a selection list.
		return implode(
			"\n",
			array(
				'<label id="batch-client-lbl" for="batch-client" class="hasTooltip" title="'
					. JHtml::_('tooltipText', 'COM_FLEXBANNERS_BATCH_CLIENT_LABEL', 'COM_FLEXBANNERS_BATCH_CLIENT_LABEL_DESC')
					. '">',
				JText::_('COM_FLEXBANNERS_BATCH_CLIENT_LABEL'),
				'</label>',
				'<select name="batch[client_id]" id="batch-client-id">',
				'<option value="">' . JText::_('COM_FLEXBANNERS_BATCH_CLIENT_NOCHANGE') . '</option>',
				'<option value="0">' . JText::_('COM_FLEXBANNERS_NO_CLIENT') . '</option>',
				JHtml::_('select.options', static::clientlist(), 'value', 'text'),
				'</select>'
			)
		);
	}

	/**
	 * Method to get the field options.
	 *
	 * @return  array  The field option objects.
	 * @since   1.6
	 */
	public static function clientlist()
	{
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true)
			->select('clientid As value, clientname As text')
			->from('#__flexbannersclient AS a')
			->order('a.clientname');

		// Get the options.
		$db->setQuery($query);

		try
		{
			$options = $db->loadObjectList();
		}
		catch (RuntimeException $e)
		{
			JError::raiseWarning(500, $e->getMessage());
		}

		return $options;
	}

		public static function locations()
	{
		// Create the batch selector to change the client on a selection list.
		$lines = array(
			'<label id="batch-location-lbl" for="batch-locationnt" class="hasTip" title="'.JText::_('COM_FLEXBANNERS_BATCH_LOCATION_LABEL').'::'.JText::_('COM_FLEXBANNERS_BATCH_LOCATION_LABEL_DESC').'">',
			JText::_('COM_FLEXBANNERS_BATCH_LOCATION_LABEL'),
			'</label>',
			'<select name="batch[locationid]" class="inputbox" id="batch-location-id">',
			'<option value="">'.JText::_('COM_FLXBANNERS_BATCH_LOCATION_NOCHANGE').'</option>',
			'<option value="0">'.JText::_('COM_FLEXBANNERS_NO_LOCATION').'</option>',
			JHtml::_('select.options', self::locationlist(), 'value', 'text'),
			'</select>'
		);

		return implode("\n", $lines);
	}

	/**
	 * Method to get the field options.
	 *
	 * @return	array	The field option objects.
	 * @since	1.6
	 */
	public static function locationlist()
	{
		$db		= JFactory::getDbo();
		$query	= $db->getQuery(true);

		$query->select('locationid As value, locationname As text');
		$query->from('#__flexbannerslocationss AS a');
		$query->order('a.locationname');

		// Get the options.
		$db->setQuery($query);

		$options = $db->loadObjectList();

		// Check for a database error.
		if ($db->getErrorNum()) {
			JError::raiseWarning(500, $db->getErrorMsg());
		}

		return $options;
	}
	
}
