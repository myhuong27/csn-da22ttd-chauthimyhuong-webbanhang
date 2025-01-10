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


class ClientModel extends AdminModel
{

	public $typeAlias = 'com_flexbanners.client';


	protected function canDelete($record)
	{
		if (empty($record->id) || $record->state != -2)
		{
			return false;
		}

		if (!empty($record->catid))
		{
			return Factory::getUser()->authorise('core.delete', 'com_flexbanners.category.' . (int) $record->catid);
		}

		return parent::canDelete($record);
	}

	protected function canEditState($record)
	{
		$user = Factory::getUser();

		if (!empty($record->catid))
		{
			return $user->authorise('core.edit.state', 'com_flexbanners.category.' . (int) $record->catid);
		}

		return $user->authorise('core.edit.state', 'com_flexbanners');
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_flexbanners.client', 'client', array('control' => 'jform', 'load_data' => $loadData));

		if (empty($form))
		{
			return false;
		}

		return $form;
	}

	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = Factory::getApplication()->getUserState('com_flexbanners.edit.client.data', array());

		if (empty($data))
		{
			$data = $this->getItem();
		}

		$this->preprocessData('com_flexbanners.client', $data);

		return $data;
	}

	protected function prepareTable($table)
	{
		$table->name = htmlspecialchars_decode($table->name, ENT_QUOTES);
	}

}
