<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Field;

\defined('JPATH_BASE') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Form\Field\ListField;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper;

class FlexbannerchooselocationField extends ListField
{
	protected $type = 'FlexbannerchooseLocation';

	protected function getOptions()
	{
		// Initialize variables.
		$loclist = array();

		$db		= Factory::getDbo();
		$query	= $db->getQuery(true)

		->select('locationid AS value, name AS text')
		->from('#__flexbannerslocations AS a')
		->order('a.name');

		// Get the options.
		$db->setQuery($query);

		try 
		{
			$options = $db -> loadObjectList();
		} 
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

		  array_unshift($options, HTMLHelper::_('select.option', '', Text::_('MOD_FLEXBANNER_LOCATIONID'), 'text'));
		  return $options;
   
	   }
   }
	   
   
