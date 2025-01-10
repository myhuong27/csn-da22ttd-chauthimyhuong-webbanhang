<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_rd_search_expander
 *
 * @copyright   Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Add the javascript files
$document = JFactory::getDocument();

// Inlcude jQuery if required
if ( $params ->get( 'include-jquery' ) == 1 ){
JHtml::_('jquery.framework', false);
}
$document->addScript(JURI::base() . 'modules/mod_rd_search_expander/assets/js/expander.js');

// Include CSS file
$document->addStylesheet(JURI::base() . 'modules/mod_rd_search_expander/assets/css/expander.css');

$lang = JFactory::getLanguage();
$app  = JFactory::getApplication();

if ($params->get('opensearch', 1))
{
	$doc = JFactory::getDocument();

	$ostitle = $params->get('opensearch_title', JText::_('MOD_RD_SEARCH_EXPANDER_SEARCHBUTTON_TEXT') . ' ' . $app->get('sitename'));
	$doc->addHeadLink(
			JUri::getInstance()->toString(array('scheme', 'host', 'port'))
			. JRoute::_('&option=com_search&format=opensearch'), 'search', 'rel',
			array(
				'title' => htmlspecialchars($ostitle, ENT_COMPAT, 'UTF-8'),
				'type' => 'application/opensearchdescription+xml'
			)
		);
}

$upper_limit     = $lang->getUpperLimitSearchWord();
$width           = (int) $params->get('width');
$maxlength       = $upper_limit;
$text            = htmlspecialchars($params->get('text', JText::_('MOD_RD_SEARCH_EXPANDER_SEARCHBOX_TEXT')), ENT_COMPAT, 'UTF-8');
$set_Itemid      = (int) $params->get('set_itemid', 0);
$moduleclass_sfx = htmlspecialchars($params->get('moduleclass_sfx'), ENT_COMPAT, 'UTF-8');

$mitemid = $set_Itemid > 0 ? $set_Itemid : $app->input->get('Itemid');
require JModuleHelper::getLayoutPath('mod_rd_search_expander', $params->get('layout', 'default'));
