<?php
/**
* @copyright Copyright (C) 2009-2024 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Site\Model;

use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\MVC\Model\ListModel;
use Joomla\Database\DatabaseQuery;
use Joomla\Database\Exception\ExecutionFailureException;
use Joomla\Database\ParameterType;
use Joomla\Registry\Registry;
use Joomla\Utilities\ArrayHelper;
use Inch\Component\Flexbanners\Site\Model\FlexAdBannerModel;

use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;


//Table::addIncludePath(JPATH_SITE.'/components/com_flexbanners/src/Table/FlexAdBannerTable.php') ;

\defined('_JEXEC') or die;

//jimport('joomla.application.component.helper');

class FlexbannersModel extends ListModel
{


	protected $_item;

	public function click()
	{
		$item = $this->getItem();

		if (empty($item))
		{
			throw new \Exception(Text::_('JERROR_PAGE_NOT_FOUND'), 404);
		}

		$id = (int) $this->getState('flexbanner.id');

		$app = Factory::getApplication();
		$config = Factory::getConfig();
		$db = Factory::getDBO();		
//		$id = intval($app->getInput()->get('id'));
	
		$task = NULL;
		$task = intval($app->getInput()->get('task'));

		
/*	   
	   switch($task) {
		   case 'click' :
			   self::clickFlexBanner($id);
			   break;
		   default :
			   self::disableOldBanners();
			   self::activateBanners();
			   self::resetImpressions();
			   break;
	   }
*/
	   if ($id) {
	
			$botlist = "/(google|msnbot|rambler|yahoo|abachobot|accoona|dotbot|aciorobot|aspseek|cococrawler|dumbot|fast-webcrawler|geonabot|gigabot|lycos|msrbot|scooter|altavista|idbot|estyle|scrubby|googlebot|yahoo! slurp|voilabot|zyborg|webcrawler|deepindex|teoma|appie|henrilerobotmirago|psbot|szukacz|openbot|naver)+/i";
			$isBrowser = true;
	
			if (!isset($_SERVER['HTTP_USER_AGENT'])) {
				$isBrowser = false;
			} else {
				if (preg_match($botlist, strtolower($_SERVER['HTTP_USER_AGENT'])))
					$isBrowser = false;
			}


		// Update click count
		$db = $this->getDbo();
		$query = $db->getQuery(true);

		$query->update($db->quoteName('#__flexbanners'))
			->set($db->quoteName('clicks') . ' = ' . $db->quoteName('clicks') . ' + 1')
			->where($db->quoteName('id') . ' = :id')
			->bind(':id', $id, ParameterType::INTEGER);

		$db->setQuery($query);

		try
		{
			$db->execute();
		}
		catch (\RuntimeException $e)
		{
			throw new \Exception($e->getMessage(), 500);
		}

		}

	}	

	public function getItem()
	{
		if (!isset($this->_item))
		{
			/** @var \JCacheControllerCallback $cache */
			$cache = Factory::getCache('com_flexbanners', 'callback');

			$id = (int) $this->getState('flexbanner.id');

			// For PHP 5.3 compat we can't use $this in the lambda function below, so grab the database driver now to use it
			$db = $this->getDbo();

			$loader = function ($id) use ($db)
			{
				$query = $db->getQuery(true)
					->select(
						array(
							$db->quoteName('a.linkid'),
							$db->quoteName('a.clientid'),
							$db->quoteName('fbl.linkurl'),
						)
					)
					->from($db->quoteName('#__flexbanners', 'a'))
					->join('LEFT', '#__flexbannerslink AS fbl ON fbl.linkid = a.linkid')
					->join('LEFT', $db->quoteName('#__flexbannersclient', 'cl'), $db->quoteName('cl.clientid') . ' = ' . $db->quoteName('a.clientid'))
					->where($db->quoteName('a.id') . ' = :id')
					->bind(':id', $id, ParameterType::INTEGER);

					$db->setQuery($query);

				return $db->loadObject();
			};

			try
			{
				$this->_item = $cache->get($loader, array($id), md5(__METHOD__ . $id));
			}
			catch (CacheExceptionInterface $e)
			{
				$this->_item = $loader($id);
			}
		}

		return $this->_item;
	}


	public function getUrl()
	{
		$item = $this->getItem();
		$url = $item->linkurl;

		// Check for links
		if (!preg_match('#http[s]?://|index[2]?\.php#', $url))
		{
			$url = "http://$url";
		}

		return $url;
	}

	function disableOldBanners() {
		$app = Factory::getApplication();
		$db = Factory::getDBO();
		$config = Factory::getConfig();
		$sql = "UPDATE `#__flexbanners` SET finished=1, state=0
			  WHERE (enddate < '" . date('Y-m-d H:i:s') . "' and enddate <> '0000-00-00 00:00:00'  and state<>2 and state<>-2)
				 OR (impmade >= maximpressions AND maximpressions <> 0 )
				 OR (clicks >= maxclicks AND maxclicks <> 0)";
		$db -> setQuery($sql);
		$db->execute();
	}

	function activateBanners() {
		$app = Factory::getApplication();
		$db = Factory::getDBO();
		$config = Factory::getConfig();
		$sql = "UPDATE `#__flexbanners` SET state=1
			  WHERE startdate<= '" . date('Y-m-d H:i:s') . "' and finished=0  and startdate <> '0000-00-00 00:00:00' and state<>2 and state<>-2";
		$db -> setQuery($sql);
		$db->execute();
	}

	public function resetImpressions() {
		$app = Factory::getApplication();
		$db = Factory::getDBO();
		$config = Factory::getConfig();
		$sql = "UPDATE `#__flexbanners` SET dailyimpressions=0, lastreset='" . date('Y-m-d') . "'
			  WHERE lastreset< '" . date('Y-m-d') . "' or lastreset IS NULL ";
		$db -> setQuery($sql);
		$db->execute();
	}
		
		function check() {
	
			return true;
		}
	
	

}	


