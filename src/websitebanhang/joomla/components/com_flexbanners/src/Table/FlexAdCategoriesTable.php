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

 \defined('_JEXEC') or die;

class flexAdCategoriesTable extends Table implements VersionableTableInterface  {

        var $id               = null;
        var $parent_id        = '';
        var $title            = '';
        var $name             = '';
        var $image            = '';
        var $section          = 0;
        var $image_position   = 0;
        var $description      = 0;
        var $state            = 0;
        var $checked_out      = 0;
	var $checked_out_time = 0;
        var $editor           = '';
        var $ordering         = 0;
        var $access           = 0;
        var $count            = 0;
        var $params           = 0;

		public function __construct(DatabaseDriver $db ) {

		parent::__construct( '#__categories', 'id', $db );
	
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

		// Check for valid categories
		if (trim($this->id) === '')
		{
			$this->setError(Text::_('COM_FLEXBANNERS_PROVIDE_VALID_ID'));

			return false;
		}

		return true;
	}

}
