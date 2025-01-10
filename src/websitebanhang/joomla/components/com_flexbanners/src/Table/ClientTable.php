<?php
/**
* @copyright   Copyright (C) 2005 - 2023 Inch Communications Ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

namespace Inch\Component\Flexbanners\Site\Table;

use Joomla\CMS\Language\Text;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableTableInterface;
use Joomla\Database\DatabaseDriver;

// phpcs:disable PSR1.Files.SideEffects
\defined('_JEXEC') or die;
// phpcs:enable PSR1.Files.SideEffects

class ClientTable extends Table implements VersionableTableInterface
{

    protected $_supportNullValue = true;

    public function __construct(DatabaseDriver $db)
    {
        $this->typeAlias = 'com_flexbanners.client';

        $this->setColumnAlias('published', 'state');

        parent::__construct('#__flexbannersclient', 'id', $db);
    }


    public function getTypeAlias()
    {
        return $this->typeAlias;
    }

    public function check()
    {
        try {
            parent::check();
        } catch (\Exception $e) {
            $this->setError($e->getMessage());

            return false;
        }

        // Check for valid name
        if (trim($this->name) === '') {
            $this->setError(Text::_('COM_FLEXBANNERS_WARNING_PROVIDE_VALID_NAME'));

            return false;
        }

        // Check for valid contact
        if (trim($this->contact) === '') {
            $this->setError(Text::_('COM_FLEXBANNERS_PROVIDE_VALID_CONTACT'));

            return false;
        }

        return true;
    }
}
