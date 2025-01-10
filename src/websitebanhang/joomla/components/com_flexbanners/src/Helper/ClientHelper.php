<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_flexbanners
 *
 * @copyright   Copyright (C) 2005 - 2018 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace Inch\Component\Flexbanners\Site\Helper;

defined('_JEXEC') or die;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;


class ClientHelper extends ContentHelper {


	public static function getClientOptions()
	{
		$options = array();

		$db = Factory::getDbo();
		$query = $db->getQuery(true)
			->select('clientid AS value, clientname AS text')
			->from('#__flexbannersclient AS a')
			->where('a.state = 1')
			->order('a.clientname');

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

		array_unshift($options, Html::_('select.option', '0', Text::_('COM_FLEXBANNERS_NO_CLIENT')));

		return $options;
	}

	public static function getLinkedtoOptions()
	{
		$options = array();

		$db = Factory::getDbo();
		$query = $db->getQuery(true)
			->select('id AS value, Concat(name," (", username,")") AS text')
			->from('#__users');
 			
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

		array_unshift($options, Html::_('select.option', '0', Text::_('COM_FLEXBANNERS_NO_CLIENT')));

		return $options;
	}


	public static function getLocationOptions() {
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
			-> select('locationid AS value, locationname AS text') 
			-> from('#__flexbannerslocations AS a') 
			-> order('a.locationname');

		// Get the options.
		$db -> setQuery($query);

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

	public static function getSizeOptions() {
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
			-> select('sizeid AS value, sizename AS text') 
			-> from('#__flexbannerssize AS a') 
			-> order('a.sizename');

		// Get the options.
		$db -> setQuery($query);

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

	public static function getLinkOptions() {
		$options = array();

		$db = Factory::getDbo();
		$query = $db -> getQuery(true) 
		->select("linkid AS value, Concat(linkname,' (', linkurl,')') AS text")
		->from('#__flexbannerslink AS a')
		->order('a.linkname')
		->where('a.state= '. 1);

		// Get the options.
		$db -> setQuery($query);

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



 	public static function countItems(&$items)
	{
		$db = Factory::getDbo();

		foreach ($items as $item)
		{
			$item->count_trashed = 0;
			$item->count_archived = 0;
			$item->count_unpublished = 0;
			$item->count_published = 0;
			$query = $db->getQuery(true);
			$query->select('state, count(*) AS count')
				->from($db->qn('#__flexbanners'))
				->where('catid = ' . (int) $item->id)
				->group('state');
			$db->setQuery($query);
			$banners = $db->loadObjectList();

			foreach ($banners as $banner)
			{
				if ($banner->state == 1)
				{
					$item->count_published = $banner->count;
				}

				if ($banner->state == 0)
				{
					$item->count_unpublished = $banner->count;
				}

				if ($banner->state == 2)
				{
					$item->count_archived = $banner->count;
				}

				if ($banner->state == -2)
				{
					$item->count_trashed = $banner->count;
				}
			}
		}

		return $items;
	}

	/**
	 * Adds Count Items for Tag Manager.
	 *
	 * @param   \stdClass[]  &$items     The banner tag objects
	 * @param   string       $extension  The name of the active view.
	 *
	 * @return  \stdClass[]
	 *
	 * @since   3.6
	 */
	public static function countTagItems(&$items, $extension)
	{
		$db = Factory::getDbo();

		foreach ($items as $item)
		{
			$item->count_trashed = 0;
			$item->count_archived = 0;
			$item->count_unpublished = 0;
			$item->count_published = 0;
			$query = $db->getQuery(true);
			$query->select('published as state, count(*) AS count')
				->from($db->qn('#__contentitem_tag_map') . 'AS ct ')
				->where('ct.tag_id = ' . (int) $item->id)
				->where('ct.type_alias =' . $db->q($extension))
				->join('LEFT', $db->qn('#__categories') . ' AS c ON ct.content_item_id=c.id')
				->group('state');

			$db->setQuery($query);
			$flexbanners = $db->loadObjectList();

			foreach ($flexbanners as $flexbanner)
			{
				if ($banner->state == 1)
				{
					$item->count_published = $flexbanner->count;
				}

				if ($flexbanner->state == 0)
				{
					$item->count_unpublished = $flexbanner->count;
				}

				if ($flexbanner->state == 2)
				{
					$item->count_archived = $flexbanner->count;
				}

				if ($flexbanner->state == -2)
				{
					$item->count_trashed = $flexbanner->count;
				}
			}
		}

		return $items;
	}

}
