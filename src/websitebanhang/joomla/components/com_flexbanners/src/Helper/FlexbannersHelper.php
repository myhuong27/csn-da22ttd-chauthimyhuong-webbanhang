<?php
/**
* @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

namespace Inch\Module\Flexbanners\Site\Helper;

\defined('_JEXEC') or die;

use Joomla\CMS\Application\CMSApplication;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Environment\Browser;
use Inch\Component\Flexbanners\Site\Model\FlexbannersModel;
use Joomla\Registry\Registry;

class FlexbannersHelper
{

	public static function getList(Registry $params, FlexbannersModel $model, CMSApplication $app)
	{
		$keywords = explode(',', $app->getDocument()->getMetaData('keywords'));
		$config   = ComponentHelper::getParams('com_flexbanners');

		$model->setState('filter.client_id', (int) $params->get('clienid'));
		$model->setState('filter.category_id', $params->get('catid', array()));
		$model->setState('list.limit', (int) $params->get('count', 1));
		$model->setState('list.start', 0);
		$model->setState('filter.ordering', $params->get('ordering'));
		$model->setState('filter.keywords', $keywords);
		$model->setState('filter.language', $app->getLanguageFilter());

		$flexbanners = $model->getItems();

		if ($flexbanners)
		{
			if ($config->get('track_robots_impressions', 1) == 1 || !Browser::getInstance()->isRobot())
			{
				$model->impress();
			}
		}

		return $flexbanners;
	}
	public static function getActions($categoryId = 0)
	{
		$user	= Factory::getUser();
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
		$user = Factory::getUser();
		$db = Factory::getDBO();
		$nullDate = $db->getNullDate();
		$now = Factory::getDate();
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

		$sql = "UPDATE `#__flexbanners` SET dailyimpressions=0, lastreset='" . date('Y-m-d') . "'
			  WHERE lastreset< '" . date('Y-m-d') . "' or lastreset IS NULL ";
		$db -> setQuery($sql);
		$db->execute();

		Table::addIncludePath(JPATH_COMPONENT . '/tables');
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

