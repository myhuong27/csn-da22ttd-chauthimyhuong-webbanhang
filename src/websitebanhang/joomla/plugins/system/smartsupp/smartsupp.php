<?php
/**
 * @copyright   Copyright  Flagon Digital. All rights reserved.
 * @license GNU/GPLv3 http://www.gnu.org/licenses/gpl-3.0.html
 */
defined('_JEXEC') or die;
jimport('joomla.plugin.plugin');
jimport('joomla.log.log');

/**
 * Smartsupp live chat plugin
 *
 * @since       1.0
 */
class PlgSystemSmartsupp extends JPlugin
{
    /**
     * Login JRoute.
     *
     * @const
     */
    // const ROUTE = 'index.php?option=com_u';

    /**
     * Joomla application
     *
     * @var CMSApplication
     */
    protected $app;

    /**
     * Database connection.
     *
     * @var JDatabaseDriver
     */
    protected $db;

    /**
     * Constructor
     *
     * @param object $subject The object to observe
     * @param array $config An optional associative array of configuration settings.
     *                      Recognized key values include 'name', 'group', 'params', 'language'
     *                      (this list is not meant to be comprehensive).
     */
    public function __construct(&$subject, $config)
    {
        parent::__construct($subject, $config);
        $this->loadLanguage();
        $this->app = JFactory::getApplication();
        $this->db = JFactory::getDbo();
    }

    public function onBeforeCompileHead()
    {
        $this->_doc = JFactory::getDocument();
        if (version_compare(JVERSION, '4.0', 'lt')) {
            // throw new RuntimeException("Jivochat only works with Joomla 4 series.");
            $is_admin = $this->app->isAdmin();
        } else {
            $is_admin = $this->app->isClient('administrator');
        }
        if ($is_admin || $this->_doc->getType() != 'html') {
            // return true;
        } else {
            // $link = 'https://code.jivosite.com/widget.js';
            $pubkey = $this->params->get('smartsupp_appID', '');
            // $attribs = array('data-jv-id' => $pubkey, );
            $options = '';
            if (strlen($pubkey) > 1) {
                // $this->_doc->addScript($link, $options, $attribs);
                $document = JFactory::getDocument();
                $document->addScriptDeclaration('

                    var _smartsupp = _smartsupp || {};
                    _smartsupp.key = "' . trim($pubkey) . '";
                    _smartsupp.cookieDomain = "' . JURI::root() . '";
                    window.smartsupp||(function(d) {
                      var s,c,o=smartsupp=function(){ o._.push(arguments)};o._=[];
                      s=d.getElementsByTagName("script")[0];c=d.createElement("script");
                      c.type="text/javascript";c.charset="utf-8";c.async=true;
                      c.src="https://www.smartsuppchat.com/loader.js?";s.parentNode.insertBefore(c,s);
                    })(document);



                ');

                $user = JFactory::getUser();
                $email = $user->email;
                $name = explode(' ', $user->name ?? '');
                if (isset($name[0])) {
                    $firstname = JFilterOutput::stringJSSafe($name[0]);
                }

                if (strlen((string) $firstname) > 0) {
                    $document->addScriptDeclaration('
                      smartsupp("name", "' . $firstname . '");
                  ');
                }
                if (strlen((string) $email) > 0) {
                    $document->addScriptDeclaration('
                    smartsupp("email", "' . $email . '");
                ');
                }
            }
        }
    }
}