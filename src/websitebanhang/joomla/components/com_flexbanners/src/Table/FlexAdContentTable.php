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

class flexAdContentTable extends Table implements VersionableTableInterface  {

        var $id               = null;
        var $sectionid        = 0;
        var $catid            = 0;

    public function __construct(DatabaseDriver $db ) {

        $this->typeAlias = 'com_contents.id';    

		parent::__construct( '#__content', 'id', $db );
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
