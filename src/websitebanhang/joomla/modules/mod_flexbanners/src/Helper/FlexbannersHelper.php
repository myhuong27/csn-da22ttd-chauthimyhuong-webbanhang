<?php
/**
* @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

namespace Inch\Module\Flexbanners\Site\Helper;

use Joomla\CMS\Application\ApplicationHelper;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableTableInterface;
use Joomla\Database\DatabaseDriver;
use Joomla\Database\ParameterType;
use Joomla\Registry\Registry;
use Joomla\Utilities\ArrayHelper;

use Joomla\CMS\Application\CMSApplication;
use Joomla\CMS\Environment\Browser;
use Inch\Component\Flexbanners\Site\Model\FlexbannersModel;

\defined('_JEXEC') or die;

class FlexbannersHelper 
{

	var $id             = null;
	var $clientid         = null;
	var $linkid           = null;
	var $sizeid           = null;
	var $imageurl         = null;
	var $imagealt         = null;
	var $customcode       = null;
	var $restrictbyid     = 0;
	var $frontpage    	  = 0;
	var $clicks           = 0;
	var $impmade          = 0;
	var $startdate        = null;
	var $enddate          = null;
	var $maximpressions   = null;
	var $maxclicks        = null;
	var $dailyimpressions = 0;
	var $lastreset        = '0000-00-00';
	var $state        	  = 0;
	var $finished         = 0;
    var $checked_out      = 0;
	var $checked_out_time = 0;
	var $editor           = '';
	var $juserid          = null;    


    public static function getList(Registry $params, FlexbannersModel $model, CMSApplication $app)
    {
        $keywords = explode(',', $app->getDocument()->getMetaData('keywords'));
        $config   = ComponentHelper::getParams('com_flexbanners');

        $model->setState('filter.client_id', (int) $params->get('cid'));
        $model->setState('filter.category_id', $params->get('catid', []));
        $model->setState('list.limit', (int) $params->get('count', 1));
        $model->setState('list.start', 0);
        $model->setState('filter.ordering', $params->get('ordering'));
        $model->setState('filter.tag_search', $params->get('tag_search'));
        $model->setState('filter.keywords', $keywords);
        $model->setState('filter.language', $app->getLanguageFilter());

        $flexbanners = $model->getItems();

        if ($flexbanners) {
            if ($config->get('track_robots_impressions', 1) == 1 || !Browser::getInstance()->isRobot()) {
                $model->impress();
            }
        }

        return $flexbanners;
    }

    public static function FlexAdBanner(DatabaseDriver $db)
    {
        $this->typeAlias = 'com_flexbanners.banner';

       $this->__construct('#__flexbanners', 'id', $db);
    
        $date = Factory::getDate();
        $this->created = $date->toSql();
//        $this->setColumnAlias('published', 'state');

    }
    public static function FlexBannersSWF($flexbannerwidth, $flexbannerheight, $link, $imageurl, $blankimageurl, $newwindow, $moduleclass_sfx, $nofollow) {
        $flexbannerie = $flexbannerheight + 20;
        return '
        <div class="flashcontent' . $moduleclass_sfx . '" style="overflow: hidden; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px;">
            <!-- this iframe is above the Flash, but below the div -->
            <iframe src="javascript:false" style="position:relative; top: 0px; left: 0px; display: none; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px; z-index: 5;" class="iframe" frameborder="0" scrolling="no"></iframe>
            <!-- iframe width is width of the div + borders, so 100 + 1 + 1 = 102 -->
            <!-- the div we want to be displayed above the Flash -->
            <div style="position: relative; top: 0px; left: 0px; z-index: 10; display: block; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px; background: none">
                <div class="advert' . $moduleclass_sfx . '" style="width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;">
                    <a ' . $nofollow . ' href="' . $link . '" style="width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;display:block;margin:0;padding:0;border:0;text-decoration:none;"
                    target="_blank" rel="noopener noreferrer"
                    ><img src="' . $blankimageurl . '" style="position: relative;float:left; top: 0px; left: 0px;width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;display:block;cursor: pointer;" alt="trans" />&nbsp;</a>
                </div>
            </div>
            <!-- this is the Flash element which we want as background -->
            <script type="text/javascript" src="' . JURI::base() . 'modules/mod_flexbanners/swfobject.js"></script>
            <script type="text/javascript">
        var params = { wmode: "transparent", movie: "' . $imageurl . '" };
        swfobject.registerObject("myFlashContent", "9.0.0");
            </script>
            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" onclick="window.location.href=\'' . $link . '\'" width=" ' . $flexbannerwidth . '" height=" ' . $flexbannerheight . '" style="position:relative;top:-' . $flexbannerheight . 'px!important;top:-'
        
            . $flexbannerie . 'px;">
                <param name="movie" value="' . $imageurl . '" />
                <param name="wmode" value="transparent"/>
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="' . $imageurl . '" width="' . $flexbannerwidth . '" height="' . $flexbannerheight . '" >
                    <param name="wmode" value="transparent"/>
                    <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflashplayer" > <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="Get Adobe Flash player" /> </a>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
        ';
       }
        
        public static function FlexBannersloadlast($flexbannerwidth, $flexbannerheight, $link, $imageurl, $flexbannerimagealt, $newwindow, $moduleclass_sfx, $nofollow) {
            if($newwindow) {
        return '
        <div class="advert' . $moduleclass_sfx  .'" style="display:block;width:' . $flexbannerwidth .'px;height:' . $flexbannerheight .'px;background:url(' . $imageurl .') no-repeat;">
            <a' . $nofollow . ' href="' . $link .'" style="width:' . $flexbannerwidth . 'px;height:' . $flexbannerheight . 'px;display:block;margin:0;padding:0;border:0;text-decoration:none;" target="_blank" rel="noopener noreferrer">
                &nbsp;</a>
        </div>
        ';
    } else {
        return '
        <div class="advert' . $moduleclass_sfx  .'" style="display:block;width:' . $flexbannerwidth .'px;height:' . $flexbannerheight .'px;background:url(' . $imageurl .') no-repeat;">
            <a' . $nofollow . ' href="' . $link .'" style="width:' . $flexbannerwidth . 'px;height:' . $flexbannerheight . 'px;display:block;margin:0;padding:0;border:0;text-decoration:none;" >
                &nbsp;</a>
        </div>
        ';
    }
        }
        public static function FlexBannersHtml5($flexbannerwidth, $flexbannerheight, $link, $imageurl, $flexbannerimagealt, $newwindow, $moduleclass_sfx, $nofollow, $blankimageurl) {
	
        $flexbannerwidth=$flexbannerwidth+2;$flexbannerheight=$flexbannerheight+2;
        return '	
        <div class="advert' . $moduleclass_sfx . '" style="overflow: hidden; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px;">
            <!-- this iframe is above the Flash, but below the div -->
            <iframe src="javascript:false" style="position:relative; top: 0px; left: 0px; display: none; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px; z-index: 5;" class="iframe" frameborder="0" scrolling="no"></iframe>
            <!-- iframe width is width of the div + borders, so 100 + 1 + 1 = 102 -->
            <!-- the div we want to be displayed above the html5 -->
            <div style="position: relative; top: 0px; left: 0px; z-index: 10; display: block; width: ' . $flexbannerwidth . 'px; height: ' . $flexbannerheight . 'px; background: none">
                <div class="advert' . $moduleclass_sfx . '" style="width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;">
                    <a ' . $nofollow . ' href="' . $link . '" style="width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;display:block;margin:0;padding:0;border:0;text-decoration:none;"'
                    . $newwiny . 'rel="noopener noreferrer"
                    ><img src="' . $blankimageurl . '" style="position: relative;float:left; top: 0px; left: 0px;width: ' . $flexbannerwidth . 'px;height: ' . $flexbannerheight . 'px;display:block;cursor: pointer;" alt="trans" />&nbsp;</a>
                </div>
            </div>
        <iframe src="' . $imageurl . '" width="'.$flexbannerwidth.'" height="'.$flexbannerheight.'" style="position:relative;top:-' . $flexbannerheight . 'px!important;'. $flexbannerie . 'px;border=0px;" frameborder="0"></iframe>
        </div>
        '; }
    public static function FlexBannersloadfirst($flexbannerwidth, $flexbannerheight, $link, $imageurl, $flexbannerimagealt, $newwindow, $moduleclass_sfx, $nofollow) {
        if($newwindow) {
        return '
        <div class="advert' . $moduleclass_sfx . '">
            <a' . $nofollow . ' href="' . $link . '" target="_blank" rel="noopener noreferrer" >
                <img src="' . $imageurl . '" alt="' . $flexbannerimagealt . '" title="' . $flexbannerimagealt . '" ' . ($flexbannerwidth ? 'width="' . $flexbannerwidth . '"' : '') . ($flexbannerheight ? ' height="' . $flexbannerheight . '"' : '') . '  />
                </a>
        </div>
        ';
    } else {
        return '
        <div class="advert' . $moduleclass_sfx . '">
            <a' . $nofollow . ' href="' . $link . '" >
                <img src="' . $imageurl . '" alt="' . $flexbannerimagealt . '" title="' . $flexbannerimagealt . '" ' . ($flexbannerwidth ? 'width="' . $flexbannerwidth . '"' : '') . ($flexbannerheight ? ' height="' . $flexbannerheight . '"' : '') . '  />
                </a>
        </div>
        ';
   }
    }
    public static function FlexBannersQuery($details) {


                       if ($details['frontpage'] == 1)  {
                           $contentif = "AND IF((select count(distinct a.id) from `#__flexbanners` 
                                       where `a`.`frontpage` = 1)>0,
                                      `a`.`id` in (SELECT `a`.`id` from `#__flexbanners`
                                                                      WHERE `a`.`frontpage` = 1) 
                                                                      AND `a`.`restrictbyid`=1,
                                      `a`.`restrictbyid`=0)";
                       } elseif(!is_null($details['contentid']) and $details['categoryid'] == 0 and $details['sectionid'] == 0) {
                           $contentif = "AND IF((select count(distinct bannerid) from `#__flexbannersin` as i
                                       WHERE `i`.`contentid` = " . $details['contentid'] . ")>0,
                                      `a`.`id` in (SELECT `i`.`bannerid` FROM `#__flexbannersin` as i
                                                                   WHERE `i`.`contentid` = '" . $details['contentid'] . "') 
                                                                   AND `a`.`restrictbyid`=1,
                                      `a`.`restrictbyid`=0)";                      



                        } elseif(!is_null($details['contentid'])) {
                            $contentif = "AND IF((select count(distinct a.id) from `#__flexbannersin` as i where `i`.`contentid` = " . $details['contentid'] . ")>0,
                                       `a`.`id` in (SELECT `i`.`bannerid` FROM `#__flexbannersin` as i WHERE `i`.`contentid` = '" . $details['contentid'] . "') AND `a`.`restrictbyid`=1,
                                       IF(`a`.`restrictbyid` and (select count(distinct a.id) FROM `#__flexbannersin` as i WHERE `i`.`categoryid` = " . $details['categoryid'] . ")>0,
                                          `a`.`id` in (SELECT `i`.`bannerid` FROM `#__flexbannersin` as i WHERE `i`.`categoryid` = '" . $details['categoryid'] . "') AND `a`.`restrictbyid`=1,
                                          `a`.`restrictbyid`=0))";

                            } elseif(!is_null($details['categoryid'])) {
                                $contentif = "AND IF((select count(distinct a.id) from `#__flexbannersin` as i WHERE `i`.`categoryid` = " . $details['categoryid'] . ")>0,
                                    `a`.`id` in (SELECT `i`.`bannerid` FROM `#__flexbannersin` as i WHERE `i`.`categoryid` = '" . $details['categoryid'] . "') AND `a`.`restrictbyid`=1,
                                        `a`.`restrictbyid`=0)";
    
            } else {
                $contentif = "AND a.restrictbyid=0";
            }

            return $contentif;
        }
    

   }
