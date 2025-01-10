<?php

/**
 * @copyright Copyright (C) 2009 - 2023 inch communications ltd
 * @license     GNU General Public License version 2 or later.
 */

namespace Inch\Module\Flexbanners\Site\Model;

use Joomla\CMS\Application\CMSApplication;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Environment\Browser;
use Inch\Component\Flexbanners\Site\Model\FlexbannerModel;
use Joomla\CMS\MVC\Model\BaseDatabaseModel;
use Joomla\Registry\Registry;

\defined('_JEXEC') or die;

class FlexAdBannerModel extends BaseDatabaseModel {
	var $id     = null;
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

	function __construct( $db ) {
		parent::__construct( '#__flexbanners', 'id', $db );
	}

	function check() {

		return true;
	}
}
