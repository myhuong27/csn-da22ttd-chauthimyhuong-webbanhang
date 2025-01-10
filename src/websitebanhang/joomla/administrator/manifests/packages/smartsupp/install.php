<?php
/**
 * @copyright   Copyright  Flagon Digital. All rights reserved.
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_JEXEC') or die;
// use Joomla\Registry\Registry;
// use Joomla\Utilities\ArrayHelper;
use Joomla\CMS\Version; // J3 and J4

/**
 * Package installer
 *
 * @since  __DEPLOY_VERSION__
 */
class Pkg_SmartsuppInstallerScript
{
    /**
     * Installer instance
     *
     * @var JInstaller
     */
    public $installer;

    /**
     * Manifest of the extension being processed
     *
     * @var SimpleXMLElement
     */
    protected $manifest;

    /**
     * Version installed.
     *
     * @var string
     */
    protected $installedVersion;

    /**
     * List of update scripts
     *
     * @var array
     */
    private $updateScripts;

    /**
     * Enable plugins if desired
     *
     * @param object $parent class calling this method
     *
     * @return void
     */
    private function enablePlugins($parent)
    {
        // Required objects
        $manifest = $this->getManifest($parent);

        if ($nodes = $manifest->files) {
            foreach ($nodes->file as $node) {
                $extType = (string) $node->attributes()->type;

                if ($extType != 'plugin') {
                    continue;
                }

                $enabled = (string) $node->attributes()->enabled;

                if ($enabled !== 'true') {
                    continue;
                }

                $extName = (string) $node->attributes()->id;
                $extGroup = (string) $node->attributes()->group;

                $db = JFactory::getDBO();
                $query = $db->getQuery(true);
                $query->update($db->quoteName('#__extensions'));
                $query->set('enabled=1');
                $query->where("type='plugin'");
                $query->where('element=' . $db->quote($extName));
                $query->where('folder=' . $db->quote($extGroup));
                $db->setQuery($query);
                if (version_compare(JVERSION, '4.0', 'lt')) {
                    $db->setQuery($query);
                } else {
                    $db->execute();
                }

                // update settings
                $config = JFactory::getConfig();
                $user = JFactory::getUser();
                $app = JFactory::getApplication();
                $email2 = $user->email;
                $name = explode(' ', $user->name ?? '');
                if (isset($name[0])) {
                    $firstname = $name[0];
                } else {
                    $firstname = JUri::root(true); // trim($config->get('sitename', ''));
                }

                $datatosend = [];
                // $datatosend['siteUrl'] = trim(JUri::root()); //JUri::getInstance()->getHost();
                if (strlen($email2) > 1) {
                    $datatosend['email'] = $email2;
                } else {
                    $datatosend['email'] = $app->input->getString('admin_email', '');
                }

                $datatosend['name'] = $firstname;
                $datatosend['partnerKey'] = '5nl0sikui5';
                $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyz';
                $datatosend['password'] = mt_srand(2) . 'PKn' . substr(str_shuffle($permitted_chars), 0, 4);
                $datatosend['lang'] = 'en';
                // $test= $firstname.$email2.$email.JUri::base(true);
                if (strlen($datatosend['email']) > 1) {
                    // call
                    $content = http_build_query($datatosend);

                    if (ini_get('allow_url_fopen')) {
                        $useCurl = false;
                    } elseif (!extension_loaded('curl')) {
                        if (!dl('curl.so')) {
                            $useCurl = false;
                        } else {
                            $useCurl = true;
                        }
                    } else {
                        $useCurl = true;
                    }

                    // start call
                    try {
                        $path = 'https://www.smartsupp.com/account/create';
                        if (!extension_loaded('openssl')) {
                            $path = str_replace('https:', 'http:', $path);
                        }
                        if ($useCurl) {
                            if ($curl = curl_init()) {
                                curl_setopt($curl, CURLOPT_URL, $path);
                                curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
                                curl_setopt($curl, CURLOPT_POST, true);
                                curl_setopt($curl, CURLOPT_POSTFIELDS, $content);
                                $responce = curl_exec($curl);
                                curl_close($curl);
                            }
                        } else {
                            // Add a message to the message queue
                            // $application->enqueueMessage(JText::_('SOME_ERROR_OCCURRED'), 'error');
                            // Alternatively you may use chaining
                            // JFactory::getApplication()->enqueueMessage(JText::_('SOME_ERROR_OCCURRED'), 'error');
                            // $this->app->enqueueMessage(Text::_('JERROR_SENDING_EMAIL'), 'warning');
                            $responce = file_get_contents(
                                $path,
                                false,
                                stream_context_create(
                                    [
                                        'http' => [
                                            'method' => 'POST',
                                            'header' => 'Content-Type: application/x-www-form-urlencoded',
                                            'content' => $content,
                                        ],
                                        'ssl' => [
                                            'verify_peer' => false,
                                            'verify_peer_name' => false,
                                        ],
                                    ]
                                )
                            );
                        }

                        // $text = json_encode($responce);

                        if ($responce) {
                            if (strstr($responce, 'error')) {
                                if (strstr($responce, 'EmailExists')) {
                                    error_log('smartsupp install EmailExists: ' . json_encode($responce), 0);
                                    // JError::raiseError(4711, 'Smartsupp account with your email already exist. Login to your Smartsupp account to get your Smartsupp Key (Chatbox settings) and paste it to the plugin settings');
                                }
                            // return array("error"=>$responce);
                            // $this->log->write(print_r($responce, true).' smartsupp install return error');
                            } else {
                                // $this->log->write(print_r($responce, true).' smartsupp install LOOKS SUCCESS');
                                // to array
                                $response = json_decode($responce, true);
                                if (is_array($response) && array_key_exists('account', $response)) {
                                    $key = $response['account']['key'];
                                    $defaults = '{"smartsupp_appID":"' . $key . '"}'; // JSON format for the parameters
                                    $query2 = $db->getQuery(true)
                                        ->update($db->quoteName('#__extensions'))
                                        ->set($db->quoteName('params') . ' = ' . $db->quote($defaults))
                                        ->where($db->quoteName('type') . ' = ' . $db->quote('plugin'))
                                        ->where($db->quoteName('folder') . ' = ' . $db->quote('system'))
                                        ->where($db->quoteName('element') . ' = ' . $db->quote('smartsupp'));
                                    $db->setQuery($query2)->execute();
                                }
                            }
                        }
                    } catch (Exception $e) {
                        error_log('JLIB_DATABASE_ERROR_FUNCTION_FAILED' . $e->getCode() . json_encode($e->getMessage()), 0);
                        // fail
                        // $application->enqueueMessage(JText::_('SOME_ERROR_OCCURRED'), 'error');
                        // echo JText::sprintf('JLIB_DATABASE_ERROR_FUNCTION_FAILED', $e->getCode(), $e->getMessage()) . '<br />';
                        // throw new RuntimeException("Smartsupp only works with Joomla 3 series.");
                    }

                    // end call
                }
            }
        }
    }

    /**
     * Get the element of this extension from class name.
     *
     * @return string
     */
    private function getElement()
    {
        return strtolower(str_replace('InstallerScript', '', get_called_class()));
    }

    /**
     * Get the current installed version.
     *
     * @return string
     */
    private function getInstalledVersion()
    {
        if (null === $this->installedVersion) {
            $this->loadInstalledVersion();
        }

        return $this->installedVersion;
    }

    /**
     * Get the common JInstaller instance used to install all the extensions
     *
     * @return JInstaller The JInstaller object
     */
    public function getInstaller()
    {
        if (null === $this->installer) {
            $this->installer = new JInstaller();
        }

        return $this->installer;
    }

    /**
     * Getter with manifest cache support
     *
     * @param JInstallerAdapter $parent Parent object
     *
     * @return SimpleXMLElement
     */
    protected function getManifest($parent)
    {
        if (null === $this->manifest) {
            $this->loadManifest($parent);
        }

        return $this->manifest;
    }

    /**
     * Shit happens. Patched function to bypass bug in package uninstaller
     *
     * @param JInstallerAdapter $parent Parent object
     *
     * @return void
     */
    protected function loadManifest($parent)
    {
        $element = strtolower(str_replace('InstallerScript', '', get_called_class()));
        $elementParts = explode('_', $element ?? '');

        // Type not properly detected or not a package
        if (count($elementParts) != 2 || strtolower($elementParts[0]) != 'pkg') {
            $this->manifest = $parent->get('manifest');

            if (version_compare(JVERSION, '4.0', 'lt')) {
                // throw new RuntimeException("Jivochat only works with Joomla 4 series.");
                $this->manifest = $parent->get('manifest');
            } else {
                $this->manifest = $parent->manifest;
                // $this->manifest = $parent->getElement('manifest');
            }

            return;
        }

        $manifestFile = __DIR__ . '/' . $element . '.xml';

        // Package manifest found
        if (file_exists($manifestFile)) {
            if (version_compare(JVERSION, '4.0', 'lt')) {
                // throw new RuntimeException("Jivochat only works with Joomla 4 series.");
                $this->manifest = JFactory::getXML($manifestFile);
            } else {
                $this->manifest = @simplexml_load_file($manifestFile);
            }

            return;
        }

        if (version_compare(JVERSION, '4.0', 'lt')) {
            // throw new RuntimeException("Jivochat only works with Joomla 4 series.");
            $this->manifest = $parent->get('manifest');
        } else {
            $this->manifest = $parent->manifest;
            // $this->manifest = $parent->getElement('manifest');
        }
    }

    /**
     * Load the installed version from the database.
     *
     * @return self
     */
    private function loadInstalledVersion()
    {
        // Reads current (old) version from manifest
        $db = JFactory::getDbo();

        $query = $db->getQuery(true)
            ->select($db->quoteName('e.manifest_cache'))
            ->from($db->quoteName('#__extensions', 'e'))
            ->where('e.element = ' . $db->quote($this->getElement()));

        $db->setQuery($query);

        $manifest = $db->loadResult();

        if (!$manifest) {
            return $this;
        }

        $manifest = json_decode($manifest);

        if (!is_object($manifest) || !property_exists($manifest, 'version')) {
            return $this;
        }

        $this->installedVersion = (string) $manifest->version;
    }

    /**
     * Method to run after an install/update/discover method
     *
     * @param object $type type of change (install, update or discover_install)
     * @param object $parent class calling this method
     *
     * @return void
     */
    public function postflight($type, $parent)
    {
        if ($type === 'update') {
            $this->runUpdateScriptsMethod($parent, 'postflight');
        } elseif (in_array($type, ['install', 'discover_install'])) {
            $this->enablePlugins($parent);
        }
    }

    /**
     * Method to run before an install/update/uninstall method
     *
     * @param object $type type of change (install, update or discover_install)
     * @param object $parent class calling this method
     *
     * @return bool
     */
    public function preflight($type, $parent)
    {
        if (version_compare(JVERSION, '3.0', 'lt')) {
            throw new RuntimeException('Smartsupp only works with Joomla 3 series.');
        }

        $this->loadManifest($parent);

        if ($type === 'update') {
            $this->runUpdateScriptsMethod($parent, 'preflight');
        }

        return true;
    }

    /**
     * Search a extension in the database
     *
     * @param string $element Extension technical name/alias
     * @param string $type Type of extension (component, file, language, library, module, plugin)
     * @param string $state State of the searched extension
     * @param string $folder Folder name used mainly in plugins
     *
     * @return int Extension identifier
     */
    protected function searchExtension($element, $type, $state = null, $folder = null)
    {
        $db = JFactory::getDBO();
        $query = $db->getQuery(true)
            ->select('extension_id')
            ->from($db->quoteName('#__extensions'))
            ->where('type = ' . $db->quote($type))
            ->where('element = ' . $db->quote($element));

        if (!is_null($state)) {
            $query->where('state = ' . (int) $state);
        }

        if (!is_null($folder)) {
            $query->where('folder = ' . $db->quote($folder));
        }

        $db->setQuery($query);

        return $db->loadResult();
    }

    /**
     * Get the source folder where the install files are.
     *
     * @return string
     */
    public function getSourceFolder()
    {
        if (null === $this->sourceFolder) {
            $reflection = new \ReflectionClass($this);

            $this->sourceFolder = dirname($reflection->getFileName());
        }

        return $this->sourceFolder;
    }

    /**
     * Get the path to the base updates folder
     *
     * @param object $parent class calling this method
     *
     * @return string
     */
    private function getUpdatesFolder($parent)
    {
        $element = $this->manifest->xpath('//update');

        if (!$element) {
            return null;
        }

        $element = reset($element);

        $updatesFolder = $parent->getParent()->getPath('source');

        $folder = (string) $element->attributes()->folder;

        if ($folder && file_exists($updatesFolder . '/' . $folder)) {
            $updatesFolder = $updatesFolder . '/' . $folder;
        }

        return $updatesFolder;
    }

    /**
     * Get the instances of applicable update scripts
     *
     * @param object $parent class calling this method
     *
     * @return array
     *
     * @since   3.1.3
     */
    private function getUpdateScripts($parent)
    {
        if (null !== $this->updateScripts) {
            return $this->updateScripts;
        }

        $this->updateScripts = [];

        // Require the base script installer if it doesn't exist.
        $baseScript = $parent->getParent()->getPath('source') . '/libraries/smartsupp/installer/update.php';

        if (file_exists($baseScript)) {
            require_once $baseScript;
        }

        $baseUpdatesFolder = $this->getUpdatesFolder($parent);

        if (!$baseUpdatesFolder) {
            return $this->updateScripts;
        }

        $updateFolders = $this->manifest->xpath('//update/scripts/folder');
        $updateFiles = [];

        // Collects all update files from the update folders
        foreach ($updateFolders as $updateFolder) {
            $updateFolderPath = $baseUpdatesFolder . '/' . $updateFolder;

            if (!$fileNames = JFolder::files($updateFolderPath)) {
                continue;
            }

            foreach ($fileNames as $fileName) {
                $version = basename($fileName, '.php');
                $updateFiles[$version] = $updateFolderPath . '/' . $fileName;
            }
        }

        // Sort the files in ascending order
        uksort($updateFiles, 'version_compare');

        $currentVersion = $this->getInstalledVersion();

        foreach ($updateFiles as $version => $path) {
            if (version_compare($version, $currentVersion) <= 0) {
                continue;
            }

            require_once $path;

            $updateClassName = 'UpdateTo' . str_replace(['.', '-'], '', $version);

            if (class_exists($updateClassName)) {
                $this->updateScripts[] = new $updateClassName($this->getInstaller());
            }

            $currentVersion = $version;
        }

        return $this->updateScripts;
    }

    /**
     * Runs the update for the given version.
     *
     * @param object $parent class calling this method
     * @param string $method Method to run from the update scripts
     *
     * @return bool
     *
     * @since   3.1.3
     *
     * @throws RuntimeException If something goes wrong in the method
     */
    private function runUpdateScriptsMethod($parent, $method)
    {
        $updateScripts = $this->getUpdateScripts($parent);

        foreach ($updateScripts as $updateScript) {
            if (!method_exists($updateScript, $method)) {
                continue;
            }

            $updateScript->$method($parent);
        }

        return true;
    }
}
