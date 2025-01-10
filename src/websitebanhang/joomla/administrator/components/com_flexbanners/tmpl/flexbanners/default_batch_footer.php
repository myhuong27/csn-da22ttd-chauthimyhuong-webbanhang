<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_flexbanners
 *
 * @copyright   Copyright (C) 2005 - 2020 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

use Joomla\CMS\Language\Text;

/** @var \Inch\Component\Flexbanners\Administrator\View\Flexbanners\HtmlView $this */

?>
<button type="button" class="btn btn-secondary" onclick="document.getElementById('batch-category-id').value='';document.getElementById('batch-client-id').value='';document.getElementById('batch-language-id').value=''" data-dismiss="modal">
	<?php echo Text::_('JCANCEL'); ?>
</button>
<button type="submit" class="btn btn-success" onclick="Joomla.submitbutton('flexbanner.batch');return false;">
	<?php echo Text::_('JGLOBAL_BATCH_PROCESS'); ?>
</button>
