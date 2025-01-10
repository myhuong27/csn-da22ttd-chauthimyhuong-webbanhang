<?php
/**
* @copyright Copyright (C) 2009-2020 inch communications ltd. All rights reserved.
 * @license     GNU General Public License version 2 or later.
*/

namespace Inch\Component\Flexbanners\Site\View\Client;

\defined('_JEXEC') or die;

use Exception;
use Joomla\CMS\Component\ComponentHelper;
use Joomla\CMS\Factory;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Helper\ContentHelper;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\View\GenericDataException;
use Joomla\CMS\MVC\View\HtmlView as BaseHtmlView;
use Joomla\CMS\Object\CMSObject;
use Joomla\CMS\Toolbar\ToolbarHelper;


class HtmlView extends BaseHtmlView
{
	protected $form;
	protected $item;

	protected $categories;
	protected $locations;
	protected $items;
	protected $pagination;
	protected $state;
	/**
	 * Display the view
	 */
	public function display($tpl = null): void
	{
		/** @var ClientModel $model */
		$model       = $this->getModel();
		$this->categories		= $model->getCategoryOrders();
		$this->clients			= $model->getClientOrders();
		$this->locations		= $model->getLocationOrders();
		$this->items			= $model->getItems();
		$this->pagination		= $model->getPagination();
		$this->state			= $model->getState();
		$this->filterForm    	= $model->getFilterForm();
		$this->activeFilters 	= $model->getActiveFilters();

		
		// Check for errors.
		if (count($errors = $this->get('Errors')))
		{
			throw new GenericDataException(implode("\n", $errors), 500);
		}

		parent::display($tpl);
	}

}
