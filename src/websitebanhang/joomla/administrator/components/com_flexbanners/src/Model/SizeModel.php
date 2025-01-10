<?php
/**
* @copyright   Copyright (C) 2005 - 2021 Inch Communications Ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace Inch\Component\Flexbanners\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\MVC\Model\AdminModel;
use Joomla\CMS\Table\Table;

class SizeModel extends AdminModel
{

	public $typeAlias = 'com_flexbanners.size';

	protected function canDelete($record)
	{
		if (empty($record->id) || $record->state != -2)
		{
			return false;
		}

		return parent::canDelete($record);
	}

	/**
	 * Method to test whether a record can have its state changed.
	 *
	 * @param   object  $record  A record object.
	 *
	 * @return  boolean  True if allowed to change the state of the record.
	 *                   Defaults to the permission set in the component.
	 *
	 * @since   1.6
	 */
	protected function canEditState($record)
	{
		$user = Factory::getUser();

		return $user->authorise('core.edit.state', 'com_flexbanners');
	}

	/**
	 * Method to get the record form.
	 *
	 * @param   array    $data      Data for the form.
	 * @param   boolean  $loadData  True if the form is to load its own data (default case), false if not.
	 *
	 * @return  \JForm|boolean  A \JForm object on success, false on failure
	 *
	 * @since   1.6
	 */
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_flexbanners.size', 'size', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) 
		{
			return false;
		}

		return $form;
	}

	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = Factory::getApplication()->getUserState('com_flexbanners.edit.size.data', array());

		if (empty($data)) 
		{
			$data = $this->getItem();
		}

		$this->preprocessData('com_flexbanners.size', $data);

		return $data;
	}

	/**
	 * Prepare and sanitise the table prior to saving.
	 *
	 * @param	JTable	A JTable object.
	 * @since	1.6
	 */
	protected function prepareTable($table)
	{
		$table->sizename = htmlspecialchars_decode($table->sizename, ENT_QUOTES);
	}
}