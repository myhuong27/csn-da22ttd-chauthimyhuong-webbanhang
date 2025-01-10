<?php
/**
* @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

namespace Inch\Component\Flexbanners\Administrator\Field;

\defined('JPATH_BASE') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Form\FormHelper;


use Joomla\CMS\Form\Field\ListField;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper;

jimport('joomla.html.html');
jimport('joomla.form.formfield');
jimport('joomla.form.helper');

FormHelper::loadFieldClass('list');

class FlexbannerchoosecatField extends ListField
{
	protected $type = 'FlexbannerChoosecat';

 protected function getInput()
	{
		// Initialize variables.
		$catlist = array();
		$selectedcategories = array();
		
		$db		= Factory::getDbo();
		$query	= $db->getQuery(true)

       // Build Category select list
	   ->select ('id, title')
	   ->from ('#__categories order by title');

	$db->setQuery($query);
	try
	{
		$catlist = $db->loadObjectList();
	}
	catch (\RuntimeException $e)
	{
		Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
	}

	if(count($catlist) < 1)

		$catlist = array('id'=> 0);
       	$selectedcategories = array();

	if ($this->form->getValue('id'))
	{
		$query	= $db->getQuery(true)
			->select('categoryid as id')
  			->from('#__flexbannersin')
			->where('bannerid = '. (int)$this->form->getValue('id'));

       	$db->setQuery($query);

		try
		{
			$selectedcategories = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

	}

       return \JHTML ::_('select.genericlist',$catlist, 'categoryid[]', 'class="inputbox" size="5", multiple="multiple"', 'id', 'title', $selectedcategories);

	}
}
	

