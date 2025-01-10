<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Layout\LayoutHelper;

$displayData = [
	'textPrefix' => 'COM_FLEXBANNERS',
	'formURL'    => 'index.php?option=com_flexbanners&view=flexbanners',
	'icon'       => 'icon-bookmark flexbanners',
];

$user = Factory::getApplication()->getIdentity();

if ($user->authorise('core.create', 'com_flexbanners') || count($user->getAuthorisedCategories('com_flexbanners', 'core.create')) > 0)
{
	$displayData['createURL'] = 'index.php?option=com_flexbanners&task=flexbanner.add';
}

echo LayoutHelper::render('joomla.content.emptystate', $displayData);
