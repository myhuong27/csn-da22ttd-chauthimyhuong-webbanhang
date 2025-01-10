<?php
/**
 * @subpackage  com_flexbanners
 *
* @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
 */

namespace Inch\Component\Flexbanners\Administrator\Extension;

\defined('JPATH_PLATFORM') or die;

use Joomla\CMS\Categories\CategoryServiceInterface;
use Joomla\CMS\Categories\CategoryServiceTrait;
use Joomla\CMS\Component\Router\RouterServiceInterface;
use Joomla\CMS\Component\Router\RouterServiceTrait;
use Joomla\CMS\Extension\BootableExtensionInterface;
use Joomla\CMS\Extension\MVCComponent;
use Joomla\CMS\HTML\HTMLRegistryAwareTrait;
use Joomla\CMS\Tag\TagServiceInterface;
use Joomla\CMS\Tag\TagServiceTrait;
use Inch\Component\Flexbanners\Administrator\Service\Html\Flexbanner;
use Psr\Container\ContainerInterface;

class FlexbannersComponent extends MVCComponent implements BootableExtensionInterface, CategoryServiceInterface, RouterServiceInterface,
	TagServiceInterface
{
	use HTMLRegistryAwareTrait;
	use RouterServiceTrait;
	use CategoryServiceTrait, TagServiceTrait {
		CategoryServiceTrait::getTableNameForSection insteadof TagServiceTrait;
		CategoryServiceTrait::getStateColumnForSection insteadof TagServiceTrait;
	}

	public function boot(ContainerInterface $container)
	{
		$this->getRegistry()->register('flexbanner', new Flexbanner);
	}


	protected function getTableNameForSection(string $section = null)
	{
		return 'flexbanners';
	}
}
