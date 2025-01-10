<?php
/**
 * @copyright Copyright (C) 2009 - 2024 inch communications ltd
 * @license     GNU General Public License version 2 or later.
 */

// no direct access
\defined('_JEXEC') or die ;


use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\MVC\Controller\BaseController;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Object\CMSObject;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Table\Table;


use Joomla\CMS\Helper\ModuleHelper;
use Inch\Component\Flexbanners\Administrator\Helper\FlexbannersHelper as FlexbannersComponentHelper;
use Inch\Module\Flexbanners\Site\Helper\FlexbannersHelper;

// Include the functions only once
//require_once JPATH_SITE . '/components/com_flexbanners/helpers/flexbanners.php';

// locationid must be an integer
$locationid = intval($params -> get('locationid', ''));
if ($params -> get('moduleclass_sfx')) {
	$moduleclass_sfx = htmlspecialchars($params -> get('moduleclass_sfx'));
	}
	else{$moduleclass_sfx="";}
$botlist = "/(google|msnbot|rambler|yahoo|abachobot|accoona|dotbot|aciorobot|aspseek|cococrawler|dumbot|fast-webcrawler|geonabot|gigabot|lycos|msrbot|scooter|altavista|idbot|estyle|scrubby|googlebot|yahoo! slurp|voilabot|zyborg|webcrawler|deepindex|teoma|appie|henrilerobotmirago|psbot|szukacz|openbot|naver)+/i";
$isBrowser = true;

if( !isset( $_SERVER['HTTP_USER_AGENT'])){
    $isBrowser = false;
}else{
if (preg_match($botlist, strtolower($_SERVER['HTTP_USER_AGENT'])))
	$isBrowser = false;
}
$app = Factory::getApplication();
$input = Factory::getApplication()->input;

$flexbannerid = intval(Joomla\CMS\Factory::getApplication()->getInput()->get('id'));

$task = NULL;
$menu = $app->getMenu();
$menu = $menu->getActive();

if ($menu->home == 1) { 
	$task = "frontpage";
	$menus=1;
} ELSE {
	$task = $menu->query['view'];
	$menus=0;
}

$loadlast = ($params -> get('loadlast', 0));
$enablecsa = ($params -> get('enablecsa', 0));
$enabletrans = ($params -> get('enabletrans', 0));
$enablenofollow = ($params -> get('enablenofollow', 0));
$details = array("sectionid" => NULL, "categoryid" => NULL, "contentid" => NULL, "langaugeid" => NULL, "frontpage" => NULL);
$blankimageurl = JURI::base() . JRoute::_('modules/mod_flexbanners/trans.gif');
$numberbanner = ($params -> get('numberbanner', 1));
$orderbanner = ($params -> get('ordering', 1));
$headerText = trim($params->get('header_text', ''));
$footerText = trim($params->get('footer_text', ''));
$nofollow = '';
if ($enablenofollow) {
	$nofollow = ' rel="nofollow"';
}
$db = Factory::getDBO();
$query = $db -> getQuery(true);
$conf = Factory::getConfig();
$fb_language = 0;
$iso_client_lang = $conf -> get('language');
$iso_client_lang = '"' . $iso_client_lang . '"';
$flexbanners2 = array();
$user   = JFactory::getUser();
$groups = implode(',', $user->getAuthorisedViewLevels());


// Detecting Active Variables
$option = $app->input->getCmd('option', '');
$view = $app->input->getCmd('view', '');
$layout = $app->input->getCmd('layout', '');
//$task = $app->input->getCmd('task', '');
$itemid = $app->input->getCmd('Itemid', '');
$id = $app->input->getCmd('id', '');
// $catid = $app->input->getCmd('catid', '');

//$x=0;while ($x<1) {dd($id);echo 'Category: '.$cat;exit;};$x++;	

//Get the active menu item
switch($task) {

	case 'article' :
		$contentitem = Table::getInstance('FlexAdContentTable', '\\Inch\\Component\\Flexbanners\\Site\\Table\\');
//		$contentitem = new flexAdContent($db);
		$contentitem -> load($flexbannerid);
		$details = array("categoryid" => $contentitem -> catid, "contentid" => $contentitem -> id, "frontpage" => NULL);
		break;
	case 'blogcategory' :
	case 'category' :
		$category = Table::getInstance('FlexAdCategoriesTable', '\\Inch\\Component\\Flexbanners\\Site\\Table\\');
//		$category = new flexAdCategories($db);
//$category = $app->input->getCmd('id', '');	
		$category -> load($flexbannerid);
 
		$details = array("categoryid" => $category -> id, "contentid" => NULL, "frontpage" => NULL);
			
		break;
	case 'blogsection' :

	case 'frontpage' :
		$details = array("contentid" => NULL, "langaugeid" => NULL, "frontpage" => 1);
		break;
	default :

		// echo "Not in a category or content item view";
		break;
}

$contentif = '';
	$details['menu']=$menus;

	if ($enablecsa == 1) {
	$contentif = FlexbannersHelper::FlexBannersQuery($details);
}

	$sql = "UPDATE `#__flexbanners` SET dailyimpressions=0, lastreset='" . date('Y-m-d') . "'
		  WHERE lastreset< '" . date('Y-m-d') . "' or lastreset IS NULL ";
	$db -> setQuery($sql);
	$db->execute();
	
$query = $db->getQuery(true);
$query->select(
	[
				'a.id',
				'a.catid',
				'a.imageurl',
				'a.flash',
				'a.cloud_imageurl',
				'a.imagealt',
				'a.type',
				'a.customcode',
				'a.startdate',
				'a.enddate',
				'a.lastreset',
				'a.impmade',
				'a.clicks',
				'a.maximpressions',
				'a.maxclicks',
				'a.linkid',
				'a.language',
				'a.newwin',
				'a.restrictbyid',
				'a.dailyimpressions',
				's.height',
				   's.width',
								
		 ]
		)
	->from('#__flexbanners AS a')
		->join('INNER', '#__flexbannerssize AS s USING (sizeid)')
		->join('INNER', '#__categories AS c')
		->where(('a.locationid') . ' = ' . $locationid ." ". $contentif)
		->where(('a.state') . ' = 1')
		->where(('a.finished') . ' = 0')
		->where('('.(('a.language') . ' = ' . $iso_client_lang . ' or ' . ('a.language') . ' = "*"').')')
		->where(('c.id') . ' = ' . ('a.catid'))
		->where(('c.access') . ' IN ( ' . $groups . ' )'
		); 

	$db -> setQuery($query);

try {
		$flexbanners = $db -> loadObjectList();
	} catch (RuntimeException $e) {
		JError::raiseWarning(500, $e -> getMessage());
		return false;
	}

	$newwindow = ($params -> get('newwin', 0));

if (count($flexbanners) > 0) {

	if ($orderbanner == "up") { asort($flexbanners);
	}
	if ($orderbanner == "random") {
		// Randomise the banner sequence
		shuffle($flexbanners);
	}

	// Adjust the banner count if too few selected
	$numberbanner = min($numberbanner, count($flexbanners));
	$flexbanners2 = array_slice($flexbanners, 0, $numberbanner);
}
if (!empty($flexbanners2)) {
// Display the selected banners
require (JModuleHelper::getLayoutPath('mod_flexbanners','header'));
foreach ($flexbanners2 as $flexbannernow) {
//	$flexbannerdetails = new flexAdBanner($db);
	$flexbannerdetails = Table::getInstance('FlexAdBannerTable', '\\Inch\\Component\\Flexbanners\\Site\\Table\\');
	$flexbannerdetails -> load($flexbannernow -> id);

	$link = Route::_('index.php?option=com_flexbanners&task=click&id=' . $flexbannernow -> id);

	if ( $flexbannernow -> type == 3 ) {
		$imageurl = $flexbannernow -> cloud_imageurl;
	} elseif ( $flexbannernow -> type == 1 ){	
		$imageurl = JURI::base() . Route::_('/images/banners/' . str_replace(" ", "%20", $flexbannernow -> flash));
	} else {
		$imageurl = JURI::base() . Route::_(str_replace(" ", "%20", $flexbannernow -> imageurl));
	}
	$flexbannerwidth = $flexbannernow -> width;
	$flexbannerheight = $flexbannernow -> height;
	$flexbannerimagealt = $flexbannernow -> imagealt;
	$newwindow = $flexbannernow -> newwin;

	if ($flexbannernow -> type == 2) {
		trim($flexbannernow -> customcode);
		echo stripslashes($flexbannernow -> customcode);
	} elseif (($flexbannernow -> type == 1) && (preg_match("/swf/", $imageurl))) {
		$flexbannerdisplay = FlexbannersHelper::FlexBannersSWF($flexbannerwidth, $flexbannerheight, $link, $imageurl, $blankimageurl, $newwindow, $moduleclass_sfx, $nofollow);
		require (JModuleHelper::getLayoutPath('mod_flexbanners'));
	} elseif ($flexbannernow -> type == 1)  {
		$flexbannerdisplay = FlexbannersHelper::FlexBannersHtml5($flexbannerwidth, $flexbannerheight, $link, $imageurl, $blankimageurl, $newwindow, $moduleclass_sfx, $nofollow, $blankimageurl);
		require (JModuleHelper::getLayoutPath('mod_flexbanners'));
	} else {
		if ($loadlast) {
			$flexbannerdisplay = FlexbannersHelper::FlexBannersloadlast($flexbannerwidth, $flexbannerheight, $link, $imageurl, $flexbannerimagealt, $newwindow, $moduleclass_sfx, $nofollow);
			require (JModuleHelper::getLayoutPath('mod_flexbanners'));
		} else {
			$flexbannerdisplay = FlexbannersHelper::FlexBannersloadfirst($flexbannerwidth, $flexbannerheight, $link, $imageurl, $flexbannerimagealt, $newwindow, $moduleclass_sfx, $nofollow);
			require (JModuleHelper::getLayoutPath('mod_flexbanners'));
		}
	}
	if ($isBrowser == 1) {
		$flexbannerdetails -> impmade ++;
		$flexbannerdetails -> dailyimpressions ++;
	}

	$flexbannerdetails -> store();
}
require (JModuleHelper::getLayoutPath('mod_flexbanners','footer'));
}
?>
