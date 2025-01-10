<?php
/**
* @copyright Copyright (C) 2009-2020 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Object\CMSObject;
use Joomla\CMS\Router\Route;

/** @var \Inch\Component\Flexbanners\Administrator\View\Clients\HtmlView $this */

HTMLHelper::_('behavior.multiselect');

$user       = Factory::getUser();
$userId     = $user->get('id');
$listOrder  = $this->escape($this->state->get('list.ordering'));
$listDirn   = $this->escape($this->state->get('list.direction'));
$params     = $this->state->params ?? new CMSObject;
?>
<form action="<?php echo Route::_('index.php?option=com_flexbanners&view=clients'); ?>" method="post" name="adminForm" id="adminForm">
	<div class="row">
       <div class="col-md-12">
			<div id="j-main-container" class="j-main-container">
				<?php
				// Search tools bar
				echo LayoutHelper::render('joomla.searchtools.default', ['view' => $this]);
				?>
				<?php if (empty($this->items)) : ?>
					<div class="alert alert-info">
						<span class="fa fa-info-circle" aria-hidden="true"></span><span class="sr-only"><?php echo Text::_('INFO'); ?></span>
						<?php echo Text::_('JGLOBAL_NO_MATCHING_RESULTS'); ?>
					</div>
				<?php else : ?>
				<table class="table">
						<caption id="captionTable" class="sr-only">
							<?php echo Text::_('COM_FLEXBANNERS_CLINTS_TABLE_CAPTION'); ?>, <?php echo Text::_('JGLOBAL_SORTED_BY'); ?>
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
									<?php echo HTMLHelper::_('searchtools.sort', 'ADMIN_FLEXBANNER_CLIENTNAME', 'a.name', $listDirn, $listOrder); ?>
								</th>
								<th style="width:15%" class="hidden-sm-down text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'ADMIN_FLEXBANNER_CONTACTNAME', 'a.contactname', $listDirn, $listOrder); ?>
								</th>
								<th style="width:3%" class="nowrap text-center hidden-sm-down">
                                    <span class="icon-publish hasTooltip" aria-hidden="true" title="<?php echo JText::_('COM_FLEXBANNERS_COUNT_PUBLISHED_ITEMS'); ?>">
                                        <span class="sr-only"><?php echo JText::_('COM_FLEXBANNERS_COUNT_PUBLISHED_ITEMS'); ?></span>
                                    </span>
								</th>
								<th style="width:3%" class="nowrap text-center hidden-sm-down">
                                    <span class="icon-unpublish hasTooltip" aria-hidden="true" title="<?php echo JText::_('COM_FLEXBANNERS_COUNT_UNPUBLISHED_ITEMS'); ?>">
                                        <span class="sr-only"><?php echo JText::_('COM_FLEXBANNERS_COUNT_UNPUBLISHED_ITEMS'); ?></span>
                                    </span>
								</th>
								<th style="width:3%" class="nowrap text-center hidden-sm-down">
                                    <span class="icon-archive hasTooltip" aria-hidden="true" title="<?php echo JText::_('COM_FLEXBANNERS_COUNT_ARCHIVED_ITEMS'); ?>">
                                        <span class="sr-only"><?php echo JText::_('COM_FLEXBANNERS_COUNT_ARCHIVED_ITEMS'); ?></span>
                                    </span>
								</th>
								<th style="width:3%" class="nowrap text-center hidden-sm-down">
                                    <span class="icon-trash hasTooltip" aria-hidden="true" title="<?php echo JText::_('COM_FLEXBANNERS_COUNT_TRASHED_ITEMS'); ?>">
                                        <span class="sr-only"><?php echo JText::_('COM_FLEXBANNERS_COUNT_TRASHED_ITEMS'); ?></span>
                                    </span>
								</th>
								<th style="width:3%" class="nowrap hidden-sm-down text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
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
										<?php echo HTMLHelper::_('grid.id', $i, $item->clientid); ?>
									</td>
									<td class="text-center">
										<?php echo HTMLHelper::_('jgrid.published', $item->state, $i, 'clients.', $canChange); ?>
									</td>
									<td scope="row" class="has-context">
										<div>
											<?php if ($item->checked_out) : ?>
												<?php echo HTMLHelper::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'clients.', $canCheckin); ?>
											<?php endif; ?>
											<?php if ($canEdit) : ?>
												
												<a class="hasTooltip" href="<?php echo Route::_('index.php?option=com_flexbanners&task=client.edit&clientid=' . (int) $item->clientid); ?>" title="<?php echo JText::_('JACTION_EDIT'); ?> <?php echo $this->escape(addslashes($item->name)); ?>">
													<?php echo $this->escape($item->name); ?></a>
											<?php else : ?>
												<?php echo $this->escape($item->name); ?>
											<?php endif; ?>
										</div>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php echo $item->contactname; ?>
									</td>
									<td class="center btns hidden-md-down">
										<a class="badge <?php if ($item->count_published > 0) echo 'badge-success'; ?>" href="<?php echo JRoute::_('index.php?option=com_flexbanners&view=banners&filter["client_id"]=' . (int) $item->id . '&filter[published]=1'); ?>">
											<?php echo $item->count_published; ?></a>
									</td>
									<td class="center btns hidden-md-down">
										<a class="badge <?php if ($item->count_unpublished > 0) echo 'badge-important'; ?>" href="<?php echo JRoute::_('index.php?option=com_flexbanners&view=banners&filter["client_id"]=' . (int) $item->id . '&filter[published]=0'); ?>">
											<?php echo $item->count_unpublished; ?></a>
									</td>
									<td class="center btns hidden-md-down">
										<a class="badge <?php if ($item->count_archived > 0) echo 'badge-info'; ?>" href="<?php echo JRoute::_('index.php?option=com_flexbanners&view=banners&filter["client_id"]=' . (int) $item->id . '&filter[published]=2'); ?>">
											<?php echo $item->count_archived; ?></a>
									</td>
									<td class="center btns hidden-md-down">
										<a class="badge <?php if ($item->count_trashed > 0) echo 'badge-inverse'; ?>" href="<?php echo JRoute::_('index.php?option=com_flexbanners&view=banners&filter["client_id"]=' . (int) $item->id . '&filter[published]=-2'); ?>">
											<?php echo $item->count_trashed; ?></a>
									</td>
									<td class="hidden-sm-down text-center">
										<?php echo $item->clientid; ?>
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
