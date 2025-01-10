<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Session\Session;


/** @var \Inch\Component\Flexbanners\Administrator\View\Locations\HtmlView $this */

HTMLHelper::_('behavior.multiselect');

$user       = Factory::getUser();
$userId     = $user->get('id');
$listOrder  = $this->escape($this->state->get('list.ordering'));
$listDirn   = $this->escape($this->state->get('list.direction'));
$saveOrder = $listOrder == 'a.ordering';

if ($saveOrder && !empty($this->items))
{
	$saveOrderingUrl = 'index.php?option=com_flexbanners&task=locations.saveOrderAjax&tmpl=component&' . Session::getFormToken() . '=1';
	HTMLHelper::_('draggablelist.draggable');
}
?>

<form action="<?php echo Route::_('index.php?option=com_flexbanners&view=locations'); ?>" method="post" name="adminForm" id="adminForm">
	<div class="row">
       <div class="col-md-12">
			<div id="j-main-container" class="j-main-container">
				<?php
					// Search tools bar
					echo LayoutHelper::render('joomla.searchtools.default', array('view' => $this, 'options' => array('filterButton' => false))); 
				?>
				<?php if (empty($this->items)) : ?>
					<div class="alert alert-info">
						<span class="fa fa-info-circle" aria-hidden="true"></span><span class="sr-only"><?php echo Text::_('INFO'); ?></span>
						<?php echo Text::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
					</div>
				<?php else : ?>
				<table class="table">
						<caption id="captionTable" class="sr-only">
							<?php echo Text::_('COM_FLEXBANNERS_LOCATIONS_TABLE_CAPTION'); ?>, <?php echo Text::_('JGLOBAL_SORTED_BY'); ?>
						</caption>
						<thead>
							<tr>
								<th style="width:1%" class="text-center">
									<?php echo HTMLHelper::_('grid.checkall'); ?>
								</th>
								<th scope="col" style="width:1%" class="text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'JSTATUS', 'a.state', $listDirn, $listOrder); ?>
								</th>
								<th scope="col">
									<?php echo HTMLHelper::_('searchtools.sort', 'ADMIN_FLEXBANNER_LOCATIONNAME', 'a.name', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" style="width:3%" class="text-center d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'JGRID_HEADING_ID', 'a.locationid', $listDirn, $listOrder); ?>
								</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($this->items as $i => $item) :
								$canCreate  = $user->authorise('core.create',     'com_flexbanners');
								$canEdit    = $user->authorise('core.edit',       'com_flexbanners');
								$canCheckin = $user->authorise('core.manage',     'com_checkin') || $item->checked_out == $user->get('id') || $item->checked_out == 0;
								$canChange  = $user->authorise('core.edit.state', 'com_flexbanners') && $canCheckin;
								?>
								<tr class="row<?php echo $i % 2; ?>">
									<td class="text-center">
										<?php echo HTMLHelper::_('grid.id', $i, $item->locationid); ?>
									</td>
									<td class="text-center">
										<?php echo HTMLHelper::_('jgrid.published', $item->state, $i, 'locations.', $canChange); ?>
									</td>
									<td scope="row" class="has-context">
										<div>
											<?php if ($item->checked_out) : ?>
												<?php echo HTMLHelper::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'locations.', $canCheckin); ?>
											<?php endif; ?>
											<?php if ($canEdit) : ?>
												<a href="<?php echo Route::_('index.php?option=com_flexbanners&task=location.edit&locationid=' . (int) $item->locationid); ?>" title="<?php echo Text::_('JACTION_EDIT'); ?> <?php echo $this->escape(addslashes($item->name)); ?>">
													<?php echo $this->escape($item->name); ?></a>
											<?php else : ?>
												<?php echo $this->escape($item->name); ?>
											<?php endif; ?>
								</div>
							</td>

									<td class="small d-none d-md-table-cell">
										<?php echo $item->locationid; ?>
									</td>
						</tr>
					<?php endforeach; ?>
				</tbody>
			</table>

					<?php // Load the pagination. ?>
					<?php echo $this->pagination->getListFooter(); ?>

			<?php endif; ?>

				<input type="hidden" name="task" value="">
				<input type="hidden" name="boxchecked" value="0">
				<?php echo HTMLHelper::_('form.token'); ?>
			</div>
		</div>
	</div>
</form>
