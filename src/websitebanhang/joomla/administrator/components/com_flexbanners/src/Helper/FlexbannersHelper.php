<?php
/**
 * @subpackage  com_flexbanners
 *
 * @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

namespace Inch\Component\Flexbanners\Administrator\Helper;

\defined('_JEXEC') or die;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\Database\ParameterType;

class FlexbannersHelper extends ContentHelper 
{

	public static function updateReset() 
	{
		$db = Factory::getDbo();
		$date = Factory::getDate();
		$app = Factory::getApplication();
		$user = $app -> getIdentity();

		$query = $db -> getQuery(true) 
		-> select('*') 
		-> from($db -> quoteName('#__flexbanners')) 
		-> where(
			[
			$db -> quoteName('reset') . ' <= :date', 
			$db -> quoteName('reset') . ' IS NOT NULL', 
			]
		) 
		-> bind(':date', $date) 
		-> extendWhere(
		'AND', 
			[
			$db -> quoteName('checked_out') . ' = 0', 
			$db -> quoteName('checked_out') . ' = :userId', 
			], 
		'OR'
		) 
			-> bind(':userId', $user -> id, ParameterType::INTEGER);

		$db -> setQuery($query);

		try {
			$rows = $db -> loadObjectList();
		} catch (\RuntimeException $e) {
			$app -> enqueueMessage($e -> getMessage(), 'error');

			return false;
		}

		foreach ($rows as $row) {
			if ($row -> clientid) {
				$client = Table::getInstance('ClientTable', '\\Inch\\Component\\Flexbanners\\Administrator\\Table\\');
				$client -> load($row -> clientid);
			}

			$params = ComponentHelper::getParams('com_flexbanners');

			// Update the row ordering field.
			$query = $db -> getQuery(true) -> update($db -> quoteName('#__flexbanners')) -> set([$db -> quoteName('reset') . ' = :reset',
			//						$db->quoteName('impmade') . ' = 0',
			//						$db->quoteName('clicks') . ' = 0',
			]) -> where($db -> quoteName('id') . ' = :id') -> bind(':reset', $reset, $reset === null ? ParameterType::NULL : ParameterType::STRING) -> bind(':id', $row -> id, ParameterType::INTEGER);

			$db -> setQuery($query);

			try {
				$db -> execute();
			} catch (\RuntimeException $e) {
				$app -> enqueueMessage($e -> getMessage(), 'error');

				return false;
			}
		}
		return true;
	}

	public static function getClientOptions() 
	{
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
			-> select(
				[
				$db -> quoteName('clientid', 'value'), 
				$db -> quoteName('name', 'text'), 
				]
			)
			-> from($db -> quoteName('#__flexbannersclient', 'a')) 
			-> where($db -> quoteName('a.state') . ' = 1') 
			-> order($db -> quoteName('a.name'));

		// Get the options.
		$db -> setQuery($query);

		try {
			$options = $db -> loadObjectList();
		} catch (\RuntimeException $e) {
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		array_unshift($options, HTMLHelper::_('select.option', '0', Text::_('COM_FLEXBANNERS_SELECT_CLIENT')));

		return $options;
	}

	public static function getLinkedtoOptions() {
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) -> select('id AS value, Concat(name," (", username,")") AS text') -> from('#__users');

		// Get the options.
		$db -> setQuery($query);

		try {
			$options = $db -> loadObjectList();
		} catch (\RuntimeException $e) {
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		array_unshift($options, \JHtml::_('select.option', '0', Text::_('COM_FLEXBANNERS_SELECT_CLIENT')));

		return $options;
	}

	public static function getLocationOptions() 
	{
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true)
			->select(
				[
					$db -> quoteName('locationid', 'value'), 
					$db -> quoteName('name', 'text'), 
				]
			) 
			->from($db -> quoteName('#__flexbannerslocations', 'a')) 
			->where($db -> quoteName('a.state') . ' = 1') 
			->order($db -> quoteName('a.name'));

		// Get the options.
		$db -> setQuery($query);

		try 
		{
			$options = $db -> loadObjectList();
		} 
		catch (\RuntimeException $e) 
		{
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		array_unshift($options, HTMLHelper::_('select.option', '0', Text::_('COM_FLEXBANNERS_SELECT_LOCATION')));
		
		return $options;
	}

	public static function getSizeOptions() 
	{
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
		->select(
			[
				$db -> quoteName('sizeid', 'value'), 
				$db -> quoteName('name', 'text'), 
			]
		) 
		->from($db -> quoteName('#__flexbannerssize', 'a'))
		-> where($db -> quoteName('a.state') . ' = 1') 
		-> order($db -> quoteName('a.name'));

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

		array_unshift($options, HTMLHelper::_('select.option', '0', Text::_('COM_FLEXBANNERS_SELECT_SIZE')));

		return $options;
	}

	public static function getLinkOptions() {
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
		-> select("linkid AS value, Concat(name,' (', linkurl,')') AS text") 
		-> from('#__flexbannerslink AS a') 
		-> order('a.name') -> where('a.state= ' . 1);

		// Get the options.
		$db -> setQuery($query);

		try {
			$options = $db -> loadObjectList();
		} catch (\RuntimeException $e) 
		{
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		return $options;
	}
	public static function getArticleOptions() {
		$options = array();

		$db = Factory::getDbo();

		$query	= $db->getQuery(true)
		->select ('id AS value, CONCAT(title, "(" , id, ")") AS text')

//		->select ($titleid) 
		-> from ('#__content order by title');

		
		// Get the options.
		$db -> setQuery($query);

		try {
			$options = $db -> loadObjectList();
		} catch (\RuntimeException $e) {
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		return $options;

	}
	public static function getCatOptions() {
		$options = array();

		$db = Factory::getDbo();

		$query	= $db->getQuery(true)

		->select(
			[
				$db -> quoteName('id', 'value'), 
				$db -> quoteName('title', 'text'), 
			]
		) 
		->from($db -> quoteName('#__categories', 'a'))
		-> where($db -> quoteName('a.extension') . ' = "com_flexbanners"') 
		-> order($db -> quoteName('a.title'));

		// Get the options.
		$db -> setQuery($query);

		try {
			$options = $db -> loadObjectList();
		} catch (\RuntimeException $e) {
			Factory::getApplication() -> enqueueMessage($e -> getMessage(), 'error');
		}

		return $options;
	}
}
