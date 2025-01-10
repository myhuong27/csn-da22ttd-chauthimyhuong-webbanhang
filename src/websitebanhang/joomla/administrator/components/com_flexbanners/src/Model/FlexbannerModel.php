<?php
/**
* @copyright Copyright (C) 2009-2024 inch communications ltd. All rights reserved.
* @license     GNU General Public License version 2 or later.
*/
namespace Inch\Component\Flexbanners\Administrator\Model;

\defined('_JEXEC') or die;

use Joomla\CMS\Factory;
use Joomla\CMS\Form\Form;
use Joomla\CMS\Language\Text;
use Joomla\CMS\MVC\Model\AdminModel;
use Joomla\CMS\Table\Table;
use Joomla\CMS\Versioning\VersionableModelTrait;
use Joomla\Component\Categories\Administrator\Helper\CategoriesHelper;

class FlexbannerModel extends AdminModel
{
	use VersionableModelTrait;
	
	protected $text_prefix = 'COM_FLEXBANNERS_FLEXBANNER';
	public $typeAlias = 'com_flexbanners.flexbanner';
	protected $batch_copymove = 'category_id';

	protected $batch_commands = array(
		'clientid'   => 'batchClient',
		'language_id' => 'batchLanguage'
	);
	
	protected function batchClient($value, $pks, $contexts)
	{
		// Set the variables
		$user = Factory::getUser();

		/** @var \Inch\Component\Flexbanners\Administrator\Table\Flexbanner $table */
		$table = $this->getTable();

		foreach ($pks as $pk)
		{
			if (!$user->authorise('core.edit', $contexts[$pk]))
			{
				$this->setError(Text::_('JLIB_APPLICATION_ERROR_BATCH_CANNOT_EDIT'));

				return false;
			}

			$table->reset();
			$table->load($pk);
			$table->clientid = (int) $value;

			if (!$table->store())
			{
				$this->setError($table->getError());

				return false;
			}
		}

		// Clean the cache
		$this->cleanCache();

		return true;
	}

	protected function canDelete($record)
	{
		if (!empty($record->id))
		{
			if ($record->state != -2)
			{
				return false;
			}

			if (!empty($record->catid))
			{
				return Factory::getUser()->authorise('core.delete', 'com_flexbanners.category.' . (int) $record->catid);
			}

			return parent::canDelete($record);
		}
	}
	
	public function generateTitle($categoryId, $table)
	{
		// Alter the title & alias
		$data = $this->generateNewTitle($categoryId, $table->alias, $table->name);
		$table->name = $data['0'];
		$table->alias = $data['1'];
	}
	
	protected function canEditState($record)
	{
		// Check against the category.
		if (!empty($record->catid))
		{
			return Factory::getUser()->authorise('core.edit.state', 'com_flexbanners.category.' . (int) $record->catid);
			
		}
		// Default to component settings if category not known.
		return parent::canEditState($record);
	}
	
	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_flexbanners.flexbanner', 'flexbanner', array('control' => 'jform', 'load_data' => $loadData));

		if (empty($form))
		{
			return false;
		}

		// Modify the form based on access controls.
		if (!$this->canEditState((object) $data))
		{
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');
			$form->setFieldAttribute('publish_up', 'disabled', 'true');
			$form->setFieldAttribute('publish_down', 'disabled', 'true');
			$form->setFieldAttribute('state', 'disabled', 'true');
			$form->setFieldAttribute('sticky', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
			$form->setFieldAttribute('publish_up', 'filter', 'unset');
			$form->setFieldAttribute('publish_down', 'filter', 'unset');
			$form->setFieldAttribute('sticky', 'filter', 'unset');
		}

		// Don't allow to change the created_by user if not allowed to access com_users.
		if (!Factory::getUser()->authorise('core.manage', 'com_users'))
		{
			$form->setFieldAttribute('created_by', 'filter', 'unset');
		}

		return $form;
	}
	
	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$app  = Factory::getApplication();
		$data = $app->getUserState('com_flexbanners.edit.flexbanner.data', array());

		if (empty($data))
		{
			$data = $this->getItem();

			if ($this->getState('flexbanner.id') == 0)
			{
				$filters     = (array) $app->getUserState('com_flexbanners.flexbanners.filter');
				$filterCatId = $filters['category_id'] ?? null;

				$data->set('catid', $app->input->getInt('catid', $filterCatId));
			}
		}
		$this->preprocessData('com_flexbanners.flexbanner', $data);
		
		return $data;
	}
	
	protected function getReorderConditions($table)
	{
		return [
			$this->_db->quoteName('catid') . ' = ' . (int) $table->catid,
			$this->_db->quoteName('state') . ' >= 0',
		];
	}
	
	protected function prepareTable($table)
	{
		$date = Factory::getDate();
		$user = Factory::getUser();

		if (empty($table->id))
		{
			// Set the values
			$table->created    = $date->toSql();
			$table->created_by = $user->id;

			// Set ordering to the last item if not set
			if (empty($table->ordering))
			{
				$db = $this->getDbo();
				$query = $db->getQuery(true)
					->select('MAX(' . $db->quoteName('ordering') . ')')
					->from($db->quoteName('#__flexbanners'));

				$db->setQuery($query);
				$max = $db->loadResult();

				$table->ordering = $max + 1;
			}
		}
		else
		{
			// Set the values
			$table->modified    = $date->toSql();
			$table->modified_by = $user->id;
		}

		// Increment the content version number.
		$table->version++;
	}
	
	protected function preprocessForm(Form $form, $data, $group = 'content')
	{
		if ($this->canCreateCategory())
		{
			$form->setFieldAttribute('catid', 'allowAdd', 'true');

			// Add a prefix for categories created on the fly.
			$form->setFieldAttribute('catid', 'customPrefix', '#new#');
		}

		parent::preprocessForm($form, $data, $group);
	}

	public function save($data)
	{
		$input = Factory::getApplication()->input;

		// Create new category, if needed.
		$createCategory = true;

		// If category ID is provided, check if it's valid.
		if (is_numeric($data['catid']) && $data['catid'])
		{
			$createCategory = !CategoriesHelper::validateCategoryId($data['catid'], 'com_flexbanners');
		}

		// Save New Category
		if ($createCategory && $this->canCreateCategory())
		{
			$category = [
				// Remove #new# prefix, if exists.
				'title'     => strpos($data['catid'], '#new#') === 0 ? substr($data['catid'], 5) : $data['catid'],
				'parent_id' => 1,
				'extension' => 'com_flexbanners',
				'language'  => $data['language'],
				'published' => 1,
			];

			/** @var \Joomla\Component\Categories\Administrator\Model\CategoryModel $categoryModel */
			$categoryModel = Factory::getApplication()->bootComponent('com_categories')
				->getMVCFactory()->createModel('Category', 'Administrator', ['ignore_request' => true]);

			// Create new category.
			if (!$categoryModel->save($category))
			{
				$this->setError($categoryModel->getError());

				return false;
			}

			// Get the new category ID.
			$data['catid'] = $categoryModel->getState('category.id');
		}

		// Alter the name for save as copy
		if ($input->get('task') == 'save2copy')
		{
			/** @var \Joomla\Component\Banners\Administrator\Table\FlexbannerTable $origTable */
			$origTable = clone $this->getTable();
			$origTable->load($input->getInt('id'));

			if ($data['name'] == $origTable->name)
			{
				list($name, $alias) = $this->generateNewTitle($data['catid'], $data['alias'], $data['name']);
				$data['name']       = $name;
				$data['alias']      = $alias;
			}
			else
			{
				if ($data['alias'] == $origTable->alias)
				{
					$data['alias'] = '';
				}
			}
			$data['state'] = 0;
			$data['clicks'] = 0;
			$data['impmade'] = 0;
		}


		$db = Factory::getDBO();

		// Deal with restrictions
		$key = $input->get('id');
		$query = $db->getQuery(true)
			->delete()
			->from($db->quoteName('#__flexbannersin'))

		// Filter by banner id
			->where('bannerid = '. (int)$key);

		$db->setQuery($query);
			$this->setError((string) $query);

			try
			{
				$db->execute();
			}
			catch (\RuntimeException $e)
			{
				$this->setError($e->getMessage());

				return false;
			}

		if ($data['restrictbyid'])
		{
			$flexbannercategories = Factory::getApplication()->input->post->get('categoryid', array(), 'array');	

			foreach($flexbannercategories as $flexbannercategory)
			{
				$query = "INSERT into #__flexbannersin SET bannerid= $data[id], categoryid = $flexbannercategory";
				$db->setQuery($query);
				try
				{
					$db->execute();
				}
				catch (\RuntimeException $e)
				{
					$this->setError($e->getMessage());
	
					return false;
			}
			}

			$flexbannercontents = Factory::getApplication()->input->post->get('contentid', array(), 'array');	

			foreach($flexbannercontents as $flexbannercontent)
			{
				$query = "INSERT into #__flexbannersin SET bannerid= $data[id], contentid = $flexbannercontent";
				$db->setQuery($query);
				try
				{
					$db->execute();
				}
				catch (\RuntimeException $e)
				{
					$this->setError($e->getMessage());
	
					return false;
				}
			}
		}
$nullDate = $db->getNullDate();
if ($data['enddate']>=date("Y-m-d H:i:s") and $data['enddate']!=$nullDate) { $data['finished']=1;}
if ($data['startdate']<=date("Y-m-d H:i:s") and $data['startdate']!=$nullDate) { $data['published']=1;}

//reset Finished flag
if ($data['finished']=1) { $data['finished']=0;}

		return parent::save($data);
	}
	
	private function canCreateCategory()
	{
		return Factory::getUser()->authorise('core.create', 'com_flexbanners');
	}
	
}

