<?php
/**
 * @subpackage  com_flexbanners
 *
 * @copyright Copyright (C) 2009 - 2023 inch communications ltd
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

 namespace Inch\Component\Flexbanners\Site\Service;

 use Joomla\CMS\Component\Router\RouterBase;

\defined('_JEXEC') or die;

class Router extends RouterBase
{
	public function build(&$query)
	{
		$segments = array();

		if (isset($query['task']))
		{
			$segments[] = $query['task'];
			unset($query['task']);
		}

		if (isset($query['id']))
		{
			$segments[] = $query['id'];
			unset($query['id']);
		}

		$total = count($segments);

		for ($i = 0; $i < $total; $i++)
		{
			$segments[$i] = str_replace(':', '-', $segments[$i]);
		}

		return $segments;
	}

	public function parse(&$segments)
	{
		$total = count($segments);
		$vars = array();

		for ($i = 0; $i < $total; $i++)
		{
			$segments[$i] = preg_replace('/-/', ':', $segments[$i], 1);
		}

		// View is always the first element of the array
		$count = count($segments);

		if ($count)
		{
			$count--;
			$segment = array_shift($segments);

			if (is_numeric($segment))
			{
				$vars['id'] = $segment;
			}
			else
			{
				$vars['task'] = $segment;
			}
		}

		if ($count)
		{
			$segment = array_shift($segments);

			if (is_numeric($segment))
			{
				$vars['id'] = $segment;
			}
		}

		return $vars;
	}
}


function flexbannersBuildRoute(&$query)
{
	$router = new FlexbannersRouter;

	return $router->build($query);
}


function flexbannersParseRoute($segments)
{
	$router = new FlexbannersRouter;

	return $router->parse($segments);
}
