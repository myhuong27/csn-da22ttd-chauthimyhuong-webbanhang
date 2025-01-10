<?php
/**
 * @subpackage  com_flexbanners
 *
* @copyright Copyright (C) 2009-2022 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
 */

defined('_JEXEC') or die;

use Inch\Component\Flexbanners\Administrator\Extension\FlexbannersComponent;
use Joomla\CMS\Categories\CategoryFactoryInterface;
use Joomla\CMS\Component\Router\RouterFactoryInterface;
use Joomla\CMS\Dispatcher\ComponentDispatcherFactoryInterface;
use Joomla\CMS\Extension\ComponentInterface;
use Joomla\CMS\Extension\Service\Provider\CategoryFactory;
use Joomla\CMS\Extension\Service\Provider\ComponentDispatcherFactory;
use Joomla\CMS\Extension\Service\Provider\MVCFactory;
use Joomla\CMS\Extension\Service\Provider\RouterFactory;
use Joomla\CMS\HTML\Registry;
use Joomla\CMS\MVC\Factory\MVCFactoryInterface;
use Joomla\DI\Container;
use Joomla\DI\ServiceProviderInterface;

return new class implements ServiceProviderInterface
{

	public function register(Container $container)
	{

		$container->registerServiceProvider(new CategoryFactory('\\Inch\\Component\\Flexbanners'));
		$container->registerServiceProvider(new MVCFactory('\\Inch\\Component\\Flexbanners'));
		$container->registerServiceProvider(new ComponentDispatcherFactory('\\Inch\\Component\\Flexbanners'));
		$container->registerServiceProvider(new RouterFactory('\\Inch\\Component\\Flexbanners'));
		
		$container->set(
			ComponentInterface::class,
			function (Container $container)
			{
				$component = new FlexbannersComponent($container->get(ComponentDispatcherFactoryInterface::class));

				$component->setRegistry($container->get(Registry::class));
				$component->setMVCFactory($container->get(MVCFactoryInterface::class));
				$component->setCategoryFactory($container->get(CategoryFactoryInterface::class));
				$component->setRouterFactory($container->get(RouterFactoryInterface::class));
				
				return $component;
			}
		);
	}
};
