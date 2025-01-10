<?php
/**
 * @package     Joomla.Site
 * @subpackage  mod_rd_search_expander
 *
 * @copyright   Copyright (C) 2017 Peter Reill. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<div id="sb-search" class="sb-search">
	<form action="<?php echo JRoute::_('index.php');?>" method="post" class="form-inline">
		<input class="sb-search-input" onkeyup="buttonUp();" placeholder="<?php echo $text; ?>" onblur="monkey();" type="text" name="searchword" id="search" >
		<input class="sb-search-submit" type="submit" value="">
		<input type="hidden" name="task" value="search" />
		<input type="hidden" name="option" value="com_search" />
		<input type="hidden" name="Itemid" value="<?php echo $mitemid; ?>" />
		<span class="sb-icon-search"></span>
	</form>
</div>
