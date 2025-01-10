<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\MVC\Model\ListModel;
use Joomla\CMS\Table\Table;
use Joomla\Database\ParameterType;

class LinksModel extends ListModel 
{
	public function __construct($config = array())
	{
		if (empty($config['filter_fields'])) 
		{
			$config['filter_fields'] = array(
				'linkid', 'a.linkid',
				'name', 'a.name',
				'linkurl', 'a.linkurl',
				'checked_out', 'a.checked_out',
				'checked_out_time', 'a.checked_out_time',
				'state', 'a.state',
			);
		}

		parent::__construct($config);
	}

	protected function populateState($ordering = 'a.linkid', $direction = 'asc')
	{
		// Load the parameters.
		$this->setState('params', ComponentHelper::getParams('com_flexbanners'));

		// List state information.
		parent::populateState($ordering, $direction);
	}

	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.state');

		return parent::getStoreId($id);
	}

	protected function getListQuery()
	{
		// Create a new query object.
		$db = $this->getDbo();
		$query = $db->getQuery(true);
		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				[
					$db->quoteName('a.linkid'),
					$db->quoteName('a.name'),
					$db->quoteName('a.linkurl'),
					$db->quoteName('a.checked_out'),
					$db->quoteName('a.checked_out_time'), 
					$db->quoteName('a.state'),
				]
			)
		)
					->select(
				[
					$db->quoteName('uc.name', 'editor'),
				]
			);
		

		$query->from($db->quoteName('#__flexbannerslink','a'));

		// Join over the banners for counting
		$query->join('LEFT', $db->quoteName('#__flexbanners', 'b'), $db->quoteName('a.linkid') . ' = ' . $db->quoteName('b.linkid'));

		// Join over the users for the checked out user.
		$query->join('LEFT', $db->quoteName('#__users', 'uc'), $db->quoteName('uc.id') . ' = ' . $db->quoteName('a.checked_out'));

		// Filter by published state
		$published = (string) $this->getState('filter.state');

		if (is_numeric($published)) 
		{
			$published = (int) $published;
			$query->where($db->quoteName('a.state') . ' = :published')
				->bind(':published', $published, ParameterType::INTEGER);
		}
		elseif ($published === '')
		{
			$query->where($db->quoteName('a.state') . ' IN (0, 1)');
		}
		
		$query->group(
			[		
				$db->quoteName('a.linkid'), 
				$db->quoteName('a.name'), 
				$db->quoteName('a.checked_out'), 
				$db->quoteName('a.checked_out_time'), 
				$db->quoteName('a.state'), 
				$db->quoteName('uc.name'),
			]
		);
		// Filter by search in title
		if ($search = trim($this->getState('filter.search') ?? ''))
		{
			if (stripos($search, 'id:') === 0)
			{
				$search = (int) substr($search, 3);
				$query->where($db->quoteName('a.linkid') . ' = :search')
					->bind(':search', $search, ParameterType::INTEGER);
			}
			else
			{
				$search = '%' . str_replace(' ', '%', $search) . '%';
				$query->where($db->quoteName('a.name') . ' LIKE :search')
					->bind(':search', $search);
			}
		}

		// Add the list ordering clause.
		$query->order(
			$db->quoteName($db->escape($this->getState('list.ordering', 'a.linkame'))) . ' ' . $db->escape($this->getState('list.direction', 'ASC'))
		);

		return $query;
	}

	public function getItems()
	{
		// Get a storage key.
		$store = $this->getStoreId('getItems');

		// Try to load the data from internal storage.
		if (!empty($this->cache[$store]))
		{
			return $this->cache[$store];
		}

		// Load the list items.
		$items = parent::getItems();

		// If emtpy or an error, just return.
		if (empty($items))
		{
			return array();
		}

		// Getting the following metric by joins is WAY TOO SLOW.
		// Faster to do three queries for very large banner trees.

		// Get the links in the list.
		$db = $this->getDbo();
		$linkIds = array_column($items, 'linkid');

		$query = $db->getQuery(true)
			->select(
				[
					$db->quoteName('linkid'),
					'COUNT(' . $db->quoteName('linkid') . ') AS ' . $db->quoteName('count_published'),
				]
			)
			->from($db->quoteName('#__flexbanners'))
			->where($db->quoteName('state') . ' = :state')
			->whereIn($db->quoteName('linkid'), $linkIds)
			->group($db->quoteName('linkid'))
			->bind(':state', $state, ParameterType::INTEGER);

		$db->setQuery($query);

		try
		{
			$state = 1;
			$countPublished = $db->loadAssocList('linkid', 'count_published');
		}
		catch (\RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Get the unpublished banners count.
		try
		{
			$state = 0;
			$countUnpublished = $db->loadAssocList('linkid', 'count_published');
		}
		catch (\RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Get the trashed banners count.
		try
		{
			$state = -2;
			$countTrashed = $db->loadAssocList('linkid', 'count_published');
		}
		catch (\RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Get the archived banners count.
		try
		{
			$state = 2;
			$countArchived = $db->loadAssocList('linkid', 'count_published');
		}
		catch (\RuntimeException $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Inject the values back into the array.
		foreach ($items as $item)
		{
			$item->count_published   = isset($countPublished[$item->linkid]) ? $countPublished[$item->linkid] : 0;
			$item->count_unpublished = isset($countUnpublished[$item->linkid]) ? $countUnpublished[$item->linkid] : 0;
			$item->count_trashed     = isset($countTrashed[$item->linkid]) ? $countTrashed[$item->linkid] : 0;
			$item->count_archived    = isset($countArchived[$item->linkid]) ? $countArchived[$item->linkid] : 0;
		}

		// Add the items to the internal cache.
		$this->cache[$store] = $items;

		return $this->cache[$store];
	}


}