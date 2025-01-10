<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Field;

\defined('JPATH_BASE') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Form\FormHelper;


use Joomla\CMS\Form\Field\ListField;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper;

FormHelper::loadFieldClass('list');

class FlexbannercatField extends ListField
{

	protected $type = 'FlexbannerCat';

 protected function getInput()
	{
		// Initialize variables.
		$catlist = array();
		$categorylist = array();
		$selectedcategories = array();
		
		$db		= Factory::getDbo();
		$query	= $db->getQuery(true)

       // Build Category select list
	->select('id, title')
	->from('#__categories')
	->where('extension = "com_content"');

	$db->setQuery($query);

		// Check for a database error.
		try
		{
			$selectedcontent = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

	$categorylist = $db->loadObjectList();

       	$query	= $db->getQuery(true);

	if ($this->form->getValue('id')){
		$query->select('bannerid, categoryid as id');
  		$query->from('#__flexbannersin');
		$query->where('bannerid = '. (int)$this->form->getValue('id'));
       	$db->setQuery($query);

	  $selectedcategories = $db->loadObjectList();

		// Check for a database error.
		try
		{
			$selectedcontent = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

	}

	foreach ($categorylist as $categoryentry){
          $catlist[] = \JHTML::_('select.option',$categoryentry->id, $categoryentry->title, 'id','title');
        }
        return \JHTML ::_('select.genericlist',$catlist, 'categoryid[]', 'class="inputbox" size="5" multiple="multiple"', 'id', 'title', $selectedcategories);
	}
}
