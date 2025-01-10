<?php
/**
 * @copyright   Copyright (C) 2005 - 2021 Inch Communications Ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */
namespace Inch\Component\Flexbanners\Administrator\Table;

\defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableTableInterface;
use Joomla\Database\DatabaseDriver;

class LocationTable extends Table
{
		protected $_supportNullValue = true;
		
	public function __construct(DatabaseDriver $db)
	{
		$this->typeAlias        = 'com_flexbanners.location';

		$this->setColumnAlias('published', 'state');

		parent::__construct('#__flexbannerslocations', 'locationid', $db);
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

		// Check for valid name
		if (trim($this->name) === '')
		{
			$this->setError(Text::_('COM_FLEXBANNERS_WARNING_PROVIDE_VALID_NAME'));

			return false;
		}

		return true;
	}
 
}
		