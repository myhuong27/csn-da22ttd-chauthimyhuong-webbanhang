<?php
/**

 * @subpackage  mod_chatandbot
 * @link            https://chatandbot.com
 * @copyright   (C) 2022 Chatandbot.com
 * @license     GNU General Public License version 2 or later;
 */
 


defined('_JEXEC') or die;

use Joomla\CMS\Helper\ModuleHelper;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Plugin\PluginHelper;



if ($params->def('prepare_content', 1))
{
 

 
	PluginHelper::importPlugin('content');
 $js_code=$params->get('js');
 $f_param='<script async="true" type="text/javascript">';
 $s_param='</script>';
 
 if (strripos($js_code,$f_param)===false){
  $js_code =$f_param.$js_code;
  
 }
 
 if (strripos($js_code,$s_param)===false){
  $js_code =$js_code.$s_param;
  
 }
 
 $module->content=$js_code;
 

}

require ModuleHelper::getLayoutPath('mod_chatandbot', $params->get('layout', 'default'));
