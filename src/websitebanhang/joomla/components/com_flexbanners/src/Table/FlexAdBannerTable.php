<?php

/**
 * @copyright Copyright (C) 2009 - 2023 inch communications ltd
 * @license     GNU General Public License version 2 or later.
 */

namespace Inch\Component\Flexbanners\Site\Table;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableTableInterface;
use Joomla\Database\DatabaseDriver;

/*
use Joomla\CMS\Application\CMSApplication;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Environment\Browser;
use Inch\Component\Flexbanners\Site\Model\FlexbannersModel;
use Joomla\Registry\Registry;
*/
\defined('_JEXEC') or die;

class flexAdBannerTable extends Table implements VersionableTableInterface 
{

    protected $_supportNullValue = true;

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

	public function __construct(DatabaseDriver $db ) {

		$this->typeAlias = 'com_flexbanners.id';

//		$this->setColumnAlias('id');

		parent::__construct( '#__flexbanners', 'id', $db );

	}


	public function getTypeAlias()
	{
		return $this->typeAlias;
	}


	public function check()
	{
		try
		{
			parent::check();
		}
		catch (\Exception $e)
		{
			$this->setError($e->getMessage());

			return false;
		}

		// Check for valid contact
		if (trim($this->id) === '')
		{
			$this->setError(Text::_('COM_FLEXBANNERS_PROVIDE_VALID_ID'));

			return false;
		}

		return true;
	}

}
