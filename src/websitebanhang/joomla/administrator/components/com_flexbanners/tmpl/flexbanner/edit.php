<?php
/**
 * @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
 */

// no direct access

defined('_JEXEC') or die ;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;

/** @var \Inch\Component\Flexbanners\Administrator\View\Flexbanner\HtmlView $this */

/** @var Joomla\CMS\WebAsset\WebAssetManager $wa */
$wa = $this -> document -> getWebAssetManager();
$wa -> useScript('keepalive') -> useScript('form.validate') -> useScript('com_flexbanners.admin-flexbanner-edit');
?>	

<form action="<?php echo Route::_('index.php?option=com_flexbanners&layout=edit&id=' . (int)$this -> item -> id); ?>" method="post" name="adminForm" id="flexbanner-form" aria-label="<?php echo Text::_('COM_BFLEXANNERS_BANNER_FORM_' . ((int)$this -> item -> id === 0 ? 'NEW' : 'EDIT'), true); ?>" class="form-validate">

	<?php echo LayoutHelper::render('joomla.edit.title_alias', $this); ?>

	<div class="main-card">
		<?php echo HTMLHelper::_('uitab.startTabSet', 'myTab', ['active' => 'details', 'recall' => true, 'breakpoint' => 768]); ?>

		<?php echo HTMLHelper::_('uitab.addTab', 'myTab', 'details', Text::_('COM_FLEXBANNERS_BANNER_DETAILS')); ?>
		<div class="row">
			<div class="col-md-9" >
				<?php echo $this -> form -> renderFieldset('choices'); ?>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this -> form -> getLabel('type'); ?>
					</div>
					<div class="controls">
						<?php echo $this -> form -> getInput('type'); ?>
					</div>
				</div>
				<div id="image">
					<div id="image">
						<?php echo $this -> form -> renderFieldset('imageurl'); ?>
					</div>
				</div>
				<div id="flash">
					<div class="row-fluid">
						<div class="control-group">
							<?php echo $this -> form -> renderFieldset('flash'); ?>
						</div>
					</div>
				</div>
				<div id="cloud_image">
						<div class="control-group">
							<div class="control-label">
								<label><?php echo JText::_('ADMIN_FLEXBANNER_BANNERIMAGE'); ?></label>
							</div>
							<div class="controls">
								<?php if (preg_match("/swf|html/", $this->item->cloud_imageurl)) {
								?><img src="components/com_flexbanners/images/blank.png" name="imagelib">
								<?php
								} elseif (preg_match("/gif|jpg|png/", $this->item->cloud_imageurl)) {
								?><img src="<?php echo $this -> item -> cloud_imageurl; ?>" name="imagelib" />
								<?php
								} else {
								?><img src="components/com_flexbanners/images/blank.png" name="imagelib" />
								<?php
								}
								?>
							</div>
						</div>
					<div class="row-fluid">
							<?php echo $this -> form -> renderFieldset('cloud_imageurl'); ?>
					</div>
				</div>
				<div id="custom">
					<?php echo $this -> form -> renderFieldset('customcode'); ?>
				</div>
				<div id="linkurl">
				<?php echo $this -> form -> renderFieldset('linkurl'); ?>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="card">
					<div class="card-body">
						<?php echo LayoutHelper::render('joomla.edit.global', $this); ?>
					</div>
				</div>
			</div>
		</div>
			<?php echo HTMLHelper::_('uitab.endTab'); ?>	
	
		<?php echo HTMLHelper::_('uitab.addTab', 'myTab', 'restrictions', JText::_('COM_FLEXBANNERS_GROUP_LABEL_FLEXBANNER_RESTRICTIONS')); ?>
		<?php echo $this -> form -> renderFieldset('flexbanner'); ?>
		<?php echo HTMLHelper::_('uitab.endTab'); ?>
		<?php echo HTMLHelper::_('uitab.addTab', 'myTab', 'otherparams', Text::_('COM_FLEXBANNERS_GROUP_LABEL_FLEXBANNER_DETAILS')); ?>
			<fieldset id="fieldset-otherparams" class="form-no-margin options-grid-form">
				<div>
					<?php echo $this -> form -> renderFieldset('otherparams'); ?>
				</div>
		<?php echo HTMLHelper::_('uitab.endTab'); ?>

		<?php echo HTMLHelper::_('uitab.addTab', 'myTab', 'publishing', JText::_('JGLOBAL_FIELDSET_PUBLISHING')); ?>
					<?php foreach ($this->form->getFieldset('publish') as $field) :
					?>
					<div class="control-group">
						<div class="control-label">
							<?php echo $field -> label; ?>
						</div>
						<div class="controls">
							<?php echo $field -> input; ?>
						</div>
					</div>
					<?php endforeach; ?>
		<?php echo HTMLHelper::_('uitab.endTab'); ?>
		<?php echo HTMLHelper::_('uitab.endTabSet'); ?>
	</div>

	<input type="hidden" name="task" value="">
	<?php echo HTMLHelper::_('form.token'); ?>
</form>
