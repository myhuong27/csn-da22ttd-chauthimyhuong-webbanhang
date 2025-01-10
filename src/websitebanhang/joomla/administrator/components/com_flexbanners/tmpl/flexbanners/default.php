<?php
/**
 * @copyright Copyright (C) 2009-2023 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

// no direct access
defined('_JEXEC') or die ;

use Joomla\CMS\Factory;
use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Multilanguage;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;
use Joomla\CMS\Session\Session;
use Joomla\CMS\Uri\Uri;

/** @var \Inch\Component\Flexbanners\Administrator\View\Flexbanners\HtmlView $this */

HTMLHelper::_('behavior.multiselect');

$user = Factory::getUser();
$userId = $user -> get('id');
$listOrder = $this->escape($this->state->get('list.ordering'));
$listDirn  = $this->escape($this->state->get('list.direction'));
$saveOrder = $listOrder == 'a.ordering';

if ($saveOrder && !empty($this->items))
{
	$saveOrderingUrl = 'index.php?option=com_flexbanners&task=flexbanners.saveOrderAjax&tmpl=component&' . Session::getFormToken() . '=1';
	HTMLHelper::_('draggablelist.draggable');
}
?>

<form action="<?php echo Route::_('index.php?option=com_flexbanners&view=flexbanners'); ?>" method="post" name="adminForm" id="adminForm">
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
					<table class="table" id="articleList">
						<caption class="visually-hidden">
							<?php echo Text::_('COM_FLEXBANNERS_FLEXBANNERS_TABLE_CAPTION'); ?>,
							<span id="orderedBy"><?php echo Text::_('JGLOBAL_SORTED_BY'); ?> </span>,
							<span id="filteredBy"><?php echo Text::_('JGLOBAL_FILTERED_BY'); ?></span>
						</caption>
						<thead>
							<tr>
								<td class="w-1 text-center">
									<?php echo HTMLHelper::_('grid.checkall'); ?>
								</th>
								<th scope="col" class="w-1 text-center d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'JSTATUS', 'a.state', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" class="w-1 text-center">
									<?php echo HTMLHelper::_('searchtools.sort', 'COM_FLEXBANNER_HEADING_NAME', 'a.name', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" class="w-10 text-center d-none d-md-table-cell">
									<?php echo Text::_('ADMIN_FLEXBANNER_BANNERIMAGE'); ?>
								</th>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'ADMIN_FLEXBANNER_CLIENT', 'a.clientid', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" class="w-7 text-center d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'ADMIN_FLEXBANNER_LOCATION', 'a.locationid', $listDirn, $listOrder); ?>
								</th>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo Text::_('ADMIN_FLEXBANNER_BANNERDAILYIMP'); ?>
								</th>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo Text::_('ADMIN_FLEXBANNER_BANNERIMPMADE'); ?>
								</th>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo Text::_('ADMIN_FLEXBANNER_BANNERCLICKS'); ?>
								</th>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo Text::_('ADMIN_FLEXBANNER_BANNERPERCENTCLICKS'); ?>
								</th>
								<?php if (Multilanguage::isEnabled()) : ?>
									<th scope="col" class="w-7 text-center d-none d-md-table-cell">
										<?php echo HTMLHelper::_('searchtools.sort', 'JGRID_HEADING_LANGUAGE', 'a.language', $listDirn, $listOrder); ?>
									</th>
								<?php endif; ?>
								<th scope="col" class="w-5 text-center d-none d-md-table-cell">
									<?php echo HTMLHelper::_('searchtools.sort', 'JGRID_HEADING_ID', 'a.id', $listDirn, $listOrder); ?>
								</th>
						</tr>
					</thead>
						<tbody <?php if ($saveOrder) :?> class="js-draggable" data-url="<?php echo $saveOrderingUrl; ?>" data-direction="<?php echo strtolower($listDirn); ?>" data-nested="true"<?php endif; ?>>
							<?php foreach ($this->items as $i => $item) :
							$ordering  = ($listOrder == 'ordering');
							$item->cat_link = Route::_('index.php?option=com_categories&extension=com_flexbanners&task=edit&type=other&clientid[]='. $item->catid);
							$canCreate  = $user->authorise('core.create',	  'com_flexbanners.category.'.$item->catid);
							$canEdit    = $user->authorise('core.edit',	  'com_flexbanners.category.'.$item->catid);
							$canCheckin = $user->authorise('core.manage',	  'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
							$canChange  = $user->authorise('core.edit.state', 'com_flexbanners.category.'.$item->catid) && $canCheckin;
							?>
								<tr class="row<?php echo $i % 2; ?>">
									<td class="text-center">
										<?php echo HTMLHelper::_('grid.id', $i, $item->id); ?>
									</td>
									<td class="text-center">
										<?php echo HTMLHelper::_('jgrid.published', $item->state, $i, 'flexbanners.', $canChange); ?>
									</td>
									<td scope="row">
										<div class="break-word">
											<?php if ($item->checked_out) : ?>
												<?php echo HTMLHelper::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'flexbanners.', $canCheckin); ?>
											<?php endif; ?>
											<?php if ($canEdit) : ?>
												<a href="<?php echo Route::_('index.php?option=com_flexbanners&task=flexbanner.edit&id=' . (int) $item->id); ?>" title="<?php echo Text::_('JACTION_EDIT'); ?> <?php echo $this->escape(addslashes($item->name)); ?>">
													<?php echo $this->escape($item->name); ?></a>
											<?php else : ?>
												<?php echo $this->escape($item->name); ?>
											<?php endif; ?>
											<div class="small break-word">
												<?php echo Text::sprintf('JGLOBAL_LIST_ALIAS', $this->escape($item->alias)); ?>
											</div>
											<div class="small">
												<?php echo Text::_('JCATEGORY') . ': ' . $this->escape($item->category_title); ?>
											</div>
										</div>
									</td>
									<td>
										<?php if($item->type == 0) { ?>
											<img src="<?php echo Uri::root() . "../" . $this -> escape($item -> imageurl); ?>" alt="<?php echo $this -> escape($item -> imagealt); ?>" width="110"/>
										<?php 
										} 
										elseif ($item->type == 1) 
										{
											echo $this->escape($item->imagealt)."<br /> (Flash Banner)";
										} 
										else 
										{
						 				?>
											<img src="<?php echo $this -> escape($item -> cloud_imageurl); ?>" alt="<?php echo $this -> escape($item -> imagealt); ?>" width="110"/>
										<?php } ?>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php echo $this->escape($item->client_name); ?>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php echo $item -> locationname; ?>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php echo $this -> escape($item -> dailyimpressions); ?>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php
										if ($this -> escape($item -> maximpressions != 0)) { $maximpdisplay = number_format($this -> escape($item -> maximpressions, 0));
										} else {$maximpdisplay = Text::_('ADMIN_FLEXBANNER_UNLIMITED');
										}
										echo number_format($this -> escape($item -> impmade), 0) . " of " . $maximpdisplay;
										?>
									</td>
									<td class="small hidden-sm-down text-center">
										<?php
										if ($this -> escape($item -> maxclicks != 0)) 
										{
											 $maxclickdisplay = number_format($this -> escape($item -> maxclicks, 0));
										} 
										else 
										{
											$maxclickdisplay = Text::_('ADMIN_FLEXBANNER_UNLIMITED');
										}
										echo number_format($this -> escape($item -> clicks, 0)) . " of " . $maxclickdisplay;
										?>
									</td>
									<td class="text-center nowrap">
										<?php 
										if ( $this->escape($item->impmade) != 0 ) {$percentClicks = substr(100 * $this->escape($item->clicks)/$this->escape($item->impmade), 0, 5);} else {$percentClicks = 0;}					
										echo (number_format(($percentClicks),2))."%";?>
									</td>
									<?php if (Multilanguage::isEnabled()) : ?>
										<td class="small d-none d-md-table-cell">
											<?php echo LayoutHelper::render('joomla.content.language', $item); ?>
										</td>
									<?php endif; ?>
									<td class="d-none d-md-table-cell">
										<?php echo $item->id; ?>
									</td>
								</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
					<?php // load the pagination. ?>
					<?php echo $this->pagination->getListFooter(); ?>

				<?php // Load the batch processing form. ?>
				<?php if ($user->authorise('core.create', 'com_flexbanners')
					&& $user->authorise('core.edit', 'com_flexbanners')
					&& $user->authorise('core.edit.state', 'com_flexbanners')) : ?>
					<?php echo HTMLHelper::_(
						'bootstrap.renderModal', 
						'collapseModal', 
						[
							'title' => Text::_('COM_FLEXBANNER_BATCH_OPTIONS'), 
							'footer' => $this -> loadTemplate('batch_footer')
							], 
							$this -> loadTemplate('batch_body')
						); ?>
				<?php endif; ?>
			<?php endif; ?>
			
			<input type="hidden" name="task" value="">
			<input type="hidden" name="boxchecked" value="0">
			<?php echo HTMLHelper::_('form.token'); ?>
			</div>
		</div>
	</div>
</form>
<div class="float-right mt-3 pr-3">
	<?php $paypal_image = Uri::base() . "components/com_flexbanners/images/btn_donate_SM.gif" ?>
	<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_blank">
	<input type="hidden" name="cmd" value="_s-xclick" />
	<input type="hidden" name="hosted_button_id" value="T7SLK82WHQS28" />
	<input type="image" src="<?php echo $paypal_image ?>" border="0" name="submit" title="PayPal - The safer, easier way to pay online!" alt="Donate with PayPal button" />
	<img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1" />
	<div><b><?php echo Text::_('ADMIN_FLEXBANNER_DONATE'); ?></b></div>
	</form>

</div>