<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// No direct access.
namespace Inch\Component\Flexbanners\Administrator\Table;

\defined('_JEXEC') or die;

use Joomla\CMS\Application\ApplicationHelper;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableTableInterface;
use Joomla\Database\DatabaseDriver;
use Joomla\Database\ParameterType;
use Joomla\Registry\Registry;
use Joomla\Utilities\ArrayHelper;

class FlexbannerTable extends Table implements VersionableTableInterface
{
	public function __construct(DatabaseDriver $db)
	{
		$this->typeAlias = 'com_flexbanners.flexbanner';

		parent::__construct('#__flexbanners', 'id', $db);

		$this->created = Factory::getDate()->toSql();
		$this->setColumnAlias('published', 'state');
	}

	public function clicks()
	{
		$id    = (int) $this->id;
		$query = $this->_db->getQuery(true)
			->update($this->_db->quoteName('#__flexbanners'))
			->set($this->_db->quoteName('clicks') . ' = ' . $this->_db->quoteName('clicks') . ' + 1')
			->where($this->_db->quoteName('id') . ' = :id')
			->bind(':id', $id, ParameterType::INTEGER);

		$this->_db->setQuery($query);
		$this->_db->execute();

	}

	public function check()
	{
		try
		{
			parent::check();
		}
		catch (\Exception $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Set name
		$this->name = htmlspecialchars_decode($this->name, ENT_QUOTES);

		// Set alias
		if (trim($this->alias) == '')
		{
			$this->alias = $this->name;
		}

		$this->alias = ApplicationHelper::stringURLSafe($this->alias, $this->language);

		if (trim(str_replace('-', '', $this->alias)) == '')
		{
			$this->alias = Factory::getDate()->format('Y-m-d-H-i-s');
		}

		// Set imagealt
		$this->imagealt = htmlspecialchars_decode($this->imagealt, ENT_QUOTES);

		// Check the publish down date is not earlier than publish up.
		if ($this->enddate > $this->_db->getNullDate() && $this->enddate < $this->startdate)
		{
			$this->setError(Text::_('JGLOBAL_START_PUBLISH_AFTER_FINISH'));

			return false;
		}

		// Set ordering
		if ($this->state < 0) {
			// Set ordering to 0 if state is archived or trashed
			$this->ordering = 0;
		} else if (empty($this->ordering)) {
			// Set ordering to last if ordering was 0
			$this->ordering = self::getNextOrder($this->_db->quoteName('catid') . '=' . $this->_db->quote($this->catid).' AND state>=0');
		}

		if (empty($this->startdate))
		{
			$this->startdate = $this->getDbo()->getNullDate();
		}

		if (empty($this->enddate))
		{
			$this->enddate = $this->getDbo()->getNullDate();
		}

		if (empty($this->modified))
		{
			$this->modified = $this->getDbo()->getNullDate();
		}




		return true;
	}

	public function bind($array, $ignore = array())
	{
		if (isset($array['params']) && is_array($array['params'])) 
		{
			$registry = new Registry($array['params']);	

			if((int) $registry->get('width', 0) < 0)
			{
				$this->setError(\JText::sprintf('JLIB_DATABASE_ERROR_NEGATIVE_NOT_PERMITTED', Text::_('COM_FLEXBANNERS_FIELD_WIDTH_LABEL')));
				return false;
			}

			if((int) $registry->get('height', 0) < 0)
			{
				$this->setError(\JText::sprintf('JLIB_DATABASE_ERROR_NEGATIVE_NOT_PERMITTED', Text::_('COM_FLEXBANNERS_FIELD_HEIGHT_LABEL')));
				return false;
			}

			// Converts the width and height to an absolute numeric value:
			$width = abs((int) $registry->get('width', 0));
			$height = abs((int) $registry->get('height', 0));

			// Sets the width and height to an empty string if = 0
			$registry->set('width', $width ? $width : '');
			$registry->set('height', $height ? $height : '');

			$array['params'] = (string)$registry;
		}

		if (isset($array['maximpressions'])) {
			$array['maximpressions'] = abs((int) $array['maximpressions']);
		}

		return parent::bind($array, $ignore);
	}

	public function store($updateNulls = false)
	{
		$db = $this->getDbo();
		
		if (empty($this->id))
		{
				/** @var Client $client */
				$client = Table::getInstance('FlexbannerTable', __NAMESPACE__ . '\\');
				$client->load($this->clientid);

			// Store the row
			parent::store($updateNulls);
		}
		else
		{
			// Get the old row
			/** @var Flexbanner $oldrow */
			$oldrow = Table::getInstance('FlexbannerTable', __NAMESPACE__ . '\\');

			if (!$oldrow->load($this->id) && $oldrow->getError())
			{
				$this->setError($oldrow->getError());
			}

			// Verify that the alias is unique
			/** @var Flexbanner $table */
			$table = Table::getInstance('FlexbannerTable', __NAMESPACE__ . '\\');

			if ($table->load(array('alias' => $this->alias, 'catid' => $this->catid)) && ($table->id != $this->id || $this->id == 0))
			{
				$this->setError(Text::_('COM_FLEXBANNERS_ERROR_UNIQUE_ALIAS'));

				return false;
			}

			// Store the new row
			parent::store($updateNulls);

			// Need to reorder ?
			if ($oldrow->state >= 0 && ($this->state < 0 || $oldrow->catid != $this->catid))
			{
				// Reorder the oldrow
				$this->reorder($this->_db->quoteName('catid') . '=' . $this->_db->quote($oldrow->catid) . ' AND state>=0');
			}
		}

		return count($this->getErrors()) == 0;
	}

	public function flexAdBanner( &$_db ) 
	{
		parent::__construct( '#__flexbanners', 'id', $_db );
	}
	public function getTypeAlias()
	{
		return $this->typeAlias;
	}
}


class FlexbannersHelper
{

	public static function getActions($categoryId = 0)
	{
		$user	= JFactory::getUser();
		$result	= new JObject;

		if (empty($categoryId)) {
			$assetName = 'com_flexbanners';
		} else {
			$assetName = 'com_flexbanners.category.'.(int) $categoryId;
		}

		$actions = array(
			'core.admin', 'core.manage', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action,	$user->authorise($action, $assetName));
		}

		return $result;
	}

	/**
	 * @return	boolean
	 * @since	1.6
	 */
	public static function updateReset()
	{
		$user = JFactory::getUser();
		$db = JFactory::getDBO();
		$nullDate = $db->getNullDate();
		$now = JFactory::getDate();
		$query = $db->getQuery(true);
		$query->select('*');
		$query->from('#__flexbanners');
		$query->where("'".$now."' >= ".$db->quoteName('reset'));
		$query->where($db->quoteName('reset').' != '.$db->quote($nullDate).' AND '.$db->quoteName('reset').'!=NULL');
		$query->where('('.$db->quoteName('checked_out').' = 0 OR '.$db->quoteName('checked_out').' = '.(int) $db->Quote($user->id).')');
		$db->setQuery((string)$query);
		$rows = $db->loadObjectList();

		// Check for a database error.
		if ($db->getErrorNum()) {
			JError::raiseWarning(500, $db->getErrorMsg());
			return false;
		}

		JTable::addIncludePath(JPATH_COMPONENT . '/tables');
		foreach ($rows as $row) {
				$client = JTable::getInstance('Client','FlexbannersTable');
				$client->load($row->clientid);

			// Update the row ordering field.
			$query->clear();
			$query->update($db->quoteName('#__flexbanners'));
			$query->set($db->quoteName('reset').' = '.$db->quote($reset));
			$query->set($db->quoteName('impmade').' = '.$db->quote(0));
			$query->set($db->quoteName('clicks').' = '.$db->quote(0));
			$query->where($db->quoteName('id').' = '.$db->quote($row->id));
			$db->setQuery((string)$query);
			$db->query();

			// Check for a database error.
			if ($db->getErrorNum()) {
				JError::raiseWarning(500, $db->getErrorMsg());
				return false;
			}
		}
		return true;
	}
}
