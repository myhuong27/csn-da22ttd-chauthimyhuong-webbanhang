<?php
/**
* @copyright Copyright (C) 2009-2021 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/

// no direct access

defined('_JEXEC') or die;

use Joomla\CMS\HTML\HTMLHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\Layout\LayoutHelper;
use Joomla\CMS\Router\Route;

/** @var \Inch\Component\Flexbanners\Administrator\View\Size\HtmlView $this */

/** @var Joomla\CMS\WebAsset\WebAssetManager $wa */
$wa = $this->document->getWebAssetManager();
$wa->useScript('keepalive')
	->useScript('form.validate');
?>

<form action="<?php echo Route::_('index.php?option=com_flexbanners&layout=edit&sizeid=' . (int)$this->item->sizeid);?>" method="post" name="adminForm" id="size-form" aria-label="<?php echo Text::_('COM_FLEXBANNERS_SIZE_FORM_' . ((int) $this->item->sizeid === 0 ? 'NEW' : 'EDIT'), true); ?>" class="form-validate">

	<?php echo LayoutHelper::render('joomla.edit.title_alias', $this); ?>

	<div>
		<?php echo HTMLHelper::_('uitab.startTabSet', 'myTab', ['active' => 'general']); ?>

		<?php echo HTMLHelper::_('uitab.addTab', 'myTab', 'general', empty($this->item->sizeid) ? JText::_('COM_FLEXBANNERS_NEW_SIZE') : JText::_('COM_FLEXBANNERS_EDIT_SIZE')); ?>
		<div class="row">
			<div class="col-lg-9">
				<div class="card">
					<div class="card-body">
				<?php
				echo $this->form->renderField('width');
				echo $this->form->renderField('height');
				echo $this->form->renderField('maxfilesize');								
				echo $this->form->renderField('sizeid');
				?>
					</div>
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
		<?php echo HTMLHelper::_('uitab.endTabSet'); ?>
	</div>

	<input type="hidden" name="task" value="">
	<?php echo HTMLHelper::_('form.token'); ?>
</form>
