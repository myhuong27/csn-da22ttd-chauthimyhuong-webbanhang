<?php
/**
* @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

namespace Inch\Component\Flexbanners\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\MVC\Model\ListModel;
use Joomla\CMS\Table\Table;
use Joomla\Database\ParameterType;

class FlexbannersModel extends ListModel
{

	public function __construct($config = array())
	{
		if (empty($config['filter_fields'])) 
		{
			$config['filter_fields'] = array(
				'id', 'a.id',
				'clientid', 'a.clientid', 'clientname',
				'name', 'a.name',
				'imageurl', 'a.imageurl',
				'cloud_imageurl', 'a.cloud_imageurl',
				'imagealt', 'a.imagealt',
				'restrictbyid', 'a.restrictbyid',
				'frontpage', 'a.frontpage',
				'state', 'a.state',
				'ordering', 'a.ordering',
				'language', 'a.language',
				'catid', 'a.catid', 'category_title',
				'locationid', 'a.locationid',
//				'name', 'loc.name',
				'sizeid', 'a.sizeid', 'name', 'size.name',
				'checked_out', 'a.checked_out',
				'checked_out_time', 'a.checked_out_time',
				'created', 'a.created',
				'impmade', 'a.impmade',
				'clicks', 'a.clicks',
				'maxclicks', 'a.maxclicks',
				'published', 'a.published',
				'state',
			);
		}

		parent::__construct($config);
	}

	/**
	 * Method to get the maximum ordering value for each category.
	 *
	 * @since	1.6
	 */
	public function &getCategoryOrders()
	{
		if (!isset($this->cache['categoryorders']))
		{
			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->select(
					[
						'MAX(' . $db->quoteName('ordering') . ') AS ' . $db->quoteName('max'),
						$db->quoteName('catid'),
					]
				)
				->from($db->quoteName('#__flexbanners'))
				->group($db->quoteName('catid'));
			$db->setQuery($query);
			$this->cache['categoryorders'] = $db->loadAssocList('catid', 0);
		}
		return $this->cache['categoryorders'];
	}

	public function &getClientOrders()
	{
		if (!isset($this->cache['clientorders']))
		{
			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->select('MAX(ordering) as ' . $db->quoteName('max') . ', clientid')
				->select('clientid')
				->from('#__flexbanners')
				->group('clientid');
			$db->setQuery($query);
			$this->cache['clientorders'] = $db->loadAssocList('clientid', 0);
		}
		return $this->cache['clientorders'];
	}

	public function &getLocationOrders()
	{
		if (!isset($this->cache['categoryorders']))
		{
			$db = $this->getDbo();
			$query = $db->getQuery(true)
				->select('MAX(ordering) as ' . $db->quoteName('max') . ', locationid')
				->select('locationid')
				->from('#__flexbanners')
				->group('locationid');
			$db->setQuery($query);
			$this->cache['locationorders'] = $db->loadAssocList('locationid', 0);
		}
		return $this->cache['locationorders'];
	}

	protected function getListQuery()
	{
		$db = $this->getDbo();
		$query = $db->getQuery(true);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				[
				$db->quoteName('a.id'),
				$db->quoteName('a.name'),
				$db->quoteName('a.alias'),
				$db->quoteName('a.clientid'), 
				$db->quoteName('a.type'),
				$db->quoteName('a.locationid'),
				$db->quoteName('a.imageurl'),
				$db->quoteName('a.imagealt'), 
				$db->quoteName('a.cloud_imageurl'), 
				$db->quoteName('a.customcode'),
				$db->quoteName('a.checked_out'),
				$db->quoteName('a.checked_out_time'), 
				$db->quoteName('a.catid'), 
				$db->quoteName('a.clicks'),
				$db->quoteName('a.maxclicks'),
				$db->quoteName('a.maximpressions'),
				$db->quoteName('a.impmade'),
				$db->quoteName('a.dailyimpressions'),
				$db->quoteName('a.state'), 
				$db->quoteName('a.ordering'),
				$db->quoteName('a.published'), 
				$db->quoteName('a.language'), 
				$db->quoteName('a.startdate'), 
				$db->quoteName('a.enddate'),

				]
		)
	)
			->select(
				[
				$db->quoteName('l.title', 'language_title'),
				$db->quoteName('l.image', 'language_image'),
				$db->quoteName('uc.name', 'editor'),					
				$db->quoteName('c.title', 'category_title'),
				$db->quoteName('cl.name', 'client_name'),
				$db->quoteName('loc.name', 'locationname'),
				]
			)
			->from($db->quoteName('#__flexbanners', 'a'))
			->join('LEFT', $db->quoteName('#__languages', 'l'), $db->quoteName('l.lang_code') . ' = ' . $db->quoteName('a.language'))
			->join('LEFT', $db->quoteName('#__users', 'uc'), $db->quoteName('uc.id') . ' = ' . $db->quoteName('a.checked_out'))
			->join('LEFT', $db->quoteName('#__categories', 'c'), $db->quoteName('c.id') . ' = ' . $db->quoteName('a.catid'))
			->join('LEFT', $db->quoteName('#__flexbannersclient', 'cl'), $db->quoteName('cl.clientid') . ' = ' . $db->quoteName('a.clientid'))
			->join('LEFT', $db->quoteName('#__flexbannerslocations', 'loc'), $db->quoteName('loc.locationid') . ' = ' . $db->quoteName('a.locationid'));

		// Filter by published state
		$published = (string) $this->getState('filter.published');

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

		// Filter by category.
		$categoryId = $this->getState('filter.category_id');
		if (is_numeric($categoryId))
		{
			$categoryId = (int) $categoryId;
			$query->where($db->quoteName('a.catid') . ' = :categoryId')
				->bind(':categoryId', $categoryId, ParameterType::INTEGER);
		}
		// Filter by client.
		$clientId = $this->getState('filter.clientid');
		if (is_numeric($clientId)) 
		{
				$clientId = (int) $clientId;
				$query->where($db->quoteName('a.clientid'). ' = :clientId')
					->bind(':clientId', $clientId, ParameterType::INTEGER);
		}

		// Filter by location.
		$locationId = $this->getState('filter.locationid');
		if (is_numeric($locationId)) 
		{
			$locationId = (int) $locationId;
			$query->where($db->quoteName('a.locationid'). ' = :locationId')
				->bind(':locationId', $locationId, ParameterType::INTEGER);
		}
		// Filter by size.
		$sizeId = $this->getState('filter.sizeid');
		if (is_numeric($sizeId)) 
		{
			$sizeId = (int) $sizeId;
			$query->where($db->quoteName('a.sizeid'). ' = :sizeId')
			 	->bind(':sizeId', $sizeId, ParameterType::INTEGER);

		}

		// Filter by search in title
		if ($search = $this->getState('filter.search'))
		{
			if (stripos($search, 'id:') === 0)
			{
				$search = (int) substr($search, 3);
				$query->where($db->quoteName('a.id') . ' = :search')
					->bind(':search', $search, ParameterType::INTEGER);
			}
			else
			{
				$search = '%' . str_replace(' ', '%', trim($search)) . '%';
				$query->where('(' . $db->quoteName('a.name') . ' LIKE :search1 OR ' . $db->quoteName('a.alias') . ' LIKE :search2)')
					->bind([':search1', ':search2'], $search);
			}
		}

		// Filter on the language.
		if ($language = $this->getState('filter.language'))
		{
			$query->where($db->quoteName('a.language') . ' = :language')
				->bind(':language', $language);
		}

		// Filter on the level.
		if ($level = (int) $this->getState('filter.level'))
		{
			$query->where($db->quoteName('c.level') . ' <= :level')
				->bind(':level', $level, ParameterType::INTEGER);
		}

		// Add the list ordering clause.
		$orderCol  = $this->state->get('list.ordering', 'a.name');
		$orderDirn = $this->state->get('list.direction', 'ASC');

		if ($orderCol === 'a.ordering' || $orderCol === 'category_title')
		{
			$ordering = [
				$db->quoteName('c.title') . ' ' . $db->escape($orderDirn),
				$db->quoteName('a.ordering') . ' ' . $db->escape($orderDirn),
			];
		}
		else
		{
		 if ($orderCol === 'name')
		 {
		 	$orderCol = 'cl.name';
		 }

		$ordering = $db->quoteName($db->escape($orderCol)) . ' ' . $db->escape($orderDirn);
		}

		$query->order($ordering);

		return $query;
	}


	protected function getStoreId($id = '')
	{
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.access');
		$id	.= ':'.$this->getState('filter.state');
		$id	.= ':'.$this->getState('filter.clientid');
		$id	.= ':'.$this->getState('filter.sizeid');
		$id .= ':' . $this->getState('filter.published');
		$id	.= ':'.$this->getState('filter.locationid');
		$id	.= ':'.$this->getState('filter.catid');
		$id .= ':'.$this->getState('filter.language');

		return parent::getStoreId($id);
	}

	public function getTable($type = 'Flexbanner', $prefix = 'Administrator', $config = array())
	{
		return parent::getTable($type, $prefix, $config);
	}

	/**
	 * Method to auto-populate the model state.
	 *
	 * Note. Calling getState in this method will result in recursion.
	 *
	 * @since	1.6
	 */
	protected function populateState($ordering = 'a.name', $direction = 'asc')
	{
		// Load the parameters.
		$this->setState('params', ComponentHelper::getParams('com_flexbanners'));

		// List state information.
		parent::populateState($ordering, $direction);
	}

}