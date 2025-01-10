<?php
/**
 * @copyright   Copyright (C) 2005 - 2020 Inch Communications Ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace Inch\Component\Flexbanners\Administrator\Table;

defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\Database\DatabaseDriver;
use Joomla\Database\ParameterType;
use Joomla\Utilities\ArrayHelper;


class ClientTable extends Table
{
		protected $_supportNullValue = true;
		
	public function __construct(DatabaseDriver $db)
	{
		$this->typeAlias        = 'com_flexbanners.client';
		$this->checked_out_time = null;

		parent::__construct('#__flexbannersclient', 'clientid', $db);
	}

	public function publish($pks = null, $state = 1, $userId = 0)
	{
		// Initialise variables.
		$k = $this->_tbl_key;

		// Sanitize input.
		$pks    = ArrayHelper::toInteger($pks);
		$userId = (int) $userId;
		$state  = (int) $state;

		// If there are no primary keys set check to see if the instance key is set.
		if (empty($pks))
		{
			if ($this->$k) {
				$pks = array($this->$k);
			}
			// Nothing to set publishing state on, return false.
			else {
				$this->setError(JText::_('JLIB_DATABASE_ERROR_NO_ROWS_SELECTED'));
				return false;
			}
		}

		// Build the WHERE clause for the primary keys.
		$where = $k . '=' . implode(' OR ' . $k . '=', $pks);

		// Determine if there is checkin support for the table.
		if (!property_exists($this, 'checked_out') || !property_exists($this, 'checked_out_time')) {
			$checkin = '';
		}
		else {
			$checkin = ' AND (checked_out = 0 OR checked_out = '.(int) $userId.')';
		}

		// Update the publishing state for rows with the given primary keys.
		$query = $this->_db->getQuery(true)
			->update($this->_db->quoteName($this->_tbl))
			->set($this->_db->quoteName('state') . ' = :state')
			->whereIn($this->_db->quoteName($k), $pks)
			->bind(':state', $state, ParameterType::INTEGER);
		

		// Determine if there is checkin support for the table.
		if ($this->hasField('checked_out') && $this->hasField('checked_out_time'))
		{
			$query->extendWhere(
				'AND',
				[
					$this->_db->quoteName('checked_out') . ' = 0',
					$this->_db->quoteName('checked_out') . ' = :userId',
				],
				'OR'
			)
				->bind(':userId', $userId, ParameterType::INTEGER);
		}

		$this->_db->setQuery($query);

		try
		{
			$this->_db->execute();
		}
		catch (\RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// If checkin is supported and all rows were adjusted, check them in.
		if ($checkin && (count($pks) == $this->_db->getAffectedRows()))
		{
			// Checkin the rows.
			foreach ($pks as $pk)
			{
				$this->checkin($pk);
			}
		}

		// If the \JTable instance value is in the list of primary keys that were set, set the instance.
		if (in_array($this->$k, $pks))
		{
			$this->state = $state;
		}

		$this->setError('');

		return true;
	}
}
