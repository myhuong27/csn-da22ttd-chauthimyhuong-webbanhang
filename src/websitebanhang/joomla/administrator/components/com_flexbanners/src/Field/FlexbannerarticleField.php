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

FormHelper::loadFieldClass('list');

class FlexbannerarticleField extends ListField
{
	
	protected $type = 'FlexbannerArticle';

 protected function getInput()
	{
		// Initialize variables.
		$contentlist = array();
		$selectedcontent = array();

		$db		= Factory::getDbo();
		$query	= $db->getQuery(true)
		->select ('id, title, CONCAT(title, "(" , id, ")") AS titleid')
		->from ('#__content order by title');

	$db->setQuery($query);
		try
		{
			$contentlist = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

	if(count($contentlist) < 1)

	$contentlist = array('id'=> 0);

       	$selectedcontent = array();

	if ($this->form->getValue('id'))
	{
		$query	= $db->getQuery(true)
			->select('contentid as id')
  			->from('#__flexbannersin')
			->where('bannerid = '. (int)$this->form->getValue('id'));

       	$db->setQuery($query);

		try
		{
			$selectedcontent = $db->loadObjectList();
		}
		catch (\RuntimeException $e)
		{
			Factory::getApplication()->enqueueMessage($e->getMessage(), 'error');
		}

	}

       return \JHTML ::_('select.genericlist',$contentlist, 'contentid[]', 'class="inputbox" size="20", multiple="multiple"', 'id', 'titleid', $selectedcontent);

	}
}
