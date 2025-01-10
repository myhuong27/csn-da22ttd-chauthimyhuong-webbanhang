-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 10:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joomla_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_action_logs`
--

CREATE TABLE `d6gvw_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `log_date` datetime NOT NULL,
  `extension` varchar(50) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_action_logs`
--

INSERT INTO `d6gvw_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2024-12-18 06:39:58', 'com_users', 32, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:40:00', 'com_guidedtours.state', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":245,\"name\":\"theme-200335-j4\",\"extension_name\":\"theme-200335-j4\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:09', 'com_installer', 32, 245, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":246,\"name\":\"Import Content\",\"extension_name\":\"Import Content\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:09', 'com_installer', 32, 246, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":247,\"name\":\"mod_jdsimplecontactform\",\"extension_name\":\"mod_jdsimplecontactform\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:09', 'com_installer', 32, 247, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":248,\"name\":\"PLG_CONTENT_TTMENUSTYLE\",\"extension_name\":\"PLG_CONTENT_TTMENUSTYLE\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:09', 'com_installer', 32, 248, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":249,\"name\":\"This is package Installation\",\"extension_name\":\"This is package Installation\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:09', 'com_installer', 32, 249, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:47:26', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:47:26', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_STYLE\",\"id\":\"12\",\"title\":\"theme-200335-j4 - Default\",\"extension_name\":\"theme-200335-j4 - Default\",\"itemlink\":\"index.php?option=com_templates&task=style.edit&id=12\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:48:11', 'com_templates.style', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"Home\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:48:27', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:48:27', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":1,\"title\":\"Main Menu\",\"extension_name\":\"Main Menu\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=1\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:48:59', 'com_modules.module', 32, 1, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 06:48:59', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:50:14', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:50:14', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:51:07', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:52:07', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:52:07', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:53:00', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:53:17', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":103,\"title\":\"GI\\u1edaI THI\\u1ec6U \",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=103\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:53:39', 'com_menus.item', 32, 103, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":104,\"title\":\"SALE\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=104\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:54:42', 'com_menus.item', 32, 104, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":105,\"title\":\"S\\u1ef0 KI\\u1ec6N\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=105\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:55:19', 'com_menus.item', 32, 105, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"V\\u1ece H\\u00c0NG\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:56:24', 'com_menus.item', 32, 106, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"GI\\u1ece H\\u00c0NG\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:56:44', 'com_menus.item', 32, 106, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 06:56:44', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"LI\\u00caN H\\u1ec6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 06:58:01', 'com_menus.item', 32, 107, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:00:10', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:00:10', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"PH\\u1ee4 KI\\u1ec6N\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:01:26', 'com_categories.category', 32, 8, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:02:09', 'com_content.article', 32, 1, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:02:30', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:02:30', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:02:56', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":2,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:03:54', 'com_content.article', 32, 2, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:04:24', 'com_content.article', 32, 2, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:04:24', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:04:38', 'com_content.article', 32, 2, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:04:38', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":9,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=9\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:05:09', 'com_categories.category', 32, 9, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"2\",\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=2\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:05:22', 'com_content.article', 32, 2, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:05:22', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 nam\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:05:55', 'com_menus.item', 32, 109, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":10,\"title\":\"DONG HO NU\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=10\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:06:16', 'com_categories.category', 32, 10, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":3,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 n\\u1eef\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=3\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:06:52', 'com_content.article', 32, 3, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 n\\u1eef\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:07:23', 'com_menus.item', 32, 110, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:09:06', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:09:06', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:09:23', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:09:23', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":4,\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:09:42', 'com_content.article', 32, 4, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":11,\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=11\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:09:56', 'com_categories.category', 32, 11, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"4\",\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=4\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:10:26', 'com_content.article', 32, 4, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:10:26', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:10:48', 'com_content.article', 32, 1, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:10:48', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:12:58', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:12:58', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:13:57', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:13:57', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"PH\\u1ee4 KI\\u00caN\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:14:47', 'com_menus.item', 32, 111, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":\"1\",\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:15:31', 'com_content.article', 32, 1, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 07:15:31', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":250,\"name\":\"VIRTUEMART\",\"extension_name\":\"VIRTUEMART\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 250, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":251,\"name\":\"VirtueMart_allinone\",\"extension_name\":\"VirtueMart_allinone\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 251, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":279,\"name\":\"vmadmin\",\"extension_name\":\"vmadmin\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 279, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":280,\"name\":\"tcpdf\",\"extension_name\":\"tcpdf\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 280, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":281,\"name\":\"VM Basic\",\"extension_name\":\"VM Basic\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 281, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":282,\"name\":\"mod_virtuemart_languages\",\"extension_name\":\"mod_virtuemart_languages\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 282, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":283,\"name\":\"mod_virtuemart_vendor\",\"extension_name\":\"mod_virtuemart_vendor\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 283, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":284,\"name\":\"VirtueMart Package\",\"extension_name\":\"VirtueMart Package\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:19:38', 'com_installer', 32, 284, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"dong-ho-daniel-wellington-DW-DW00100125-1.jpg\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:22:11', 'com_media.file', 32, 0, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 nam\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:26:58', 'com_menus.item', 32, 109, 'COM_ACTIONLOGS_DISABLED'),
(75, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:26:58', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(76, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"dong-ho-olympia-star-opa58057msk-trang-nam-pin-day-inox.jpg\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:45:13', 'com_media.file', 32, 0, 'COM_ACTIONLOGS_DISABLED'),
(77, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 nam\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:46:42', 'com_menus.item', 32, 109, 'COM_ACTIONLOGS_DISABLED'),
(78, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 07:46:42', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(79, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 07:49:39', 'com_guidedtours.state', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(80, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":285,\"name\":\"com_flexbanners\",\"extension_name\":\"com_flexbanners\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:25:57', 'com_installer', 32, 285, 'COM_ACTIONLOGS_DISABLED'),
(81, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":286,\"name\":\"Flexbanners\",\"extension_name\":\"Flexbanners\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:25:57', 'com_installer', 32, 286, 'COM_ACTIONLOGS_DISABLED'),
(82, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":287,\"name\":\"pkg_flexbanners\",\"extension_name\":\"pkg_flexbanners\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:25:57', 'com_installer', 32, 287, 'COM_ACTIONLOGS_DISABLED'),
(83, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":12,\"title\":\"Banner store\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=12\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:27:38', 'com_categories.category', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(84, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MEDIA\",\"id\":0,\"title\":\"thiet-ke-banner-dong-ho-phong-cach-sang-trong-56945.jpeg\",\"itemlink\":\"index.php?option=com_media&path=local-images:\\/banners\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:33:00', 'com_media.file', 32, 0, 'COM_ACTIONLOGS_DISABLED'),
(85, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:34:23', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(86, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:34:23', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(87, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:34:37', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(88, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:34:37', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(89, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:34:50', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(90, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:34:50', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(91, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":102,\"title\":\"S\\u1ea2N PH\\u1ea8M\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=102\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:35:22', 'com_menus.item', 32, 102, 'COM_ACTIONLOGS_DISABLED'),
(92, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:35:22', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(93, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:36:49', 'com_menus.item', 32, 108, 'COM_ACTIONLOGS_DISABLED'),
(94, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:36:49', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(95, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:38:25', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(96, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:39:50', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(97, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"Flexbanners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:39:50', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(98, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:41:50', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(99, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:41:50', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(100, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:42:41', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(101, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:42:41', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(102, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:43:15', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(103, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:43:15', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(104, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:43:36', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(105, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:43:36', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(106, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:43:59', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(107, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:43:59', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(108, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:44:34', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(109, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:44:34', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(110, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:45:01', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(111, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:45:01', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(112, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:46:13', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(113, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbannerslocations\"}', '2024-12-18 08:46:37', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(114, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"12\",\"title\":\"Banner store\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=12\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:47:17', 'com_categories.category', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(115, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__categories\"}', '2024-12-18 08:47:17', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(116, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":120,\"title\":\"banners\",\"extension_name\":\"banners\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=120\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:48:44', 'com_modules.module', 32, 120, 'COM_ACTIONLOGS_DISABLED'),
(117, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 08:48:44', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(118, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":\"12\",\"title\":\"Banner store\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=12\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:49:01', 'com_categories.category', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(119, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__categories\"}', '2024-12-18 08:49:01', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(120, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbannersclient\"}', '2024-12-18 08:49:11', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(121, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbannerslocations\"}', '2024-12-18 08:49:20', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED');
INSERT INTO `d6gvw_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(122, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbannerslink\"}', '2024-12-18 08:49:27', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(123, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:50:12', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(124, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:50:27', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(125, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:50:59', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(126, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:51:14', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(127, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 08:53:36', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(128, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":106,\"title\":\"GI\\u1ece H\\u00c0NG\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=106\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:54:00', 'com_menus.item', 32, 106, 'COM_ACTIONLOGS_DISABLED'),
(129, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:54:00', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(130, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"LI\\u00caN H\\u1ec6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 08:55:01', 'com_menus.item', 32, 107, 'COM_ACTIONLOGS_DISABLED'),
(131, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 08:55:01', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(132, 'PLG_ACTIONLOG_JOOMLA_GUIDEDTOURS_TOURDELAYED', '{\"id\":12,\"title\":\"Welcome to Joomla!\",\"state\":\"delayed\",\"step\":1,\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:04:08', 'com_guidedtours.state', 32, 12, 'COM_ACTIONLOGS_DISABLED'),
(133, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":288,\"name\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:04:17', 'com_installer', 32, 288, 'COM_ACTIONLOGS_DISABLED'),
(134, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:04:56', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(135, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_PUBLISHED', '{\"action\":\"publish\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:04:56', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(136, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:05:21', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(137, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:05:21', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(138, 'PLG_ACTIONLOG_JOOMLA_COMPONENT_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT_CONFIG\",\"id\":18,\"title\":\"com_templates\",\"extension_name\":\"com_templates\",\"itemlink\":\"index.php?option=com_config&task=component.edit&extension_id=18\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:05:43', 'com_config.component', 32, 18, 'COM_ACTIONLOGS_DISABLED'),
(139, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:06:17', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(140, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:06:17', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(141, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:07:17', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(142, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:07:17', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(143, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:08:16', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(144, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:08:16', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(145, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:15:45', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(146, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:15:45', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(147, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:16:03', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(148, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:16:03', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(149, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:16:10', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(150, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:16:10', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(151, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:16:24', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(152, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:16:24', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(153, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:16:36', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(154, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:19:33', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(155, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:19:33', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(156, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MODULE\",\"id\":121,\"title\":\"Live Chat and ChatBot - ChatAndBot\",\"extension_name\":\"Live Chat and ChatBot - ChatAndBot\",\"itemlink\":\"index.php?option=com_modules&task=module.edit&id=121\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:21:18', 'com_modules.module', 32, 121, 'COM_ACTIONLOGS_DISABLED'),
(157, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:21:18', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(158, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__modules\"}', '2024-12-18 09:23:09', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(159, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__flexbanners\"}', '2024-12-18 09:24:01', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(160, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 09:27:38', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(161, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 09:33:05', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(162, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":5,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=5\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:36:00', 'com_content.article', 32, 5, 'COM_ACTIONLOGS_DISABLED'),
(163, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__content\"}', '2024-12-18 09:37:54', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED'),
(164, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"TRANG CH\\u1ee6\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\"}', '2024-12-18 09:38:31', 'com_menus.item', 32, 101, 'COM_ACTIONLOGS_DISABLED'),
(165, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":32,\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"userid\":32,\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=32\",\"table\":\"#__menu\"}', '2024-12-18 09:38:31', 'com_checkin', 32, 32, 'COM_ACTIONLOGS_DISABLED');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_action_logs_extensions`
--

CREATE TABLE `d6gvw_action_logs_extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `extension` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_action_logs_extensions`
--

INSERT INTO `d6gvw_action_logs_extensions` (`id`, `extension`) VALUES
(1, 'com_banners'),
(2, 'com_cache'),
(3, 'com_categories'),
(4, 'com_config'),
(5, 'com_contact'),
(6, 'com_content'),
(7, 'com_installer'),
(8, 'com_media'),
(9, 'com_menus'),
(10, 'com_messages'),
(11, 'com_modules'),
(12, 'com_newsfeeds'),
(13, 'com_plugins'),
(14, 'com_redirect'),
(15, 'com_tags'),
(16, 'com_templates'),
(17, 'com_users'),
(18, 'com_checkin'),
(19, 'com_scheduler'),
(20, 'com_fields'),
(21, 'com_guidedtours'),
(22, 'com_virtuemart');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_action_logs_users`
--

CREATE TABLE `d6gvw_action_logs_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `notify` tinyint(3) UNSIGNED NOT NULL,
  `extensions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_action_log_config`
--

CREATE TABLE `d6gvw_action_log_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `id_holder` varchar(255) DEFAULT NULL,
  `title_holder` varchar(255) DEFAULT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `text_prefix` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_action_log_config`
--

INSERT INTO `d6gvw_action_log_config` (`id`, `type_title`, `type_alias`, `id_holder`, `title_holder`, `table_name`, `text_prefix`) VALUES
(1, 'article', 'com_content.article', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(2, 'article', 'com_content.form', 'id', 'title', '#__content', 'PLG_ACTIONLOG_JOOMLA'),
(3, 'banner', 'com_banners.banner', 'id', 'name', '#__banners', 'PLG_ACTIONLOG_JOOMLA'),
(4, 'user_note', 'com_users.note', 'id', 'subject', '#__user_notes', 'PLG_ACTIONLOG_JOOMLA'),
(5, 'media', 'com_media.file', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(6, 'category', 'com_categories.category', 'id', 'title', '#__categories', 'PLG_ACTIONLOG_JOOMLA'),
(7, 'menu', 'com_menus.menu', 'id', 'title', '#__menu_types', 'PLG_ACTIONLOG_JOOMLA'),
(8, 'menu_item', 'com_menus.item', 'id', 'title', '#__menu', 'PLG_ACTIONLOG_JOOMLA'),
(9, 'newsfeed', 'com_newsfeeds.newsfeed', 'id', 'name', '#__newsfeeds', 'PLG_ACTIONLOG_JOOMLA'),
(10, 'link', 'com_redirect.link', 'id', 'old_url', '#__redirect_links', 'PLG_ACTIONLOG_JOOMLA'),
(11, 'tag', 'com_tags.tag', 'id', 'title', '#__tags', 'PLG_ACTIONLOG_JOOMLA'),
(12, 'style', 'com_templates.style', 'id', 'title', '#__template_styles', 'PLG_ACTIONLOG_JOOMLA'),
(13, 'plugin', 'com_plugins.plugin', 'extension_id', 'name', '#__extensions', 'PLG_ACTIONLOG_JOOMLA'),
(14, 'component_config', 'com_config.component', 'extension_id', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(15, 'contact', 'com_contact.contact', 'id', 'name', '#__contact_details', 'PLG_ACTIONLOG_JOOMLA'),
(16, 'module', 'com_modules.module', 'id', 'title', '#__modules', 'PLG_ACTIONLOG_JOOMLA'),
(17, 'access_level', 'com_users.level', 'id', 'title', '#__viewlevels', 'PLG_ACTIONLOG_JOOMLA'),
(18, 'banner_client', 'com_banners.client', 'id', 'name', '#__banner_clients', 'PLG_ACTIONLOG_JOOMLA'),
(19, 'application_config', 'com_config.application', '', 'name', '', 'PLG_ACTIONLOG_JOOMLA'),
(20, 'task', 'com_scheduler.task', 'id', 'title', '#__scheduler_tasks', 'PLG_ACTIONLOG_JOOMLA'),
(21, 'field', 'com_fields.field', 'id', 'title', '#__fields', 'PLG_ACTIONLOG_JOOMLA'),
(22, 'guidedtour', 'com_guidedtours.state', 'id', 'title', '#__guidedtours', 'PLG_ACTIONLOG_JOOMLA');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_assets`
--

CREATE TABLE `d6gvw_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_assets`
--

INSERT INTO `d6gvw_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 235, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.api\":{\"8\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 56, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.execute.transition\":{\"6\":1,\"5\":1}}'),
(9, 1, 57, 58, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 59, 60, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 61, 64, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 11, 62, 63, 2, 'com_languages.language.1', 'English (en-GB)', '{}'),
(13, 1, 65, 66, 1, 'com_login', 'com_login', '{}'),
(14, 1, 67, 68, 1, 'com_mails', 'com_mails', '{}'),
(15, 1, 69, 70, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 71, 74, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 75, 76, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 77, 174, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 175, 178, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 179, 180, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 181, 182, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(23, 1, 183, 184, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 189, 192, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 193, 194, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 21, 2, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 176, 177, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 190, 191, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 195, 196, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 197, 198, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 199, 200, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 201, 202, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 203, 204, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 205, 206, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 78, 79, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 80, 81, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 82, 83, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 84, 85, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 86, 87, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 88, 89, 2, 'com_modules.module.9', 'Notifications', '{}'),
(45, 18, 90, 91, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 92, 93, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(49, 18, 98, 99, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 100, 101, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 102, 103, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 104, 105, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 108, 109, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 72, 73, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 112, 113, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 8, 22, 39, 2, 'com_content.workflow.1', 'COM_WORKFLOW_BASIC_WORKFLOW', '{}'),
(57, 56, 23, 24, 3, 'com_content.stage.1', 'COM_WORKFLOW_BASIC_STAGE', '{}'),
(58, 56, 25, 26, 3, 'com_content.transition.1', 'UNPUBLISH', '{}'),
(59, 56, 27, 28, 3, 'com_content.transition.2', 'PUBLISH', '{}'),
(60, 56, 29, 30, 3, 'com_content.transition.3', 'TRASH', '{}'),
(61, 56, 31, 32, 3, 'com_content.transition.4', 'ARCHIVE', '{}'),
(62, 56, 33, 34, 3, 'com_content.transition.5', 'FEATURE', '{}'),
(63, 56, 35, 36, 3, 'com_content.transition.6', 'UNFEATURE', '{}'),
(64, 56, 37, 38, 3, 'com_content.transition.7', 'PUBLISH_AND_FEATURE', '{}'),
(65, 1, 185, 186, 1, 'com_privacy', 'com_privacy', '{}'),
(66, 1, 187, 188, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(67, 18, 94, 95, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(68, 18, 96, 97, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(70, 18, 106, 107, 2, 'com_modules.module.103', 'Site', '{}'),
(71, 18, 110, 111, 2, 'com_modules.module.104', 'System', '{}'),
(72, 18, 114, 115, 2, 'com_modules.module.91', 'System Dashboard', '{}'),
(73, 18, 116, 117, 2, 'com_modules.module.92', 'Content Dashboard', '{}'),
(74, 18, 118, 119, 2, 'com_modules.module.93', 'Menus Dashboard', '{}'),
(75, 18, 120, 121, 2, 'com_modules.module.94', 'Components Dashboard', '{}'),
(76, 18, 122, 123, 2, 'com_modules.module.95', 'Users Dashboard', '{}'),
(77, 18, 124, 125, 2, 'com_modules.module.99', 'Frontend Link', '{}'),
(78, 18, 126, 127, 2, 'com_modules.module.100', 'Messages', '{}'),
(79, 18, 128, 129, 2, 'com_modules.module.101', 'Post Install Messages', '{}'),
(80, 18, 130, 131, 2, 'com_modules.module.102', 'User Status', '{}'),
(82, 18, 132, 133, 2, 'com_modules.module.105', '3rd Party', '{}'),
(83, 18, 134, 135, 2, 'com_modules.module.106', 'Help Dashboard', '{}'),
(84, 18, 136, 137, 2, 'com_modules.module.107', 'Privacy Requests', '{}'),
(85, 18, 138, 139, 2, 'com_modules.module.108', 'Privacy Status', '{}'),
(86, 18, 140, 141, 2, 'com_modules.module.96', 'Popular Articles', '{}'),
(87, 18, 142, 143, 2, 'com_modules.module.97', 'Recently Added Articles', '{}'),
(88, 18, 144, 145, 2, 'com_modules.module.98', 'Logged-in Users', '{}'),
(89, 18, 146, 147, 2, 'com_modules.module.90', 'Login Support', '{}'),
(90, 1, 207, 208, 1, 'com_scheduler', 'com_scheduler', '{}'),
(91, 1, 209, 210, 1, 'com_associations', 'com_associations', '{}'),
(92, 1, 211, 212, 1, 'com_categories', 'com_categories', '{}'),
(93, 1, 213, 214, 1, 'com_fields', 'com_fields', '{}'),
(94, 1, 215, 216, 1, 'com_workflow', 'com_workflow', '{}'),
(95, 1, 217, 218, 1, 'com_guidedtours', 'com_guidedtours', '{}'),
(96, 18, 148, 149, 2, 'com_modules.module.109', 'Guided Tours', '{}'),
(97, 1, 219, 220, 1, 'com_scheduler.task.1', 'com_scheduler.task.1', '{}'),
(98, 1, 221, 222, 1, 'com_scheduler.task.2', 'com_scheduler.task.2', '{}'),
(99, 1, 223, 224, 1, 'com_scheduler.task.3', 'com_scheduler.task.3', '{}'),
(100, 18, 150, 151, 2, 'com_modules.module.110', 'Import Content', '{}'),
(101, 18, 152, 153, 2, 'com_modules.module.111', 'mod_jdsimplecontactform', '{}'),
(102, 8, 40, 43, 2, 'com_content.category.8', 'PHỤ KIỆN', '{}'),
(103, 102, 41, 42, 3, 'com_content.article.1', 'Đồng hồ thể thao', '{}'),
(104, 105, 45, 46, 3, 'com_content.article.2', 'ĐỒNG HO NAM', '{}'),
(105, 8, 44, 47, 2, 'com_content.category.9', 'ĐỒNG HO NAM', '{}'),
(106, 8, 48, 51, 2, 'com_content.category.10', 'DONG HO NU', '{}'),
(107, 106, 49, 50, 3, 'com_content.article.3', 'Đồng hồ nữ', '{}'),
(108, 109, 53, 54, 3, 'com_content.article.4', 'Phụ kiện1', '{}'),
(109, 8, 52, 55, 2, 'com_content.category.11', 'Phụ kiện1', '{}'),
(110, 1, 225, 226, 1, 'com_virtuemart', 'VIRTUEMART', '{}'),
(111, 1, 227, 228, 1, 'com_virtuemart_allinone', 'VirtueMart_allinone', '{}'),
(112, 18, 154, 155, 2, 'com_modules.module.112', 'VM - Currencies Selector', '{}'),
(113, 18, 156, 157, 2, 'com_modules.module.113', 'VM - Featured products', '{}'),
(114, 18, 158, 159, 2, 'com_modules.module.114', 'VM - Search in Shop', '{}'),
(115, 18, 160, 161, 2, 'com_modules.module.115', 'VM - Manufacturer', '{}'),
(116, 18, 162, 163, 2, 'com_modules.module.116', 'VM - Shopping cart', '{}'),
(117, 18, 164, 165, 2, 'com_modules.module.117', 'VM - Category', '{}'),
(118, 1, 229, 230, 1, 'com_tcpdf', 'tcpdf', '{}'),
(119, 18, 166, 167, 2, 'com_modules.module.118', 'mod_virtuemart_languages', '{}'),
(120, 18, 168, 169, 2, 'com_modules.module.119', 'VirtueMart Vendor Information', '{}'),
(121, 1, 231, 234, 1, 'com_flexbanners', 'com_flexbanners', '{}'),
(122, 18, 170, 171, 2, 'com_modules.module.120', 'banners', '{}'),
(123, 121, 232, 233, 2, 'com_flexbanners.category.12', 'Banner store', '{}'),
(124, 18, 172, 173, 2, 'com_modules.module.121', 'Live Chat and ChatBot - ChatAndBot', '{}'),
(125, 27, 19, 20, 3, 'com_content.article.5', 'TRANG CHỦ', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_associations`
--

CREATE TABLE `d6gvw_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_banners`
--

CREATE TABLE `d6gvw_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT 0,
  `type` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `clickurl` varchar(2048) NOT NULL DEFAULT '',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_banner_clients`
--

CREATE TABLE `d6gvw_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `metakey` text DEFAULT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT 0,
  `metakey_prefix` varchar(400) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT -1,
  `track_clicks` tinyint(4) NOT NULL DEFAULT -1,
  `track_impressions` tinyint(4) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_banner_tracks`
--

CREATE TABLE `d6gvw_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_categories`
--

CREATE TABLE `d6gvw_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `metadesc` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_categories`
--

INSERT INTO `d6gvw_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '{}', '', '', '{}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"workflow_id\":\"use_default\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 06:38:57', 32, '2024-12-18 06:38:57', 0, '*', 1),
(8, 102, 1, 11, 12, 1, 'ph-ki-n', 'com_content', 'PHỤ KIỆN', 'ph-ki-n', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 07:01:26', 32, '2024-12-18 07:01:26', 0, '*', 1),
(9, 105, 1, 13, 14, 1, 'd-ng-ho-nam', 'com_content', 'ĐỒNG HO NAM', 'd-ng-ho-nam', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 07:05:09', 32, '2024-12-18 07:05:09', 0, '*', 1),
(10, 106, 1, 15, 16, 1, 'dong-ho-nu', 'com_content', 'DONG HO NU', 'dong-ho-nu', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 07:06:16', 32, '2024-12-18 07:06:16', 0, '*', 1),
(11, 109, 1, 17, 18, 1, 'ph-ki-n1', 'com_content', 'Phụ kiện1', 'ph-ki-n1', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 07:09:56', 32, '2024-12-18 07:09:56', 0, '*', 1),
(12, 123, 1, 19, 20, 1, 'banner-store', 'com_flexbanners', 'Banner store', 'banner-store', '', '', 1, NULL, NULL, 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 32, '2024-12-18 08:27:38', 32, '2024-12-18 08:49:01', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_contact_details`
--

CREATE TABLE `d6gvw_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `catid` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL DEFAULT '',
  `sortname2` varchar(255) NOT NULL DEFAULT '',
  `sortname3` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(7) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if contact is featured.',
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_content`
--

CREATE TABLE `d6gvw_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metadata` text NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `note` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_content`
--

INSERT INTO `d6gvw_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `note`) VALUES
(1, 103, 'Đồng hồ thể thao', 'ph-ki-n', '<p>Shop Đồng hồ thể thao</p>', '', 1, 8, '2024-12-18 07:02:09', 32, '', '2024-12-18 07:15:31', 32, NULL, NULL, '2024-12-18 07:02:09', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(2, 104, 'ĐỒNG HO NAM', 'd-ng-ho-nam', '<p>Shop đồng hồ NAm</p>', '', 1, 9, '2024-12-18 07:03:54', 32, '', '2024-12-18 07:05:22', 32, NULL, NULL, '2024-12-18 07:03:54', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(3, 107, 'Đồng hồ nữ', 'd-ng-h-n', '<p>Shop đồng hồ nữ</p>', '', 1, 10, '2024-12-18 07:06:52', 32, '', '2024-12-18 07:06:52', 32, NULL, NULL, '2024-12-18 07:06:52', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(4, 108, 'Phụ kiện1', 'ph-ki-n1', '<p>Shop Phụ Kiện</p>', '', 1, 11, '2024-12-18 07:09:42', 32, '', '2024-12-18 07:10:26', 32, NULL, NULL, '2024-12-18 07:09:42', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 2, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', ''),
(5, 125, 'TRANG CHỦ', 'trang-ch', '<p style=\"text-align: justify;\">Chào Mừng Đến Với Fashion Watch Store</p>\r\n<p style=\"text-align: justify;\">Khám Phá Bộ Sưu Tập Đồng Hồ Mới Nhất</p>\r\n<p style=\"text-align: justify;\">Tại Fashion Watch Store, chúng tôi mang đến cho bạn bộ sưu tập đồng hồ thời trang đa dạng, phong phú, phù hợp với mọi phong cách và nhu cầu. Từ những chiếc đồng hồ sang trọng, tinh tế, đến những mẫu đồng hồ thể thao năng động, chúng tôi tự hào là điểm đến lý tưởng cho những ai yêu thích thời gian và sự hoàn hảo trong từng chi tiết.</p>\r\n<p style=\"text-align: justify;\">Sản Phẩm Hot<br>Đồng Hồ Nam: Những mẫu đồng hồ mạnh mẽ, lịch lãm và đầy phong cách. Từ thiết kế cổ điển đến những sản phẩm hiện đại, tất cả đều mang đến vẻ đẹp vượt thời gian.<br>Đồng Hồ Nữ: Đồng hồ nữ tinh tế, thanh lịch, với các chi tiết được chăm chút tỉ mỉ, làm tôn lên vẻ đẹp của bạn. Chọn ngay một chiếc đồng hồ phù hợp cho các dịp đặc biệt.<br>Đồng Hồ Thể Thao: Được thiết kế cho những ai yêu thích sự năng động và khỏe khoắn, những chiếc đồng hồ thể thao bền bỉ sẽ đồng hành cùng bạn trong mọi hoạt động.<br>Tại Sao Chọn Fashion Watch Store?<br>Sản Phẩm Chính Hãng: Chúng tôi cam kết cung cấp các mẫu đồng hồ chính hãng từ những thương hiệu nổi tiếng, đảm bảo chất lượng và tính xác thực.<br>Giá Cả Hợp Lý: Fashion Watch Store cung cấp những chiếc đồng hồ cao cấp với mức giá phải chăng, phù hợp với mọi ngân sách.<br>Miễn Phí Giao Hàng: Chúng tôi cung cấp dịch vụ giao hàng miễn phí trong phạm vi toàn quốc cho tất cả các đơn hàng. Đảm bảo bạn nhận được sản phẩm trong thời gian nhanh nhất.<br>Chế Độ Bảo Hành: Mọi sản phẩm đều đi kèm với chế độ bảo hành chính hãng, mang lại sự yên tâm tuyệt đối cho khách hàng.<br>Khám Phá Các Bộ Sưu Tập Thời Trang<br>Chúng tôi luôn cập nhật các bộ sưu tập mới, mang đến những mẫu đồng hồ hợp thời trang và bắt kịp xu hướng. Hãy khám phá ngay các bộ sưu tập dành riêng cho bạn, giúp bạn luôn tự tin và nổi bật trong mọi hoàn cảnh.</p>\r\n<p style=\"text-align: justify;\">Bộ Sưu Tập Mới Nhất: Cập nhật những mẫu đồng hồ mới ra mắt từ các thương hiệu danh tiếng.<br>Đồng Hồ Cao Cấp: Các mẫu đồng hồ sang trọng và đẳng cấp, phù hợp với những dịp quan trọng hoặc những ai yêu thích sự tinh tế.<br>Đồng Hồ Thời Trang: Các mẫu đồng hồ được thiết kế độc đáo, với những chi tiết tỉ mỉ, mang đến vẻ đẹp thu hút và cá tính.<br>Ưu Đãi Đặc Biệt<br>Giảm Giá Lớn: Nhận ngay ưu đãi hấp dẫn với các chương trình giảm giá, khuyến mãi đặc biệt theo mùa. Hãy theo dõi trang chủ để không bỏ lỡ những chương trình hot!</p>\r\n<p style=\"text-align: justify;\">Mua 1 Tặng 1: Đừng bỏ lỡ chương trình khuyến mãi mua 1 tặng 1 cực kỳ hấp dẫn tại Fashion Watch Store!<br>Quà Tặng Kèm: Khi mua đồng hồ tại cửa hàng, bạn sẽ nhận được các phần quà độc đáo, góp phần làm tăng giá trị món quà của bạn.<br>Chăm Sóc Khách Hàng Tận Tâm<br>Fashion Watch Store luôn coi khách hàng là trọng tâm, và chúng tôi cam kết mang đến dịch vụ chăm sóc khách hàng tốt nhất. Nếu bạn có bất kỳ câu hỏi hay thắc mắc nào về sản phẩm, đơn hàng hay dịch vụ, đừng ngần ngại liên hệ với chúng tôi qua:</p>\r\n<p style=\"text-align: justify;\">Hotline: [Số điện thoại]<br>Email: [Email liên hệ]<br>Live Chat: Tại trang web để giải đáp thắc mắc nhanh chóng.<br>Đặt Mua Ngay<br>Hãy chọn ngay chiếc đồng hồ mà bạn yêu thích và làm đẹp thêm cho phong cách của mình. Chúng tôi sẽ giao sản phẩm đến tận tay bạn với dịch vụ giao hàng nhanh chóng và bảo mật.</p>', '', 1, 2, '2024-12-18 09:36:00', 32, '', '2024-12-18 09:36:00', 32, 32, '2024-12-18 09:38:07', '2024-12-18 09:36:00', NULL, '{\"image_intro\":\"\",\"image_intro_alt\":\"\",\"float_intro\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"float_fulltext\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":\"\",\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":\"\",\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":\"\",\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_contentitem_tag_map`
--

CREATE TABLE `d6gvw_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(9) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_content_frontpage`
--

CREATE TABLE `d6gvw_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `featured_up` datetime DEFAULT NULL,
  `featured_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_content_rating`
--

CREATE TABLE `d6gvw_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT 0,
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_content_types`
--

CREATE TABLE `d6gvw_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(400) NOT NULL DEFAULT '',
  `table` varchar(2048) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_content_types`
--

INSERT INTO `d6gvw_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"ArticleTable\",\"prefix\":\"Joomla\\\\Component\\\\Content\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"asset_id\", \"note\":\"note\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"ordering\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"ContactTable\",\"prefix\":\"Joomla\\\\Component\\\\Contact\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"NewsfeedTable\",\"prefix\":\"Joomla\\\\Component\\\\Newsfeeds\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerDate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', '', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"TagTable\",\"prefix\":\"Joomla\\\\Component\\\\Tags\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"BannerTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\\\Component\\\\Banners\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"NoteTable\",\"prefix\":\"Joomla\\\\Component\\\\Users\\\\Administrator\\\\Table\\\\\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\\\Component\\\\Categories\\\\Administrator\\\\Table\\\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\\\CMS\\\\Table\\\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(10000, 'FlexBanner', 'com_flexbanners.banner', '{\"special\":{\"dbtable\":\"#__flexbanners\",\"key\":\"id\",\"type\":\"FlexbannerTable\",\"prefix\":\"Joomla\\Component\\Flexbanners\\Administrator\\Table\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\CMS\\Table\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"startdate\",\"core_enddate\":\"enddate\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\",}}', '', '{\"formFile\":\"administrator/components/com_flexbanners/forms/flexbanner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"startdate\", \"enddate\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10001, 'FlexBanners Category', 'com_flexbanners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"CategoryTable\",\"prefix\":\"Joomla\\Component\\Categories\\Administrator\\Table\\\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"Joomla\\CMS\\Table\\\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator/components/com_categories/forms/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(10002, 'FlexBanners Client', 'com_flexbanners.client', '{\"special\":{\"dbtable\":\"#__flexbannersclient\",\"key\":\"id\",\"type\":\"ClientTable\",\"prefix\":\"Joomla\\Component\\Flexbanners\\Administrator\\Table\\\"}}', '', '', '', '{\"formFile\":\"administrator/components/com_flexbanners/forms/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_extensions`
--

CREATE TABLE `d6gvw_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(4) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `protected` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is protected. Protected extensions cannot be disabled.',
  `locked` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Flag to indicate if the extension is locked. Locked extensions cannot be uninstalled.',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT 0,
  `state` int(11) DEFAULT 0,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_extensions`
--

INSERT INTO `d6gvw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(1, 0, 'com_wrapper', 'component', 'com_wrapper', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Wrapper\",\"filename\":\"wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(2, 0, 'com_admin', 'component', 'com_admin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Admin\"}', '', '', NULL, NULL, 0, 0, NULL),
(3, 0, 'com_banners', 'component', 'com_banners', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Banners\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', NULL, NULL, 0, 0, NULL),
(4, 0, 'com_cache', 'component', 'com_cache', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cache\"}', '', '', NULL, NULL, 0, 0, NULL),
(5, 0, 'com_categories', 'component', 'com_categories', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(6, 0, 'com_checkin', 'component', 'com_checkin', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Checkin\"}', '', '', NULL, NULL, 0, 0, NULL),
(7, 0, 'com_contact', 'component', 'com_contact', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contact\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_ids\":1,\"custom_fields_enable\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(8, 0, 'com_cpanel', 'component', 'com_cpanel', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"2007-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Cpanel\"}', '', '', NULL, NULL, 0, 0, NULL),
(9, 0, 'com_installer', 'component', 'com_installer', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Installer\"}', '{\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', NULL, NULL, 0, 0, NULL),
(10, 0, 'com_languages', 'component', 'com_languages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Languages\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', NULL, NULL, 0, 0, NULL),
(11, 0, 'com_login', 'component', 'com_login', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Login\"}', '', '', NULL, NULL, 0, 0, NULL),
(12, 0, 'com_media', 'component', 'com_media', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Media\",\"filename\":\"media\"}', '{\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"restrict_uploads_extensions\":\"bmp,gif,jpg,jpeg,png,webp,avif,ico,mp3,m4a,mp4a,ogg,mp4,mp4v,mpeg,mov,odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png,jpeg,webp,avif\",\"audio_extensions\":\"mp3,m4a,mp4a,ogg\",\"video_extensions\":\"mp4,mp4v,mpeg,mov,webm\",\"doc_extensions\":\"odg,odp,ods,odt,pdf,ppt,txt,xcf,xls,csv\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,image\\/webp,image\\/avif,audio\\/ogg,audio\\/mpeg,audio\\/mp4,video\\/mp4,video\\/webm,video\\/mpeg,video\\/quicktime,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\"}', '', NULL, NULL, 0, 0, NULL),
(13, 0, 'com_menus', 'component', 'com_menus', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Menus\",\"filename\":\"menus\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(14, 0, 'com_messages', 'component', 'com_messages', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(15, 0, 'com_modules', 'component', 'com_modules', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Modules\",\"filename\":\"modules\"}', '', '', NULL, NULL, 0, 0, NULL),
(16, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"sef_ids\":1}', '', NULL, NULL, 0, 0, NULL),
(17, 0, 'com_plugins', 'component', 'com_plugins', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Plugins\"}', '', '', NULL, NULL, 0, 0, NULL),
(18, 0, 'com_templates', 'component', 'com_templates', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Templates\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png,webp\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass,json\",\"font_formats\":\"woff,woff2,ttf,otf\",\"compressed_formats\":\"zip\",\"difference\":\"SideBySide\"}', '', NULL, NULL, 0, 0, NULL),
(19, 0, 'com_content', 'component', 'com_content', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Content\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":100,\"show_tags\":\"1\",\"record_hits\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":0,\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"show_configure_edit_options\":\"1\",\"show_permissions\":\"1\",\"show_associations_edit\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_category_heading_title_text\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":4,\"blog_class\":\"\",\"num_columns\":1,\"multi_column_order\":\"0\",\"num_links\":4,\"show_subcategory_content\":\"0\",\"link_intro_image\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"display_num\":\"10\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_ids\":1,\"custom_fields_enable\":\"1\",\"workflow_enabled\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(20, 0, 'com_config', 'component', 'com_config', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Config\",\"filename\":\"config\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', NULL, NULL, 0, 0, NULL),
(21, 0, 'com_redirect', 'component', 'com_redirect', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Redirect\"}', '', '', NULL, NULL, 0, 0, NULL),
(22, 0, 'com_users', 'component', 'com_users', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"2006-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Users\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"0\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"12\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(23, 0, 'com_finder', 'component', 'com_finder', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Finder\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(24, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.3\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Joomlaupdate\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(25, 0, 'com_tags', 'component', 'com_tags', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"2013-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Tags\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_description\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(26, 0, 'com_contenthistory', 'component', 'com_contenthistory', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"2013-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Contenthistory\",\"filename\":\"contenthistory\"}', '', '', NULL, NULL, 0, 0, NULL),
(27, 0, 'com_ajax', 'component', 'com_ajax', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', NULL, NULL, 0, 0, NULL),
(28, 0, 'com_postinstall', 'component', 'com_postinstall', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Postinstall\"}', '', '', NULL, NULL, 0, 0, NULL),
(29, 0, 'com_fields', 'component', 'com_fields', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 0, 0, NULL),
(30, 0, 'com_associations', 'component', 'com_associations', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Associations\"}', '', '', NULL, NULL, 0, 0, NULL),
(31, 0, 'com_privacy', 'component', 'com_privacy', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_privacy\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Privacy\",\"filename\":\"privacy\"}', '', '', NULL, NULL, 0, 0, NULL),
(32, 0, 'com_actionlogs', 'component', 'com_actionlogs', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_actionlogs\",\"type\":\"component\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"COM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Actionlogs\"}', '{\"ip_logging\":0,\"csv_delimiter\":\",\",\"loggable_extensions\":[\"com_banners\",\"com_cache\",\"com_categories\",\"com_checkin\",\"com_config\",\"com_contact\",\"com_content\",\"com_fields\",\"com_guidedtours\",\"com_installer\",\"com_media\",\"com_menus\",\"com_messages\",\"com_modules\",\"com_newsfeeds\",\"com_plugins\",\"com_redirect\",\"com_scheduler\",\"com_tags\",\"com_templates\",\"com_users\"]}', '', NULL, NULL, 0, 0, NULL),
(33, 0, 'com_workflow', 'component', 'com_workflow', NULL, '', 1, 1, 0, 1, 1, '{\"name\":\"com_workflow\",\"type\":\"component\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_WORKFLOW_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Workflow\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(34, 0, 'com_mails', 'component', 'com_mails', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"com_mails\",\"type\":\"component\",\"creationDate\":\"2019-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"COM_MAILS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Mails\"}', '', '', NULL, NULL, 0, 0, NULL),
(35, 0, 'com_scheduler', 'component', 'com_scheduler', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"com_scheduler\",\"type\":\"component\",\"creationDate\":\"2021-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"COM_SCHEDULER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Scheduler\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(36, 0, 'com_guidedtours', 'component', 'com_guidedtours', NULL, '', 1, 1, 0, 0, 1, '{\"name\":\"com_guidedtours\",\"type\":\"component\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"COM_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Component\\\\Guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(37, 0, 'lib_joomla', 'library', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_joomla\",\"type\":\"library\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 0, 0, NULL),
(38, 0, 'lib_phpass', 'library', 'phpass', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"lib_phpass\",\"type\":\"library\",\"creationDate\":\"2004-01\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"https:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', NULL, NULL, 0, 0, NULL),
(39, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesArchive\",\"filename\":\"mod_articles_archive\"}', '', '', NULL, NULL, 0, 0, NULL),
(40, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesLatest\",\"filename\":\"mod_articles_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(41, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesPopular\",\"filename\":\"mod_articles_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(42, 0, 'mod_banners', 'module', 'mod_banners', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Banners\",\"filename\":\"mod_banners\"}', '', '', NULL, NULL, 0, 0, NULL),
(43, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Breadcrumbs\",\"filename\":\"mod_breadcrumbs\"}', '', '', NULL, NULL, 0, 0, NULL),
(44, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(45, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(46, 0, 'mod_footer', 'module', 'mod_footer', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Footer\",\"filename\":\"mod_footer\"}', '', '', NULL, NULL, 0, 0, NULL),
(47, 0, 'mod_login', 'module', 'mod_login', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(48, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(49, 0, 'mod_articles_news', 'module', 'mod_articles_news', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesNews\",\"filename\":\"mod_articles_news\"}', '', '', NULL, NULL, 0, 0, NULL),
(50, 0, 'mod_random_image', 'module', 'mod_random_image', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"2006-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RandomImage\",\"filename\":\"mod_random_image\"}', '', '', NULL, NULL, 0, 0, NULL),
(51, 0, 'mod_related_items', 'module', 'mod_related_items', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\RelatedItems\",\"filename\":\"mod_related_items\"}', '', '', NULL, NULL, 0, 0, NULL),
(52, 0, 'mod_stats', 'module', 'mod_stats', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Stats\",\"filename\":\"mod_stats\"}', '', '', NULL, NULL, 0, 0, NULL),
(53, 0, 'mod_syndicate', 'module', 'mod_syndicate', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"2006-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Syndicate\",\"filename\":\"mod_syndicate\"}', '', '', NULL, NULL, 0, 0, NULL),
(54, 0, 'mod_users_latest', 'module', 'mod_users_latest', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"2009-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\UsersLatest\",\"filename\":\"mod_users_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(55, 0, 'mod_whosonline', 'module', 'mod_whosonline', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Whosonline\",\"filename\":\"mod_whosonline\"}', '', '', NULL, NULL, 0, 0, NULL),
(56, 0, 'mod_wrapper', 'module', 'mod_wrapper', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"2004-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Wrapper\",\"filename\":\"mod_wrapper\"}', '', '', NULL, NULL, 0, 0, NULL),
(57, 0, 'mod_articles_category', 'module', 'mod_articles_category', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategory\",\"filename\":\"mod_articles_category\"}', '', '', NULL, NULL, 0, 0, NULL),
(58, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\ArticlesCategories\",\"filename\":\"mod_articles_categories\"}', '', '', NULL, NULL, 0, 0, NULL),
(59, 0, 'mod_languages', 'module', 'mod_languages', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"2010-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Languages\",\"filename\":\"mod_languages\"}', '', '', NULL, NULL, 0, 0, NULL),
(60, 0, 'mod_finder', 'module', 'mod_finder', NULL, '', 0, 1, 0, 0, 1, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Finder\",\"filename\":\"mod_finder\"}', '', '', NULL, NULL, 0, 0, NULL),
(61, 0, 'MOD_ARTICLES', 'module', 'mod_articles', NULL, '', 0, 1, 0, 0, 1, '{\"name\":\"MOD_ARTICLES\",\"type\":\"module\",\"creationDate\":\"2024-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.0\",\"description\":\"MOD_ARTICLES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Articles\",\"filename\":\"mod_articles\"}', '', '', NULL, NULL, 0, 0, NULL),
(62, 0, 'mod_custom', 'module', 'mod_custom', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Custom\",\"filename\":\"mod_custom\"}', '', '', NULL, NULL, 0, 0, NULL),
(63, 0, 'mod_feed', 'module', 'mod_feed', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"2005-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Feed\",\"filename\":\"mod_feed\"}', '', '', NULL, NULL, 0, 0, NULL),
(64, 0, 'mod_latest', 'module', 'mod_latest', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Latest\",\"filename\":\"mod_latest\"}', '', '', NULL, NULL, 0, 0, NULL),
(65, 0, 'mod_logged', 'module', 'mod_logged', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"2005-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Logged\",\"filename\":\"mod_logged\"}', '', '', NULL, NULL, 0, 0, NULL),
(66, 0, 'mod_login', 'module', 'mod_login', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"2005-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Login\",\"filename\":\"mod_login\"}', '', '', NULL, NULL, 0, 0, NULL),
(67, 0, 'mod_loginsupport', 'module', 'mod_loginsupport', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_loginsupport\",\"type\":\"module\",\"creationDate\":\"2019-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_LOGINSUPPORT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Loginsupport\",\"filename\":\"mod_loginsupport\"}', '', '', NULL, NULL, 0, 0, NULL),
(68, 0, 'mod_menu', 'module', 'mod_menu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Menu\",\"filename\":\"mod_menu\"}', '', '', NULL, NULL, 0, 0, NULL),
(69, 0, 'mod_popular', 'module', 'mod_popular', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Popular\",\"filename\":\"mod_popular\"}', '', '', NULL, NULL, 0, 0, NULL),
(70, 0, 'mod_quickicon', 'module', 'mod_quickicon', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Quickicon\",\"filename\":\"mod_quickicon\"}', '', '', NULL, NULL, 0, 0, NULL),
(71, 0, 'mod_frontend', 'module', 'mod_frontend', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_frontend\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_FRONTEND_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Frontend\",\"filename\":\"mod_frontend\"}', '', '', NULL, NULL, 0, 0, NULL),
(72, 0, 'mod_messages', 'module', 'mod_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Messages\",\"filename\":\"mod_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(73, 0, 'mod_post_installation_messages', 'module', 'mod_post_installation_messages', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_post_installation_messages\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_POST_INSTALLATION_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PostInstallationMessages\",\"filename\":\"mod_post_installation_messages\"}', '', '', NULL, NULL, 0, 0, NULL),
(74, 0, 'mod_user', 'module', 'mod_user', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_user\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\User\",\"filename\":\"mod_user\"}', '', '', NULL, NULL, 0, 0, NULL),
(75, 0, 'mod_title', 'module', 'mod_title', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Title\",\"filename\":\"mod_title\"}', '', '', NULL, NULL, 0, 0, NULL),
(76, 0, 'mod_toolbar', 'module', 'mod_toolbar', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Toolbar\",\"filename\":\"mod_toolbar\"}', '', '', NULL, NULL, 0, 0, NULL),
(77, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"2011-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\MultilangStatus\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(78, 0, 'mod_version', 'module', 'mod_version', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"2012-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2012 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Version\",\"filename\":\"mod_version\"}', '{\"cache\":\"0\"}', '', NULL, NULL, 0, 0, NULL),
(79, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"2004-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\StatsAdmin\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `d6gvw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(80, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsPopular\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(81, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"2013-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\TagsSimilar\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', NULL, NULL, 0, 0, NULL),
(82, 0, 'mod_sampledata', 'module', 'mod_sampledata', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Sampledata\",\"filename\":\"mod_sampledata\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(83, 0, 'mod_latestactions', 'module', 'mod_latestactions', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_latestactions\",\"type\":\"module\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_LATESTACTIONS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\LatestActions\",\"filename\":\"mod_latestactions\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(84, 0, 'mod_privacy_dashboard', 'module', 'mod_privacy_dashboard', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_dashboard\",\"type\":\"module\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"MOD_PRIVACY_DASHBOARD_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyDashboard\",\"filename\":\"mod_privacy_dashboard\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(85, 0, 'mod_submenu', 'module', 'mod_submenu', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"2006-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\Submenu\",\"filename\":\"mod_submenu\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(86, 0, 'mod_privacy_status', 'module', 'mod_privacy_status', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_privacy_status\",\"type\":\"module\",\"creationDate\":\"2019-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"MOD_PRIVACY_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\PrivacyStatus\",\"filename\":\"mod_privacy_status\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(87, 0, 'mod_guidedtours', 'module', 'mod_guidedtours', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"mod_guidedtours\",\"type\":\"module\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"MOD_GUIDEDTOURS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\GuidedTours\",\"filename\":\"mod_guidedtours\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(88, 0, 'plg_actionlog_joomla', 'plugin', 'joomla', NULL, 'actionlog', 0, 1, 1, 0, 1, '{\"name\":\"plg_actionlog_joomla\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_ACTIONLOG_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Actionlog\\\\Joomla\",\"filename\":\"joomla\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(89, 0, 'plg_api-authentication_basic', 'plugin', 'basic', NULL, 'api-authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_api-authentication_basic\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_BASIC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Basic\",\"filename\":\"basic\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(90, 0, 'plg_api-authentication_token', 'plugin', 'token', NULL, 'api-authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_api-authentication_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_API-AUTHENTICATION_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\ApiAuthentication\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(91, 0, 'plg_authentication_cookie', 'plugin', 'cookie', NULL, 'authentication', 0, 1, 1, 0, 1, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"2013-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Cookie\",\"filename\":\"cookie\"}', '', '', NULL, NULL, 1, 0, NULL),
(92, 0, 'plg_authentication_joomla', 'plugin', 'joomla', NULL, 'authentication', 0, 1, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTHENTICATION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(93, 0, 'plg_authentication_ldap', 'plugin', 'ldap', NULL, 'authentication', 0, 0, 1, 0, 1, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Authentication\\\\Ldap\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', NULL, NULL, 3, 0, NULL),
(94, 0, 'plg_behaviour_compat', 'plugin', 'compat', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_compat\",\"type\":\"plugin\",\"creationDate\":\"2023-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_COMPAT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Compat\",\"filename\":\"compat\"}', '{\"classes_aliases\":\"1\",\"es5_assets\":\"1\"}', '', NULL, NULL, 1, 0, NULL),
(95, 0, 'plg_behaviour_taggable', 'plugin', 'taggable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_taggable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_TAGGABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Taggable\",\"filename\":\"taggable\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(96, 0, 'plg_behaviour_versionable', 'plugin', 'versionable', NULL, 'behaviour', 0, 1, 1, 0, 1, '{\"name\":\"plg_behaviour_versionable\",\"type\":\"plugin\",\"creationDate\":\"2015-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_BEHAVIOUR_VERSIONABLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Behaviour\\\\Versionable\",\"filename\":\"versionable\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(97, 0, 'plg_content_confirmconsent', 'plugin', 'confirmconsent', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_confirmconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_CONTENT_CONFIRMCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\ConfirmConsent\",\"filename\":\"confirmconsent\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(98, 0, 'plg_content_contact', 'plugin', 'contact', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"2014-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2014 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(99, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\EmailCloak\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(100, 0, 'plg_content_fields', 'plugin', 'fields', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 4, 0, NULL),
(101, 0, 'plg_content_finder', 'plugin', 'finder', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"2011-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 5, 0, NULL),
(102, 0, 'plg_content_joomla', 'plugin', 'joomla', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 6, 0, NULL),
(103, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\LoadModule\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', NULL, NULL, 7, 0, NULL),
(104, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageBreak\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', NULL, NULL, 8, 0, NULL),
(105, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', NULL, 'content', 0, 1, 1, 0, 1, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"2006-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\PageNavigation\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', NULL, NULL, 9, 0, NULL),
(106, 0, 'plg_content_vote', 'plugin', 'vote', NULL, 'content', 0, 0, 1, 0, 1, '{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"2005-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Content\\\\Vote\",\"filename\":\"vote\"}', '', '', NULL, NULL, 10, 0, NULL),
(107, 0, 'plg_editors-xtd_article', 'plugin', 'article', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"2009-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Article\",\"filename\":\"article\"}', '', '', NULL, NULL, 1, 0, NULL),
(108, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"2016-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Contact\",\"filename\":\"contact\"}', '', '', NULL, NULL, 2, 0, NULL),
(109, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 3, 0, NULL),
(110, 0, 'plg_editors-xtd_image', 'plugin', 'image', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Image\",\"filename\":\"image\"}', '', '', NULL, NULL, 4, 0, NULL),
(111, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Menu\",\"filename\":\"menu\"}', '', '', NULL, NULL, 5, 0, NULL),
(112, 0, 'plg_editors-xtd_module', 'plugin', 'module', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"2015-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2015 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\Module\",\"filename\":\"module\"}', '', '', NULL, NULL, 6, 0, NULL),
(113, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"2004-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\PageBreak\",\"filename\":\"pagebreak\"}', '', '', NULL, NULL, 7, 0, NULL),
(114, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', NULL, 'editors-xtd', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"2006-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\EditorsXtd\\\\ReadMore\",\"filename\":\"readmore\"}', '', '', NULL, NULL, 8, 0, NULL),
(115, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2021 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"https:\\/\\/codemirror.net\\/\",\"version\":\"6.0.0\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\CodeMirror\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', NULL, NULL, 1, 0, NULL),
(116, 0, 'plg_editors_none', 'plugin', 'none', NULL, 'editors', 0, 1, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"2005-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\None\",\"filename\":\"none\"}', '', '', NULL, NULL, 2, 0, NULL),
(117, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', NULL, 'editors', 0, 1, 1, 0, 1, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-08\",\"author\":\"Tiny Technologies, Inc\",\"copyright\":\"Tiny Technologies, Inc\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"https:\\/\\/www.tiny.cloud\",\"version\":\"6.8.4\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Editors\\\\TinyMCE\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"blocks\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styles\",\"|\",\"blocks\",\"fontfamily\",\"fontsize\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"jtemplate\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', NULL, NULL, 3, 0, NULL),
(118, 0, 'plg_extension_finder', 'plugin', 'finder', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_finder\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Finder\",\"filename\":\"finder\"}', '', '', NULL, NULL, 1, 0, NULL),
(119, 0, 'plg_extension_joomla', 'plugin', 'joomla', NULL, 'extension', 0, 1, 1, 0, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"2010-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\Joomla\",\"filename\":\"joomla\"}', '', '', NULL, NULL, 2, 0, NULL),
(120, 0, 'plg_extension_namespacemap', 'plugin', 'namespacemap', NULL, 'extension', 0, 1, 1, 1, 1, '{\"name\":\"plg_extension_namespacemap\",\"type\":\"plugin\",\"creationDate\":\"2017-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_EXTENSION_NAMESPACEMAP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Extension\\\\NamespaceMap\",\"filename\":\"namespacemap\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(121, 0, 'plg_fields_calendar', 'plugin', 'calendar', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Calendar\",\"filename\":\"calendar\"}', '', '', NULL, NULL, 1, 0, NULL),
(122, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Checkboxes\",\"filename\":\"checkboxes\"}', '', '', NULL, NULL, 2, 0, NULL),
(123, 0, 'plg_fields_color', 'plugin', 'color', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Color\",\"filename\":\"color\"}', '', '', NULL, NULL, 3, 0, NULL),
(124, 0, 'plg_fields_editor', 'plugin', 'editor', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Editor\",\"filename\":\"editor\"}', '{\"buttons\":0,\"width\":\"100%\",\"height\":\"250px\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 4, 0, NULL),
(125, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Imagelist\",\"filename\":\"imagelist\"}', '', '', NULL, NULL, 5, 0, NULL),
(126, 0, 'plg_fields_integer', 'plugin', 'integer', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Integer\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', NULL, NULL, 6, 0, NULL),
(127, 0, 'plg_fields_list', 'plugin', 'list', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\ListField\",\"filename\":\"list\"}', '', '', NULL, NULL, 7, 0, NULL),
(128, 0, 'plg_fields_media', 'plugin', 'media', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Media\",\"filename\":\"media\"}', '', '', NULL, NULL, 8, 0, NULL),
(129, 0, 'plg_fields_radio', 'plugin', 'radio', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Radio\",\"filename\":\"radio\"}', '', '', NULL, NULL, 9, 0, NULL),
(130, 0, 'plg_fields_sql', 'plugin', 'sql', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\SQL\",\"filename\":\"sql\"}', '', '', NULL, NULL, 10, 0, NULL),
(131, 0, 'plg_fields_subform', 'plugin', 'subform', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_subform\",\"type\":\"plugin\",\"creationDate\":\"2017-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FIELDS_SUBFORM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Subform\",\"filename\":\"subform\"}', '', '', NULL, NULL, 11, 0, NULL),
(132, 0, 'plg_fields_text', 'plugin', 'text', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Text\",\"filename\":\"text\"}', '', '', NULL, NULL, 12, 0, NULL),
(133, 0, 'plg_fields_textarea', 'plugin', 'textarea', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Textarea\",\"filename\":\"textarea\"}', '{\"rows\":10,\"cols\":10,\"maxlength\":\"\",\"filter\":\"\\\\Joomla\\\\CMS\\\\Component\\\\ComponentHelper::filterText\"}', '', NULL, NULL, 13, 0, NULL),
(134, 0, 'plg_fields_url', 'plugin', 'url', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\Url\",\"filename\":\"url\"}', '', '', NULL, NULL, 14, 0, NULL),
(135, 0, 'plg_fields_user', 'plugin', 'user', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\User\",\"filename\":\"user\"}', '', '', NULL, NULL, 15, 0, NULL),
(136, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', NULL, 'fields', 0, 1, 1, 0, 1, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Fields\\\\UsergroupList\",\"filename\":\"usergrouplist\"}', '', '', NULL, NULL, 16, 0, NULL),
(137, 0, 'plg_filesystem_local', 'plugin', 'local', NULL, 'filesystem', 0, 1, 1, 0, 1, '{\"name\":\"plg_filesystem_local\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_FILESYSTEM_LOCAL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Filesystem\\\\Local\",\"filename\":\"local\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(138, 0, 'plg_finder_categories', 'plugin', 'categories', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Categories\",\"filename\":\"categories\"}', '', '', NULL, NULL, 1, 0, NULL),
(139, 0, 'plg_finder_contacts', 'plugin', 'contacts', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Contacts\",\"filename\":\"contacts\"}', '', '', NULL, NULL, 2, 0, NULL),
(140, 0, 'plg_finder_content', 'plugin', 'content', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Content\",\"filename\":\"content\"}', '', '', NULL, NULL, 3, 0, NULL),
(141, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '', '', NULL, NULL, 4, 0, NULL),
(142, 0, 'plg_finder_tags', 'plugin', 'tags', NULL, 'finder', 0, 1, 1, 0, 1, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"2013-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Finder\\\\Tags\",\"filename\":\"tags\"}', '', '', NULL, NULL, 5, 0, NULL),
(143, 0, 'plg_installer_folderinstaller', 'plugin', 'folderinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_folderinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Folder\",\"filename\":\"folderinstaller\"}', '', '', NULL, NULL, 2, 0, NULL),
(144, 0, 'plg_installer_override', 'plugin', 'override', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_override\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_OVERRIDE_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Override\",\"filename\":\"override\"}', '', '', NULL, NULL, 4, 0, NULL),
(145, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Package\",\"filename\":\"packageinstaller\"}', '', '', NULL, NULL, 1, 0, NULL),
(146, 0, 'plg_installer_urlinstaller', 'plugin', 'urlinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_urlinstaller\",\"type\":\"plugin\",\"creationDate\":\"2016-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Url\",\"filename\":\"urlinstaller\"}', '', '', NULL, NULL, 3, 0, NULL),
(147, 0, 'plg_installer_webinstaller', 'plugin', 'webinstaller', NULL, 'installer', 0, 1, 1, 0, 1, '{\"name\":\"plg_installer_webinstaller\",\"type\":\"plugin\",\"creationDate\":\"2017-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Installer\\\\Web\",\"filename\":\"webinstaller\"}', '{\"tab_position\":\"1\"}', '', NULL, NULL, 5, 0, NULL),
(148, 0, 'plg_media-action_crop', 'plugin', 'crop', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_crop\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_CROP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Crop\",\"filename\":\"crop\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(149, 0, 'plg_media-action_resize', 'plugin', 'resize', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_resize\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_RESIZE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Resize\",\"filename\":\"resize\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(150, 0, 'plg_media-action_rotate', 'plugin', 'rotate', NULL, 'media-action', 0, 1, 1, 0, 1, '{\"name\":\"plg_media-action_rotate\",\"type\":\"plugin\",\"creationDate\":\"2017-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_MEDIA-ACTION_ROTATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\MediaAction\\\\Rotate\",\"filename\":\"rotate\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(151, 0, 'plg_privacy_actionlogs', 'plugin', 'actionlogs', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Actionlogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(152, 0, 'plg_privacy_consents', 'plugin', 'consents', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_consents\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONSENTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Consents\",\"filename\":\"consents\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(153, 0, 'plg_privacy_contact', 'plugin', 'contact', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_contact\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(154, 0, 'plg_privacy_content', 'plugin', 'content', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_content\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(155, 0, 'plg_privacy_message', 'plugin', 'message', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_message\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_MESSAGE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\Message\",\"filename\":\"message\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(156, 0, 'plg_privacy_user', 'plugin', 'user', NULL, 'privacy', 0, 1, 1, 0, 1, '{\"name\":\"plg_privacy_user\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_PRIVACY_USER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Privacy\\\\User\",\"filename\":\"user\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(157, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Joomlaupdate\",\"filename\":\"joomlaupdate\"}', '', '', NULL, NULL, 1, 0, NULL),
(158, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Extensionupdate\",\"filename\":\"extensionupdate\"}', '', '', NULL, NULL, 2, 0, NULL),
(159, 0, 'plg_quickicon_overridecheck', 'plugin', 'overridecheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_overridecheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_OVERRIDECHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\OverrideCheck\",\"filename\":\"overridecheck\"}', '', '', NULL, NULL, 3, 0, NULL),
(160, 0, 'plg_quickicon_downloadkey', 'plugin', 'downloadkey', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_downloadkey\",\"type\":\"plugin\",\"creationDate\":\"2019-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_QUICKICON_DOWNLOADKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Downloadkey\",\"filename\":\"downloadkey\"}', '', '', NULL, NULL, 4, 0, NULL),
(161, 0, 'plg_quickicon_privacycheck', 'plugin', 'privacycheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_privacycheck\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_QUICKICON_PRIVACYCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PrivacyCheck\",\"filename\":\"privacycheck\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(162, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"2016-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\PhpVersionCheck\",\"filename\":\"phpversioncheck\"}', '', '', NULL, NULL, 6, 0, NULL);
INSERT INTO `d6gvw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(163, 0, 'plg_quickicon_eos', 'plugin', 'eos', NULL, 'quickicon', 0, 1, 1, 0, 1, '{\"name\":\"plg_quickicon_eos\",\"type\":\"plugin\",\"creationDate\":\"2023-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.4.0\",\"description\":\"PLG_QUICKICON_EOS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Quickicon\\\\Eos\",\"filename\":\"eos\"}', '', '', NULL, NULL, 7, 0, NULL),
(164, 0, 'plg_sampledata_blog', 'plugin', 'blog', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"2017-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\Blog\",\"filename\":\"blog\"}', '', '', NULL, NULL, 1, 0, NULL),
(165, 0, 'plg_sampledata_multilang', 'plugin', 'multilang', NULL, 'sampledata', 0, 1, 1, 0, 1, '{\"name\":\"plg_sampledata_multilang\",\"type\":\"plugin\",\"creationDate\":\"2018-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SAMPLEDATA_MULTILANG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\SampleData\\\\MultiLanguage\",\"filename\":\"multilang\"}', '', '', NULL, NULL, 2, 0, NULL),
(166, 0, 'plg_schemaorg_article', 'plugin', 'article', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_article\",\"type\":\"plugin\",\"creationDate\":\"2024-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Article\",\"filename\":\"article\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(167, 0, 'plg_schemaorg_blogposting', 'plugin', 'blogposting', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_blogposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BLOGPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\BlogPosting\",\"filename\":\"blogposting\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(168, 0, 'plg_schemaorg_book', 'plugin', 'book', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_book\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_BOOK_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Book\",\"filename\":\"book\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(169, 0, 'plg_schemaorg_event', 'plugin', 'event', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_event\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_EVENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Event\",\"filename\":\"event\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(170, 0, 'plg_schemaorg_jobposting', 'plugin', 'jobposting', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_jobposting\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_JOBPOSTING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\JobPosting\",\"filename\":\"jobposting\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(171, 0, 'plg_schemaorg_organization', 'plugin', 'organization', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_organization\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_ORGANIZATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Organization\",\"filename\":\"organization\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(172, 0, 'plg_schemaorg_person', 'plugin', 'person', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_person\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_PERSON_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Person\",\"filename\":\"person\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(173, 0, 'plg_schemaorg_recipe', 'plugin', 'recipe', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_recipe\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SCHEMAORG_RECIPE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Recipe\",\"filename\":\"recipe\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(174, 0, 'plg_schemaorg_custom', 'plugin', 'custom', NULL, 'schemaorg', 0, 1, 1, 0, 0, '{\"name\":\"plg_schemaorg_custom\",\"type\":\"plugin\",\"creationDate\":\"2024-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2024 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.1.0\",\"description\":\"PLG_SCHEMAORG_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Schemaorg\\\\Custom\",\"filename\":\"custom\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(175, 0, 'plg_system_accessibility', 'plugin', 'accessibility', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_accessibility\",\"type\":\"plugin\",\"creationDate\":\"2020-02-15\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_ACCESSIBILITY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Accessibility\",\"filename\":\"accessibility\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(176, 0, 'plg_system_actionlogs', 'plugin', 'actionlogs', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_actionlogs\",\"type\":\"plugin\",\"creationDate\":\"2018-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_ACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ActionLogs\",\"filename\":\"actionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(177, 0, 'plg_system_cache', 'plugin', 'cache', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"2007-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Cache\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', NULL, NULL, 3, 0, NULL),
(178, 0, 'plg_system_debug', 'plugin', 'debug', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Debug\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', NULL, NULL, 4, 0, NULL),
(179, 0, 'plg_system_fields', 'plugin', 'fields', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"2016-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Fields\",\"filename\":\"fields\"}', '', '', NULL, NULL, 5, 0, NULL),
(180, 0, 'plg_system_highlight', 'plugin', 'highlight', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"2011-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Highlight\",\"filename\":\"highlight\"}', '', '', NULL, NULL, 6, 0, NULL),
(181, 0, 'plg_system_httpheaders', 'plugin', 'httpheaders', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_httpheaders\",\"type\":\"plugin\",\"creationDate\":\"2017-10\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_HTTPHEADERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Httpheaders\",\"filename\":\"httpheaders\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(182, 0, 'plg_system_jooa11y', 'plugin', 'jooa11y', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_jooa11y\",\"type\":\"plugin\",\"creationDate\":\"2022-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_JOOA11Y_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Jooa11y\",\"filename\":\"jooa11y\"}', '', '', NULL, NULL, 8, 0, NULL),
(183, 0, 'plg_system_languagecode', 'plugin', 'languagecode', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"2011-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2011 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageCode\",\"filename\":\"languagecode\"}', '', '', NULL, NULL, 9, 0, NULL),
(184, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"2010-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2010 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\LanguageFilter\",\"filename\":\"languagefilter\"}', '', '', NULL, NULL, 10, 0, NULL),
(185, 0, 'plg_system_log', 'plugin', 'log', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Log\",\"filename\":\"log\"}', '', '', NULL, NULL, 11, 0, NULL),
(186, 0, 'plg_system_logout', 'plugin', 'logout', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Logout\",\"filename\":\"logout\"}', '', '', NULL, NULL, 12, 0, NULL),
(187, 0, 'plg_system_privacyconsent', 'plugin', 'privacyconsent', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2018-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_SYSTEM_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(188, 0, 'plg_system_redirect', 'plugin', 'redirect', NULL, 'system', 0, 0, 1, 0, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"2009-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Redirect\",\"filename\":\"redirect\"}', '', '', NULL, NULL, 15, 0, NULL),
(189, 0, 'plg_system_remember', 'plugin', 'remember', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"2007-04\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Remember\",\"filename\":\"remember\"}', '', '', NULL, NULL, 16, 0, NULL),
(190, 0, 'plg_system_schedulerunner', 'plugin', 'schedulerunner', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_schedulerunner\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_SCHEDULERUNNER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\ScheduleRunner\",\"filename\":\"schedulerunner\"}', '{}', '', NULL, NULL, 17, 0, NULL),
(191, 0, 'plg_system_schemaorg', 'plugin', 'schemaorg', NULL, 'system', 0, 1, 1, 0, 0, '{\"name\":\"plg_system_schemaorg\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_SYSTEM_SCHEMAORG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Schemaorg\",\"filename\":\"schemaorg\"}', '{}', '', NULL, NULL, 18, 0, NULL),
(192, 0, 'plg_system_sef', 'plugin', 'sef', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"2007-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2007 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Sef\",\"filename\":\"sef\"}', '{\"domain\":\"\",\"indexphp\":\"1\",\"trailingslash\":\"0\",\"enforcesuffix\":\"1\",\"strictrouting\":\"1\"}', '', NULL, NULL, 19, 0, NULL),
(193, 0, 'plg_system_shortcut', 'plugin', 'shortcut', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_shortcut\",\"type\":\"plugin\",\"creationDate\":\"2022-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_SYSTEM_SHORTCUT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Shortcut\",\"filename\":\"shortcut\"}', '{}', '', NULL, NULL, 21, 0, NULL),
(194, 0, 'plg_system_skipto', 'plugin', 'skipto', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_skipto\",\"type\":\"plugin\",\"creationDate\":\"2020-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_SKIPTO_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Skipto\",\"filename\":\"skipto\"}', '{}', '', NULL, NULL, 22, 0, NULL),
(195, 0, 'plg_system_stats', 'plugin', 'stats', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"2013-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Stats\",\"filename\":\"stats\"}', '', '', NULL, NULL, 23, 0, NULL),
(196, 0, 'plg_system_task_notification', 'plugin', 'tasknotification', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_task_notification\",\"type\":\"plugin\",\"creationDate\":\"2021-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_SYSTEM_TASK_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\TaskNotification\",\"filename\":\"tasknotification\"}', '', '', NULL, NULL, 24, 0, NULL),
(197, 0, 'plg_system_webauthn', 'plugin', 'webauthn', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2019-07-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_SYSTEM_WEBAUTHN_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\Webauthn\",\"filename\":\"webauthn\"}', '{}', '', NULL, NULL, 26, 0, NULL),
(198, 0, 'plg_task_check_files', 'plugin', 'checkfiles', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_check_files\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_CHECK_FILES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Checkfiles\",\"filename\":\"checkfiles\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(199, 0, 'plg_task_deleteactionlogs', 'plugin', 'deleteactionlogs', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_deleteactionlogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_DELETEACTIONLOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\DeleteActionLogs\",\"filename\":\"deleteactionlogs\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(200, 0, 'plg_task_globalcheckin', 'plugin', 'globalcheckin', NULL, 'task', 0, 1, 1, 0, 0, '{\"name\":\"plg_task_globalcheckin\",\"type\":\"plugin\",\"creationDate\":\"2023-06-22\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_GLOBALCHECKIN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Globalcheckin\",\"filename\":\"globalcheckin\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(201, 0, 'plg_task_requests', 'plugin', 'requests', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_requests\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_REQUESTS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\Requests\",\"filename\":\"requests\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(202, 0, 'plg_task_privacyconsent', 'plugin', 'privacyconsent', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_privacyconsent\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_PRIVACYCONSENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\PrivacyConsent\",\"filename\":\"privacyconsent\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(203, 0, 'plg_task_rotatelogs', 'plugin', 'rotatelogs', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_rotatelogs\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_ROTATELOGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\RotateLogs\",\"filename\":\"rotatelogs\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(204, 0, 'plg_task_sessiongc', 'plugin', 'sessiongc', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_sessiongc\",\"type\":\"plugin\",\"creationDate\":\"2023-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_SESSIONGC_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SessionGC\",\"filename\":\"sessiongc\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(205, 0, 'plg_task_site_status', 'plugin', 'sitestatus', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_site_status\",\"type\":\"plugin\",\"creationDate\":\"2021-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1\",\"description\":\"PLG_TASK_SITE_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\SiteStatus\",\"filename\":\"sitestatus\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(206, 0, 'plg_task_updatenotification', 'plugin', 'updatenotification', NULL, 'task', 0, 1, 1, 0, 1, '{\"name\":\"plg_task_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"2023-07\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.0.0\",\"description\":\"PLG_TASK_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Task\\\\UpdateNotification\",\"filename\":\"updatenotification\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(207, 0, 'plg_multifactorauth_totp', 'plugin', 'totp', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"2013-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Totp\",\"filename\":\"totp\"}', '', '', NULL, NULL, 1, 0, NULL),
(208, 0, 'plg_multifactorauth_yubikey', 'plugin', 'yubikey', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"2013-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2013 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Yubikey\",\"filename\":\"yubikey\"}', '', '', NULL, NULL, 2, 0, NULL),
(209, 0, 'plg_multifactorauth_webauthn', 'plugin', 'webauthn', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_webauthn\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_WEBAUTHN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Webauthn\",\"filename\":\"webauthn\"}', '', '', NULL, NULL, 3, 0, NULL),
(210, 0, 'plg_multifactorauth_email', 'plugin', 'email', NULL, 'multifactorauth', 0, 1, 1, 0, 1, '{\"name\":\"plg_multifactorauth_email\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_EMAIL_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Email\",\"filename\":\"email\"}', '', '', NULL, NULL, 4, 0, NULL),
(211, 0, 'plg_multifactorauth_fixed', 'plugin', 'fixed', NULL, 'multifactorauth', 0, 0, 1, 0, 1, '{\"name\":\"plg_multifactorauth_fixed\",\"type\":\"plugin\",\"creationDate\":\"2022-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2022 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.2.0\",\"description\":\"PLG_MULTIFACTORAUTH_FIXED_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Multifactorauth\\\\Fixed\",\"filename\":\"fixed\"}', '', '', NULL, NULL, 5, 0, NULL),
(212, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"2009-08\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2009 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\ContactCreator\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"4\",\"autopublish\":\"0\"}', '', NULL, NULL, 1, 0, NULL),
(213, 0, 'plg_user_joomla', 'plugin', 'joomla', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"2006-12\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Joomla\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', NULL, NULL, 2, 0, NULL),
(214, 0, 'plg_user_profile', 'plugin', 'profile', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"2008-01\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2008 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Profile\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', NULL, NULL, 3, 0, NULL),
(215, 0, 'plg_user_terms', 'plugin', 'terms', NULL, 'user', 0, 0, 1, 0, 1, '{\"name\":\"plg_user_terms\",\"type\":\"plugin\",\"creationDate\":\"2018-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2018 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TERMS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Terms\",\"filename\":\"terms\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(216, 0, 'plg_user_token', 'plugin', 'token', NULL, 'user', 0, 1, 1, 0, 1, '{\"name\":\"plg_user_token\",\"type\":\"plugin\",\"creationDate\":\"2019-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.9.0\",\"description\":\"PLG_USER_TOKEN_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\User\\\\Token\",\"filename\":\"token\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(217, 0, 'plg_webservices_banners', 'plugin', 'banners', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_banners\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Banners\",\"filename\":\"banners\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(218, 0, 'plg_webservices_config', 'plugin', 'config', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_config\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONFIG_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Config\",\"filename\":\"config\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(219, 0, 'plg_webservices_contact', 'plugin', 'contact', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_contact\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Contact\",\"filename\":\"contact\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(220, 0, 'plg_webservices_content', 'plugin', 'content', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_content\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Content\",\"filename\":\"content\"}', '{}', '', NULL, NULL, 4, 0, NULL),
(221, 0, 'plg_webservices_installer', 'plugin', 'installer', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_installer\",\"type\":\"plugin\",\"creationDate\":\"2020-06\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_INSTALLER_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Installer\",\"filename\":\"installer\"}', '{}', '', NULL, NULL, 5, 0, NULL),
(222, 0, 'plg_webservices_languages', 'plugin', 'languages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_languages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Languages\",\"filename\":\"languages\"}', '{}', '', NULL, NULL, 6, 0, NULL),
(223, 0, 'plg_webservices_media', 'plugin', 'media', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_media\",\"type\":\"plugin\",\"creationDate\":\"2021-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2021 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.1.0\",\"description\":\"PLG_WEBSERVICES_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Media\",\"filename\":\"media\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(224, 0, 'plg_webservices_menus', 'plugin', 'menus', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_menus\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MENUS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Menus\",\"filename\":\"menus\"}', '{}', '', NULL, NULL, 7, 0, NULL),
(225, 0, 'plg_webservices_messages', 'plugin', 'messages', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_messages\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MESSAGES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Messages\",\"filename\":\"messages\"}', '{}', '', NULL, NULL, 8, 0, NULL),
(226, 0, 'plg_webservices_modules', 'plugin', 'modules', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_modules\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_MODULES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Modules\",\"filename\":\"modules\"}', '{}', '', NULL, NULL, 9, 0, NULL),
(227, 0, 'plg_webservices_newsfeeds', 'plugin', 'newsfeeds', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Newsfeeds\",\"filename\":\"newsfeeds\"}', '{}', '', NULL, NULL, 10, 0, NULL),
(228, 0, 'plg_webservices_plugins', 'plugin', 'plugins', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_plugins\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PLUGINS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Plugins\",\"filename\":\"plugins\"}', '{}', '', NULL, NULL, 11, 0, NULL),
(229, 0, 'plg_webservices_privacy', 'plugin', 'privacy', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_privacy\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_PRIVACY_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Privacy\",\"filename\":\"privacy\"}', '{}', '', NULL, NULL, 12, 0, NULL),
(230, 0, 'plg_webservices_redirect', 'plugin', 'redirect', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_redirect\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Redirect\",\"filename\":\"redirect\"}', '{}', '', NULL, NULL, 13, 0, NULL),
(231, 0, 'plg_webservices_tags', 'plugin', 'tags', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_tags\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Tags\",\"filename\":\"tags\"}', '{}', '', NULL, NULL, 14, 0, NULL),
(232, 0, 'plg_webservices_templates', 'plugin', 'templates', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_templates\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Templates\",\"filename\":\"templates\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(233, 0, 'plg_webservices_users', 'plugin', 'users', NULL, 'webservices', 0, 1, 1, 0, 1, '{\"name\":\"plg_webservices_users\",\"type\":\"plugin\",\"creationDate\":\"2019-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WEBSERVICES_USERS_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\WebServices\\\\Users\",\"filename\":\"users\"}', '{}', '', NULL, NULL, 16, 0, NULL),
(234, 0, 'plg_workflow_featuring', 'plugin', 'featuring', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_featuring\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_FEATURING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Featuring\",\"filename\":\"featuring\"}', '{}', '', NULL, NULL, 1, 0, NULL),
(235, 0, 'plg_workflow_notification', 'plugin', 'notification', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_notification\",\"type\":\"plugin\",\"creationDate\":\"2020-05\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_NOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Notification\",\"filename\":\"notification\"}', '{}', '', NULL, NULL, 2, 0, NULL),
(236, 0, 'plg_workflow_publishing', 'plugin', 'publishing', NULL, 'workflow', 0, 1, 1, 0, 1, '{\"name\":\"plg_workflow_publishing\",\"type\":\"plugin\",\"creationDate\":\"2020-03\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.0.0\",\"description\":\"PLG_WORKFLOW_PUBLISHING_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\Workflow\\\\Publishing\",\"filename\":\"publishing\"}', '{}', '', NULL, NULL, 3, 0, NULL),
(237, 0, 'plg_system_guidedtours', 'plugin', 'guidedtours', NULL, 'system', 0, 1, 1, 0, 1, '{\"name\":\"plg_system_guidedtours\",\"type\":\"plugin\",\"creationDate\":\"2023-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2023 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"4.3.0\",\"description\":\"PLG_SYSTEM_GUIDEDTOURS_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Plugin\\\\System\\\\GuidedTours\",\"filename\":\"guidedtours\"}', '{}', '', NULL, NULL, 15, 0, NULL),
(238, 0, 'atum', 'template', 'atum', NULL, '', 1, 1, 1, 0, 1, '{\"name\":\"atum\",\"type\":\"template\",\"creationDate\":\"2016-09\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2016 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ATUM_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '', '', NULL, NULL, 0, 0, NULL),
(239, 0, 'cassiopeia', 'template', 'cassiopeia', NULL, '', 0, 1, 1, 0, 1, '{\"name\":\"cassiopeia\",\"type\":\"template\",\"creationDate\":\"2017-02\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2017 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_CASSIOPEIA_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}', '', NULL, NULL, 0, 0, NULL),
(240, 0, 'files_joomla', 'file', 'joomla', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"2024-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(241, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"2024-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2019 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', NULL, NULL, 0, 0, NULL),
(242, 241, 'English (en-GB)', 'language', 'en-GB', NULL, '', 0, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2006 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.2\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(243, 241, 'English (en-GB)', 'language', 'en-GB', NULL, '', 1, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(244, 241, 'English (en-GB)', 'language', 'en-GB', NULL, '', 3, 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"2024-11\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2020 Open Source Matters, Inc.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"5.2.2\",\"description\":\"en-GB api language\",\"group\":\"\"}', '', '', NULL, NULL, 0, 0, NULL),
(245, 249, 'theme-200335-j4', 'template', 'theme-200335-j4', '', '', 0, 1, 1, 0, 0, '{\"name\":\"theme-200335-j4\",\"type\":\"template\",\"creationDate\":\"07\\/30\\/2021 00:00:00\",\"author\":\"TemplateToaster\",\"copyright\":\"Copyright 2012http:\\/\\/templatetoaster.comAll Rights Reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/templatetoaster.com\",\"version\":\"1.0\",\"description\":\"Theme Description\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"horizontal_align0\":\"center\",\"vertical_align0\":\"center\",\"stretch0\":\"Fill\",\"horizontal_align1\":\"center\",\"vertical_align1\":\"center\",\"stretch1\":\"Fill\",\"enable_slide\":\"1\",\"enable_Designed_By\":\"1\",\"Designed_By\":\"http:\\/\\/templatetoaster.com\",\"Designed_By_Link_FontSize\":\"14\",\"Designed_By_FontSize\":\"14\",\"footer_designed_by_color\":\"#000000\",\"footer_designed_by_link_color\":\"#061A3A\",\"sidebar_menu_font_size\":\"14\",\"block_heading_font_size\":\"14\",\"custom_css\":\"\",\"enable_read_more_button\":\"1\",\"mbmoduleposition00\":\"block\",\"mbmoduleposition01\":\"block\",\"mbmoduleposition02\":\"block\",\"mbmoduleposition03\":\"block\",\"mamoduleposition00\":\"block\",\"mamoduleposition01\":\"block\",\"mamoduleposition02\":\"block\",\"mamoduleposition03\":\"block\",\"sbmoduleposition00\":\"block\",\"sbmoduleposition01\":\"block\",\"sbmoduleposition02\":\"block\",\"sbmoduleposition03\":\"block\",\"samoduleposition00\":\"block\",\"samoduleposition01\":\"block\",\"samoduleposition02\":\"block\",\"samoduleposition03\":\"block\",\"camoduleposition00\":\"block\",\"camoduleposition01\":\"block\",\"camoduleposition02\":\"block\",\"camoduleposition03\":\"block\",\"cbmoduleposition00\":\"block\",\"cbmoduleposition01\":\"block\",\"cbmoduleposition02\":\"block\",\"cbmoduleposition03\":\"block\",\"menu\":\"block\",\"famoduleposition00\":\"block\",\"famoduleposition01\":\"block\",\"famoduleposition02\":\"block\",\"famoduleposition03\":\"block\",\"fbmoduleposition00\":\"block\",\"fbmoduleposition01\":\"block\",\"fbmoduleposition02\":\"block\",\"fbmoduleposition03\":\"block\",\"leftfooterarea\":\"block\",\"centerfooterarea\":\"block\",\"rightfooterarea\":\"block\",\"debug\":\"block\",\"enable_click_on_menu\":\"h_menu_hover\",\"enable_click_on_sidebar_menu\":\"v_menu_hover\",\"mbmoduleposition00ms\":\"h_menu\",\"mbmoduleposition01ms\":\"h_menu\",\"mbmoduleposition02ms\":\"h_menu\",\"mbmoduleposition03ms\":\"h_menu\",\"mamoduleposition00ms\":\"h_menu\",\"mamoduleposition01ms\":\"h_menu\",\"mamoduleposition02ms\":\"h_menu\",\"mamoduleposition03ms\":\"h_menu\",\"sbmoduleposition00ms\":\"h_menu\",\"sbmoduleposition01ms\":\"h_menu\",\"sbmoduleposition02ms\":\"h_menu\",\"sbmoduleposition03ms\":\"h_menu\",\"samoduleposition00ms\":\"h_menu\",\"samoduleposition01ms\":\"h_menu\",\"samoduleposition02ms\":\"h_menu\",\"samoduleposition03ms\":\"h_menu\",\"camoduleposition00ms\":\"h_menu\",\"camoduleposition01ms\":\"h_menu\",\"camoduleposition02ms\":\"h_menu\",\"camoduleposition03ms\":\"h_menu\",\"cbmoduleposition00ms\":\"h_menu\",\"cbmoduleposition01ms\":\"h_menu\",\"cbmoduleposition02ms\":\"h_menu\",\"cbmoduleposition03ms\":\"h_menu\",\"menums\":\"h_menu\",\"famoduleposition00ms\":\"h_menu\",\"famoduleposition01ms\":\"h_menu\",\"famoduleposition02ms\":\"h_menu\",\"famoduleposition03ms\":\"h_menu\",\"fbmoduleposition00ms\":\"h_menu\",\"fbmoduleposition01ms\":\"h_menu\",\"fbmoduleposition02ms\":\"h_menu\",\"fbmoduleposition03ms\":\"h_menu\",\"leftfooterareams\":\"h_menu\",\"centerfooterareams\":\"h_menu\",\"rightfooterareams\":\"h_menu\"}', '', NULL, NULL, 0, 0, NULL),
(246, 249, 'Import Content', 'module', 'mod_ttcontent', '', '', 1, 1, 2, 0, 0, '{\"name\":\"Import Content\",\"type\":\"module\",\"creationDate\":\"30-Jul-21 12:00:00 AM\",\"author\":\"TemplateToaster\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/templatetoaster.com\",\"version\":\"1.0\",\"description\":\"This module is a product of TemplateToaster to import content\",\"group\":\"\",\"filename\":\"mod_ttcontent\"}', '{}', '', NULL, NULL, 0, 0, NULL);
INSERT INTO `d6gvw_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `changelogurl`, `folder`, `client_id`, `enabled`, `access`, `protected`, `locked`, `manifest_cache`, `params`, `custom_data`, `checked_out`, `checked_out_time`, `ordering`, `state`, `note`) VALUES
(247, 249, 'mod_jdsimplecontactform', 'module', 'mod_jdsimplecontactform', '', '', 0, 1, 0, 0, 0, '{\"name\":\"mod_jdsimplecontactform\",\"type\":\"module\",\"creationDate\":\"Apr 2019\",\"author\":\"JoomDev\",\"copyright\":\"Copyright (C) 2019 Joomdev, Inc. All rights reserved.\",\"authorEmail\":\"info@joomdev.com\",\"authorUrl\":\"https:\\/\\/www.joomdev.com\",\"version\":\"1.3\",\"description\":\"MOD_JDSIMPLECONTACTFORM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_jdsimplecontactform\"}', '{\"ajaxsubmit\":\"0\",\"captcha\":\"0\",\"submittext\":\"Submit\",\"submitclass\":\"btn-primary\",\"single_sendcopy_email\":\"0\",\"singleSendCopyEmail_field\":\"\",\"singleSendCopyEmailField_title\":\"\",\"sendcopy_email\":\"0\",\"sendcopyemail_field\":\"\",\"sendcopyemailfield_title\":\"\",\"email_template\":\"\",\"email_custom\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(248, 249, 'PLG_CONTENT_TTMENUSTYLE', 'plugin', 'ttmenustyle', '', 'content', 0, 1, 1, 0, 0, '{\"name\":\"PLG_CONTENT_TTMENUSTYLE\",\"type\":\"plugin\",\"creationDate\":\"August 2020\",\"author\":\"Unknown\",\"copyright\":\"Copyright (c) 2020 TTMENUSTYLE. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0.0\",\"description\":\"PLG_CONTENT_TTMENUSTYLE_DESC\",\"group\":\"\",\"filename\":\"ttmenustyle\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(249, 0, 'This is package Installation', 'package', 'pkg_tt_content', '', '', 0, 1, 1, 0, 0, '{\"name\":\"This is package Installation\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"TemplateToaster\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"pkg_tt_content\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(250, 284, 'VIRTUEMART', 'component', 'com_virtuemart', '', '', 1, 1, 0, 0, 0, '{\"name\":\"VIRTUEMART\",\"type\":\"component\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"max|at|virtuemart.net\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"\",\"group\":\"\",\"filename\":\"virtuemart\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(251, 284, 'VirtueMart_allinone', 'component', 'com_virtuemart_allinone', '', '', 1, 1, 0, 0, 0, '{\"name\":\"VirtueMart_allinone\",\"type\":\"component\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2017 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(252, 0, 'VM Payment - Standard', 'plugin', 'standard', NULL, 'vmpayment', 0, 1, 1, 0, 0, '{\"name\":\"Standard\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"Standard payment plugin\",\"group\":\"\",\"filename\":\"standard\"}', '', '', NULL, NULL, 20, 0, NULL),
(253, 0, 'VM Payment - PayPal Checkout', 'plugin', 'paypal_checkout', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"PayPal Checkout\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - %2024 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"PayPal\",\"group\":\"\",\"filename\":\"paypal_checkout\"}', '', '', NULL, NULL, 0, 0, NULL),
(254, 0, 'VM Payment - PayPal', 'plugin', 'paypal', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"PayPal (deprecated, please use PayPal Checkout)\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - %2024 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"PayPal\",\"group\":\"\",\"filename\":\"paypal\"}', '', '', NULL, NULL, 20, 0, NULL),
(255, 0, 'VM Payment - Sofort Banking/Überweisung', 'plugin', 'sofort', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"Sofort\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}', '', '', NULL, NULL, 2, 0, NULL),
(256, 0, 'VM Payment - Skrill', 'plugin', 'skrill', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"Skrill\",\"type\":\"plugin\",\"creationDate\":\"November 22 2019\",\"author\":\"Skrill Holdings Limited\",\"copyright\":\"Copyright (C) 2014 - 2019 Virtuemart Team. All rights reserved., Copyright (C) 2019 Skrill.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net, http:\\/\\/www.skrill.com\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"http:\\/\\/www.skrill.com\\\" target=\\\"_blank\\\">skrill<\\/a> is a popular\\n  payment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    \",\"group\":\"\",\"filename\":\"skrill\"}', '', '', NULL, NULL, 7, 0, NULL),
(257, 0, 'VM Payment - Paybox', 'plugin', 'paybox', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"VM Payment - Paybox System 3D V2\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2018 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"http:\\/\\/paybox.com\\\" target=\\\"_blank\\\">Paybox<\\/a> \\n    \",\"group\":\"\",\"filename\":\"paybox\"}', '', '', NULL, NULL, 5, 0, NULL),
(258, 0, 'VM Payment - 2Checkout', 'plugin', 'tco', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"2Checkout\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Craig Christenson\",\"copyright\":\"Copyright (C) 2004-2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.2checkout.com\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"https:\\/\\/www.2checkout.com\\/referral?r=virtuemart\\\" target=\\\"_blank\\\">2Checkout<\\/a> is a popular payment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"tco\"}', '', '', NULL, NULL, 1, 0, NULL),
(259, 0, 'VM Payment - eWay', 'plugin', 'eway', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"VM Payment - eway\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2018 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"https:\\/\\/www.eway.com.au\\/\\\" target=\\\"_blank\\\">eway<\\/a> \\n    \",\"group\":\"\",\"filename\":\"eway\"}', '', '', NULL, NULL, 20, 0, NULL),
(260, 0, 'VM Payment - Realex HPP & API', 'plugin', 'realex_hpp_api', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"April 26 2022\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.0\",\"description\":\"Global Payments HPP and API\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}', '', '', NULL, NULL, 9, 0, NULL),
(261, 0, 'VM UserField - Realex HPP & API', 'plugin', 'realex_hpp_api', NULL, 'vmuserfield', 0, 0, 1, 0, 0, '{\"name\":\"Realex_hpp_api\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - %2024 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"Card storage plugin for Realex\",\"group\":\"\",\"filename\":\"realex_hpp_api\"}', '', '', NULL, NULL, 9, 0, NULL),
(262, 0, 'VM Payment - Authorize.net', 'plugin', 'authorizenet', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"Authorize.net AIM\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"Authorize.net AIM\",\"group\":\"\",\"filename\":\"authorizenet\"}', '', '', NULL, NULL, 20, 0, NULL),
(263, 0, 'VM Payment - Sofort iDeal', 'plugin', 'sofort_ideal', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"Sofort Ideal\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2015 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"http:\\/www.sofort.com\\\" target=\\\"_blank\\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    \",\"group\":\"\",\"filename\":\"sofort\"}', '', '', NULL, NULL, 3, 0, NULL),
(264, 0, 'VM Payment - Klikandpay', 'plugin', 'klikandpay', NULL, 'vmpayment', 0, 0, 1, 0, 0, '{\"name\":\"VM Payment - klikandpay\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2018 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"<a href=\\\"http:\\/\\/klikandpay.com\\\" target=\\\"_blank\\\">klikandpay<\\/a> \\n    \",\"group\":\"\",\"filename\":\"klikandpay\"}', '', '', NULL, NULL, 8, 0, NULL),
(265, 0, 'VM Shipment - By weight, ZIP and countries', 'plugin', 'weight_countries', NULL, 'vmshipment', 0, 0, 1, 0, 0, '{\"name\":\"By weight, ZIP and countries\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC\",\"group\":\"\",\"filename\":\"weight_countries\"}', '', '', NULL, NULL, 0, 0, NULL),
(266, 0, 'VM Shipment - Advanced Shipping by Rules for VirtueMart', 'plugin', 'rules_shipping_advanced', NULL, 'vmshipment', 0, 0, 1, 0, 0, '{\"name\":\"OTSHIPMENT_RULES_ADV\",\"type\":\"plugin\",\"creationDate\":\"2016-02-15\",\"author\":\"Reinhold Kainhofer\",\"copyright\":\"Copyright (C) 2013-2014, Reinhold Kainhofer\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.open-tools.net\",\"version\":\"6.2.4\",\"description\":\"OTSHIPMENT_RULES_ADV_DESC\",\"group\":\"\",\"filename\":\"rules_shipping_advanced\"}', '', '', NULL, NULL, 0, 0, NULL),
(267, 0, 'VM Custom - Customer text input', 'plugin', 'textinput', NULL, 'vmcustom', 0, 0, 1, 0, 0, '{\"name\":\"VMCustom - textinput\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"text input plugin for product\",\"group\":\"\",\"filename\":\"textinput\"}', '', '', NULL, NULL, 0, 0, NULL),
(268, 0, 'VM Custom - Product specification', 'plugin', 'specification', NULL, 'vmcustom', 0, 0, 1, 0, 0, '{\"name\":\"plgvm_specification\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2019 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"VMCustom - specification; text input plugin for product\",\"group\":\"\",\"filename\":\"specification\"}', '', '', NULL, NULL, 0, 0, NULL),
(269, 0, 'VM Custom - iStraxx Download simple', 'plugin', 'istraxx_download_simple', NULL, 'vmcustom', 0, 0, 1, 0, 0, '{\"name\":\"VM - Custom, Virtuemart Simple Download Plugin\",\"type\":\"plugin\",\"creationDate\":\"September 06 2019\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2012-2019 iStraxx GmbH. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/extensions.virtuemart.net\",\"version\":\"${PHING.VERSION}\",\"description\":\"\\n<b>${PHING.DESCRIPTION}<\\/b>\\n<br\\/><a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.extensions.virtuemart.net\\\">Visit extensions.virtuemart.net for more extensions<\\/a>\\n<p><img src=\\\"..\\/plugins\\/${PHING.GROUP}\\/${PHING.FILENAME}\\/assets\\/images\\/vm-istraxx.png\\\" align=\\\"bottom\\\"\\/><\\/p>\\n\\n<br style=\\\"clear: both;\\\">\\n<br\\/>\\nFirst installation:\\n<a target=\\\"_blank\\\" href=\\\"index.php?option=com_virtuemart&view=custom&task=edit\\\">\\n  Click here to configure the new customfield using the custom field type plugin<\\/a>\\n<br\\/>\\nSee also:\\n<br\\/>\\n<a target=\\\"_blank\\\" href=\\\"https:\\/\\/extensions.virtuemart.net\\/all-tutorials\\\">\\n  Installation Guide<\\/a>\\n\\n\",\"group\":\"\",\"filename\":\"istraxx_download_simple\"}', '', '', NULL, NULL, 0, 0, NULL),
(270, 0, 'VM Calculation - Avalara Tax', 'plugin', 'avalara', NULL, 'vmcalculation', 0, 0, 1, 0, 0, '{\"name\":\"VM - Calculation Avalara Tax\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"Max Milbers\",\"copyright\":\"Copyright (C) 2013 - 2019 iStraxx GmbH. All rights reserved\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.\",\"group\":\"\",\"filename\":\"avalara\"}', '', '', NULL, NULL, 0, 0, NULL),
(271, 0, 'VirtueMart Product', 'plugin', 'virtuemart', NULL, 'search', 0, 0, 1, 0, 0, '{\"name\":\"Search - VirtueMart\",\"type\":\"plugin\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2014 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"virtuemart\"}', '', '', NULL, NULL, 0, 0, NULL),
(272, 0, 'VM Framework Loader during Plugin Updates', 'plugin', 'vmloaderpluginupdate', NULL, 'system', 0, 1, 1, 0, 0, '{\"name\":\"PLG_SYSTEM_VMLOADERPLUGINUPDATE\",\"type\":\"plugin\",\"creationDate\":\"2019-10-08\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2017 Reinhold Kainhofer.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\\/\",\"version\":\"4.4.0\",\"description\":\"PLG_SYSTEM_VMLOADERPLUGINUPDATE_DESC\",\"group\":\"\",\"filename\":\"vmloaderpluginupdate\"}', '', '', NULL, NULL, 0, 0, NULL),
(273, 0, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_currencies\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_CURRENCIES_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_currencies\"}', '', '', NULL, NULL, 5, 0, NULL),
(274, 0, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_product\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_PRODUCT_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_product\"}', '', '', NULL, NULL, 3, 0, NULL),
(275, 0, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_search\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_SEARCH_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_search\"}', '', '', NULL, NULL, 2, 0, NULL),
(276, 0, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_manufacturer\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_MANUFACTURER_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_manufacturer\"}', '', '', NULL, NULL, 8, 0, NULL),
(277, 0, 'mod_virtuemart_cart', 'module', 'mod_virtuemart_cart', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_cart\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_CART_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_cart\"}', '', '', NULL, NULL, 0, 0, NULL),
(278, 0, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', NULL, '', 0, 1, 1, 0, 0, '{\"name\":\"mod_virtuemart_category\",\"type\":\"module\",\"creationDate\":\"June 13 2023\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_VIRTUEMART_CATEGORY_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_category\"}', '', '', NULL, NULL, 4, 0, NULL),
(279, 284, 'vmadmin', 'template', 'vmadmin', '', '', 1, 1, 1, 0, 0, '{\"name\":\"vmadmin\",\"type\":\"template\",\"creationDate\":\"28 January 2021\",\"author\":\"by the VirtueMart team\",\"copyright\":\"Copyright (C) 2004 - 2022 Virtuemart Team, Inc. All rights reserved.\",\"authorEmail\":\"max@virtuemart.net\",\"authorUrl\":\"http:\\/\\/virtuemart.net\",\"version\":\"4.4.0\",\"description\":\"New administration template for VirtueMart. Enable the template in the virtuemart config on the first tab, section \\\"Advanced\\\".\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(280, 284, 'tcpdf', 'component', 'com_tcpdf', '', '', 1, 1, 0, 0, 0, '{\"name\":\"tcpdf\",\"type\":\"component\",\"creationDate\":\"March 2024\",\"author\":\"Nicola Asuni, The VirtueMart Development Team\",\"copyright\":\"Copyright (c) 2001-2018 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 - 2023 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/virtuemart.net\",\"version\":\"1.2.12\",\"description\":\"TCPDF 6.2.26 by Nicola Asuni. Joomla Installer by the VirtueMart Team and updated for php8.2\",\"group\":\"\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(281, 284, 'VM Basic', 'template', 'vmbasic', '', '', 0, 1, 1, 0, 0, '{\"name\":\"VM Basic\",\"type\":\"template\",\"creationDate\":\"16-06-2024\",\"author\":\"Spiros Petrakis\",\"copyright\":\"(C) 2024 Spiros Petrakis\",\"authorEmail\":\"support@yourgeek.gr\",\"authorUrl\":\"\",\"version\":\"4.2.18\",\"description\":\"TPL_VMBASIC_XML_DESCRIPTION\",\"group\":\"\",\"inheritable\":true,\"filename\":\"templateDetails\"}', '{\"logoFile\":\"\",\"footerlogo\":\"1\",\"backTop\":\"0\",\"gfonts\":\"\",\"bodyfontfamily\":\"\",\"headingsfontfamily\":\"\",\"customcss\":\"0\",\"inlinecustomcss\":\"\",\"headcustomjs\":\"\",\"bodycustomjs\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(282, 284, 'mod_virtuemart_languages', 'module', 'mod_virtuemart_languages', '', '', 0, 1, 0, 0, 0, '{\"name\":\"mod_virtuemart_languages\",\"type\":\"module\",\"creationDate\":\"May 2015\",\"author\":\"VirtueMart Project\",\"copyright\":\"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved. 2015 - 2023 Virtuemart Team\",\"authorEmail\":\"max@virtuemart.net\",\"authorUrl\":\"virtuemart.net\",\"version\":\"4.0.23\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_virtuemart_languages\"}', '{\"dropdown\":\"0\",\"image\":\"1\",\"inline\":\"1\",\"show_active\":\"1\",\"full_name\":\"1\",\"cache\":\"0\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', NULL, NULL, 0, 0, NULL),
(283, 284, 'mod_virtuemart_vendor', 'module', 'mod_virtuemart_vendor', '', '', 0, 1, 0, 0, 0, '{\"name\":\"mod_virtuemart_vendor\",\"type\":\"module\",\"creationDate\":\"January 2018\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"Copyright (C) 2004-2018 Virtuemart Team. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.virtuemart.net\",\"version\":\"4.2.18\",\"description\":\"MOD_VIRTUEMART_VENDOR_DESC\",\"group\":\"\",\"filename\":\"mod_virtuemart_vendor\"}', '{\"show\":\"all\",\"display_style\":\"list\",\"display_tos_link\":\"1\",\"display_about_link\":\"1\",\"@spacer\":\"\",\"headerText\":\"\",\"footerText\":\"\",\"cache\":\"1\",\"moduleclass_sfx\":\"\",\"class_sfx\":\"\"}', '', NULL, NULL, 0, 0, NULL),
(284, 0, 'VirtueMart Package', 'package', 'pkg_virtuemart_pkg', '', '', 0, 1, 1, 0, 0, '{\"name\":\"VirtueMart Package\",\"type\":\"package\",\"creationDate\":\"11. November 2024\",\"author\":\"The VirtueMart Development Team\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"4.4.0\",\"description\":\"Virtuemart Core and AIO (All in once)\",\"group\":\"\",\"filename\":\"pkg_virtuemart\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(285, 287, 'com_flexbanners', 'component', 'com_flexbanners', '', '', 1, 1, 0, 0, 0, '{\"name\":\"com_flexbanners\",\"type\":\"component\",\"creationDate\":\"2024\\/11\\/10\",\"author\":\"inch hosting\",\"copyright\":\"Copyright (c)2009-2024 inch communications ltd\",\"authorEmail\":\"admin@inchhosting.co.uk\",\"authorUrl\":\"inchhosting.uk\",\"version\":\"5.1.07\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\"><a href=\\\"\\/\\/www.inchhosting.co.uk\\/\\\" alt=\\\"Joomla Web Hosting from Inch\\\" title=\\\"Joomla Web Hosting from Inch\\\"  ><img src=\\\"components\\/com_flexbanners\\/flexbanner.png\\\" alt=\\\"FlexBanner Logo\\\" \\/><\\/a><\\/div>\\n\\t\\t<div align=\\\"left\\\"><h2>Successfully installed FlexBanner&nbsp;Component and Module<\\/h2>\\n\\t\\t\\t\\n\\t\\tFlexBanner is a powerful banner management system that allows you to choose which articles or categories a banner appears on.\\n\\n\\t\\tIt supports the use of Flash banners and reports impressions and clicks.\\n\\t\\t<br \\/><br \\/>\\n\\t\\t<a href=\\\"\\/\\/www.inchhosting.co.uk\\/\\\" alt=\\\"Joomla Web Hosting from Inch\\\" title=\\\"Joomla Web Hosting from Inch\\\"  >Joomla Web Hosting from Inch<\\/a>\\n\\t\\t<br \\/><br \\/>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"namespace\":\"Inch\\\\Component\\\\Flexbanners\",\"filename\":\"flexbanners\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(286, 287, 'Flexbanners', 'module', 'mod_flexbanners', '', '', 0, 1, 0, 0, 0, '{\"name\":\"Flexbanners\",\"type\":\"module\",\"creationDate\":\"2024\\/11\\/10\",\"author\":\"inch hosting\",\"copyright\":\"Copyright (c)2009-2024 inch communications ltd\",\"authorEmail\":\"adimn@inchhosting.co.uk\",\"authorUrl\":\"www.inchhosting.co.uk\",\"version\":\"5.1.07\",\"description\":\"This module shows adverts in a flexible manner\",\"group\":\"\",\"namespace\":\"Inch\\\\Module\\\\Flexbanners\",\"filename\":\"mod_flexbanners\"}', '{\"locationid\":\"\",\"numberbanner\":\"1\",\"ordering\":\"0\",\"loadlast\":\"0\",\"enablecsa\":\"0\",\"enabletrans\":\"0\",\"cache\":\"0\",\"cache_time\":\"900\"}', '', NULL, NULL, 0, 0, NULL),
(287, 0, 'pkg_flexbanners', 'package', 'pkg_flexbanners', '', '', 0, 1, 1, 0, 0, '{\"name\":\"pkg_flexbanners\",\"type\":\"package\",\"creationDate\":\"2024\\/11\\/10\",\"author\":\"inch hosting\",\"copyright\":\"Copyright (c)2009-2024 inch communications ltd\",\"authorEmail\":\"admin@inchhosting.co.uk\",\"authorUrl\":\"www.inchhosting.co.uk\",\"version\":\"5.1.07\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"left\\\"><a href=\\\"\\/\\/www.inchhosting.co.uk\\/\\\" alt=\\\"Joomla Web Hosting from Inch\\\" title=\\\"Joomla Web Hosting from Inch\\\"  ><img src=\\\"components\\/com_flexbanners\\/flexbanner.png\\\" alt=\\\"FlexBanner Logo\\\" \\/><\\/a><\\/div>\\n\\t\\t<div align=\\\"left\\\"><h2>Successfully installed FlexBanner&nbsp;Component and Module<\\/h2>\\n\\t\\t\\t\\n\\t\\tFlexBanner is a powerful banner management system that allows you to choose which articles or categories a banner appears on.\\n\\n\\t\\tIt supports the use of Flash banners and reports impressions and clicks.\\n\\t\\t<br \\/><br \\/>\\n\\t\\t<a href=\\\"\\/\\/inchhosting.uk\\/\\\" alt=\\\"Joomla Web Hosting from Inch\\\" title=\\\"Joomla Web Hosting from Inch\\\"  >Joomla Web Hosting from Inch<\\/a>\\n\\t\\t<br \\/><br \\/>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"pkg_flexbanners\"}', '{}', '', NULL, NULL, 0, 0, NULL),
(288, 0, 'Live Chat and ChatBot - ChatAndBot', 'module', 'mod_chatandbot', '', '', 0, 1, 0, 0, 0, '{\"name\":\"Live Chat and ChatBot - ChatAndBot\",\"type\":\"module\",\"creationDate\":\"05\\/12\\/2022\",\"author\":\"ChatAndBot\",\"copyright\":\"(C) 2022 ChatAndBot.\",\"authorEmail\":\"help@chatandbot.com\",\"authorUrl\":\"https:\\/\\/chatandbot.com\",\"version\":\"1.0.1\",\"description\":\"MOD_CHATANDBOT_XML_DESCRIPTION\",\"group\":\"\",\"namespace\":\"Joomla\\\\Module\\\\mod_chatandbot\",\"filename\":\"mod_chatandbot\"}', '[]', '', NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_fields`
--

CREATE TABLE `d6gvw_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) NOT NULL DEFAULT '',
  `default_value` text DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'text',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `only_use_in_subform` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `fieldparams` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_fields_categories`
--

CREATE TABLE `d6gvw_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_fields_groups`
--

CREATE TABLE `d6gvw_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `context` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_fields_values`
--

CREATE TABLE `d6gvw_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_filters`
--

CREATE TABLE `d6gvw_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  `params` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_links`
--

CREATE TABLE `d6gvw_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(400) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `indexdate` datetime NOT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `state` int(11) NOT NULL DEFAULT 1,
  `access` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `publish_start_date` datetime DEFAULT NULL,
  `publish_end_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `list_price` double UNSIGNED NOT NULL DEFAULT 0,
  `sale_price` double UNSIGNED NOT NULL DEFAULT 0,
  `type_id` int(11) NOT NULL,
  `object` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_links`
--

INSERT INTO `d6gvw_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(1, 'index.php?option=com_content&view=category&id=8', 'index.php?option=com_content&view=category&id=8', 'PHỤ KIỆN', '', '2024-12-18 07:01:26', '6ba0d23b6ced23f0c3ec615f5e403fbd', 1, 1, 1, '*', NULL, NULL, '2024-12-18 07:01:26', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a383b733a353a22616c696173223b733a373a227068206b69206e223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31313b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a33323b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30313a3236223b733a31313a226d6f6469666965645f6279223b693a33323b733a343a22736c7567223b733a393a22383a70682d6b692d6e223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30313a3236223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31323a225048e1bba4204b49e1bb864e223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d38223b7d),
(2, 'index.php?option=com_content&view=article&id=1', 'index.php?option=com_content&view=article&id=1:ph-ki-n&catid=8', 'Đồng hồ thể thao', ' Shop Đồng hồ thể thao ', '2024-12-18 07:15:31', 'ff0df24ad7566bc686709146fac0f278', 1, 1, 1, '*', '2024-12-18 07:02:09', NULL, '2024-12-18 07:02:09', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a33303a222053686f7020c490e1bb936e672068e1bb93207468e1bb83207468616f20223b693a333b613a32353a7b733a323a226964223b693a313b733a353a22616c696173223b733a373a227068206b69206e223b733a373a2273756d6d617279223b733a33353a223c703e53686f7020c490e1bb936e672068e1bb93207468e1bb83207468616f3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a383b733a31303a22637265617465645f6279223b693a33323b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a31353a3331223b733a31313a226d6f6469666965645f6279223b693a33323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a333b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31323a225048e1bba4204b49e1bb864e223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a393a22313a70682d6b692d6e223b733a373a22636174736c7567223b733a393a22383a70682d6b692d6e223b733a363a22617574686f72223b733a373a226d7968756f6e67223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032342d31322d31382030373a30323a3039223b693a31303b4e3b693a31313b733a36323a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d313a70682d6b692d6e2663617469643d38223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30323a3039223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226d7968756f6e67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31323a225048e1bba4204b49e1bb864e223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31303b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a32333a22c490e1bb936e672068e1bb93207468e1bb83207468616f223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d31223b7d),
(3, 'index.php?option=com_content&view=article&id=2', 'index.php?option=com_content&view=article&id=2:d-ng-ho-nam&catid=9', 'ĐỒNG HO NAM', ' Shop đồng hồ NAm ', '2024-12-18 07:05:22', 'd7869be478d5f4c41106ec1af699fe81', 1, 1, 1, '*', '2024-12-18 07:03:54', NULL, '2024-12-18 07:03:54', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a32333a222053686f7020c491e1bb936e672068e1bb93204e416d20223b693a333b613a32353a7b733a323a226964223b693a323b733a353a22616c696173223b733a31313a2264206e6720686f206e616d223b733a373a2273756d6d617279223b733a32383a223c703e53686f7020c491e1bb936e672068e1bb93204e416d3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a393b733a31303a22637265617465645f6279223b693a33323b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30353a3232223b733a31313a226d6f6469666965645f6279223b693a33323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a343b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31343a22c490e1bb924e4720484f204e414d223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31333a22323a642d6e672d686f2d6e616d223b733a373a22636174736c7567223b733a31333a22393a642d6e672d686f2d6e616d223b733a363a22617574686f72223b733a373a226d7968756f6e67223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032342d31322d31382030373a30333a3534223b693a31303b4e3b693a31313b733a36363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d323a642d6e672d686f2d6e616d2663617469643d39223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30333a3534223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226d7968756f6e67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31343a22c490e1bb924e4720484f204e414d223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31323b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31343a22c490e1bb924e4720484f204e414d223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d32223b7d),
(4, 'index.php?option=com_content&view=category&id=9', 'index.php?option=com_content&view=category&id=9', 'ĐỒNG HO NAM', '', '2024-12-18 07:05:09', '5c76d802ae6ae769359e022ab34d10d6', 1, 1, 1, '*', NULL, NULL, '2024-12-18 07:05:09', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a393b733a353a22616c696173223b733a31313a2264206e6720686f206e616d223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31333b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a33323b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30353a3039223b733a31313a226d6f6469666965645f6279223b693a33323b733a343a22736c7567223b733a31333a22393a642d6e672d686f2d6e616d223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30353a3039223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31343a22c490e1bb924e4720484f204e414d223b693a31373b693a313b693a31383b733a34373a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d39223b7d),
(5, 'index.php?option=com_content&view=category&id=10', 'index.php?option=com_content&view=category&id=10', 'DONG HO NU', '', '2024-12-18 07:06:16', 'de287ef79985a40bcb1533b6bd8efb10', 1, 1, 1, '*', NULL, NULL, '2024-12-18 07:06:16', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31303b733a353a22616c696173223b733a31303a22646f6e6720686f206e75223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31353b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a33323b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30363a3136223b733a31313a226d6f6469666965645f6279223b693a33323b733a343a22736c7567223b733a31333a2231303a646f6e672d686f2d6e75223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30363a3136223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31303a22444f4e4720484f204e55223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3130223b7d),
(6, 'index.php?option=com_content&view=article&id=3', 'index.php?option=com_content&view=article&id=3:d-ng-h-n&catid=10', 'Đồng hồ nữ', ' Shop đồng hồ nữ ', '2024-12-18 07:06:52', '1eb9784b1bed4cba4786bdaa304dee89', 1, 1, 1, '*', '2024-12-18 07:06:52', NULL, '2024-12-18 07:06:52', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a32343a222053686f7020c491e1bb936e672068e1bb93206ee1bbaf20223b693a333b613a32353a7b733a323a226964223b693a333b733a353a22616c696173223b733a383a2264206e672068206e223b733a373a2273756d6d617279223b733a32393a223c703e53686f7020c491e1bb936e672068e1bb93206ee1bbaf3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a31303b733a31303a22637265617465645f6279223b693a33323b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30363a3532223b733a31313a226d6f6469666965645f6279223b693a33323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31303a22444f4e4720484f204e55223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31303a22333a642d6e672d682d6e223b733a373a22636174736c7567223b733a31333a2231303a646f6e672d686f2d6e75223b733a363a22617574686f72223b733a373a226d7968756f6e67223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032342d31322d31382030373a30363a3532223b693a31303b4e3b693a31313b733a36343a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d333a642d6e672d682d6e2663617469643d3130223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30363a3532223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226d7968756f6e67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31303a22444f4e4720484f204e55223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31373a22c490e1bb936e672068e1bb93206ee1bbaf223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d33223b7d);
INSERT INTO `d6gvw_finder_links` (`link_id`, `url`, `route`, `title`, `description`, `indexdate`, `md5sum`, `published`, `state`, `access`, `language`, `publish_start_date`, `publish_end_date`, `start_date`, `end_date`, `list_price`, `sale_price`, `type_id`, `object`) VALUES
(7, 'index.php?option=com_content&view=article&id=4', 'index.php?option=com_content&view=article&id=4:ph-ki-n1&catid=11', 'Phụ kiện1', ' Shop Phụ Kiện ', '2024-12-18 07:10:26', 'b87131ff54ff18f1c8bfd36e8348a001', 1, 1, 1, '*', '2024-12-18 07:09:42', NULL, '2024-12-18 07:09:42', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a31393a222053686f70205068e1bba5204b69e1bb876e20223b693a333b613a32353a7b733a323a226964223b693a343b733a353a22616c696173223b733a383a227068206b69206e31223b733a373a2273756d6d617279223b733a32343a223c703e53686f70205068e1bba5204b69e1bb876e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a31313b733a31303a22637265617465645f6279223b693a33323b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a31303a3236223b733a31313a226d6f6469666965645f6279223b693a33323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a323b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a225068e1bba5206b69e1bb876e31223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31303a22343a70682d6b692d6e31223b733a373a22636174736c7567223b733a31313a2231313a70682d6b692d6e31223b733a363a22617574686f72223b733a373a226d7968756f6e67223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032342d31322d31382030373a30393a3432223b693a31303b4e3b693a31313b733a36343a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d343a70682d6b692d6e312663617469643d3131223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30393a3432223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226d7968756f6e67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a225068e1bba5206b69e1bb876e31223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31353b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31333a225068e1bba5206b69e1bb876e31223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d34223b7d),
(8, 'index.php?option=com_content&view=category&id=11', 'index.php?option=com_content&view=category&id=11', 'Phụ kiện1', '', '2024-12-18 07:09:56', 'a723820d7e89db33fb62a6696ad10432', 1, 1, 1, '*', NULL, NULL, '2024-12-18 07:09:56', NULL, 0, 0, 1, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a303a22223b693a333b613a31373a7b733a323a226964223b693a31313b733a353a22616c696173223b733a383a227068206b69206e31223b733a393a22657874656e73696f6e223b733a31313a22636f6d5f636f6e74656e74223b733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a323a7b733a363a22617574686f72223b733a303a22223b733a363a22726f626f7473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a333a226c6674223b693a31373b733a393a22706172656e745f6964223b693a313b733a353a226c6576656c223b693a313b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a31353a2263617465676f72795f6c61796f7574223b733a303a22223b733a353a22696d616765223b733a303a22223b733a393a22696d6167655f616c74223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2273756d6d617279223b733a303a22223b733a31303a22637265617465645f6279223b693a33323b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030373a30393a3536223b733a31313a226d6f6469666965645f6279223b693a33323b733a343a22736c7567223b733a31313a2231313a70682d6b692d6e31223b733a363a226c61796f7574223b733a383a2263617465676f7279223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a343a226c696e6b223b693a343b733a373a226d6574616b6579223b693a353b733a383a226d65746164657363223b693a363b733a31303a226d657461617574686f72223b693a373b733a363a22617574686f72223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b4e3b693a31303b4e3b693a31313b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030373a30393a3536223b693a31343b693a313b693a31353b613a323a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a383a2243617465676f7279223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a333b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31333a225068e1bba5206b69e1bb876e31223b693a31373b693a313b693a31383b733a34383a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d63617465676f72792669643d3131223b7d),
(9, 'index.php?option=com_content&view=article&id=5', 'index.php?option=com_content&view=article&id=5:trang-ch&catid=2', 'TRANG CHỦ', ' Chào Mừng Đến Với Fashion Watch Store Khám Phá Bộ Sưu Tập Đồng Hồ Mới Nhất Tại Fashion Watch Store, chúng tôi mang đến cho bạn bộ sưu tập đồng hồ thời trang đa dạng, phong phú, phù hợp với mọi phong cách và nhu cầu. Từ những chiếc đồng hồ sang trọng, tinh tế, đến những mẫu đồng hồ thể thao năng động, chúng tôi tự hào là điểm đến lý tưởng cho những ai yêu thích thời gian và sự hoàn hảo trong từng chi tiết. Sản Phẩm Hot Đồng Hồ Nam: Những mẫu đồng hồ mạnh mẽ, lịch lãm và đầy phong cách. Từ thiết kế cổ điển đến những sản phẩm hiện đại, tất cả đều mang đến vẻ đẹp vượt thời gian. Đồng Hồ Nữ: Đồng hồ nữ tinh tế, thanh lịch, với các chi tiết được chăm chút tỉ mỉ, làm tôn lên vẻ đẹp của bạn. Chọn ngay một chiếc đồng hồ phù hợp cho các dịp đặc biệt. Đồng Hồ Thể Thao: Được thiết kế cho những ai yêu thích sự năng động và khỏe khoắn, những chiếc đồng hồ thể thao bền bỉ sẽ đồng hành cùng bạn trong mọi hoạt động. Tại Sao Chọn Fashion Watch Store? Sản Phẩm Chính Hãng: Chúng tôi cam kết cung cấp các mẫu đồng hồ chính hãng từ những thương hiệu nổi tiếng, đảm bảo chất lượng và tính xác thực. Giá Cả Hợp Lý: Fashion Watch Store cung cấp những chiếc đồng hồ cao cấp với mức giá phải chăng, phù hợp với mọi ngân sách. Miễn Phí Giao Hàng: Chúng tôi cung cấp dịch vụ giao hàng miễn phí trong phạm vi toàn quốc cho tất cả các đơn hàng. Đảm bảo bạn nhận được sản phẩm trong thời gian nhanh nhất. Chế Độ Bảo Hành: Mọi sản phẩm đều đi kèm với chế độ bảo hành chính hãng, mang lại sự yên tâm tuyệt đối cho khách hàng. Khám Phá Các Bộ Sưu Tập Thời Trang Chúng tôi luôn cập nhật các bộ sưu tập mới, mang đến những mẫu đồng hồ hợp thời trang và bắt kịp xu hướng. Hãy khám phá ngay các bộ sưu tập dành riêng cho bạn, giúp bạn luôn tự tin và nổi bật trong mọi hoàn cảnh. Bộ Sưu Tập Mới Nhất: Cập nhật những mẫu đồng hồ mới ra mắt từ các thương hiệu danh tiếng. Đồng Hồ Cao Cấp: Các mẫu đồng hồ sang trọng và đẳng cấp, phù hợp với những dịp quan trọng hoặc những ai yêu thích sự tinh tế. Đồng Hồ Thời Trang: Các mẫu đồng hồ được thiết kế độc đáo, với những chi tiết tỉ mỉ, mang đến vẻ đẹp thu hút và cá tính. Ưu Đãi Đặc Biệt Giảm Giá Lớn: Nhận ngay ưu đãi hấp dẫn với các chương trình giảm giá, khuyến mãi đặc biệt theo mùa. Hãy theo dõi trang chủ để không bỏ lỡ những chương trình hot! Mua 1 Tặng 1: Đừng bỏ lỡ chương trình khuyến mãi mua 1 tặng 1 cực kỳ hấp dẫn tại Fashion Watch Store! Quà Tặng Kèm: Khi mua đồng hồ tại cửa hàng, bạn sẽ nhận được các phần quà độc đáo, góp phần làm tăng giá trị món quà của bạn. Chăm Sóc Khách Hàng Tận Tâm Fashion Watch Store luôn coi khách hàng là trọng tâm, và chúng tôi cam kết mang đến dịch vụ chăm sóc khách hàng tốt nhất. Nếu bạn có bất kỳ câu hỏi hay thắc mắc nào về sản phẩm, đơn hàng hay dịch vụ, đừng ngần ngại liên hệ với chúng tôi qua: Hotline: [Số điện thoại] Email: [Email liên hệ] Live Chat: Tại trang web để giải đáp thắc mắc nhanh chóng. Đặt Mua Ngay Hãy chọn ngay chiếc đồng hồ mà bạn yêu thích và làm đẹp thêm cho phong cách của mình. Chúng tôi sẽ giao sản phẩm đến tận tay bạn với dịch vụ giao hàng nhanh chóng và bảo mật. ', '2024-12-18 09:36:00', 'bf252b0689f2ef374c607a5091f8abf1', 1, 1, 1, '*', '2024-12-18 09:36:00', NULL, '2024-12-18 09:36:00', NULL, 0, 0, 3, 0x4f3a35323a224a6f6f6d6c615c436f6d706f6e656e745c46696e6465725c41646d696e6973747261746f725c496e64657865725c526573756c74223a31393a7b693a303b693a313b693a313b733a353a22656e2d4742223b693a323b733a343037313a22204368c3a06f204de1bbab6e6720c490e1babf6e2056e1bb9b692046617368696f6e2057617463682053746f7265204b68c3a16d205068c3a12042e1bb992053c6b0752054e1baad7020c490e1bb936e672048e1bb93204de1bb9b69204e68e1baa5742054e1baa1692046617368696f6e2057617463682053746f72652c206368c3ba6e672074c3b469206d616e6720c491e1babf6e2063686f2062e1baa16e2062e1bb992073c6b0752074e1baad7020c491e1bb936e672068e1bb93207468e1bb9d69207472616e6720c491612064e1baa16e672c2070686f6e67207068c3ba2c207068c3b92068e1bba3702076e1bb9b69206de1bb8d692070686f6e672063c3a163682076c3a0206e68752063e1baa7752e2054e1bbab206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb932073616e67207472e1bb8d6e672c2074696e682074e1babf2c20c491e1babf6e206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93207468e1bb83207468616f206ec4836e6720c491e1bb996e672c206368c3ba6e672074c3b4692074e1bbb12068c3a06f206cc3a020c49169e1bb836d20c491e1babf6e206cc3bd2074c6b0e1bb9f6e672063686f206e68e1bbaf6e672061692079c3aa75207468c3ad6368207468e1bb9d69206769616e2076c3a02073e1bbb120686fc3a06e2068e1baa36f2074726f6e672074e1bbab6e6720636869207469e1babf742e2053e1baa36e205068e1baa96d20486f7420c490e1bb936e672048e1bb93204e616d3a204e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93206de1baa16e68206de1babd2c206ce1bb8b6368206cc3a36d2076c3a020c491e1baa7792070686f6e672063c3a163682e2054e1bbab20746869e1babf74206be1babf2063e1bb9520c49169e1bb836e20c491e1babf6e206e68e1bbaf6e672073e1baa36e207068e1baa96d206869e1bb876e20c491e1baa1692c2074e1baa5742063e1baa320c491e1bb8175206d616e6720c491e1babf6e2076e1babb20c491e1bab9702076c6b0e1bba374207468e1bb9d69206769616e2e20c490e1bb936e672048e1bb93204ee1bbaf3a20c490e1bb936e672068e1bb93206ee1bbaf2074696e682074e1babf2c207468616e68206ce1bb8b63682c2076e1bb9b692063c3a16320636869207469e1babf7420c491c6b0e1bba363206368c4836d206368c3ba742074e1bb89206de1bb892c206cc3a06d2074c3b46e206cc3aa6e2076e1babb20c491e1bab9702063e1bba7612062e1baa16e2e204368e1bb8d6e206e676179206de1bb997420636869e1babf6320c491e1bb936e672068e1bb93207068c3b92068e1bba3702063686f2063c3a1632064e1bb8b7020c491e1bab763206269e1bb87742e20c490e1bb936e672048e1bb93205468e1bb83205468616f3a20c490c6b0e1bba36320746869e1babf74206be1babf2063686f206e68e1bbaf6e672061692079c3aa75207468c3ad63682073e1bbb1206ec4836e6720c491e1bb996e672076c3a0206b68e1bb8f65206b686fe1baaf6e2c206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb93207468e1bb83207468616f2062e1bb816e2062e1bb892073e1babd20c491e1bb936e672068c3a06e682063c3b96e672062e1baa16e2074726f6e67206de1bb8d6920686fe1baa17420c491e1bb996e672e2054e1baa1692053616f204368e1bb8d6e2046617368696f6e2057617463682053746f72653f2053e1baa36e205068e1baa96d204368c3ad6e682048c3a36e673a204368c3ba6e672074c3b4692063616d206be1babf742063756e672063e1baa5702063c3a163206de1baab7520c491e1bb936e672068e1bb93206368c3ad6e682068c3a36e672074e1bbab206e68e1bbaf6e67207468c6b0c6a16e67206869e1bb8775206ee1bb9569207469e1babf6e672c20c491e1baa36d2062e1baa36f206368e1baa574206cc6b0e1bba36e672076c3a02074c3ad6e682078c3a163207468e1bbb1632e204769c3a12043e1baa32048e1bba370204cc3bd3a2046617368696f6e2057617463682053746f72652063756e672063e1baa570206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb932063616f2063e1baa5702076e1bb9b69206de1bba963206769c3a1207068e1baa369206368c4836e672c207068c3b92068e1bba3702076e1bb9b69206de1bb8d69206e67c3a26e2073c3a163682e204d69e1bb856e205068c3ad204769616f2048c3a06e673a204368c3ba6e672074c3b4692063756e672063e1baa5702064e1bb8b63682076e1bba5206769616f2068c3a06e67206d69e1bb856e207068c3ad2074726f6e67207068e1baa16d20766920746fc3a06e207175e1bb91632063686f2074e1baa5742063e1baa32063c3a16320c491c6a16e2068c3a06e672e20c490e1baa36d2062e1baa36f2062e1baa16e206e68e1baad6e20c491c6b0e1bba3632073e1baa36e207068e1baa96d2074726f6e67207468e1bb9d69206769616e206e68616e68206e68e1baa5742e204368e1babf20c490e1bb992042e1baa36f2048c3a06e683a204de1bb8d692073e1baa36e207068e1baa96d20c491e1bb817520c49169206bc3a86d2076e1bb9b69206368e1babf20c491e1bb992062e1baa36f2068c3a06e68206368c3ad6e682068c3a36e672c206d616e67206ce1baa1692073e1bbb12079c3aa6e2074c3a26d20747579e1bb877420c491e1bb91692063686f206b68c3a163682068c3a06e672e204b68c3a16d205068c3a12043c3a1632042e1bb992053c6b0752054e1baad70205468e1bb9d69205472616e67204368c3ba6e672074c3b469206c75c3b46e2063e1baad70206e68e1baad742063c3a1632062e1bb992073c6b0752074e1baad70206de1bb9b692c206d616e6720c491e1babf6e206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb932068e1bba370207468e1bb9d69207472616e672076c3a02062e1baaf74206be1bb8b702078752068c6b0e1bb9b6e672e2048c3a379206b68c3a16d207068c3a1206e6761792063c3a1632062e1bb992073c6b0752074e1baad702064c3a06e68207269c3aa6e672063686f2062e1baa16e2c206769c3ba702062e1baa16e206c75c3b46e2074e1bbb12074696e2076c3a0206ee1bb95692062e1baad742074726f6e67206de1bb8d6920686fc3a06e2063e1baa36e682e2042e1bb992053c6b0752054e1baad70204de1bb9b69204e68e1baa5743a2043e1baad70206e68e1baad74206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93206de1bb9b69207261206de1baaf742074e1bbab2063c3a163207468c6b0c6a16e67206869e1bb87752064616e68207469e1babf6e672e20c490e1bb936e672048e1bb932043616f2043e1baa5703a2043c3a163206de1baab7520c491e1bb936e672068e1bb932073616e67207472e1bb8d6e672076c3a020c491e1bab36e672063e1baa5702c207068c3b92068e1bba3702076e1bb9b69206e68e1bbaf6e672064e1bb8b70207175616e207472e1bb8d6e6720686fe1bab763206e68e1bbaf6e672061692079c3aa75207468c3ad63682073e1bbb12074696e682074e1babf2e20c490e1bb936e672048e1bb93205468e1bb9d69205472616e673a2043c3a163206de1baab7520c491e1bb936e672068e1bb9320c491c6b0e1bba36320746869e1babf74206be1babf20c491e1bb996320c491c3a16f2c2076e1bb9b69206e68e1bbaf6e6720636869207469e1babf742074e1bb89206de1bb892c206d616e6720c491e1babf6e2076e1babb20c491e1bab970207468752068c3ba742076c3a02063c3a12074c3ad6e682e20c6af7520c490c3a36920c490e1bab763204269e1bb8774204769e1baa36d204769c3a1204ce1bb9b6e3a204e68e1baad6e206e67617920c6b07520c491c3a3692068e1baa5702064e1baab6e2076e1bb9b692063c3a163206368c6b0c6a16e67207472c3ac6e68206769e1baa36d206769c3a12c206b687579e1babf6e206dc3a36920c491e1bab763206269e1bb8774207468656f206dc3b9612e2048c3a379207468656f2064c3b569207472616e67206368e1bba720c491e1bb83206b68c3b46e672062e1bb8f206ce1bba1206e68e1bbaf6e67206368c6b0c6a16e67207472c3ac6e6820686f7421204d756120312054e1bab76e6720313a20c490e1bbab6e672062e1bb8f206ce1bba1206368c6b0c6a16e67207472c3ac6e68206b687579e1babf6e206dc3a369206d756120312074e1bab76e6720312063e1bbb163206be1bbb32068e1baa5702064e1baab6e2074e1baa1692046617368696f6e2057617463682053746f726521205175c3a02054e1bab76e67204bc3a86d3a204b6869206d756120c491e1bb936e672068e1bb932074e1baa1692063e1bbad612068c3a06e672c2062e1baa16e2073e1babd206e68e1baad6e20c491c6b0e1bba3632063c3a163207068e1baa76e207175c3a020c491e1bb996320c491c3a16f2c2067c3b370207068e1baa76e206cc3a06d2074c4836e67206769c3a1207472e1bb8b206dc3b36e207175c3a02063e1bba7612062e1baa16e2e204368c4836d2053c3b363204b68c3a163682048c3a06e672054e1baad6e2054c3a26d2046617368696f6e2057617463682053746f7265206c75c3b46e20636f69206b68c3a163682068c3a06e67206cc3a0207472e1bb8d6e672074c3a26d2c2076c3a0206368c3ba6e672074c3b4692063616d206be1babf74206d616e6720c491e1babf6e2064e1bb8b63682076e1bba5206368c4836d2073c3b363206b68c3a163682068c3a06e672074e1bb9174206e68e1baa5742e204ee1babf752062e1baa16e2063c3b32062e1baa574206be1bbb32063c3a2752068e1bb8f6920686179207468e1baaf63206de1baaf63206ec3a06f2076e1bb812073e1baa36e207068e1baa96d2c20c491c6a16e2068c3a06e67206861792064e1bb8b63682076e1bba52c20c491e1bbab6e67206e67e1baa76e206e67e1baa169206c69c3aa6e2068e1bb872076e1bb9b69206368c3ba6e672074c3b469207175613a20486f746c696e653a205b53e1bb9120c49169e1bb876e2074686fe1baa1695d20456d61696c3a205b456d61696c206c69c3aa6e2068e1bb875d204c69766520436861743a2054e1baa169207472616e672077656220c491e1bb83206769e1baa36920c491c3a170207468e1baaf63206de1baaf63206e68616e68206368c3b36e672e20c490e1bab774204d7561204e6761792048c3a379206368e1bb8d6e206e67617920636869e1babf6320c491e1bb936e672068e1bb93206dc3a02062e1baa16e2079c3aa75207468c3ad63682076c3a0206cc3a06d20c491e1bab970207468c3aa6d2063686f2070686f6e672063c3a163682063e1bba761206dc3ac6e682e204368c3ba6e672074c3b4692073e1babd206769616f2073e1baa36e207068e1baa96d20c491e1babf6e2074e1baad6e207461792062e1baa16e2076e1bb9b692064e1bb8b63682076e1bba5206769616f2068c3a06e67206e68616e68206368c3b36e672076c3a02062e1baa36f206de1baad742e20223b693a333b613a32353a7b733a323a226964223b693a353b733a353a22616c696173223b733a383a227472616e67206368223b733a373a2273756d6d617279223b733a343339303a223c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e4368c3a06f204de1bbab6e6720c490e1babf6e2056e1bb9b692046617368696f6e2057617463682053746f72653c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e4b68c3a16d205068c3a12042e1bb992053c6b0752054e1baad7020c490e1bb936e672048e1bb93204de1bb9b69204e68e1baa5743c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e54e1baa1692046617368696f6e2057617463682053746f72652c206368c3ba6e672074c3b469206d616e6720c491e1babf6e2063686f2062e1baa16e2062e1bb992073c6b0752074e1baad7020c491e1bb936e672068e1bb93207468e1bb9d69207472616e6720c491612064e1baa16e672c2070686f6e67207068c3ba2c207068c3b92068e1bba3702076e1bb9b69206de1bb8d692070686f6e672063c3a163682076c3a0206e68752063e1baa7752e2054e1bbab206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb932073616e67207472e1bb8d6e672c2074696e682074e1babf2c20c491e1babf6e206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93207468e1bb83207468616f206ec4836e6720c491e1bb996e672c206368c3ba6e672074c3b4692074e1bbb12068c3a06f206cc3a020c49169e1bb836d20c491e1babf6e206cc3bd2074c6b0e1bb9f6e672063686f206e68e1bbaf6e672061692079c3aa75207468c3ad6368207468e1bb9d69206769616e2076c3a02073e1bbb120686fc3a06e2068e1baa36f2074726f6e672074e1bbab6e6720636869207469e1babf742e3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e53e1baa36e205068e1baa96d20486f743c62723ec490e1bb936e672048e1bb93204e616d3a204e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93206de1baa16e68206de1babd2c206ce1bb8b6368206cc3a36d2076c3a020c491e1baa7792070686f6e672063c3a163682e2054e1bbab20746869e1babf74206be1babf2063e1bb9520c49169e1bb836e20c491e1babf6e206e68e1bbaf6e672073e1baa36e207068e1baa96d206869e1bb876e20c491e1baa1692c2074e1baa5742063e1baa320c491e1bb8175206d616e6720c491e1babf6e2076e1babb20c491e1bab9702076c6b0e1bba374207468e1bb9d69206769616e2e3c62723ec490e1bb936e672048e1bb93204ee1bbaf3a20c490e1bb936e672068e1bb93206ee1bbaf2074696e682074e1babf2c207468616e68206ce1bb8b63682c2076e1bb9b692063c3a16320636869207469e1babf7420c491c6b0e1bba363206368c4836d206368c3ba742074e1bb89206de1bb892c206cc3a06d2074c3b46e206cc3aa6e2076e1babb20c491e1bab9702063e1bba7612062e1baa16e2e204368e1bb8d6e206e676179206de1bb997420636869e1babf6320c491e1bb936e672068e1bb93207068c3b92068e1bba3702063686f2063c3a1632064e1bb8b7020c491e1bab763206269e1bb87742e3c62723ec490e1bb936e672048e1bb93205468e1bb83205468616f3a20c490c6b0e1bba36320746869e1babf74206be1babf2063686f206e68e1bbaf6e672061692079c3aa75207468c3ad63682073e1bbb1206ec4836e6720c491e1bb996e672076c3a0206b68e1bb8f65206b686fe1baaf6e2c206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb93207468e1bb83207468616f2062e1bb816e2062e1bb892073e1babd20c491e1bb936e672068c3a06e682063c3b96e672062e1baa16e2074726f6e67206de1bb8d6920686fe1baa17420c491e1bb996e672e3c62723e54e1baa1692053616f204368e1bb8d6e2046617368696f6e2057617463682053746f72653f3c62723e53e1baa36e205068e1baa96d204368c3ad6e682048c3a36e673a204368c3ba6e672074c3b4692063616d206be1babf742063756e672063e1baa5702063c3a163206de1baab7520c491e1bb936e672068e1bb93206368c3ad6e682068c3a36e672074e1bbab206e68e1bbaf6e67207468c6b0c6a16e67206869e1bb8775206ee1bb9569207469e1babf6e672c20c491e1baa36d2062e1baa36f206368e1baa574206cc6b0e1bba36e672076c3a02074c3ad6e682078c3a163207468e1bbb1632e3c62723e4769c3a12043e1baa32048e1bba370204cc3bd3a2046617368696f6e2057617463682053746f72652063756e672063e1baa570206e68e1bbaf6e6720636869e1babf6320c491e1bb936e672068e1bb932063616f2063e1baa5702076e1bb9b69206de1bba963206769c3a1207068e1baa369206368c4836e672c207068c3b92068e1bba3702076e1bb9b69206de1bb8d69206e67c3a26e2073c3a163682e3c62723e4d69e1bb856e205068c3ad204769616f2048c3a06e673a204368c3ba6e672074c3b4692063756e672063e1baa5702064e1bb8b63682076e1bba5206769616f2068c3a06e67206d69e1bb856e207068c3ad2074726f6e67207068e1baa16d20766920746fc3a06e207175e1bb91632063686f2074e1baa5742063e1baa32063c3a16320c491c6a16e2068c3a06e672e20c490e1baa36d2062e1baa36f2062e1baa16e206e68e1baad6e20c491c6b0e1bba3632073e1baa36e207068e1baa96d2074726f6e67207468e1bb9d69206769616e206e68616e68206e68e1baa5742e3c62723e4368e1babf20c490e1bb992042e1baa36f2048c3a06e683a204de1bb8d692073e1baa36e207068e1baa96d20c491e1bb817520c49169206bc3a86d2076e1bb9b69206368e1babf20c491e1bb992062e1baa36f2068c3a06e68206368c3ad6e682068c3a36e672c206d616e67206ce1baa1692073e1bbb12079c3aa6e2074c3a26d20747579e1bb877420c491e1bb91692063686f206b68c3a163682068c3a06e672e3c62723e4b68c3a16d205068c3a12043c3a1632042e1bb992053c6b0752054e1baad70205468e1bb9d69205472616e673c62723e4368c3ba6e672074c3b469206c75c3b46e2063e1baad70206e68e1baad742063c3a1632062e1bb992073c6b0752074e1baad70206de1bb9b692c206d616e6720c491e1babf6e206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb932068e1bba370207468e1bb9d69207472616e672076c3a02062e1baaf74206be1bb8b702078752068c6b0e1bb9b6e672e2048c3a379206b68c3a16d207068c3a1206e6761792063c3a1632062e1bb992073c6b0752074e1baad702064c3a06e68207269c3aa6e672063686f2062e1baa16e2c206769c3ba702062e1baa16e206c75c3b46e2074e1bbb12074696e2076c3a0206ee1bb95692062e1baad742074726f6e67206de1bb8d6920686fc3a06e2063e1baa36e682e3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e42e1bb992053c6b0752054e1baad70204de1bb9b69204e68e1baa5743a2043e1baad70206e68e1baad74206e68e1bbaf6e67206de1baab7520c491e1bb936e672068e1bb93206de1bb9b69207261206de1baaf742074e1bbab2063c3a163207468c6b0c6a16e67206869e1bb87752064616e68207469e1babf6e672e3c62723ec490e1bb936e672048e1bb932043616f2043e1baa5703a2043c3a163206de1baab7520c491e1bb936e672068e1bb932073616e67207472e1bb8d6e672076c3a020c491e1bab36e672063e1baa5702c207068c3b92068e1bba3702076e1bb9b69206e68e1bbaf6e672064e1bb8b70207175616e207472e1bb8d6e6720686fe1bab763206e68e1bbaf6e672061692079c3aa75207468c3ad63682073e1bbb12074696e682074e1babf2e3c62723ec490e1bb936e672048e1bb93205468e1bb9d69205472616e673a2043c3a163206de1baab7520c491e1bb936e672068e1bb9320c491c6b0e1bba36320746869e1babf74206be1babf20c491e1bb996320c491c3a16f2c2076e1bb9b69206e68e1bbaf6e6720636869207469e1babf742074e1bb89206de1bb892c206d616e6720c491e1babf6e2076e1babb20c491e1bab970207468752068c3ba742076c3a02063c3a12074c3ad6e682e3c62723ec6af7520c490c3a36920c490e1bab763204269e1bb87743c62723e4769e1baa36d204769c3a1204ce1bb9b6e3a204e68e1baad6e206e67617920c6b07520c491c3a3692068e1baa5702064e1baab6e2076e1bb9b692063c3a163206368c6b0c6a16e67207472c3ac6e68206769e1baa36d206769c3a12c206b687579e1babf6e206dc3a36920c491e1bab763206269e1bb8774207468656f206dc3b9612e2048c3a379207468656f2064c3b569207472616e67206368e1bba720c491e1bb83206b68c3b46e672062e1bb8f206ce1bba1206e68e1bbaf6e67206368c6b0c6a16e67207472c3ac6e6820686f74213c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e4d756120312054e1bab76e6720313a20c490e1bbab6e672062e1bb8f206ce1bba1206368c6b0c6a16e67207472c3ac6e68206b687579e1babf6e206dc3a369206d756120312074e1bab76e6720312063e1bbb163206be1bbb32068e1baa5702064e1baab6e2074e1baa1692046617368696f6e2057617463682053746f7265213c62723e5175c3a02054e1bab76e67204bc3a86d3a204b6869206d756120c491e1bb936e672068e1bb932074e1baa1692063e1bbad612068c3a06e672c2062e1baa16e2073e1babd206e68e1baad6e20c491c6b0e1bba3632063c3a163207068e1baa76e207175c3a020c491e1bb996320c491c3a16f2c2067c3b370207068e1baa76e206cc3a06d2074c4836e67206769c3a1207472e1bb8b206dc3b36e207175c3a02063e1bba7612062e1baa16e2e3c62723e4368c4836d2053c3b363204b68c3a163682048c3a06e672054e1baad6e2054c3a26d3c62723e46617368696f6e2057617463682053746f7265206c75c3b46e20636f69206b68c3a163682068c3a06e67206cc3a0207472e1bb8d6e672074c3a26d2c2076c3a0206368c3ba6e672074c3b4692063616d206be1babf74206d616e6720c491e1babf6e2064e1bb8b63682076e1bba5206368c4836d2073c3b363206b68c3a163682068c3a06e672074e1bb9174206e68e1baa5742e204ee1babf752062e1baa16e2063c3b32062e1baa574206be1bbb32063c3a2752068e1bb8f6920686179207468e1baaf63206de1baaf63206ec3a06f2076e1bb812073e1baa36e207068e1baa96d2c20c491c6a16e2068c3a06e67206861792064e1bb8b63682076e1bba52c20c491e1bbab6e67206e67e1baa76e206e67e1baa169206c69c3aa6e2068e1bb872076e1bb9b69206368c3ba6e672074c3b469207175613a3c2f703e0d0a3c70207374796c653d22746578742d616c69676e3a206a7573746966793b223e486f746c696e653a205b53e1bb9120c49169e1bb876e2074686fe1baa1695d3c62723e456d61696c3a205b456d61696c206c69c3aa6e2068e1bb875d3c62723e4c69766520436861743a2054e1baa169207472616e672077656220c491e1bb83206769e1baa36920c491c3a170207468e1baaf63206de1baaf63206e68616e68206368c3b36e672e3c62723ec490e1bab774204d7561204e6761793c62723e48c3a379206368e1bb8d6e206e67617920636869e1babf6320c491e1bb936e672068e1bb93206dc3a02062e1baa16e2079c3aa75207468c3ad63682076c3a0206cc3a06d20c491e1bab970207468c3aa6d2063686f2070686f6e672063c3a163682063e1bba761206dc3ac6e682e204368c3ba6e672074c3b4692073e1babd206769616f2073e1baa36e207068e1baa96d20c491e1babf6e2074e1baad6e207461792062e1baa16e2076e1bb9b692064e1bb8b63682076e1bba5206769616f2068c3a06e67206e68616e68206368c3b36e672076c3a02062e1baa36f206de1baad742e3c2f703e223b733a343a22626f6479223b733a303a22223b733a363a22696d61676573223b733a3137333a227b22696d6167655f696e74726f223a22222c22696d6167655f696e74726f5f616c74223a22222c22666c6f61745f696e74726f223a22222c22696d6167655f696e74726f5f63617074696f6e223a22222c22696d6167655f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f616c74223a22222c22666c6f61745f66756c6c74657874223a22222c22696d6167655f66756c6c746578745f63617074696f6e223a22227d223b733a353a226361746964223b693a323b733a31303a22637265617465645f6279223b693a33323b733a31363a22637265617465645f62795f616c696173223b733a303a22223b733a383a226d6f646966696564223b733a31393a22323032342d31322d31382030393a33363a3030223b733a31313a226d6f6469666965645f6279223b693a33323b733a363a22706172616d73223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a38363a7b733a31343a2261727469636c655f6c61796f7574223b733a393a225f3a64656661756c74223b733a31303a2273686f775f7469746c65223b733a313a2231223b733a31313a226c696e6b5f7469746c6573223b733a313a2231223b733a31303a2273686f775f696e74726f223b733a313a2231223b733a31393a22696e666f5f626c6f636b5f706f736974696f6e223b733a313a2230223b733a32313a22696e666f5f626c6f636b5f73686f775f7469746c65223b733a313a2231223b733a31333a2273686f775f63617465676f7279223b733a313a2231223b733a31333a226c696e6b5f63617465676f7279223b733a313a2231223b733a32303a2273686f775f706172656e745f63617465676f7279223b733a313a2230223b733a32303a226c696e6b5f706172656e745f63617465676f7279223b733a313a2230223b733a31373a2273686f775f6173736f63696174696f6e73223b733a313a2230223b733a353a22666c616773223b733a313a2231223b733a31313a2273686f775f617574686f72223b733a313a2231223b733a31313a226c696e6b5f617574686f72223b733a313a2230223b733a31363a2273686f775f6372656174655f64617465223b733a313a2230223b733a31363a2273686f775f6d6f646966795f64617465223b733a313a2230223b733a31373a2273686f775f7075626c6973685f64617465223b733a313a2231223b733a32303a2273686f775f6974656d5f6e617669676174696f6e223b733a313a2231223b733a31333a2273686f775f726561646d6f7265223b733a313a2231223b733a31393a2273686f775f726561646d6f72655f7469746c65223b733a313a2231223b733a31343a22726561646d6f72655f6c696d6974223b693a3130303b733a393a2273686f775f74616773223b733a313a2231223b733a31313a227265636f72645f68697473223b733a313a2231223b733a393a2273686f775f68697473223b733a313a2231223b733a31313a2273686f775f6e6f61757468223b733a313a2230223b733a31333a2275726c735f706f736974696f6e223b693a303b733a373a2263617074636861223b733a303a22223b733a32333a2273686f775f7075626c697368696e675f6f7074696f6e73223b733a313a2231223b733a32303a2273686f775f61727469636c655f6f7074696f6e73223b733a313a2231223b733a32373a2273686f775f636f6e6669677572655f656469745f6f7074696f6e73223b733a313a2231223b733a31363a2273686f775f7065726d697373696f6e73223b733a313a2231223b733a32323a2273686f775f6173736f63696174696f6e735f65646974223b733a313a2231223b733a31323a22736176655f686973746f7279223b733a313a2231223b733a31333a22686973746f72795f6c696d6974223b693a31303b733a32353a2273686f775f75726c735f696d616765735f66726f6e74656e64223b733a313a2230223b733a32343a2273686f775f75726c735f696d616765735f6261636b656e64223b733a313a2231223b733a373a2274617267657461223b693a303b733a373a2274617267657462223b693a303b733a373a2274617267657463223b693a303b733a31313a22666c6f61745f696e74726f223b733a343a226c656674223b733a31343a22666c6f61745f66756c6c74657874223b733a343a226c656674223b733a31353a2263617465676f72795f6c61796f7574223b733a363a225f3a626c6f67223b733a31393a2273686f775f63617465676f72795f7469746c65223b733a313a2230223b733a31363a2273686f775f6465736372697074696f6e223b733a313a2230223b733a32323a2273686f775f6465736372697074696f6e5f696d616765223b733a313a2230223b733a383a226d61784c6576656c223b733a313a2231223b733a32313a2273686f775f656d7074795f63617465676f72696573223b733a313a2230223b733a31363a2273686f775f6e6f5f61727469636c6573223b733a313a2231223b733a33323a2273686f775f63617465676f72795f68656164696e675f7469746c655f74657874223b733a313a2231223b733a31363a2273686f775f7375626361745f64657363223b733a313a2231223b733a32313a2273686f775f6361745f6e756d5f61727469636c6573223b733a313a2230223b733a31333a2273686f775f6361745f74616773223b733a313a2231223b733a32313a2273686f775f626173655f6465736372697074696f6e223b733a313a2231223b733a31313a226d61784c6576656c636174223b733a323a222d31223b733a32353a2273686f775f656d7074795f63617465676f726965735f636174223b733a313a2230223b733a32303a2273686f775f7375626361745f646573635f636174223b733a313a2231223b733a32353a2273686f775f6361745f6e756d5f61727469636c65735f636174223b733a313a2231223b733a32303a226e756d5f6c656164696e675f61727469636c6573223b693a313b733a31383a22626c6f675f636c6173735f6c656164696e67223b733a303a22223b733a31383a226e756d5f696e74726f5f61727469636c6573223b693a343b733a31303a22626c6f675f636c617373223b733a303a22223b733a31313a226e756d5f636f6c756d6e73223b693a313b733a31383a226d756c74695f636f6c756d6e5f6f72646572223b733a313a2230223b733a393a226e756d5f6c696e6b73223b693a343b733a32343a2273686f775f73756263617465676f72795f636f6e74656e74223b733a313a2230223b733a31363a226c696e6b5f696e74726f5f696d616765223b733a313a2230223b733a32313a2273686f775f706167696e6174696f6e5f6c696d6974223b733a313a2231223b733a31323a2266696c7465725f6669656c64223b733a343a2268696465223b733a31333a2273686f775f68656164696e6773223b733a313a2231223b733a31343a226c6973745f73686f775f64617465223b733a313a2230223b733a31313a22646174655f666f726d6174223b733a303a22223b733a31343a226c6973745f73686f775f68697473223b733a313a2231223b733a31363a226c6973745f73686f775f617574686f72223b733a313a2231223b733a31313a22646973706c61795f6e756d223b733a323a223130223b733a31313a226f7264657262795f707269223b733a353a226f72646572223b733a31313a226f7264657262795f736563223b733a353a227264617465223b733a31303a226f726465725f64617465223b733a393a227075626c6973686564223b733a31353a2273686f775f706167696e6174696f6e223b733a313a2232223b733a32333a2273686f775f706167696e6174696f6e5f726573756c7473223b733a313a2231223b733a31333a2273686f775f6665617475726564223b733a343a2273686f77223b733a31343a2273686f775f666565645f6c696e6b223b733a313a2231223b733a31323a22666565645f73756d6d617279223b733a313a2230223b733a31383a22666565645f73686f775f726561646d6f7265223b733a313a2230223b733a373a227365665f696473223b693a313b733a32303a22637573746f6d5f6669656c64735f656e61626c65223b733a313a2231223b733a31363a22776f726b666c6f775f656e61626c6564223b733a313a2230223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a226d6574616b6579223b733a303a22223b733a383a226d65746164657363223b733a303a22223b733a383a226d65746164617461223b4f3a32343a224a6f6f6d6c615c52656769737472795c5265676973747279223a333a7b733a373a22002a0064617461223b4f3a383a22737464436c617373223a333a7b733a363a22726f626f7473223b733a303a22223b733a363a22617574686f72223b733a303a22223b733a363a22726967687473223b733a303a22223b7d733a31343a22002a00696e697469616c697a6564223b623a313b733a31323a22002a00736570617261746f72223b733a313a222e223b7d733a373a2276657273696f6e223b693a313b733a383a226f72646572696e67223b693a303b733a383a2263617465676f7279223b733a31333a22556e63617465676f7269736564223b733a393a226361745f7374617465223b693a313b733a31303a226361745f616363657373223b693a313b733a343a22736c7567223b733a31303a22353a7472616e672d6368223b733a373a22636174736c7567223b733a31353a22323a756e63617465676f7269736564223b733a363a22617574686f72223b733a373a226d7968756f6e67223b733a363a226c61796f7574223b733a373a2261727469636c65223b733a373a22636f6e74657874223b733a31393a22636f6d5f636f6e74656e742e61727469636c65223b733a31303a226d657461617574686f72223b4e3b7d693a343b4e3b693a353b613a353a7b693a313b613a333a7b693a303b733a353a227469746c65223b693a313b733a383a227375627469746c65223b693a323b733a323a226964223b7d693a323b613a323a7b693a303b733a373a2273756d6d617279223b693a313b733a343a22626f6479223b7d693a333b613a383a7b693a303b733a343a226d657461223b693a313b733a31303a226c6973745f7072696365223b693a323b733a31303a2273616c655f7072696365223b693a333b733a373a226d6574616b6579223b693a343b733a383a226d65746164657363223b693a353b733a31303a226d657461617574686f72223b693a363b733a363a22617574686f72223b693a373b733a31363a22637265617465645f62795f616c696173223b7d693a343b613a323a7b693a303b733a343a2270617468223b693a313b733a353a22616c696173223b7d693a353b613a313a7b693a303b733a383a22636f6d6d656e7473223b7d7d693a363b733a313a222a223b693a373b4e3b693a383b4e3b693a393b733a31393a22323032342d31322d31382030393a33363a3030223b693a31303b4e3b693a31313b733a36333a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d353a7472616e672d63682663617469643d32223b693a31323b4e3b693a31333b733a31393a22323032342d31322d31382030393a33363a3030223b693a31343b693a313b693a31353b613a343a7b733a343a2254797065223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a2241727469636c65223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a363b7d7d733a363a22417574686f72223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a373a226d7968756f6e67223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a383b7d7d733a383a2243617465676f7279223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a31333a22556e63617465676f7269736564223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a313b733a323a226964223b693a31363b7d7d733a383a224c616e6775616765223b613a313a7b693a303b4f3a383a22737464436c617373223a363a7b733a353a227469746c65223b733a313a222a223b733a353a227374617465223b693a313b733a363a22616363657373223b693a313b733a383a226c616e6775616765223b733a313a222a223b733a363a226e6573746564223b623a303b733a323a226964223b693a353b7d7d7d693a31363b733a31313a225452414e47204348e1bba6223b693a31373b693a333b693a31383b733a34363a22696e6465782e7068703f6f7074696f6e3d636f6d5f636f6e74656e7426766965773d61727469636c652669643d35223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_links_terms`
--

CREATE TABLE `d6gvw_finder_links_terms` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_links_terms`
--

INSERT INTO `d6gvw_finder_links_terms` (`link_id`, `term_id`, `weight`) VALUES
(1, 1, 0.17),
(1, 2, 0.2666),
(2, 2, 0.2666),
(7, 2, 0.2666),
(8, 2, 0.2666),
(7, 3, 0.18669),
(1, 3, 0.45339),
(1, 4, 0.1334),
(2, 4, 0.1334),
(6, 4, 0.1334),
(1, 5, 0.2666),
(2, 5, 0.2666),
(7, 5, 0.2666),
(8, 5, 0.2666),
(1, 6, 0.34),
(8, 6, 0.34),
(7, 6, 0.48),
(2, 8, 0.17),
(9, 8, 0.28),
(2, 9, 0.56004),
(3, 9, 0.56004),
(6, 9, 0.56004),
(7, 9, 0.56004),
(9, 9, 0.56004),
(2, 10, 0.18669),
(3, 10, 0.18669),
(6, 10, 0.18669),
(7, 10, 0.18669),
(3, 11, 0.17),
(3, 12, 0.1334),
(4, 12, 0.1334),
(6, 12, 0.1334),
(3, 13, 0.49321),
(4, 13, 0.49321),
(5, 13, 0.49321),
(9, 14, 0.14),
(4, 14, 0.74),
(3, 14, 0.88),
(3, 15, 0.2666),
(4, 15, 0.2666),
(6, 15, 0.2666),
(4, 16, 0.45339),
(2, 16, 0.64008),
(3, 16, 0.64008),
(6, 16, 0.64008),
(9, 16, 4.10718),
(3, 18, 0.09331),
(2, 18, 0.31992),
(6, 18, 0.31992),
(9, 18, 1.95951),
(4, 19, 0.17),
(5, 20, 0.34),
(5, 21, 0.98679),
(5, 22, 0.49321),
(6, 23, 0.17),
(6, 24, 0.1334),
(9, 25, 0.18662),
(6, 25, 0.31992),
(7, 26, 0.17),
(7, 27, 0.56661),
(8, 27, 0.56661),
(7, 28, 0.2666),
(8, 28, 0.2666),
(8, 29, 0.34),
(9, 30, 0.56007),
(2, 30, 0.64008),
(9, 31, 0.42),
(2, 31, 0.48),
(9, 32, 0.17),
(9, 33, 0.27993),
(9, 34, 0.56007),
(9, 35, 1.54),
(9, 36, 0.7),
(9, 37, 0.14),
(9, 38, 0.14),
(9, 39, 0.14),
(9, 40, 0.14),
(9, 41, 0.09331),
(9, 42, 0.18662),
(9, 43, 0.55986),
(9, 44, 0.28),
(9, 45, 0.28),
(9, 46, 0.2666),
(9, 47, 0.18669),
(9, 48, 0.42),
(9, 49, 1.16655),
(9, 50, 1.12),
(9, 51, 0.18669),
(9, 52, 0.69993),
(9, 53, 0.46662),
(9, 54, 1.86648),
(9, 55, 0.18669),
(9, 56, 0.56007),
(9, 57, 0.23331),
(9, 58, 0.84),
(9, 59, 0.18669),
(9, 60, 0.28),
(9, 61, 0.56007),
(9, 62, 0.48),
(9, 63, 0.14),
(9, 64, 0.56007),
(9, 65, 0.09331),
(9, 66, 1.68),
(9, 67, 0.56007),
(9, 68, 0.14),
(9, 69, 0.09331),
(9, 70, 0.18669),
(9, 71, 0.27993),
(9, 72, 0.18669),
(9, 73, 0.84),
(9, 74, 0.14),
(9, 75, 0.28),
(9, 76, 0.09331),
(9, 77, 0.42),
(9, 78, 0.14),
(9, 79, 0.14),
(9, 80, 0.18669),
(9, 81, 0.18669),
(9, 82, 0.14),
(9, 83, 0.18669),
(9, 84, 0.28),
(9, 85, 0.74676),
(9, 86, 0.28),
(9, 87, 0.46662),
(9, 88, 1.96014),
(9, 89, 0.56007),
(9, 90, 0.74676),
(9, 91, 0.7),
(9, 92, 0.18669),
(9, 93, 0.18669),
(9, 94, 0.37338),
(9, 95, 0.14),
(9, 96, 0.28),
(9, 97, 0.18669),
(9, 98, 0.37338),
(9, 99, 0.28),
(9, 100, 0.32669),
(9, 101, 0.37338),
(9, 102, 0.18669),
(9, 103, 0.18669),
(9, 104, 1.8669),
(9, 105, 0.56007),
(9, 106, 0.14),
(9, 107, 0.56007),
(9, 108, 0.42),
(9, 109, 0.14),
(9, 110, 0.23331),
(9, 111, 0.14),
(9, 112, 0.28),
(9, 113, 0.18662),
(9, 114, 0.14),
(9, 115, 0.84),
(9, 116, 0.14),
(9, 117, 0.23331),
(9, 118, 0.56),
(9, 119, 0.93324),
(9, 120, 0.56007),
(9, 121, 0.23331),
(9, 122, 0.18669),
(9, 123, 0.28),
(9, 124, 0.27993),
(9, 125, 0.28),
(9, 126, 0.14),
(9, 127, 0.18662),
(9, 128, 0.18669),
(9, 129, 0.37338),
(9, 130, 0.56007),
(9, 131, 0.18662),
(9, 132, 0.42),
(9, 133, 0.14),
(9, 134, 0.14),
(9, 135, 0.18662),
(9, 136, 0.23331),
(9, 137, 0.14),
(9, 138, 0.37338),
(9, 139, 0.14),
(9, 140, 0.18662),
(9, 141, 1.12014),
(9, 142, 0.37338),
(9, 143, 0.56),
(9, 144, 0.09331),
(9, 145, 0.28),
(9, 146, 0.18669),
(9, 147, 0.14),
(9, 148, 0.14),
(9, 149, 0.18669),
(9, 150, 0.98),
(9, 151, 0.14),
(9, 152, 0.28),
(9, 153, 0.14),
(9, 154, 0.09331),
(9, 155, 0.18662),
(9, 156, 0.7),
(9, 157, 0.14),
(9, 158, 0.56),
(9, 159, 0.14),
(9, 160, 0.18669),
(9, 161, 0.93345),
(9, 162, 0.18669),
(9, 163, 0.18669),
(9, 164, 0.18669),
(9, 165, 0.69993),
(9, 166, 0.14),
(9, 167, 0.74676),
(9, 168, 0.56007),
(9, 169, 0.37338),
(9, 170, 3.49965),
(9, 171, 0.14),
(9, 172, 0.37338),
(9, 173, 0.14),
(9, 174, 0.28),
(9, 175, 0.93324),
(9, 176, 0.42),
(9, 177, 0.28),
(9, 178, 0.56),
(9, 179, 0.14),
(9, 180, 0.18669),
(9, 181, 0.18669),
(9, 182, 0.37338),
(9, 183, 1.30683),
(9, 184, 0.14),
(9, 185, 0.18669),
(9, 186, 0.42),
(9, 187, 0.18669),
(9, 188, 0.09331),
(9, 189, 0.23331),
(9, 190, 0.37338),
(9, 191, 0.14),
(9, 192, 1.39986),
(9, 193, 0.18669),
(9, 194, 0.28),
(9, 195, 0.84),
(9, 196, 0.98),
(9, 197, 0.27993),
(9, 198, 0.09331),
(9, 199, 0.37324),
(9, 200, 0.14),
(9, 201, 0.23331),
(9, 202, 0.37338),
(9, 203, 0.69993),
(9, 204, 0.23331),
(9, 205, 0.14),
(9, 206, 0.18669),
(9, 207, 0.93324),
(9, 208, 0.56),
(9, 209, 0.37338),
(9, 210, 1.30683),
(9, 211, 0.18669),
(9, 212, 0.14),
(9, 213, 0.56007),
(9, 214, 0.46662),
(9, 215, 0.56007),
(9, 216, 0.18669),
(9, 217, 2.63307),
(9, 218, 1.16655),
(9, 219, 0.69993),
(9, 220, 0.14),
(9, 221, 0.93324),
(9, 222, 0.23331),
(9, 223, 0.42),
(9, 224, 0.37338),
(9, 225, 1.12),
(9, 226, 0.14),
(9, 227, 0.18669),
(9, 228, 0.23331),
(9, 229, 0.7),
(9, 230, 0.28),
(9, 231, 0.28),
(9, 232, 0.84),
(9, 233, 0.56007),
(9, 234, 0.27993),
(9, 235, 0.18662),
(9, 236, 0.14),
(9, 237, 0.37324),
(9, 238, 0.18669),
(9, 239, 0.18662),
(9, 240, 0.09331),
(9, 241, 1.11972),
(9, 242, 0.18669),
(9, 243, 0.27993),
(9, 244, 0.09331),
(9, 245, 1.54),
(9, 246, 0.37324),
(9, 247, 1.39986),
(9, 248, 0.14),
(9, 249, 0.09331),
(9, 250, 0.14),
(9, 251, 0.14),
(9, 252, 0.56),
(9, 253, 0.09331),
(9, 254, 0.09331),
(9, 255, 0.18669),
(9, 256, 0.18669),
(9, 257, 0.18669),
(9, 258, 0.28),
(9, 259, 0.14),
(9, 260, 0.28),
(9, 261, 0.28),
(9, 262, 0.93345),
(9, 263, 0.14),
(9, 264, 0.28),
(9, 265, 0.14),
(9, 266, 0.18669),
(9, 267, 0.42),
(9, 268, 0.14),
(9, 269, 0.56),
(9, 270, 1.4),
(9, 271, 0.28),
(9, 272, 0.18662),
(9, 273, 0.14),
(9, 274, 0.18662),
(9, 275, 0.28),
(9, 276, 0.56007),
(9, 277, 0.37338),
(9, 278, 0.18662);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_logging`
--

CREATE TABLE `d6gvw_finder_logging` (
  `searchterm` varchar(255) NOT NULL DEFAULT '',
  `md5sum` varchar(32) NOT NULL DEFAULT '',
  `query` blob NOT NULL,
  `hits` int(11) NOT NULL DEFAULT 1,
  `results` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_taxonomy`
--

CREATE TABLE `d6gvw_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(400) NOT NULL DEFAULT '',
  `state` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `access` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_taxonomy`
--

INSERT INTO `d6gvw_finder_taxonomy` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `state`, `access`, `language`) VALUES
(1, 0, 0, 27, 0, '', 'ROOT', 'root', 1, 1, '*'),
(2, 1, 1, 6, 1, 'type', 'Type', 'type', 1, 1, '*'),
(3, 2, 2, 3, 2, 'type/category', 'Category', 'category', 1, 1, '*'),
(4, 1, 7, 10, 1, 'language', 'Language', 'language', 1, 1, '*'),
(5, 4, 8, 9, 2, 'language/4086f6336014c75439f87cbda42d9c51', '*', '4086f6336014c75439f87cbda42d9c51', 1, 1, '*'),
(6, 2, 4, 5, 2, 'type/article', 'Article', 'article', 1, 1, '*'),
(7, 1, 11, 14, 1, 'author', 'Author', 'author', 1, 1, '*'),
(8, 7, 12, 13, 2, 'author/myhuong', 'myhuong', 'myhuong', 1, 1, '*'),
(9, 1, 15, 26, 1, 'category', 'Category', 'category', 1, 1, '*'),
(10, 9, 16, 17, 2, 'category/ph-ki-n', 'PHỤ KIỆN', 'ph-ki-n', 1, 1, '*'),
(12, 9, 18, 19, 2, 'category/d-ng-ho-nam', 'ĐỒNG HO NAM', 'd-ng-ho-nam', 1, 1, '*'),
(13, 9, 20, 21, 2, 'category/dong-ho-nu', 'DONG HO NU', 'dong-ho-nu', 1, 1, '*'),
(15, 9, 22, 23, 2, 'category/ph-ki-n1', 'Phụ kiện1', 'ph-ki-n1', 1, 1, '*'),
(16, 9, 24, 25, 2, 'category/uncategorised', 'Uncategorised', 'uncategorised', 1, 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_taxonomy_map`
--

CREATE TABLE `d6gvw_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_taxonomy_map`
--

INSERT INTO `d6gvw_finder_taxonomy_map` (`link_id`, `node_id`) VALUES
(1, 3),
(1, 5),
(2, 5),
(2, 6),
(2, 8),
(2, 10),
(3, 5),
(3, 6),
(3, 8),
(3, 12),
(4, 3),
(4, 5),
(5, 3),
(5, 5),
(6, 5),
(6, 6),
(6, 8),
(6, 13),
(7, 5),
(7, 6),
(7, 8),
(7, 15),
(8, 3),
(8, 5),
(9, 5),
(9, 6),
(9, 8),
(9, 16);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_terms`
--

CREATE TABLE `d6gvw_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 0,
  `soundex` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `links` int(11) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_terms`
--

INSERT INTO `d6gvw_finder_terms` (`term_id`, `term`, `stem`, `common`, `phrase`, `weight`, `soundex`, `links`, `language`) VALUES
(1, '8', '8', 0, 0, 0.1, '', 1, '*'),
(2, 'ki', 'ki', 0, 0, 0.1333, 'K000', 7, '*'),
(3, 'kiện', 'kiện', 0, 0, 0.2667, 'K500', 4, '*'),
(4, 'n', 'n', 0, 0, 0.0667, 'N000', 5, '*'),
(5, 'ph', 'ph', 0, 0, 0.1333, 'P000', 7, '*'),
(6, 'phụ', 'phụ', 0, 0, 0.2, 'P000', 6, '*'),
(8, '1', '1', 0, 0, 0.1, '', 4, '*'),
(9, 'myhuong', 'myhuong', 0, 0, 0.4667, 'M200', 11, '*'),
(10, 'shop', 'shop', 0, 0, 0.2667, 'S100', 8, '*'),
(11, '2', '2', 0, 0, 0.1, '', 4, '*'),
(12, 'd', 'd', 0, 0, 0.0667, 'D000', 6, '*'),
(13, 'ho', 'ho', 0, 0, 0.1333, 'H000', 6, '*'),
(14, 'nam', 'nam', 0, 0, 0.2, 'N000', 6, '*'),
(15, 'ng', 'ng', 0, 0, 0.1333, 'N200', 6, '*'),
(16, 'đồng', 'đồng', 0, 0, 0.2667, 'đ520', 9, '*'),
(18, 'hồ', 'hồ', 0, 0, 0.1333, 'H000', 7, '*'),
(19, '9', '9', 0, 0, 0.1, '', 1, '*'),
(20, '10', '10', 0, 0, 0.2, '', 1, '*'),
(21, 'dong', 'dong', 0, 0, 0.2667, 'D520', 1, '*'),
(22, 'nu', 'nu', 0, 0, 0.1333, 'N000', 1, '*'),
(23, '3', '3', 0, 0, 0.1, '', 1, '*'),
(24, 'h', 'h', 0, 0, 0.0667, 'H000', 1, '*'),
(25, 'nữ', 'nữ', 0, 0, 0.1333, 'N000', 2, '*'),
(26, '4', '4', 0, 0, 0.1, '', 2, '*'),
(27, 'kiện1', 'kiện1', 0, 0, 0.3333, 'K500', 3, '*'),
(28, 'n1', 'n1', 0, 0, 0.1333, 'N000', 3, '*'),
(29, '11', '11', 0, 0, 0.2, '', 1, '*'),
(30, 'thao', 'thao', 0, 0, 0.2667, 'T000', 3, '*'),
(31, 'thể', 'thể', 0, 0, 0.2, 'T000', 3, '*'),
(32, '5', '5', 0, 0, 0.1, '', 1, '*'),
(33, 'ai', 'ai', 0, 0, 0.1333, 'A000', 1, '*'),
(34, 'biệt', 'biệt', 0, 0, 0.2667, 'B300', 1, '*'),
(35, 'bạn', 'bạn', 0, 0, 0.2, 'B500', 1, '*'),
(36, 'bảo', 'bảo', 0, 0, 0.2, 'B000', 1, '*'),
(37, 'bất', 'bất', 0, 0, 0.2, 'B300', 1, '*'),
(38, 'bật', 'bật', 0, 0, 0.2, 'B300', 1, '*'),
(39, 'bắt', 'bắt', 0, 0, 0.2, 'B300', 1, '*'),
(40, 'bền', 'bền', 0, 0, 0.2, 'B500', 1, '*'),
(41, 'bỉ', 'bỉ', 0, 0, 0.1333, 'B000', 1, '*'),
(42, 'bỏ', 'bỏ', 0, 0, 0.1333, 'B000', 1, '*'),
(43, 'bộ', 'bộ', 0, 0, 0.1333, 'B000', 1, '*'),
(44, 'cam', 'cam', 0, 0, 0.2, 'C500', 1, '*'),
(45, 'cao', 'cao', 0, 0, 0.2, 'C000', 1, '*'),
(46, 'ch', 'ch', 0, 0, 0.1333, 'C000', 1, '*'),
(47, 'chat', 'chat', 0, 0, 0.2667, 'C300', 1, '*'),
(48, 'chi', 'chi', 0, 0, 0.2, 'C000', 1, '*'),
(49, 'chiếc', 'chiếc', 0, 0, 0.3333, 'C000', 1, '*'),
(50, 'cho', 'cho', 0, 0, 0.2, 'C000', 1, '*'),
(51, 'chào', 'chào', 0, 0, 0.2667, 'C000', 1, '*'),
(52, 'chính', 'chính', 0, 0, 0.3333, 'C500', 1, '*'),
(53, 'chóng', 'chóng', 0, 0, 0.3333, 'C520', 1, '*'),
(54, 'chúng', 'chúng', 0, 0, 0.3333, 'C520', 1, '*'),
(55, 'chút', 'chút', 0, 0, 0.2667, 'C300', 1, '*'),
(56, 'chăm', 'chăm', 0, 0, 0.2667, 'C500', 1, '*'),
(57, 'chăng', 'chăng', 0, 0, 0.3333, 'C520', 1, '*'),
(58, 'chương', 'chương', 0, 0, 0.4, 'C520', 1, '*'),
(59, 'chất', 'chất', 0, 0, 0.2667, 'C300', 1, '*'),
(60, 'chế', 'chế', 0, 0, 0.2, 'C000', 1, '*'),
(61, 'chọn', 'chọn', 0, 0, 0.2667, 'C500', 1, '*'),
(62, 'chủ', 'chủ', 0, 0, 0.2, 'C000', 1, '*'),
(63, 'coi', 'coi', 0, 0, 0.2, 'C000', 1, '*'),
(64, 'cung', 'cung', 0, 0, 0.2667, 'C520', 1, '*'),
(65, 'cá', 'cá', 0, 0, 0.1333, 'C000', 1, '*'),
(66, 'các', 'các', 0, 0, 0.2, 'C000', 1, '*'),
(67, 'cách', 'cách', 0, 0, 0.2667, 'C000', 1, '*'),
(68, 'câu', 'câu', 0, 0, 0.2, 'C000', 1, '*'),
(69, 'có', 'có', 0, 0, 0.1333, 'C000', 1, '*'),
(70, 'cùng', 'cùng', 0, 0, 0.2667, 'C520', 1, '*'),
(71, 'cả', 'cả', 0, 0, 0.1333, 'C000', 1, '*'),
(72, 'cảnh', 'cảnh', 0, 0, 0.2667, 'C500', 1, '*'),
(73, 'cấp', 'cấp', 0, 0, 0.2, 'C100', 1, '*'),
(74, 'cầu', 'cầu', 0, 0, 0.2, 'C000', 1, '*'),
(75, 'cập', 'cập', 0, 0, 0.2, 'C100', 1, '*'),
(76, 'cổ', 'cổ', 0, 0, 0.1333, 'C000', 1, '*'),
(77, 'của', 'của', 0, 0, 0.2, 'C000', 1, '*'),
(78, 'cửa', 'cửa', 0, 0, 0.2, 'C000', 1, '*'),
(79, 'cực', 'cực', 0, 0, 0.2, 'C000', 1, '*'),
(80, 'danh', 'danh', 0, 0, 0.2667, 'D500', 1, '*'),
(81, 'dành', 'dành', 0, 0, 0.2667, 'D500', 1, '*'),
(82, 'dõi', 'dõi', 0, 0, 0.2, 'D000', 1, '*'),
(83, 'dạng', 'dạng', 0, 0, 0.2667, 'D520', 1, '*'),
(84, 'dẫn', 'dẫn', 0, 0, 0.2, 'D500', 1, '*'),
(85, 'dịch', 'dịch', 0, 0, 0.2667, 'D200', 1, '*'),
(86, 'dịp', 'dịp', 0, 0, 0.2, 'D100', 1, '*'),
(87, 'email', 'email', 0, 0, 0.3333, 'E540', 1, '*'),
(88, 'fashion', 'fashion', 0, 0, 0.4667, 'F250', 1, '*'),
(89, 'gian', 'gian', 0, 0, 0.2667, 'G500', 1, '*'),
(90, 'giao', 'giao', 0, 0, 0.2667, 'G000', 1, '*'),
(91, 'giá', 'giá', 0, 0, 0.2, 'G000', 1, '*'),
(92, 'giúp', 'giúp', 0, 0, 0.2667, 'G100', 1, '*'),
(93, 'giải', 'giải', 0, 0, 0.2667, 'G000', 1, '*'),
(94, 'giảm', 'giảm', 0, 0, 0.2667, 'G500', 1, '*'),
(95, 'góp', 'góp', 0, 0, 0.2, 'G100', 1, '*'),
(96, 'hay', 'hay', 0, 0, 0.2, 'H000', 1, '*'),
(97, 'hiện', 'hiện', 0, 0, 0.2667, 'H500', 1, '*'),
(98, 'hiệu', 'hiệu', 0, 0, 0.2667, 'H000', 1, '*'),
(99, 'hot', 'hot', 0, 0, 0.2, 'H300', 1, '*'),
(100, 'hotline', 'hotline', 0, 0, 0.4667, 'H345', 1, '*'),
(101, 'hoàn', 'hoàn', 0, 0, 0.2667, 'H500', 1, '*'),
(102, 'hoạt', 'hoạt', 0, 0, 0.2667, 'H300', 1, '*'),
(103, 'hoặc', 'hoặc', 0, 0, 0.2667, 'H200', 1, '*'),
(104, 'hàng', 'hàng', 0, 0, 0.2667, 'H520', 1, '*'),
(105, 'hành', 'hành', 0, 0, 0.2667, 'H500', 1, '*'),
(106, 'hào', 'hào', 0, 0, 0.2, 'H000', 1, '*'),
(107, 'hãng', 'hãng', 0, 0, 0.2667, 'H520', 1, '*'),
(108, 'hãy', 'hãy', 0, 0, 0.2, 'H000', 1, '*'),
(109, 'hút', 'hút', 0, 0, 0.2, 'H300', 1, '*'),
(110, 'hướng', 'hướng', 0, 0, 0.3333, 'H520', 1, '*'),
(111, 'hảo', 'hảo', 0, 0, 0.2, 'H000', 1, '*'),
(112, 'hấp', 'hấp', 0, 0, 0.2, 'H100', 1, '*'),
(113, 'hệ', 'hệ', 0, 0, 0.1333, 'H000', 1, '*'),
(114, 'hỏi', 'hỏi', 0, 0, 0.2, 'H000', 1, '*'),
(115, 'hợp', 'hợp', 0, 0, 0.2, 'H100', 1, '*'),
(116, 'khi', 'khi', 0, 0, 0.2, 'K000', 1, '*'),
(117, 'khoắn', 'khoắn', 0, 0, 0.3333, 'K500', 1, '*'),
(118, 'khuyến', 'khuyến', 0, 0, 0.4, 'K500', 1, '*'),
(119, 'khách', 'khách', 0, 0, 0.3333, 'K000', 1, '*'),
(120, 'khám', 'khám', 0, 0, 0.2667, 'K500', 1, '*'),
(121, 'không', 'không', 0, 0, 0.3333, 'K520', 1, '*'),
(122, 'khỏe', 'khỏe', 0, 0, 0.2667, 'K000', 1, '*'),
(123, 'kèm', 'kèm', 0, 0, 0.2, 'K500', 1, '*'),
(124, 'kế', 'kế', 0, 0, 0.1333, 'K000', 1, '*'),
(125, 'kết', 'kết', 0, 0, 0.2, 'K300', 1, '*'),
(126, 'kịp', 'kịp', 0, 0, 0.2, 'K100', 1, '*'),
(127, 'kỳ', 'kỳ', 0, 0, 0.1333, 'K000', 1, '*'),
(128, 'live', 'live', 0, 0, 0.2667, 'L100', 1, '*'),
(129, 'liên', 'liên', 0, 0, 0.2667, 'L500', 1, '*'),
(130, 'luôn', 'luôn', 0, 0, 0.2667, 'L500', 1, '*'),
(131, 'là', 'là', 0, 0, 0.1333, 'L000', 1, '*'),
(132, 'làm', 'làm', 0, 0, 0.2, 'L500', 1, '*'),
(133, 'lãm', 'lãm', 0, 0, 0.2, 'L500', 1, '*'),
(134, 'lên', 'lên', 0, 0, 0.2, 'L500', 1, '*'),
(135, 'lý', 'lý', 0, 0, 0.1333, 'L000', 1, '*'),
(136, 'lượng', 'lượng', 0, 0, 0.3333, 'L520', 1, '*'),
(137, 'lại', 'lại', 0, 0, 0.2, 'L000', 1, '*'),
(138, 'lịch', 'lịch', 0, 0, 0.2667, 'L200', 1, '*'),
(139, 'lớn', 'lớn', 0, 0, 0.2, 'L500', 1, '*'),
(140, 'lỡ', 'lỡ', 0, 0, 0.1333, 'L000', 1, '*'),
(141, 'mang', 'mang', 0, 0, 0.2667, 'M200', 1, '*'),
(142, 'miễn', 'miễn', 0, 0, 0.2667, 'M000', 1, '*'),
(143, 'mua', 'mua', 0, 0, 0.2, 'M000', 1, '*'),
(144, 'mà', 'mà', 0, 0, 0.1333, 'M000', 1, '*'),
(145, 'mãi', 'mãi', 0, 0, 0.2, 'M000', 1, '*'),
(146, 'mình', 'mình', 0, 0, 0.2667, 'M000', 1, '*'),
(147, 'món', 'món', 0, 0, 0.2, 'M000', 1, '*'),
(148, 'mùa', 'mùa', 0, 0, 0.2, 'M000', 1, '*'),
(149, 'mạnh', 'mạnh', 0, 0, 0.2667, 'M000', 1, '*'),
(150, 'mẫu', 'mẫu', 0, 0, 0.2, 'M000', 1, '*'),
(151, 'mật', 'mật', 0, 0, 0.2, 'M300', 1, '*'),
(152, 'mắc', 'mắc', 0, 0, 0.2, 'M200', 1, '*'),
(153, 'mắt', 'mắt', 0, 0, 0.2, 'M300', 1, '*'),
(154, 'mẽ', 'mẽ', 0, 0, 0.1333, 'M000', 1, '*'),
(155, 'mỉ', 'mỉ', 0, 0, 0.1333, 'M000', 1, '*'),
(156, 'mọi', 'mọi', 0, 0, 0.2, 'M000', 1, '*'),
(157, 'một', 'một', 0, 0, 0.2, 'M300', 1, '*'),
(158, 'mới', 'mới', 0, 0, 0.2, 'M000', 1, '*'),
(159, 'mức', 'mức', 0, 0, 0.2, 'M200', 1, '*'),
(160, 'mừng', 'mừng', 0, 0, 0.2667, 'M200', 1, '*'),
(161, 'ngay', 'ngay', 0, 0, 0.2667, 'N200', 1, '*'),
(162, 'ngân', 'ngân', 0, 0, 0.2667, 'N250', 1, '*'),
(163, 'ngại', 'ngại', 0, 0, 0.2667, 'N200', 1, '*'),
(164, 'ngần', 'ngần', 0, 0, 0.2667, 'N250', 1, '*'),
(165, 'nhanh', 'nhanh', 0, 0, 0.3333, 'N000', 1, '*'),
(166, 'nhu', 'nhu', 0, 0, 0.2, 'N000', 1, '*'),
(167, 'nhất', 'nhất', 0, 0, 0.2667, 'N300', 1, '*'),
(168, 'nhận', 'nhận', 0, 0, 0.2667, 'N000', 1, '*'),
(169, 'nhật', 'nhật', 0, 0, 0.2667, 'N300', 1, '*'),
(170, 'những', 'những', 0, 0, 0.3333, 'N200', 1, '*'),
(171, 'nào', 'nào', 0, 0, 0.2, 'N000', 1, '*'),
(172, 'năng', 'năng', 0, 0, 0.2667, 'N200', 1, '*'),
(173, 'nếu', 'nếu', 0, 0, 0.2, 'N000', 1, '*'),
(174, 'nổi', 'nổi', 0, 0, 0.2, 'N000', 1, '*'),
(175, 'phong', 'phong', 0, 0, 0.3333, 'P520', 1, '*'),
(176, 'phá', 'phá', 0, 0, 0.2, 'P000', 1, '*'),
(177, 'phí', 'phí', 0, 0, 0.2, 'P000', 1, '*'),
(178, 'phù', 'phù', 0, 0, 0.2, 'P000', 1, '*'),
(179, 'phú', 'phú', 0, 0, 0.2, 'P000', 1, '*'),
(180, 'phạm', 'phạm', 0, 0, 0.2667, 'P500', 1, '*'),
(181, 'phải', 'phải', 0, 0, 0.2667, 'P000', 1, '*'),
(182, 'phần', 'phần', 0, 0, 0.2667, 'P500', 1, '*'),
(183, 'phẩm', 'phẩm', 0, 0, 0.2667, 'P500', 1, '*'),
(184, 'qua', 'qua', 0, 0, 0.2, 'Q000', 1, '*'),
(185, 'quan', 'quan', 0, 0, 0.2667, 'Q500', 1, '*'),
(186, 'quà', 'quà', 0, 0, 0.2, 'Q000', 1, '*'),
(187, 'quốc', 'quốc', 0, 0, 0.2667, 'Q000', 1, '*'),
(188, 'ra', 'ra', 0, 0, 0.1333, 'R000', 1, '*'),
(189, 'riêng', 'riêng', 0, 0, 0.3333, 'R520', 1, '*'),
(190, 'sang', 'sang', 0, 0, 0.2667, 'S520', 1, '*'),
(191, 'sao', 'sao', 0, 0, 0.2, 'S000', 1, '*'),
(192, 'store', 'store', 0, 0, 0.3333, 'S360', 1, '*'),
(193, 'sách', 'sách', 0, 0, 0.2667, 'S000', 1, '*'),
(194, 'sóc', 'sóc', 0, 0, 0.2, 'S000', 1, '*'),
(195, 'sưu', 'sưu', 0, 0, 0.2, 'S000', 1, '*'),
(196, 'sản', 'sản', 0, 0, 0.2, 'S500', 1, '*'),
(197, 'sẽ', 'sẽ', 0, 0, 0.1333, 'S000', 1, '*'),
(198, 'số', 'số', 0, 0, 0.1333, 'S000', 1, '*'),
(199, 'sự', 'sự', 0, 0, 0.1333, 'S000', 1, '*'),
(200, 'tay', 'tay', 0, 0, 0.2, 'T000', 1, '*'),
(201, 'thanh', 'thanh', 0, 0, 0.3333, 'T500', 1, '*'),
(202, 'theo', 'theo', 0, 0, 0.2667, 'T000', 1, '*'),
(203, 'thiết', 'thiết', 0, 0, 0.3333, 'T000', 1, '*'),
(204, 'thoại', 'thoại', 0, 0, 0.3333, 'T000', 1, '*'),
(205, 'thu', 'thu', 0, 0, 0.2, 'T000', 1, '*'),
(206, 'thêm', 'thêm', 0, 0, 0.2667, 'T500', 1, '*'),
(207, 'thích', 'thích', 0, 0, 0.3333, 'T200', 1, '*'),
(208, 'thương', 'thương', 0, 0, 0.4, 'T520', 1, '*'),
(209, 'thắc', 'thắc', 0, 0, 0.2667, 'T200', 1, '*'),
(210, 'thời', 'thời', 0, 0, 0.2667, 'T000', 1, '*'),
(211, 'thực', 'thực', 0, 0, 0.2667, 'T200', 1, '*'),
(212, 'tin', 'tin', 0, 0, 0.2, 'T500', 1, '*'),
(213, 'tinh', 'tinh', 0, 0, 0.2667, 'T500', 1, '*'),
(214, 'tiếng', 'tiếng', 0, 0, 0.3333, 'T520', 1, '*'),
(215, 'tiết', 'tiết', 0, 0, 0.2667, 'T000', 1, '*'),
(216, 'toàn', 'toàn', 0, 0, 0.2667, 'T500', 1, '*'),
(217, 'trang', 'trang', 0, 0, 0.3333, 'T652', 1, '*'),
(218, 'trong', 'trong', 0, 0, 0.3333, 'T652', 1, '*'),
(219, 'trình', 'trình', 0, 0, 0.3333, 'T650', 1, '*'),
(220, 'trị', 'trị', 0, 0, 0.2, 'T600', 1, '*'),
(221, 'trọng', 'trọng', 0, 0, 0.3333, 'T652', 1, '*'),
(222, 'tuyệt', 'tuyệt', 0, 0, 0.3333, 'T000', 1, '*'),
(223, 'tâm', 'tâm', 0, 0, 0.2, 'T500', 1, '*'),
(224, 'tính', 'tính', 0, 0, 0.2667, 'T500', 1, '*'),
(225, 'tôi', 'tôi', 0, 0, 0.2, 'T000', 1, '*'),
(226, 'tôn', 'tôn', 0, 0, 0.2, 'T500', 1, '*'),
(227, 'tăng', 'tăng', 0, 0, 0.2667, 'T520', 1, '*'),
(228, 'tưởng', 'tưởng', 0, 0, 0.3333, 'T520', 1, '*'),
(229, 'tại', 'tại', 0, 0, 0.2, 'T000', 1, '*'),
(230, 'tất', 'tất', 0, 0, 0.2, 'T000', 1, '*'),
(231, 'tận', 'tận', 0, 0, 0.2, 'T500', 1, '*'),
(232, 'tập', 'tập', 0, 0, 0.2, 'T100', 1, '*'),
(233, 'tặng', 'tặng', 0, 0, 0.2667, 'T520', 1, '*'),
(234, 'tế', 'tế', 0, 0, 0.1333, 'T000', 1, '*'),
(235, 'tỉ', 'tỉ', 0, 0, 0.1333, 'T000', 1, '*'),
(236, 'tốt', 'tốt', 0, 0, 0.2, 'T000', 1, '*'),
(237, 'từ', 'từ', 0, 0, 0.1333, 'T000', 1, '*'),
(238, 'từng', 'từng', 0, 0, 0.2667, 'T520', 1, '*'),
(239, 'tự', 'tự', 0, 0, 0.1333, 'T000', 1, '*'),
(240, 'vi', 'vi', 0, 0, 0.1333, 'V000', 1, '*'),
(241, 'và', 'và', 0, 0, 0.1333, 'V000', 1, '*'),
(242, 'vượt', 'vượt', 0, 0, 0.2667, 'V300', 1, '*'),
(243, 'vẻ', 'vẻ', 0, 0, 0.1333, 'V000', 1, '*'),
(244, 'về', 'về', 0, 0, 0.1333, 'V000', 1, '*'),
(245, 'với', 'với', 0, 0, 0.2, 'V000', 1, '*'),
(246, 'vụ', 'vụ', 0, 0, 0.1333, 'V000', 1, '*'),
(247, 'watch', 'watch', 0, 0, 0.3333, 'W320', 1, '*'),
(248, 'web', 'web', 0, 0, 0.2, 'W100', 1, '*'),
(249, 'xu', 'xu', 0, 0, 0.1333, 'X000', 1, '*'),
(250, 'xác', 'xác', 0, 0, 0.2, 'X000', 1, '*'),
(251, 'yên', 'yên', 0, 0, 0.2, 'Y500', 1, '*'),
(252, 'yêu', 'yêu', 0, 0, 0.2, 'Y000', 1, '*'),
(253, 'đa', 'đa', 0, 0, 0.1333, 'đ000', 1, '*'),
(254, 'đi', 'đi', 0, 0, 0.1333, 'đ000', 1, '*'),
(255, 'điểm', 'điểm', 0, 0, 0.2667, 'đ500', 1, '*'),
(256, 'điển', 'điển', 0, 0, 0.2667, 'đ500', 1, '*'),
(257, 'điện', 'điện', 0, 0, 0.2667, 'đ500', 1, '*'),
(258, 'đáo', 'đáo', 0, 0, 0.2, 'đ000', 1, '*'),
(259, 'đáp', 'đáp', 0, 0, 0.2, 'đ100', 1, '*'),
(260, 'đãi', 'đãi', 0, 0, 0.2, 'đ000', 1, '*'),
(261, 'đơn', 'đơn', 0, 0, 0.2, 'đ500', 1, '*'),
(262, 'được', 'được', 0, 0, 0.2667, 'đ200', 1, '*'),
(263, 'đại', 'đại', 0, 0, 0.2, 'đ000', 1, '*'),
(264, 'đảm', 'đảm', 0, 0, 0.2, 'đ500', 1, '*'),
(265, 'đầy', 'đầy', 0, 0, 0.2, 'đ000', 1, '*'),
(266, 'đẳng', 'đẳng', 0, 0, 0.2667, 'đ520', 1, '*'),
(267, 'đặc', 'đặc', 0, 0, 0.2, 'đ200', 1, '*'),
(268, 'đặt', 'đặt', 0, 0, 0.2, 'đ300', 1, '*'),
(269, 'đẹp', 'đẹp', 0, 0, 0.2, 'đ100', 1, '*'),
(270, 'đến', 'đến', 0, 0, 0.2, 'đ500', 1, '*'),
(271, 'đều', 'đều', 0, 0, 0.2, 'đ000', 1, '*'),
(272, 'để', 'để', 0, 0, 0.1333, 'đ000', 1, '*'),
(273, 'đối', 'đối', 0, 0, 0.2, 'đ000', 1, '*'),
(274, 'độ', 'độ', 0, 0, 0.1333, 'đ000', 1, '*'),
(275, 'độc', 'độc', 0, 0, 0.2, 'đ200', 1, '*'),
(276, 'động', 'động', 0, 0, 0.2667, 'đ520', 1, '*'),
(277, 'đừng', 'đừng', 0, 0, 0.2667, 'đ520', 1, '*'),
(278, 'ưu', 'ưu', 0, 0, 0.1333, 'ư000', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_terms_common`
--

CREATE TABLE `d6gvw_finder_terms_common` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `custom` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_terms_common`
--

INSERT INTO `d6gvw_finder_terms_common` (`term`, `language`, `custom`) VALUES
('a', 'en', 0),
('about', 'en', 0),
('above', 'en', 0),
('after', 'en', 0),
('again', 'en', 0),
('against', 'en', 0),
('all', 'en', 0),
('am', 'en', 0),
('an', 'en', 0),
('and', 'en', 0),
('any', 'en', 0),
('are', 'en', 0),
('aren\'t', 'en', 0),
('as', 'en', 0),
('at', 'en', 0),
('be', 'en', 0),
('because', 'en', 0),
('been', 'en', 0),
('before', 'en', 0),
('being', 'en', 0),
('below', 'en', 0),
('between', 'en', 0),
('both', 'en', 0),
('but', 'en', 0),
('by', 'en', 0),
('can\'t', 'en', 0),
('cannot', 'en', 0),
('could', 'en', 0),
('couldn\'t', 'en', 0),
('did', 'en', 0),
('didn\'t', 'en', 0),
('do', 'en', 0),
('does', 'en', 0),
('doesn\'t', 'en', 0),
('doing', 'en', 0),
('don\'t', 'en', 0),
('down', 'en', 0),
('during', 'en', 0),
('each', 'en', 0),
('few', 'en', 0),
('for', 'en', 0),
('from', 'en', 0),
('further', 'en', 0),
('had', 'en', 0),
('hadn\'t', 'en', 0),
('has', 'en', 0),
('hasn\'t', 'en', 0),
('have', 'en', 0),
('haven\'t', 'en', 0),
('having', 'en', 0),
('he', 'en', 0),
('he\'d', 'en', 0),
('he\'ll', 'en', 0),
('he\'s', 'en', 0),
('her', 'en', 0),
('here', 'en', 0),
('here\'s', 'en', 0),
('hers', 'en', 0),
('herself', 'en', 0),
('him', 'en', 0),
('himself', 'en', 0),
('his', 'en', 0),
('how', 'en', 0),
('how\'s', 'en', 0),
('i', 'en', 0),
('i\'d', 'en', 0),
('i\'ll', 'en', 0),
('i\'m', 'en', 0),
('i\'ve', 'en', 0),
('if', 'en', 0),
('in', 'en', 0),
('into', 'en', 0),
('is', 'en', 0),
('isn\'t', 'en', 0),
('it', 'en', 0),
('it\'s', 'en', 0),
('its', 'en', 0),
('itself', 'en', 0),
('let\'s', 'en', 0),
('me', 'en', 0),
('more', 'en', 0),
('most', 'en', 0),
('mustn\'t', 'en', 0),
('my', 'en', 0),
('myself', 'en', 0),
('no', 'en', 0),
('nor', 'en', 0),
('not', 'en', 0),
('of', 'en', 0),
('off', 'en', 0),
('on', 'en', 0),
('once', 'en', 0),
('only', 'en', 0),
('or', 'en', 0),
('other', 'en', 0),
('ought', 'en', 0),
('our', 'en', 0),
('ours', 'en', 0),
('ourselves', 'en', 0),
('out', 'en', 0),
('over', 'en', 0),
('own', 'en', 0),
('same', 'en', 0),
('shan\'t', 'en', 0),
('she', 'en', 0),
('she\'d', 'en', 0),
('she\'ll', 'en', 0),
('she\'s', 'en', 0),
('should', 'en', 0),
('shouldn\'t', 'en', 0),
('so', 'en', 0),
('some', 'en', 0),
('such', 'en', 0),
('than', 'en', 0),
('that', 'en', 0),
('that\'s', 'en', 0),
('the', 'en', 0),
('their', 'en', 0),
('theirs', 'en', 0),
('them', 'en', 0),
('themselves', 'en', 0),
('then', 'en', 0),
('there', 'en', 0),
('there\'s', 'en', 0),
('these', 'en', 0),
('they', 'en', 0),
('they\'d', 'en', 0),
('they\'ll', 'en', 0),
('they\'re', 'en', 0),
('they\'ve', 'en', 0),
('this', 'en', 0),
('those', 'en', 0),
('through', 'en', 0),
('to', 'en', 0),
('too', 'en', 0),
('under', 'en', 0),
('until', 'en', 0),
('up', 'en', 0),
('very', 'en', 0),
('was', 'en', 0),
('wasn\'t', 'en', 0),
('we', 'en', 0),
('we\'d', 'en', 0),
('we\'ll', 'en', 0),
('we\'re', 'en', 0),
('we\'ve', 'en', 0),
('were', 'en', 0),
('weren\'t', 'en', 0),
('what', 'en', 0),
('what\'s', 'en', 0),
('when', 'en', 0),
('when\'s', 'en', 0),
('where', 'en', 0),
('where\'s', 'en', 0),
('which', 'en', 0),
('while', 'en', 0),
('who', 'en', 0),
('who\'s', 'en', 0),
('whom', 'en', 0),
('why', 'en', 0),
('why\'s', 'en', 0),
('with', 'en', 0),
('won\'t', 'en', 0),
('would', 'en', 0),
('wouldn\'t', 'en', 0),
('you', 'en', 0),
('you\'d', 'en', 0),
('you\'ll', 'en', 0),
('you\'re', 'en', 0),
('you\'ve', 'en', 0),
('your', 'en', 0),
('yours', 'en', 0),
('yourself', 'en', 0),
('yourselves', 'en', 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_tokens`
--

CREATE TABLE `d6gvw_finder_tokens` (
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `weight` float UNSIGNED NOT NULL DEFAULT 1,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_tokens_aggregate`
--

CREATE TABLE `d6gvw_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `stem` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `common` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `phrase` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `term_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `context` tinyint(3) UNSIGNED NOT NULL DEFAULT 2,
  `context_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `total_weight` float UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_finder_types`
--

CREATE TABLE `d6gvw_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_finder_types`
--

INSERT INTO `d6gvw_finder_types` (`id`, `title`, `mime`) VALUES
(1, 'Category', ''),
(2, 'Contact', ''),
(3, 'Article', ''),
(4, 'News Feed', ''),
(5, 'Tag', '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbanners`
--

CREATE TABLE `d6gvw_flexbanners` (
  `id` int(11) NOT NULL,
  `clientid` int(11) DEFAULT NULL,
  `linkid` int(11) DEFAULT NULL,
  `sizeid` int(11) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `imageurl` varchar(255) DEFAULT NULL,
  `flash` varchar(255) DEFAULT NULL,
  `cloud_imageurl` varchar(255) DEFAULT NULL,
  `imagealt` varchar(255) DEFAULT NULL,
  `customcode` text DEFAULT NULL,
  `restrictbyid` tinyint(1) NOT NULL DEFAULT 0,
  `frontpage` tinyint(1) DEFAULT NULL,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `impmade` int(11) NOT NULL DEFAULT 0,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `maximpressions` int(11) DEFAULT NULL,
  `maxclicks` int(11) DEFAULT NULL,
  `dailyimpressions` int(11) DEFAULT 0,
  `lastreset` date DEFAULT NULL,
  `published` tinyint(1) DEFAULT 0,
  `finished` tinyint(1) DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `reset` datetime DEFAULT NULL,
  `state` tinyint(3) NOT NULL,
  `catid` int(11) DEFAULT 0,
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) DEFAULT NULL,
  `newwin` tinyint(1) DEFAULT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `d6gvw_flexbanners`
--

INSERT INTO `d6gvw_flexbanners` (`id`, `clientid`, `linkid`, `sizeid`, `locationid`, `type`, `name`, `alias`, `imageurl`, `flash`, `cloud_imageurl`, `imagealt`, `customcode`, `restrictbyid`, `frontpage`, `clicks`, `impmade`, `startdate`, `enddate`, `maximpressions`, `maxclicks`, `dailyimpressions`, `lastreset`, `published`, `finished`, `checked_out`, `checked_out_time`, `reset`, `state`, `catid`, `editor`, `ordering`, `created`, `created_by`, `created_by_alias`, `language`, `newwin`, `modified`, `modified_by`, `params`, `version`) VALUES
(1, 1, 1, 1, 1, 0, 'Banner strore', 'banner-strore', 'images/banners/thiet-ke-banner-dong-ho-phong-cach-sang-trong-56945.jpeg#joomlaImage://local-images/banners/thiet-ke-banner-dong-ho-phong-cach-sang-trong-56945.jpeg?width=1200&height=630', '', '', '', '', 0, 0, 0, 45, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 45, '2024-12-18', 1, 0, 0, '0000-00-00 00:00:00', NULL, 1, 12, NULL, 1, '2024-12-18 08:34:01', 32, '', '*', 1, '2024-12-18 09:24:01', 32, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbannersclient`
--

CREATE TABLE `d6gvw_flexbannersclient` (
  `clientid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contactname` varchar(255) DEFAULT NULL,
  `contactemail` varchar(255) DEFAULT NULL,
  `barred` tinyint(1) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `juserid` int(11) DEFAULT NULL,
  `state` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `d6gvw_flexbannersclient`
--

INSERT INTO `d6gvw_flexbannersclient` (`clientid`, `name`, `contactname`, `contactemail`, `barred`, `checked_out`, `checked_out_time`, `editor`, `juserid`, `state`) VALUES
(1, 'Banner strore', 'watch', 'hung@gmail.com', 0, NULL, NULL, NULL, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbannersin`
--

CREATE TABLE `d6gvw_flexbannersin` (
  `bannerid` int(11) DEFAULT NULL,
  `sectionid` int(11) DEFAULT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `contentid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbannerslink`
--

CREATE TABLE `d6gvw_flexbannerslink` (
  `linkid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `linkurl` text DEFAULT NULL,
  `clientid` int(11) DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `state` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `d6gvw_flexbannerslink`
--

INSERT INTO `d6gvw_flexbannerslink` (`linkid`, `name`, `linkurl`, `clientid`, `checked_out`, `checked_out_time`, `editor`, `state`) VALUES
(1, 'link', 'https://shopdongho.com/olympia-star-opa58057msk-t/', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbannerslocations`
--

CREATE TABLE `d6gvw_flexbannerslocations` (
  `locationid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `state` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `d6gvw_flexbannerslocations`
--

INSERT INTO `d6gvw_flexbannerslocations` (`locationid`, `name`, `checked_out`, `checked_out_time`, `editor`, `state`) VALUES
(1, 'Banner strore', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_flexbannerssize`
--

CREATE TABLE `d6gvw_flexbannerssize` (
  `sizeid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `maxfilesize` int(11) DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `state` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `d6gvw_flexbannerssize`
--

INSERT INTO `d6gvw_flexbannerssize` (`sizeid`, `name`, `width`, `height`, `maxfilesize`, `checked_out`, `checked_out_time`, `editor`, `state`) VALUES
(1, 'Full Banner (468x60)', 468, 60, 15000, 0, '0000-00-00 00:00:00', '', 1),
(2, 'Half Banner (234x60)', 234, 60, 15000, 0, '0000-00-00 00:00:00', '', 1),
(3, 'Micro Bar (88x31)', 88, 31, 15000, 0, '0000-00-00 00:00:00', '', 1),
(4, 'Button 1 (120x90)', 120, 90, 15000, 0, '0000-00-00 00:00:00', '', 1),
(5, 'Button 2 (120x60)', 120, 60, 15000, 0, '0000-00-00 00:00:00', '', 1),
(6, 'Vertical Banner (120x240)', 120, 240, 15000, 0, '0000-00-00 00:00:00', '', 1),
(7, 'Square Button (125x125)', 125, 125, 15000, 0, '0000-00-00 00:00:00', '', 1),
(8, 'Leaderboard (728x90)', 728, 90, 20000, 0, '0000-00-00 00:00:00', '', 1),
(9, 'Wide Skyscraper (160x600)', 160, 600, 20000, 0, '0000-00-00 00:00:00', '', 1),
(10, 'Skyscraper (120x600)', 120, 600, 15000, 0, '0000-00-00 00:00:00', '', 1),
(11, 'Half Page Ad (300x600)', 300, 600, 15000, 0, '0000-00-00 00:00:00', '', 1),
(12, 'Medium Rectangle (300x250)', 300, 250, 20000, 0, '0000-00-00 00:00:00', '', 1),
(13, 'Square Pop-up (250x250)', 250, 250, 15000, 0, '0000-00-00 00:00:00', '', 1),
(14, 'Vertical Rectangle (240x400)', 240, 400, 15000, 0, '0000-00-00 00:00:00', '', 1),
(15, 'Large Rectangle (336x280)', 336, 280, 15000, 0, '0000-00-00 00:00:00', '', 1),
(16, 'Rectangle (180x150)', 180, 150, 15000, 0, '0000-00-00 00:00:00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_guidedtours`
--

CREATE TABLE `d6gvw_guidedtours` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `extensions` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `autostart` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_guidedtours`
--

INSERT INTO `d6gvw_guidedtours` (`id`, `title`, `uid`, `description`, `ordering`, `extensions`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `published`, `language`, `note`, `access`, `autostart`) VALUES
(1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_TITLE', 'joomla-guidedtours', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_DESCRIPTION', 1, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_TITLE', 'joomla-guidedtoursteps', 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_DESCRIPTION', 2, '[\"com_guidedtours\"]', 'administrator/index.php?option=com_guidedtours&view=tours', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_TITLE', 'joomla-articles', 'COM_GUIDEDTOURS_TOUR_ARTICLES_DESCRIPTION', 3, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_content&view=articles', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_TITLE', 'joomla-categories', 'COM_GUIDEDTOURS_TOUR_CATEGORIES_DESCRIPTION', 4, '[\"com_content\",\"com_categories\"]', 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(5, 'COM_GUIDEDTOURS_TOUR_MENUS_TITLE', 'joomla-menus', 'COM_GUIDEDTOURS_TOUR_MENUS_DESCRIPTION', 5, '[\"com_menus\"]', 'administrator/index.php?option=com_menus&view=menus', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(6, 'COM_GUIDEDTOURS_TOUR_TAGS_TITLE', 'joomla-tags', 'COM_GUIDEDTOURS_TOUR_TAGS_DESCRIPTION', 6, '[\"com_tags\"]', 'administrator/index.php?option=com_tags&view=tags', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(7, 'COM_GUIDEDTOURS_TOUR_BANNERS_TITLE', 'joomla-banners', 'COM_GUIDEDTOURS_TOUR_BANNERS_DESCRIPTION', 7, '[\"com_banners\"]', 'administrator/index.php?option=com_banners&view=banners', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_TITLE', 'joomla-contacts', 'COM_GUIDEDTOURS_TOUR_CONTACTS_DESCRIPTION', 8, '[\"com_contact\"]', 'administrator/index.php?option=com_contact&view=contacts', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_TITLE', 'joomla-newsfeeds', 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_DESCRIPTION', 9, '[\"com_newsfeeds\"]', 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_TITLE', 'joomla-smartsearch', 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_DESCRIPTION', 10, '[\"com_finder\"]', 'administrator/index.php?option=com_finder&view=filters', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(11, 'COM_GUIDEDTOURS_TOUR_USERS_TITLE', 'joomla-users', 'COM_GUIDEDTOURS_TOUR_USERS_DESCRIPTION', 11, '[\"com_users\"]', 'administrator/index.php?option=com_users&view=users', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 0),
(12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_TITLE', 'joomla-welcome', 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_DESCRIPTION', 12, '[\"com_cpanel\"]', 'administrator/index.php', '2024-12-18 06:39:13', 32, '2024-12-18 06:39:13', 32, NULL, NULL, 1, '*', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_guidedtour_steps`
--

CREATE TABLE `d6gvw_guidedtour_steps` (
  `id` int(11) NOT NULL,
  `tour_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `interactive_type` int(11) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `language` varchar(7) NOT NULL,
  `note` varchar(255) NOT NULL DEFAULT '',
  `params` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_guidedtour_steps`
--

INSERT INTO `d6gvw_guidedtour_steps` (`id`, `tour_id`, `title`, `published`, `description`, `ordering`, `position`, `target`, `type`, `interactive_type`, `url`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`, `language`, `note`, `params`) VALUES
(1, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_NEW_DESCRIPTION', 1, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tours', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(2, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_TITLE_DESCRIPTION', 2, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(3, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_URL_DESCRIPTION', 3, 'top', '#jform_url', 2, 2, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(4, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONTENT_DESCRIPTION', 4, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(5, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_COMPONENT_DESCRIPTION', 5, 'top', 'joomla-field-fancy-select .choices', 2, 3, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(6, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_AUTOSTART_DESCRIPTION', 6, 'bottom', '#jform_autostart0', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(7, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_SAVECLOSE_DESCRIPTION', 7, 'top', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(8, 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURS_STEP_CONGRATULATIONS_DESCRIPTION', 8, 'bottom', '', 0, 1, 'administrator/index.php?option=com_guidedtours&view=tour&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(9, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_COUNTER_DESCRIPTION', 9, 'top', '#toursList tbody tr:nth-last-of-type(1) td:nth-of-type(5) .btn', 2, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(10, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_NEW_DESCRIPTION', 10, 'bottom', '.button-new', 2, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(11, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TITLE_DESCRIPTION', 11, 'bottom', '#jform_title', 2, 2, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(12, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_DESCRIPTION_DESCRIPTION', 12, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(13, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_STATUS_DESCRIPTION', 13, 'bottom', '#jform_published', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(14, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_POSITION_DESCRIPTION', 14, 'top', '#jform_position', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(15, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TARGET_DESCRIPTION', 15, 'top', '#jform_target', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(16, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_TYPE_DESCRIPTION', 16, 'top', '#jform_type', 2, 3, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(17, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_SAVECLOSE_DESCRIPTION', 17, 'bottom', '#save-group-children-save .button-save', 2, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(18, 2, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_GUIDEDTOURSTEPS_STEP_CONGRATULATIONS_DESCRIPTION', 18, 'bottom', '', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(19, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NEW_DESCRIPTION', 19, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_content&view=articles', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(20, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TITLE_DESCRIPTION', 20, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(21, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ALIAS_DESCRIPTION', 21, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(22, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONTENT_DESCRIPTION', 22, 'bottom', '#jform_articletext,#jform_articletext_ifr', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(23, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_STATUS_DESCRIPTION', 23, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(24, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CATEGORY_DESCRIPTION', 24, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(25, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_FEATURED_DESCRIPTION', 25, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(26, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_ACCESS_DESCRIPTION', 26, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(27, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_TAGS_DESCRIPTION', 27, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(28, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_NOTE_DESCRIPTION', 28, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(29, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_VERSIONNOTE_DESCRIPTION', 29, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(30, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_SAVECLOSE_DESCRIPTION', 30, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(31, 3, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_ARTICLES_STEP_CONGRATULATIONS_DESCRIPTION', 31, 'bottom', '', 0, 1, 'administrator/index.php?option=com_content&view=article&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(32, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NEW_DESCRIPTION', 32, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_categories&view=categories&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(33, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TITLE_DESCRIPTION', 33, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(34, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ALIAS_DESCRIPTION', 34, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(35, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONTENT_DESCRIPTION', 35, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(36, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_PARENT_DESCRIPTION', 36, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(37, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_STATUS_DESCRIPTION', 37, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(38, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_ACCESS_DESCRIPTION', 38, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(39, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_TAGS_DESCRIPTION', 39, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(40, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_NOTE_DESCRIPTION', 40, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(41, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_VERSIONNOTE_DESCRIPTION', 41, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(42, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_SAVECLOSE_DESCRIPTION', 42, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(43, 4, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CATEGORIES_STEP_CONGRATULATIONS_DESCRIPTION', 43, 'bottom', '', 0, 1, 'administrator/index.php?option=com_categories&view=category&layout=edit&extension=com_content', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(44, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_NEW_DESCRIPTION', 44, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_menus&view=menus', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(45, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_TITLE_DESCRIPTION', 45, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(46, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_UNIQUENAME_DESCRIPTION', 46, 'top', '#jform_menutype', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(47, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_DESCRIPTION_DESCRIPTION', 47, 'top', '#jform_menudescription', 2, 2, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(48, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_SAVECLOSE_DESCRIPTION', 48, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(49, 5, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_MENUS_STEP_CONGRATULATIONS_DESCRIPTION', 49, 'bottom', '', 0, 1, 'administrator/index.php?option=com_menus&view=menu&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(50, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NEW_DESCRIPTION', 50, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_tags&view=tags', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(51, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_TITLE_DESCRIPTION', 51, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(52, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ALIAS_DESCRIPTION', 52, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(53, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONTENT_DESCRIPTION', 53, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(54, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_PARENT_DESCRIPTION', 54, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(55, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_STATUS_DESCRIPTION', 55, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(56, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_ACCESS_DESCRIPTION', 56, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(57, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_NOTE_DESCRIPTION', 57, 'top', '#jform_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(58, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_VERSIONNOTE_DESCRIPTION', 58, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(59, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_SAVECLOSE_DESCRIPTION', 59, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(60, 6, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_TAGS_STEP_CONGRATULATIONS_DESCRIPTION', 60, 'bottom', '', 0, 1, 'administrator/index.php?option=com_tags&view=tag&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(61, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_NEW_DESCRIPTION', 61, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_banners&view=banners', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(62, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_TITLE_DESCRIPTION', 62, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(63, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_ALIAS_DESCRIPTION', 63, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(64, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_DETAILS_DESCRIPTION', 64, 'bottom', '.col-lg-9', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(65, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_STATUS_DESCRIPTION', 65, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(66, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CATEGORY_DESCRIPTION', 66, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(67, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_PINNED_DESCRIPTION', 67, 'bottom', '#jform_sticky1', 2, 3, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(68, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_VERSIONNOTE_DESCRIPTION', 68, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(69, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_SAVECLOSE_DESCRIPTION', 69, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(70, 7, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_BANNERS_STEP_CONGRATULATIONS_DESCRIPTION', 70, 'bottom', '', 0, 1, 'administrator/index.php?option=com_banners&view=banner&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(71, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_NEW_DESCRIPTION', 71, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_contact&view=contacts', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(72, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TITLE_DESCRIPTION', 72, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(73, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ALIAS_DESCRIPTION', 73, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(74, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_DETAILS_DESCRIPTION', 74, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(75, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_STATUS_DESCRIPTION', 75, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(76, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CATEGORY_DESCRIPTION', 76, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(77, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_FEATURED_DESCRIPTION', 77, 'bottom', '#jform_featured0', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(78, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_ACCESS_DESCRIPTION', 78, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(79, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_TAGS_DESCRIPTION', 79, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(80, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_VERSIONNOTE_DESCRIPTION', 80, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(81, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_SAVECLOSE_DESCRIPTION', 81, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(82, 8, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_CONTACTS_STEP_CONGRATULATIONS_DESCRIPTION', 82, 'bottom', '', 0, 1, 'administrator/index.php?option=com_contact&view=contact&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(83, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_NEW_DESCRIPTION', 83, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeeds', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(84, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TITLE_DESCRIPTION', 84, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(85, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ALIAS_DESCRIPTION', 85, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(86, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_LINK_DESCRIPTION', 86, 'bottom', '#jform_link', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(87, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_DESCRIPTION_DESCRIPTION', 87, 'bottom', '#jform_description,#jform_description_ifr', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(88, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_STATUS_DESCRIPTION', 88, 'bottom', '#jform_published', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(89, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CATEGORY_DESCRIPTION', 89, 'top', 'joomla-field-fancy-select .choices[data-type=select-one]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(90, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_ACCESS_DESCRIPTION', 90, 'bottom', '#jform_access', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(91, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_TAGS_DESCRIPTION', 91, 'top', 'joomla-field-fancy-select .choices[data-type=select-multiple]', 2, 3, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(92, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_VERSIONNOTE_DESCRIPTION', 92, 'top', '#jform_version_note', 2, 2, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(93, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_SAVECLOSE_DESCRIPTION', 93, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(94, 9, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_NEWSFEEDS_STEP_CONGRATULATIONS_DESCRIPTION', 94, 'bottom', '', 0, 1, 'administrator/index.php?option=com_newsfeeds&view=newsfeed&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(95, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_NEW_DESCRIPTION', 95, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_finder&view=filters', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(96, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_TITLE_DESCRIPTION', 96, 'bottom', '#jform_title', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(97, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_ALIAS_DESCRIPTION', 97, 'bottom', '#jform_alias', 2, 2, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(98, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONTENT_DESCRIPTION', 98, 'bottom', '.col-lg-9', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(99, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_STATUS_DESCRIPTION', 99, 'bottom', '#jform_state', 2, 3, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(100, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_SAVECLOSE_DESCRIPTION', 100, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(101, 10, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_SMARTSEARCH_STEP_CONGRATULATIONS_DESCRIPTION', 101, 'bottom', '', 0, 1, 'administrator/index.php?option=com_finder&view=filter&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(102, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NEW_DESCRIPTION', 102, 'bottom', '.button-new', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(103, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_NAME_DESCRIPTION', 103, 'bottom', '#jform_name', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(104, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_LOGINNAME_DESCRIPTION', 104, 'bottom', '#jform_username', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(105, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD_DESCRIPTION', 105, 'bottom', '#jform_password', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(106, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORD2_DESCRIPTION', 106, 'bottom', '#jform_password2', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(107, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_EMAIL_DESCRIPTION', 107, 'bottom', '#jform_email', 2, 2, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(108, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SYSTEMEMAIL_DESCRIPTION', 108, 'top', '#jform_sendEmail0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(109, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_STATUS_DESCRIPTION', 109, 'top', '#jform_block0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(110, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_PASSWORDRESET_DESCRIPTION', 110, 'top', '#jform_requireReset0', 2, 3, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(111, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_SAVECLOSE_DESCRIPTION', 111, 'bottom', '#save-group-children-save .button-save', 2, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(112, 11, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_USERS_STEP_CONGRATULATIONS_DESCRIPTION', 112, 'bottom', '', 0, 1, 'administrator/index.php?option=com_users&view=user&layout=edit', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(113, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_MENUS_DESCRIPTION', 113, 'right', '#sidebarmenu', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(114, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_QUICKACCESS_DESCRIPTION', 114, 'center', '', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(115, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_NOTIFICATIONS_DESCRIPTION', 115, 'left', '.quickicons-for-update_quickicon .card', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(116, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_TOPBAR_DESCRIPTION', 116, 'bottom', '#header', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL),
(117, 12, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_TITLE', 1, 'COM_GUIDEDTOURS_TOUR_WELCOMETOJOOMLA_STEP_FINALWORDS_DESCRIPTION', 117, 'right', '#sidebarmenu nav > ul:first-of-type > li:last-child', 0, 1, '', '2024-12-18 06:39:14', 32, '2024-12-18 06:39:14', 32, NULL, NULL, '*', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_history`
--

CREATE TABLE `d6gvw_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL,
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_history`
--

INSERT INTO `d6gvw_history` (`version_id`, `item_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 'com_content.category.8', '', '2024-12-18 07:01:26', 32, 553, '5d4816829cb5667cc3c7f0e464e53ac43a581ad2', '{\"id\":8,\"asset_id\":102,\"parent_id\":1,\"lft\":11,\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"PH\\u1ee4 KI\\u1ec6N\",\"alias\":\"ph-ki-n\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":32,\"created_time\":\"2024-12-18 07:01:26\",\"modified_user_id\":32,\"modified_time\":\"2024-12-18 07:01:26\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(2, 'com_content.article.1', '', '2024-12-18 07:02:09', 32, 1613, '6cca1958514d69f91400b05e574d635bb514108e', '{\"id\":1,\"asset_id\":103,\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"alias\":\"ph-ki-n\",\"introtext\":\"<p>Shop ph\\u1ee5 ki\\u1ec7n<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2024-12-18 07:02:09\",\"created_by\":32,\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:02:09\",\"modified_by\":32,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-12-18 07:02:09\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(3, 'com_content.article.2', '', '2024-12-18 07:03:54', 32, 1589, '6bba72c15cacd080be1c3e1762d07ef22f88dbac', '{\"id\":2,\"asset_id\":104,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"alias\":\"d-ng-ho-nam\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-12-18 07:03:54\",\"created_by\":32,\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:03:54\",\"modified_by\":32,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-12-18 07:03:54\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(4, 'com_content.article.2', '', '2024-12-18 07:04:24', 32, 1642, '1f37378718a7641974d5e8205aa0cd3d7781a5d8', '{\"id\":\"2\",\"asset_id\":104,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"alias\":\"d-ng-ho-nam\",\"introtext\":\"<p>Shop \\u0111\\u1ed3ng h\\u1ed3 NAm<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-12-18 07:03:54\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:04:24\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:04:11\",\"publish_up\":\"2024-12-18 07:03:54\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(5, 'com_content.article.2', '', '2024-12-18 07:04:38', 32, 1642, '17a0fcdcbadfd884b97840293254137c3f940db7', '{\"id\":\"2\",\"asset_id\":104,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"alias\":\"d-ng-ho-nam\",\"introtext\":\"<p>Shop \\u0111\\u1ed3ng h\\u1ed3 NAm<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2024-12-18 07:03:54\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:04:38\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:04:29\",\"publish_up\":\"2024-12-18 07:03:54\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(6, 'com_content.category.9', '', '2024-12-18 07:05:09', 32, 560, 'b38fe1847c30c7103eac9d9c7733f0e3ca533f99', '{\"id\":9,\"asset_id\":105,\"parent_id\":1,\"lft\":13,\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"alias\":\"d-ng-ho-nam\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":32,\"created_time\":\"2024-12-18 07:05:09\",\"modified_user_id\":32,\"modified_time\":\"2024-12-18 07:05:09\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(7, 'com_content.article.2', '', '2024-12-18 07:05:22', 32, 1642, '66f1f12bc0a97431a33d0f90fe9d76ebcab566d9', '{\"id\":\"2\",\"asset_id\":104,\"title\":\"\\u0110\\u1ed2NG HO NAM\",\"alias\":\"d-ng-ho-nam\",\"introtext\":\"<p>Shop \\u0111\\u1ed3ng h\\u1ed3 NAm<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":9,\"created\":\"2024-12-18 07:03:54\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:05:22\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:05:17\",\"publish_up\":\"2024-12-18 07:03:54\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(8, 'com_content.category.10', '', '2024-12-18 07:06:16', 32, 549, '208729650e4586ceaf31b740d78811fbc04127f9', '{\"id\":10,\"asset_id\":106,\"parent_id\":1,\"lft\":15,\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"DONG HO NU\",\"alias\":\"dong-ho-nu\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":32,\"created_time\":\"2024-12-18 07:06:16\",\"modified_user_id\":32,\"modified_time\":\"2024-12-18 07:06:16\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(9, 'com_content.article.3', '', '2024-12-18 07:06:52', 32, 1639, 'd9cedfe1a690f607cf8551d05c2bcd2ca716b2f3', '{\"id\":3,\"asset_id\":107,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 n\\u1eef\",\"alias\":\"d-ng-h-n\",\"introtext\":\"<p>Shop \\u0111\\u1ed3ng h\\u1ed3 n\\u1eef<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":10,\"created\":\"2024-12-18 07:06:52\",\"created_by\":32,\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:06:52\",\"modified_by\":32,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-12-18 07:06:52\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(10, 'com_content.article.4', '', '2024-12-18 07:09:42', 32, 1584, 'b62990a7b6e30158374b414138ebc2d77e776aa1', '{\"id\":4,\"asset_id\":108,\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"alias\":\"ph-ki-n1\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-12-18 07:09:42\",\"created_by\":32,\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:09:42\",\"modified_by\":32,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-12-18 07:09:42\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(11, 'com_content.category.11', '', '2024-12-18 07:09:56', 32, 556, '99cd6f2acb3c0f291076ade4be7b392e9f57c893', '{\"id\":11,\"asset_id\":109,\"parent_id\":1,\"lft\":17,\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"alias\":\"ph-ki-n1\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":1,\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":32,\"created_time\":\"2024-12-18 07:09:56\",\"modified_user_id\":32,\"modified_time\":\"2024-12-18 07:09:56\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(12, 'com_content.article.4', '', '2024-12-18 07:10:26', 32, 1630, '54ab604ea58b828c7f7f40ec005bd827b63b88a9', '{\"id\":\"4\",\"asset_id\":108,\"title\":\"Ph\\u1ee5 ki\\u1ec7n1\",\"alias\":\"ph-ki-n1\",\"introtext\":\"<p>Shop Ph\\u1ee5 Ki\\u1ec7n<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":11,\"created\":\"2024-12-18 07:09:42\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:10:26\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:10:09\",\"publish_up\":\"2024-12-18 07:09:42\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(13, 'com_content.article.1', '', '2024-12-18 07:10:48', 32, 1645, '5448c253a12f35f6373ee496ec91482ff6fd1c1d', '{\"id\":\"1\",\"asset_id\":103,\"title\":\"Ph\\u1ee5 ki\\u1ec7n\",\"alias\":\"ph-ki-n\",\"introtext\":\"<p>Shop \\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2024-12-18 07:02:09\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:10:48\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:10:36\",\"publish_up\":\"2024-12-18 07:02:09\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(14, 'com_content.article.1', '', '2024-12-18 07:15:31', 32, 1663, '7f3db529c16d4dc68462633f602c6f5453501344', '{\"id\":\"1\",\"asset_id\":103,\"title\":\"\\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao\",\"alias\":\"ph-ki-n\",\"introtext\":\"<p>Shop \\u0110\\u1ed3ng h\\u1ed3 th\\u1ec3 thao<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":8,\"created\":\"2024-12-18 07:02:09\",\"created_by\":\"32\",\"created_by_alias\":\"\",\"modified\":\"2024-12-18 07:15:31\",\"modified_by\":32,\"checked_out\":32,\"checked_out_time\":\"2024-12-18 07:15:20\",\"publish_up\":\"2024-12-18 07:02:09\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":0,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0),
(15, 'com_content.article.5', '', '2024-12-18 09:36:00', 32, 8195, '271d50927b6d891e17a8b9f801a6e38ccd172b92', '{\"id\":5,\"asset_id\":125,\"title\":\"TRANG CH\\u1ee6\",\"alias\":\"trang-ch\",\"introtext\":\"<p style=\\\"text-align: justify;\\\">Ch\\u00e0o M\\u1eebng \\u0110\\u1ebfn V\\u1edbi Fashion Watch Store<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Kh\\u00e1m Ph\\u00e1 B\\u1ed9 S\\u01b0u T\\u1eadp \\u0110\\u1ed3ng H\\u1ed3 M\\u1edbi Nh\\u1ea5t<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">T\\u1ea1i Fashion Watch Store, ch\\u00fang t\\u00f4i mang \\u0111\\u1ebfn cho b\\u1ea1n b\\u1ed9 s\\u01b0u t\\u1eadp \\u0111\\u1ed3ng h\\u1ed3 th\\u1eddi trang \\u0111a d\\u1ea1ng, phong ph\\u00fa, ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u1ecdi phong c\\u00e1ch v\\u00e0 nhu c\\u1ea7u. T\\u1eeb nh\\u1eefng chi\\u1ebfc \\u0111\\u1ed3ng h\\u1ed3 sang tr\\u1ecdng, tinh t\\u1ebf, \\u0111\\u1ebfn nh\\u1eefng m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 th\\u1ec3 thao n\\u0103ng \\u0111\\u1ed9ng, ch\\u00fang t\\u00f4i t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111i\\u1ec3m \\u0111\\u1ebfn l\\u00fd t\\u01b0\\u1edfng cho nh\\u1eefng ai y\\u00eau th\\u00edch th\\u1eddi gian v\\u00e0 s\\u1ef1 ho\\u00e0n h\\u1ea3o trong t\\u1eebng chi ti\\u1ebft.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">S\\u1ea3n Ph\\u1ea9m Hot<br>\\u0110\\u1ed3ng H\\u1ed3 Nam: Nh\\u1eefng m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 m\\u1ea1nh m\\u1ebd, l\\u1ecbch l\\u00e3m v\\u00e0 \\u0111\\u1ea7y phong c\\u00e1ch. T\\u1eeb thi\\u1ebft k\\u1ebf c\\u1ed5 \\u0111i\\u1ec3n \\u0111\\u1ebfn nh\\u1eefng s\\u1ea3n ph\\u1ea9m hi\\u1ec7n \\u0111\\u1ea1i, t\\u1ea5t c\\u1ea3 \\u0111\\u1ec1u mang \\u0111\\u1ebfn v\\u1ebb \\u0111\\u1eb9p v\\u01b0\\u1ee3t th\\u1eddi gian.<br>\\u0110\\u1ed3ng H\\u1ed3 N\\u1eef: \\u0110\\u1ed3ng h\\u1ed3 n\\u1eef tinh t\\u1ebf, thanh l\\u1ecbch, v\\u1edbi c\\u00e1c chi ti\\u1ebft \\u0111\\u01b0\\u1ee3c ch\\u0103m ch\\u00fat t\\u1ec9 m\\u1ec9, l\\u00e0m t\\u00f4n l\\u00ean v\\u1ebb \\u0111\\u1eb9p c\\u1ee7a b\\u1ea1n. Ch\\u1ecdn ngay m\\u1ed9t chi\\u1ebfc \\u0111\\u1ed3ng h\\u1ed3 ph\\u00f9 h\\u1ee3p cho c\\u00e1c d\\u1ecbp \\u0111\\u1eb7c bi\\u1ec7t.<br>\\u0110\\u1ed3ng H\\u1ed3 Th\\u1ec3 Thao: \\u0110\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf cho nh\\u1eefng ai y\\u00eau th\\u00edch s\\u1ef1 n\\u0103ng \\u0111\\u1ed9ng v\\u00e0 kh\\u1ecfe kho\\u1eafn, nh\\u1eefng chi\\u1ebfc \\u0111\\u1ed3ng h\\u1ed3 th\\u1ec3 thao b\\u1ec1n b\\u1ec9 s\\u1ebd \\u0111\\u1ed3ng h\\u00e0nh c\\u00f9ng b\\u1ea1n trong m\\u1ecdi ho\\u1ea1t \\u0111\\u1ed9ng.<br>T\\u1ea1i Sao Ch\\u1ecdn Fashion Watch Store?<br>S\\u1ea3n Ph\\u1ea9m Ch\\u00ednh H\\u00e3ng: Ch\\u00fang t\\u00f4i cam k\\u1ebft cung c\\u1ea5p c\\u00e1c m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 ch\\u00ednh h\\u00e3ng t\\u1eeb nh\\u1eefng th\\u01b0\\u01a1ng hi\\u1ec7u n\\u1ed5i ti\\u1ebfng, \\u0111\\u1ea3m b\\u1ea3o ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 t\\u00ednh x\\u00e1c th\\u1ef1c.<br>Gi\\u00e1 C\\u1ea3 H\\u1ee3p L\\u00fd: Fashion Watch Store cung c\\u1ea5p nh\\u1eefng chi\\u1ebfc \\u0111\\u1ed3ng h\\u1ed3 cao c\\u1ea5p v\\u1edbi m\\u1ee9c gi\\u00e1 ph\\u1ea3i ch\\u0103ng, ph\\u00f9 h\\u1ee3p v\\u1edbi m\\u1ecdi ng\\u00e2n s\\u00e1ch.<br>Mi\\u1ec5n Ph\\u00ed Giao H\\u00e0ng: Ch\\u00fang t\\u00f4i cung c\\u1ea5p d\\u1ecbch v\\u1ee5 giao h\\u00e0ng mi\\u1ec5n ph\\u00ed trong ph\\u1ea1m vi to\\u00e0n qu\\u1ed1c cho t\\u1ea5t c\\u1ea3 c\\u00e1c \\u0111\\u01a1n h\\u00e0ng. \\u0110\\u1ea3m b\\u1ea3o b\\u1ea1n nh\\u1eadn \\u0111\\u01b0\\u1ee3c s\\u1ea3n ph\\u1ea9m trong th\\u1eddi gian nhanh nh\\u1ea5t.<br>Ch\\u1ebf \\u0110\\u1ed9 B\\u1ea3o H\\u00e0nh: M\\u1ecdi s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111i k\\u00e8m v\\u1edbi ch\\u1ebf \\u0111\\u1ed9 b\\u1ea3o h\\u00e0nh ch\\u00ednh h\\u00e3ng, mang l\\u1ea1i s\\u1ef1 y\\u00ean t\\u00e2m tuy\\u1ec7t \\u0111\\u1ed1i cho kh\\u00e1ch h\\u00e0ng.<br>Kh\\u00e1m Ph\\u00e1 C\\u00e1c B\\u1ed9 S\\u01b0u T\\u1eadp Th\\u1eddi Trang<br>Ch\\u00fang t\\u00f4i lu\\u00f4n c\\u1eadp nh\\u1eadt c\\u00e1c b\\u1ed9 s\\u01b0u t\\u1eadp m\\u1edbi, mang \\u0111\\u1ebfn nh\\u1eefng m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 h\\u1ee3p th\\u1eddi trang v\\u00e0 b\\u1eaft k\\u1ecbp xu h\\u01b0\\u1edbng. H\\u00e3y kh\\u00e1m ph\\u00e1 ngay c\\u00e1c b\\u1ed9 s\\u01b0u t\\u1eadp d\\u00e0nh ri\\u00eang cho b\\u1ea1n, gi\\u00fap b\\u1ea1n lu\\u00f4n t\\u1ef1 tin v\\u00e0 n\\u1ed5i b\\u1eadt trong m\\u1ecdi ho\\u00e0n c\\u1ea3nh.<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">B\\u1ed9 S\\u01b0u T\\u1eadp M\\u1edbi Nh\\u1ea5t: C\\u1eadp nh\\u1eadt nh\\u1eefng m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 m\\u1edbi ra m\\u1eaft t\\u1eeb c\\u00e1c th\\u01b0\\u01a1ng hi\\u1ec7u danh ti\\u1ebfng.<br>\\u0110\\u1ed3ng H\\u1ed3 Cao C\\u1ea5p: C\\u00e1c m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 sang tr\\u1ecdng v\\u00e0 \\u0111\\u1eb3ng c\\u1ea5p, ph\\u00f9 h\\u1ee3p v\\u1edbi nh\\u1eefng d\\u1ecbp quan tr\\u1ecdng ho\\u1eb7c nh\\u1eefng ai y\\u00eau th\\u00edch s\\u1ef1 tinh t\\u1ebf.<br>\\u0110\\u1ed3ng H\\u1ed3 Th\\u1eddi Trang: C\\u00e1c m\\u1eabu \\u0111\\u1ed3ng h\\u1ed3 \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, v\\u1edbi nh\\u1eefng chi ti\\u1ebft t\\u1ec9 m\\u1ec9, mang \\u0111\\u1ebfn v\\u1ebb \\u0111\\u1eb9p thu h\\u00fat v\\u00e0 c\\u00e1 t\\u00ednh.<br>\\u01afu \\u0110\\u00e3i \\u0110\\u1eb7c Bi\\u1ec7t<br>Gi\\u1ea3m Gi\\u00e1 L\\u1edbn: Nh\\u1eadn ngay \\u01b0u \\u0111\\u00e3i h\\u1ea5p d\\u1eabn v\\u1edbi c\\u00e1c ch\\u01b0\\u01a1ng tr\\u00ecnh gi\\u1ea3m gi\\u00e1, khuy\\u1ebfn m\\u00e3i \\u0111\\u1eb7c bi\\u1ec7t theo m\\u00f9a. H\\u00e3y theo d\\u00f5i trang ch\\u1ee7 \\u0111\\u1ec3 kh\\u00f4ng b\\u1ecf l\\u1ee1 nh\\u1eefng ch\\u01b0\\u01a1ng tr\\u00ecnh hot!<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Mua 1 T\\u1eb7ng 1: \\u0110\\u1eebng b\\u1ecf l\\u1ee1 ch\\u01b0\\u01a1ng tr\\u00ecnh khuy\\u1ebfn m\\u00e3i mua 1 t\\u1eb7ng 1 c\\u1ef1c k\\u1ef3 h\\u1ea5p d\\u1eabn t\\u1ea1i Fashion Watch Store!<br>Qu\\u00e0 T\\u1eb7ng K\\u00e8m: Khi mua \\u0111\\u1ed3ng h\\u1ed3 t\\u1ea1i c\\u1eeda h\\u00e0ng, b\\u1ea1n s\\u1ebd nh\\u1eadn \\u0111\\u01b0\\u1ee3c c\\u00e1c ph\\u1ea7n qu\\u00e0 \\u0111\\u1ed9c \\u0111\\u00e1o, g\\u00f3p ph\\u1ea7n l\\u00e0m t\\u0103ng gi\\u00e1 tr\\u1ecb m\\u00f3n qu\\u00e0 c\\u1ee7a b\\u1ea1n.<br>Ch\\u0103m S\\u00f3c Kh\\u00e1ch H\\u00e0ng T\\u1eadn T\\u00e2m<br>Fashion Watch Store lu\\u00f4n coi kh\\u00e1ch h\\u00e0ng l\\u00e0 tr\\u1ecdng t\\u00e2m, v\\u00e0 ch\\u00fang t\\u00f4i cam k\\u1ebft mang \\u0111\\u1ebfn d\\u1ecbch v\\u1ee5 ch\\u0103m s\\u00f3c kh\\u00e1ch h\\u00e0ng t\\u1ed1t nh\\u1ea5t. N\\u1ebfu b\\u1ea1n c\\u00f3 b\\u1ea5t k\\u1ef3 c\\u00e2u h\\u1ecfi hay th\\u1eafc m\\u1eafc n\\u00e0o v\\u1ec1 s\\u1ea3n ph\\u1ea9m, \\u0111\\u01a1n h\\u00e0ng hay d\\u1ecbch v\\u1ee5, \\u0111\\u1eebng ng\\u1ea7n ng\\u1ea1i li\\u00ean h\\u1ec7 v\\u1edbi ch\\u00fang t\\u00f4i qua:<\\/p>\\r\\n<p style=\\\"text-align: justify;\\\">Hotline: [S\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i]<br>Email: [Email li\\u00ean h\\u1ec7]<br>Live Chat: T\\u1ea1i trang web \\u0111\\u1ec3 gi\\u1ea3i \\u0111\\u00e1p th\\u1eafc m\\u1eafc nhanh ch\\u00f3ng.<br>\\u0110\\u1eb7t Mua Ngay<br>H\\u00e3y ch\\u1ecdn ngay chi\\u1ebfc \\u0111\\u1ed3ng h\\u1ed3 m\\u00e0 b\\u1ea1n y\\u00eau th\\u00edch v\\u00e0 l\\u00e0m \\u0111\\u1eb9p th\\u00eam cho phong c\\u00e1ch c\\u1ee7a m\\u00ecnh. Ch\\u00fang t\\u00f4i s\\u1ebd giao s\\u1ea3n ph\\u1ea9m \\u0111\\u1ebfn t\\u1eadn tay b\\u1ea1n v\\u1edbi d\\u1ecbch v\\u1ee5 giao h\\u00e0ng nhanh ch\\u00f3ng v\\u00e0 b\\u1ea3o m\\u1eadt.<\\/p>\",\"fulltext\":\"\",\"state\":\"1\",\"catid\":2,\"created\":\"2024-12-18 09:36:00\",\"created_by\":32,\"created_by_alias\":\"\",\"modified\":\"2024-12-18 09:36:00\",\"modified_by\":32,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2024-12-18 09:36:00\",\"publish_down\":null,\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":\\\"\\\",\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":\\\"\\\",\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":\\\"\\\",\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":\"1\",\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":1,\"hits\":0,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"note\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_languages`
--

CREATE TABLE `d6gvw_languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_languages`
--

INSERT INTO `d6gvw_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_mail_templates`
--

CREATE TABLE `d6gvw_mail_templates` (
  `template_id` varchar(127) NOT NULL DEFAULT '',
  `extension` varchar(127) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `htmlbody` mediumtext NOT NULL,
  `attachments` text NOT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_mail_templates`
--

INSERT INTO `d6gvw_mail_templates` (`template_id`, `extension`, `language`, `subject`, `body`, `htmlbody`, `attachments`, `params`) VALUES
('com_actionlogs.notification', 'com_actionlogs', '', 'COM_ACTIONLOGS_EMAIL_SUBJECT', 'COM_ACTIONLOGS_EMAIL_BODY', 'COM_ACTIONLOGS_EMAIL_HTMLBODY', '', '{\"tags\":[\"message\",\"date\",\"extension\",\"username\"]}'),
('com_config.test_mail', 'com_config', '', 'COM_CONFIG_SENDMAIL_SUBJECT', 'COM_CONFIG_SENDMAIL_BODY', '', '', '{\"tags\":[\"sitename\",\"method\"]}'),
('com_contact.mail', 'com_contact', '', 'COM_CONTACT_ENQUIRY_SUBJECT', 'COM_CONTACT_ENQUIRY_TEXT', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\"]}'),
('com_contact.mail.copy', 'com_contact', '', 'COM_CONTACT_COPYSUBJECT_OF', 'COM_CONTACT_COPYTEXT_OF', '', '', '{\"tags\":[\"sitename\",\"name\",\"email\",\"subject\",\"body\",\"url\",\"customfields\",\"contactname\"]}'),
('com_messages.new_message', 'com_messages', '', 'COM_MESSAGES_NEW_MESSAGE', 'COM_MESSAGES_NEW_MESSAGE_BODY', '', '', '{\"tags\":[\"subject\",\"message\",\"fromname\",\"sitename\",\"siteurl\",\"fromemail\",\"toname\",\"toemail\"]}'),
('com_privacy.notification.admin.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.admin.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_ADMIN_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.export', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_EXPORT_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_EXPORT_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.notification.remove', 'com_privacy', '', 'COM_PRIVACY_EMAIL_REQUEST_SUBJECT_REMOVE_REQUEST', 'COM_PRIVACY_EMAIL_REQUEST_BODY_REMOVE_REQUEST', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('com_privacy.userdataexport', 'com_privacy', '', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_SUBJECT', 'COM_PRIVACY_EMAIL_DATA_EXPORT_COMPLETED_BODY', '', '', '{\"tags\":[\"sitename\",\"url\"]}'),
('com_users.massmail.mail', 'com_users', '', 'COM_USERS_MASSMAIL_MAIL_SUBJECT', 'COM_USERS_MASSMAIL_MAIL_BODY', '', '', '{\"tags\":[\"subject\",\"body\",\"subjectprefix\",\"bodysuffix\"]}'),
('com_users.password_reset', 'com_users', '', 'COM_USERS_EMAIL_PASSWORD_RESET_SUBJECT', 'COM_USERS_EMAIL_PASSWORD_RESET_BODY', '', '', '{\"tags\":[\"name\",\"email\",\"sitename\",\"link_text\",\"link_html\",\"token\"]}'),
('com_users.registration.admin.new_notification', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_NOTIFICATION_TO_ADMIN_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.admin.verification_request', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATE_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"email\",\"username\",\"activate\"]}'),
('com_users.registration.user.admin_activated', 'com_users', '', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_SUBJECT', 'COM_USERS_EMAIL_ACTIVATED_BY_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.admin_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ADMIN_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.registration_mail', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.registration_mail_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.registration.user.self_activation', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY_NOPW', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\"]}'),
('com_users.registration.user.self_activation_w_pw', 'com_users', '', 'COM_USERS_EMAIL_ACCOUNT_DETAILS', 'COM_USERS_EMAIL_REGISTERED_WITH_ACTIVATION_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"activate\",\"siteurl\",\"username\",\"password_clear\"]}'),
('com_users.reminder', 'com_users', '', 'COM_USERS_EMAIL_USERNAME_REMINDER_SUBJECT', 'COM_USERS_EMAIL_USERNAME_REMINDER_BODY', '', '', '{\"tags\":[\"name\",\"username\",\"sitename\",\"email\",\"link_text\",\"link_html\"]}'),
('plg_multifactorauth_email.mail', 'plg_multifactorauth_email', '', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_SUBJECT', 'PLG_MULTIFACTORAUTH_EMAIL_EMAIL_BODY', '', '', '{\"tags\":[\"code\",\"sitename\",\"siteurl\",\"username\",\"email\",\"fullname\"]}'),
('plg_system_tasknotification.failure_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FAILURE_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\", \"exit_code\", \"exec_data_time\", \"task_output\"]}'),
('plg_system_tasknotification.fatal_recovery_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_FATAL_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.orphan_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_ORPHAN_MAIL_BODY', '', '', '{\"tags\": [\"task_id\", \"task_title\"]}'),
('plg_system_tasknotification.success_mail', 'plg_system_tasknotification', '', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_SUBJECT', 'PLG_SYSTEM_TASK_NOTIFICATION_SUCCESS_MAIL_BODY', '', '', '{\"tags\":[\"task_id\", \"task_title\", \"exec_data_time\", \"task_output\"]}'),
('plg_task_privacyconsent.request.reminder', 'plg_task_privacyconsent', '', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_SUBJECT', 'PLG_TASK_PRIVACYCONSENT_EMAIL_REMIND_BODY', '', '', '{\"tags\":[\"sitename\",\"url\",\"tokenurl\",\"formurl\",\"token\"]}'),
('plg_task_updatenotification.mail', 'plg_task_updatenotification', '', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_SUBJECT', 'PLG_TASK_UPDATENOTIFICATION_EMAIL_BODY', '', '', '{\"tags\":[\"newversion\",\"curversion\",\"sitename\",\"url\",\"link\",\"releasenews\"]}'),
('plg_user_joomla.mail', 'plg_user_joomla', '', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_SUBJECT', 'PLG_USER_JOOMLA_NEW_USER_EMAIL_BODY', '', '', '{\"tags\":[\"name\",\"sitename\",\"url\",\"username\",\"password\",\"email\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_menu`
--

CREATE TABLE `d6gvw_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to #__users.id',
  `checked_out_time` datetime DEFAULT NULL COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_menu`
--

INSERT INTO `d6gvw_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`, `publish_up`, `publish_down`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, NULL, NULL, 0, 0, '', 0, '', 0, 123, 0, '*', 0, NULL, NULL),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 3, NULL, NULL, 0, 0, 'class:bookmark', 0, '', 1, 10, 0, '*', 1, NULL, NULL),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners&view=banners', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1, NULL, NULL),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&view=categories&extension=com_banners', 'component', 1, 2, 2, 5, NULL, NULL, 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1, NULL, NULL),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1, NULL, NULL),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 3, NULL, NULL, 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1, NULL, NULL),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 7, NULL, NULL, 0, 0, 'class:address-book', 0, '', 11, 20, 0, '*', 1, NULL, NULL),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact&view=contacts', 'component', 1, 7, 2, 7, NULL, NULL, 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1, NULL, NULL),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&view=categories&extension=com_contact', 'component', 1, 7, 2, 5, NULL, NULL, 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1, NULL, NULL),
(10, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 16, NULL, NULL, 0, 0, 'class:rss', 0, '', 23, 28, 0, '*', 1, NULL, NULL),
(11, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds&view=newsfeeds', 'component', 1, 10, 2, 16, NULL, NULL, 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1, NULL, NULL),
(12, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&view=categories&extension=com_newsfeeds', 'component', 1, 10, 2, 5, NULL, NULL, 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1, NULL, NULL),
(13, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 23, NULL, NULL, 0, 0, 'class:search-plus', 0, '', 29, 38, 0, '*', 1, NULL, NULL),
(14, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags&view=tags', 'component', 1, 1, 1, 25, NULL, NULL, 0, 1, 'class:tags', 0, '', 39, 40, 0, '', 1, NULL, NULL),
(15, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations&view=associations', 'component', 1, 1, 1, 30, NULL, NULL, 0, 0, 'class:language', 0, '', 21, 22, 0, '*', 1, NULL, NULL),
(16, 'main', 'mod_menu_fields', 'Contact Custom Fields', '', 'contact/Custom Fields', 'index.php?option=com_fields&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 16, 17, 0, '*', 1, NULL, NULL),
(17, 'main', 'mod_menu_fields_group', 'Contact Custom Fields Group', '', 'contact/Custom Fields Group', 'index.php?option=com_fields&view=groups&context=com_contact.contact', 'component', 1, 7, 2, 29, NULL, NULL, 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1, NULL, NULL),
(18, 'main', 'com_finder_index', 'Smart-Search-Index', '', 'Smart Search/Index', 'index.php?option=com_finder&view=index', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder', 0, '', 30, 31, 0, '*', 1, NULL, NULL),
(19, 'main', 'com_finder_maps', 'Smart-Search-Maps', '', 'Smart Search/Maps', 'index.php?option=com_finder&view=maps', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-maps', 0, '', 32, 33, 0, '*', 1, NULL, NULL),
(20, 'main', 'com_finder_filters', 'Smart-Search-Filters', '', 'Smart Search/Filters', 'index.php?option=com_finder&view=filters', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-filters', 0, '', 34, 35, 0, '*', 1, NULL, NULL),
(21, 'main', 'com_finder_searches', 'Smart-Search-Searches', '', 'Smart Search/Searches', 'index.php?option=com_finder&view=searches', 'component', 1, 13, 2, 23, NULL, NULL, 0, 0, 'class:finder-searches', 0, '', 36, 37, 0, '*', 1, NULL, NULL),
(101, 'mainmenu', 'TRANG CHỦ', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":1,\"blog_class_leading\":\"\",\"num_intro_articles\":3,\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":0,\"link_intro_image\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"1\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 41, 42, 1, '*', 0, NULL, NULL),
(102, 'mainmenu', 'SẢN PHẨM', 's-n-ph-m', '', 's-n-ph-m', '', 'heading', 1, 1, 1, 0, 32, '2024-12-18 09:27:06', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1}', 43, 50, 0, '*', 0, NULL, NULL),
(103, 'mainmenu', 'GIỚI THIỆU ', 'gi-i-thi-u', '', 'gi-i-thi-u', 'index.php?option=com_contact&view=featured', 'component', 1, 1, 1, 7, NULL, NULL, 0, 1, ' ', 0, '{\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 51, 52, 0, '*', 0, NULL, NULL),
(104, 'mainmenu', 'SALE', 'sale', '', 'sale', 'index.php?option=com_contact&view=featured', 'component', 1, 1, 1, 7, NULL, NULL, 0, 1, ' ', 0, '{\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 53, 54, 0, '*', 0, NULL, NULL),
(105, 'mainmenu', 'SỰ KIỆN', 's-ki-n', '', 's-ki-n', 'index.php?option=com_contact&view=featured', 'component', 1, 1, 1, 7, NULL, NULL, 0, 1, ' ', 0, '{\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 55, 56, 0, '*', 0, NULL, NULL),
(106, 'mainmenu', 'GIỎ HÀNG', 'v-hang', '', 'v-hang', 'index.php?option=com_virtuemart&view=cart', 'component', 1, 1, 1, 250, NULL, NULL, 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 57, 58, 0, '*', 0, NULL, NULL),
(107, 'mainmenu', 'LIÊN HỆ', 'lien-h', '', 'lien-h', 'index.php?option=com_contact&view=featured', 'component', 1, 1, 1, 7, NULL, NULL, 0, 1, ' ', 0, '{\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 59, 60, 0, '*', 0, NULL, NULL),
(108, 'mainmenu', 'Đồng hồ thể thao', 'ph-ki-n', '', 's-n-ph-m/ph-ki-n', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 102, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 44, 45, 0, '*', 0, NULL, NULL),
(109, 'mainmenu', 'Đồng hồ nam', 'd-ng-h-nam', '', 's-n-ph-m/d-ng-h-nam', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=1&virtuemart_manufacturer_id=0&virtuemart_manufacturercategories_id=0&clearCart=0&limitstart=0', 'component', 1, 102, 2, 250, NULL, NULL, 0, 1, ' ', 0, '{\"show_store_desc\":\"\",\"categorylayout\":\"\",\"showcategory_desc\":\"\",\"showcategory\":\"\",\"categories_per_row\":\"\",\"showproducts\":\"\",\"showsearch\":\"\",\"productsublayout\":\"\",\"products_per_row\":\"\",\"featured\":\"\",\"featured_rows\":\"\",\"discontinued\":\"\",\"discontinued_rows\":\"\",\"latest\":\"\",\"latest_rows\":\"\",\"topten\":\"\",\"topten_rows\":\"\",\"recent\":\"\",\"recent_rows\":\"\",\"stf_itemid\":\"\",\"stf_categorylayout\":\"\",\"stf_show_store_desc\":\"\",\"stf_showcategory_desc\":\"\",\"stf_showcategory\":\"\",\"stf_categories_per_row\":\"\",\"stf_showproducts\":\"\",\"stf_showsearch\":\"\",\"stf_productsublayout\":\"\",\"stf_products_per_row\":\"\",\"stf_featured\":\"\",\"stf_featured_rows\":\"\",\"stf_discontinued\":\"\",\"stf_discontinued_rows\":\"\",\"stf_latest\":\"\",\"stf_latest_rows\":\"\",\"stf_topten\":\"\",\"stf_topten_rows\":\"\",\"stf_recent\":\"\",\"stf_recent_rows\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 46, 47, 0, '*', 0, NULL, NULL),
(110, 'mainmenu', 'Đồng hồ nữ', 'd-ng-h-n', '', 's-n-ph-m/d-ng-h-n', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 102, 2, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 48, 49, 0, '*', 0, NULL, NULL),
(111, 'mainmenu', 'PHỤ KIÊN', 'ph-kien', '', 'ph-kien', 'index.php?option=com_content&view=category&layout=blog&id=2', 'component', 1, 1, 1, 19, NULL, NULL, 0, 1, ' ', 0, '{\"layout_type\":\"blog\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"num_leading_articles\":\"\",\"blog_class_leading\":\"\",\"num_intro_articles\":\"\",\"blog_class\":\"\",\"num_columns\":\"\",\"multi_column_order\":\"\",\"num_links\":\"\",\"show_featured\":\"\",\"link_intro_image\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_icon_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"robots\":\"\"}', 61, 62, 0, '*', 0, NULL, NULL),
(112, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 1, 1, 1, 250, NULL, NULL, 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, '{}', 63, 104, 0, '', 1, NULL, NULL),
(113, 'main', 'COM_VIRTUEMART_CONTROL_PANEL', 'com-virtuemart-control-panel', '', 'com-virtuemart/com-virtuemart-control-panel', 'index.php?option=com_virtuemart&view=virtuemart', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 64, 65, 0, '', 1, NULL, NULL),
(114, 'main', 'COM_VIRTUEMART_MENU_ORDERS', 'com-virtuemart-menu-orders', '', 'com-virtuemart/com-virtuemart-menu-orders', 'index.php?option=com_virtuemart&view=orders', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 66, 67, 0, '', 1, NULL, NULL),
(115, 'main', 'COM_VIRTUEMART_REVIEW_RATE_S', 'com-virtuemart-review-rate-s', '', 'com-virtuemart/com-virtuemart-review-rate-s', 'index.php?option=com_virtuemart&view=ratings', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 68, 69, 0, '', 1, NULL, NULL),
(116, 'main', 'COM_VIRTUEMART_MENU_USERS', 'com-virtuemart-menu-users', '', 'com-virtuemart/com-virtuemart-menu-users', 'index.php?option=com_virtuemart&view=user', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 70, 71, 0, '', 1, NULL, NULL),
(117, 'main', 'COM_VIRTUEMART_COUPON_S', 'com-virtuemart-coupon-s', '', 'com-virtuemart/com-virtuemart-coupon-s', 'index.php?option=com_virtuemart&view=coupon', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 72, 73, 0, '', 1, NULL, NULL),
(118, 'main', 'COM_VIRTUEMART_MENU_PRODUCTS', 'com-virtuemart-menu-products', '', 'com-virtuemart/com-virtuemart-menu-products', 'index.php?option=com_virtuemart&view=product', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png', 0, '{}', 74, 75, 0, '', 1, NULL, NULL),
(119, 'main', 'COM_VIRTUEMART_MENU_CUSTOMS', 'com-virtuemart-menu-customs', '', 'com-virtuemart/com-virtuemart-menu-customs', 'index.php?option=com_virtuemart&view=custom', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-document_move.png', 0, '{}', 76, 77, 0, '', 1, NULL, NULL),
(120, 'main', 'COM_VIRTUEMART_MENU_MEDIAFILES', 'com-virtuemart-menu-mediafiles', '', 'com-virtuemart/com-virtuemart-menu-mediafiles', 'index.php?option=com_virtuemart&view=media', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png', 0, '{}', 78, 79, 0, '', 1, NULL, NULL),
(121, 'main', 'COM_VIRTUEMART_MENU_CATEGORIES', 'com-virtuemart-menu-categories', '', 'com-virtuemart/com-virtuemart-menu-categories', 'index.php?option=com_virtuemart&view=category', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png', 0, '{}', 80, 81, 0, '', 1, NULL, NULL),
(122, 'main', 'COM_VIRTUEMART_MENU_MANUFACTURERS', 'com-virtuemart-menu-manufacturers', '', 'com-virtuemart/com-virtuemart-menu-manufacturers', 'index.php?option=com_virtuemart&view=manufacturer', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png', 0, '{}', 82, 83, 0, '', 1, NULL, NULL),
(123, 'main', 'COM_VIRTUEMART_MENU_STORE', 'com-virtuemart-menu-store', '', 'com-virtuemart/com-virtuemart-menu-store', 'index.php?option=com_virtuemart&view=user&task=editshop', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png', 0, '{}', 84, 85, 0, '', 1, NULL, NULL),
(124, 'main', 'COM_VIRTUEMART_REPORT', 'com-virtuemart-report', '', 'com-virtuemart/com-virtuemart-report', 'index.php?option=com_virtuemart&view=report', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 86, 87, 0, '', 1, NULL, NULL),
(125, 'main', 'COM_VIRTUEMART_PRODUCT_INVENTORY', 'com-virtuemart-product-inventory', '', 'com-virtuemart/com-virtuemart-product-inventory', 'index.php?option=com_virtuemart&view=inventory', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-price_watch.png', 0, '{}', 88, 89, 0, '', 1, NULL, NULL),
(126, 'main', 'COM_VIRTUEMART_CALC_S', 'com-virtuemart-calc-s', '', 'com-virtuemart/com-virtuemart-calc-s', 'index.php?option=com_virtuemart&view=calc', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-calculator.png', 0, '{}', 90, 91, 0, '', 1, NULL, NULL),
(127, 'main', 'COM_VIRTUEMART_MENU_SHIPMENTMETHODS', 'com-virtuemart-menu-shipmentmethods', '', 'com-virtuemart/com-virtuemart-menu-shipmentmethods', 'index.php?option=com_virtuemart&view=shipmentmethod', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png', 0, '{}', 92, 93, 0, '', 1, NULL, NULL),
(128, 'main', 'COM_VIRTUEMART_MENU_PAYMENTMETHODS', 'com-virtuemart-menu-paymentmethods', '', 'com-virtuemart/com-virtuemart-menu-paymentmethods', 'index.php?option=com_virtuemart&view=paymentmethod', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png', 0, '{}', 94, 95, 0, '', 1, NULL, NULL),
(129, 'main', 'COM_VIRTUEMART_MENU_CONFIGURATION', 'com-virtuemart-menu-configuration', '', 'com-virtuemart/com-virtuemart-menu-configuration', 'index.php?option=com_virtuemart&view=config', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 96, 97, 0, '', 1, NULL, NULL),
(130, 'main', 'COM_VIRTUEMART_USERFIELD_S', 'com-virtuemart-userfield-s', '', 'com-virtuemart/com-virtuemart-userfield-s', 'index.php?option=com_virtuemart&view=userfields', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 98, 99, 0, '', 1, NULL, NULL),
(131, 'main', 'COM_VIRTUEMART_CURRENCY_S', 'com-virtuemart-currency-s', '', 'com-virtuemart/com-virtuemart-currency-s', 'index.php?option=com_virtuemart&view=currency', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 100, 101, 0, '', 1, NULL, NULL),
(132, 'main', 'COM_VIRTUEMART_COUNTRY_S', 'com-virtuemart-country-s', '', 'com-virtuemart/com-virtuemart-country-s', 'index.php?option=com_virtuemart&view=country', 'component', 1, 112, 2, 250, NULL, NULL, 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 102, 103, 0, '', 1, NULL, NULL),
(133, 'main', 'VirtueMart AIO', 'virtuemart-aio', '', 'virtuemart-aio', 'index.php?option=com_virtuemart_allinone', 'component', 1, 1, 1, 251, NULL, NULL, 0, 1, 'class:component', 0, '{}', 105, 106, 0, '', 1, NULL, NULL),
(134, 'main', 'TCPDF', 'tcpdf', '', 'tcpdf', 'index.php?option=com_tcpdf', 'component', 1, 1, 1, 280, NULL, NULL, 0, 1, 'class:component', 0, '{}', 107, 108, 0, '', 1, NULL, NULL),
(135, 'main', 'COM_FLEXBANNERS_MENU_FLEXBANNER', 'com-flexbanners-menu-flexbanner', '', 'com-flexbanners-menu-flexbanner', 'index.php?option=com_flexbanners', 'component', 1, 1, 1, 285, NULL, NULL, 0, 1, 'class:bookmark', 0, '{}', 109, 122, 0, '', 1, NULL, NULL),
(136, 'main', 'COM_FLEXBANNERS_MENU_FLEXBANNER', 'com-flexbanners-menu-flexbanner', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-flexbanner', 'index.php?option=com_flexbanners', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'class:flexbanners', 0, '{}', 110, 111, 0, '', 1, NULL, NULL),
(137, 'main', 'COM_FLEXBANNERS_MENU_CATEGORY', 'com-flexbanners-menu-category', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-category', 'index.php?option=com_categories&extension=com_flexbanners', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'components/com_flexbanners/flexbanner-16.png', 0, '{}', 112, 113, 0, '', 1, NULL, NULL),
(138, 'main', 'COM_FLEXBANNERS_MENU_CLIENTS', 'com-flexbanners-menu-clients', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-clients', 'index.php?option=com_flexbanners&view=clients', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'components/com_flexbanners/flexbanner-16.png', 0, '{}', 114, 115, 0, '', 1, NULL, NULL),
(139, 'main', 'COM_FLEXBANNERS_MENU_LINKS', 'com-flexbanners-menu-links', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-links', 'index.php?option=com_flexbanners&view=links', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'components/com_flexbanners/flexbanner-16.png', 0, '{}', 116, 117, 0, '', 1, NULL, NULL),
(140, 'main', 'COM_FLEXBANNERS_MENU_LOCATIONS', 'com-flexbanners-menu-locations', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-locations', 'index.php?option=com_flexbanners&view=locations', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'components/com_flexbanners/flexbanner-16.png', 0, '{}', 118, 119, 0, '', 1, NULL, NULL),
(141, 'main', 'COM_FLEXBANNERS_MENU_SIZES', 'com-flexbanners-menu-sizes', '', 'com-flexbanners-menu-flexbanner/com-flexbanners-menu-sizes', 'index.php?option=com_flexbanners&view=sizes', 'component', 1, 135, 2, 285, NULL, NULL, 0, 1, 'components/com_flexbanners/flexbanner-16.png', 0, '{}', 120, 121, 0, '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_menu_types`
--

CREATE TABLE `d6gvw_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_menu_types`
--

INSERT INTO `d6gvw_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`, `ordering`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_messages`
--

CREATE TABLE `d6gvw_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `date_time` datetime NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_messages_cfg`
--

CREATE TABLE `d6gvw_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_modules`
--

CREATE TABLE `d6gvw_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_modules`
--

INSERT INTO `d6gvw_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":1,\"endLevel\":0,\"showAllChildren\":1,\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\",\"module_style\":\"tt_default\",\"active_color\":\"#333333\",\"hover_color\":\"#333333\",\"normal_color\":\"#333333\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 6, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', NULL, NULL, NULL, NULL, 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Notifications', '', '', 3, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 3, 1, '{\"context\":\"update_quickicon\",\"header_icon\":\"icon-sync\",\"show_jupdate\":\"1\",\"show_eupdate\":\"1\",\"show_oupdate\":\"1\",\"show_privacy\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', NULL, NULL, NULL, NULL, 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', NULL, NULL, NULL, NULL, 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'sidebar-right', NULL, NULL, NULL, NULL, 1, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'breadcrumbs', NULL, NULL, NULL, NULL, 1, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 2, 'status', NULL, NULL, NULL, NULL, 1, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_version', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 1, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_sampledata', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(88, 67, 'Latest Actions', '', '', 3, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_latestactions', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(89, 68, 'Privacy Dashboard', '', '', 5, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 6, 1, '{\"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(90, 89, 'Login Support', '', '', 1, 'sidebar', NULL, NULL, NULL, NULL, 1, 'mod_loginsupport', 1, 1, '{\"forum_url\":\"https://forum.joomla.org/\",\"documentation_url\":\"https://docs.joomla.org/\",\"news_url\":\"https://www.joomla.org/announcements.html\",\"automatic_title\":1,\"prepare_content\":1,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 1, '*'),
(91, 72, 'System Dashboard', '', '', 1, 'cpanel-system', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"system\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(92, 73, 'Content Dashboard', '', '', 1, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"content\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(93, 74, 'Menus Dashboard', '', '', 1, 'cpanel-menus', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"menus\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(94, 75, 'Components Dashboard', '', '', 1, 'cpanel-components', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"components\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(95, 76, 'Users Dashboard', '', '', 1, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"users\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\",\"style\":\"System-none\"}', 1, '*'),
(96, 86, 'Popular Articles', '', '', 3, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(97, 87, 'Recently Added Articles', '', '', 4, 'cpanel-content', NULL, NULL, NULL, NULL, 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(98, 88, 'Logged-in Users', '', '', 2, 'cpanel-users', NULL, NULL, NULL, NULL, 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\", \"bootstrap_size\": \"12\",\"header_tag\":\"h2\"}', 1, '*'),
(99, 77, 'Frontend Link', '', '', 5, 'status', NULL, NULL, NULL, NULL, 1, 'mod_frontend', 1, 1, '', 1, '*'),
(100, 78, 'Messages', '', '', 4, 'status', NULL, NULL, NULL, NULL, 1, 'mod_messages', 3, 1, '', 1, '*'),
(101, 79, 'Post Install Messages', '', '', 3, 'status', NULL, NULL, NULL, NULL, 1, 'mod_post_installation_messages', 3, 1, '', 1, '*'),
(102, 80, 'User Status', '', '', 6, 'status', NULL, NULL, NULL, NULL, 1, 'mod_user', 3, 1, '', 1, '*'),
(103, 70, 'Site', '', '', 1, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"site_quickicon\",\"header_icon\":\"icon-desktop\",\"show_users\":\"1\",\"show_articles\":\"1\",\"show_categories\":\"1\",\"show_media\":\"1\",\"show_menuItems\":\"1\",\"show_modules\":\"1\",\"show_plugins\":\"1\",\"show_templates\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(104, 71, 'System', '', '', 2, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"system_quickicon\",\"header_icon\":\"icon-wrench\",\"show_global\":\"1\",\"show_checkin\":\"1\",\"show_cache\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(105, 82, '3rd Party', '', '', 4, 'icon', NULL, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{\"context\":\"mod_quickicon\",\"header_icon\":\"icon-boxes\",\"load_plugins\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(106, 83, 'Help Dashboard', '', '', 1, 'cpanel-help', NULL, NULL, NULL, NULL, 1, 'mod_submenu', 1, 0, '{\"menutype\":\"*\",\"preset\":\"help\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"style\":\"System-none\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(107, 84, 'Privacy Requests', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_dashboard', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(108, 85, 'Privacy Status', '', '', 1, 'cpanel-privacy', NULL, NULL, NULL, NULL, 1, 'mod_privacy_status', 1, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":1,\"cache_time\":900,\"cachemode\":\"static\",\"style\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"12\",\"header_tag\":\"h2\",\"header_class\":\"\"}', 1, '*'),
(109, 96, 'Guided Tours', '', '', 1, 'status', NULL, NULL, NULL, NULL, 1, 'mod_guidedtours', 1, 1, '', 1, '*'),
(110, 100, 'Import Content', '', '', -1, 'cpanel', NULL, NULL, NULL, NULL, 1, 'mod_ttcontent', 2, 1, '', 1, '*'),
(111, 101, 'mod_jdsimplecontactform', '', '', 2, '', NULL, NULL, NULL, NULL, 0, 'mod_jdsimplecontactform', 1, 1, '', 0, '*'),
(112, 112, 'VM - Currencies Selector', '', NULL, 5, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_currencies', 1, 1, '', 0, '*'),
(113, 113, 'VM - Featured products', '', NULL, 3, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_product', 1, 1, '', 0, '*'),
(114, 114, 'VM - Search in Shop', '', NULL, 2, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_search', 1, 1, '', 0, '*'),
(115, 115, 'VM - Manufacturer', '', NULL, 8, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_manufacturer', 1, 1, '', 0, '*'),
(116, 116, 'VM - Shopping cart', '', NULL, 9, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_cart', 1, 1, '', 0, '*'),
(117, 117, 'VM - Category', '', NULL, 4, 'position-4', NULL, NULL, NULL, NULL, 1, 'mod_virtuemart_category', 1, 1, '', 0, '*'),
(118, 119, 'mod_virtuemart_languages', '', '', 3, '', NULL, NULL, NULL, NULL, 0, 'mod_virtuemart_languages', 1, 1, '', 0, '*'),
(119, 120, 'VirtueMart Vendor Information', '', '', 4, '', NULL, NULL, NULL, NULL, 0, 'mod_virtuemart_vendor', 1, 1, '', 0, '*'),
(120, 122, 'banners', '', '', 1, 'menu', NULL, NULL, '2024-12-18 08:39:50', NULL, 1, 'mod_flexbanners', 1, 1, '{\"locationid\":\"1\",\"numberbanner\":\"10\",\"ordering\":\"down\",\"loadlast\":\"0\",\"enablecsa\":\"0\",\"enabletrans\":\"0\",\"header_text\":\"\",\"footer_text\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(121, 124, 'Live Chat and ChatBot - ChatAndBot', '', '', 1, 'MAModulePosition03', NULL, NULL, '2024-12-18 09:04:56', NULL, 1, 'mod_chatandbot', 1, 1, '{\"js\":\"npm install openai axios\\r\\n\\r\\nconst axios = require(\'axios\');\\r\\n\\r\\n\\/\\/ Thay th\\u1ebf b\\u1eb1ng API Key c\\u1ee7a b\\u1ea1n t\\u1eeb OpenAI\\r\\nconst OPENAI_API_KEY = \'your-api-key\';\\r\\n\\r\\n\\/\\/ H\\u00e0m g\\u1ecdi API OpenAI \\u0111\\u1ec3 t\\u1ea1o c\\u00e2u tr\\u1ea3 l\\u1eddi chatbot\\r\\nasync function getChatBotResponse(userInput) {\\r\\n    try {\\r\\n        const response = await axios.post(\'https:\\/\\/api.openai.com\\/v1\\/completions\', {\\r\\n            model: \'text-davinci-003\',\\r\\n            prompt: userInput,\\r\\n            max_tokens: 150,\\r\\n            temperature: 0.7,\\r\\n        }, {\\r\\n            headers: {\\r\\n                \'Authorization\': `Bearer ${OPENAI_API_KEY}`,\\r\\n                \'Content-Type\': \'application\\/json\',\\r\\n            },\\r\\n        });\\r\\n\\r\\n        const chatbotReply = response.data.choices[0].text.trim();\\r\\n        return chatbotReply;\\r\\n    } catch (error) {\\r\\n        console.error(\'Error fetching chatbot response:\', error);\\r\\n        return \'Xin l\\u1ed7i, t\\u00f4i kh\\u00f4ng th\\u1ec3 tr\\u1ea3 l\\u1eddi l\\u00fac n\\u00e0y.\';\\r\\n    }\\r\\n}\\r\\n\\r\\n\\/\\/ H\\u00e0m main \\u0111\\u1ec3 ch\\u1ea1y chat\\r\\nasync function aiChat() {\\r\\n    const userInput = \\\"Xin ch\\u00e0o!\\\";  \\/\\/ \\u0110\\u00e2y l\\u00e0 v\\u00ed d\\u1ee5, b\\u1ea1n c\\u00f3 th\\u1ec3 thay th\\u1ebf b\\u1eb1ng input th\\u1ef1c t\\u1ebf\\r\\n    const botResponse = await getChatBotResponse(userInput);\\r\\n    console.log(\\\"ChatBot: \\\", botResponse);\\r\\n}\\r\\n\\r\\naiChat();\\r\\n\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_modules_menu`
--

CREATE TABLE `d6gvw_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT 0,
  `menuid` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_modules_menu`
--

INSERT INTO `d6gvw_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0),
(99, 0),
(100, 0),
(101, 0),
(102, 0),
(103, 0),
(104, 0),
(105, 0),
(106, 0),
(107, 0),
(108, 0),
(109, 0),
(110, 0),
(112, 0),
(113, 0),
(114, 0),
(115, 0),
(116, 0),
(117, 0),
(120, 101),
(120, 103),
(120, 104),
(120, 105),
(120, 106),
(120, 107),
(120, 108),
(120, 109),
(120, 110),
(120, 111),
(121, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_newsfeeds`
--

CREATE TABLE `d6gvw_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) NOT NULL DEFAULT '',
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT 3600,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rtl` tinyint(4) NOT NULL DEFAULT 0,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL,
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `metakey` text DEFAULT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL,
  `description` text NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_overrider`
--

CREATE TABLE `d6gvw_overrider` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_postinstall_messages`
--

CREATE TABLE `d6gvw_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT 700 COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_postinstall_messages`
--

INSERT INTO `d6gvw_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 240, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(2, 240, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(3, 240, 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_TITLE', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_BODY', 'PLG_SYSTEM_HTTPHEADERS_POSTINSTALL_INTRODUCTION_ACTION', 'plg_system_httpheaders', 1, 'action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_action', 'site://plugins/system/httpheaders/postinstall/introduction.php', 'httpheaders_postinstall_condition', '4.0.0', 1),
(4, 240, 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_TITLE', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_BODY', 'COM_USERS_POSTINSTALL_MULTIFACTORAUTH_ACTION', 'com_users', 1, 'action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_action', 'admin://components/com_users/postinstall/multifactorauth.php', 'com_users_postinstall_mfa_condition', '4.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_privacy_consents`
--

CREATE TABLE `d6gvw_privacy_consents` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `state` int(11) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `remind` tinyint(4) NOT NULL DEFAULT 0,
  `token` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_privacy_requests`
--

CREATE TABLE `d6gvw_privacy_requests` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL DEFAULT '',
  `requested_at` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `request_type` varchar(25) NOT NULL DEFAULT '',
  `confirm_token` varchar(100) NOT NULL DEFAULT '',
  `confirm_token_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_redirect_links`
--

CREATE TABLE `d6gvw_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) NOT NULL,
  `new_url` varchar(2048) DEFAULT NULL,
  `referer` varchar(2048) NOT NULL,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `header` smallint(6) NOT NULL DEFAULT 301
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_scheduler_tasks`
--

CREATE TABLE `d6gvw_scheduler_tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(128) NOT NULL COMMENT 'unique identifier for job defined by plugin',
  `execution_rules` text DEFAULT NULL COMMENT 'Execution Rules, Unprocessed',
  `cron_rules` text DEFAULT NULL COMMENT 'Processed execution rules, crontab-like JSON form',
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `last_exit_code` int(11) NOT NULL DEFAULT 0 COMMENT 'Exit code when job was last run',
  `last_execution` datetime DEFAULT NULL COMMENT 'Timestamp of last run',
  `next_execution` datetime DEFAULT NULL COMMENT 'Timestamp of next (planned) run, referred for execution on trigger',
  `times_executed` int(11) DEFAULT 0 COMMENT 'Count of successful triggers',
  `times_failed` int(11) DEFAULT 0 COMMENT 'Count of failures',
  `locked` datetime DEFAULT NULL,
  `priority` smallint(6) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0 COMMENT 'Configurable list ordering',
  `cli_exclusive` smallint(6) NOT NULL DEFAULT 0 COMMENT 'If 1, the task is only accessible via CLI',
  `params` text NOT NULL,
  `note` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_scheduler_tasks`
--

INSERT INTO `d6gvw_scheduler_tasks` (`id`, `asset_id`, `title`, `type`, `execution_rules`, `cron_rules`, `state`, `last_exit_code`, `last_execution`, `next_execution`, `times_executed`, `times_failed`, `locked`, `priority`, `ordering`, `cli_exclusive`, `params`, `note`, `created`, `created_by`, `checked_out`, `checked_out_time`) VALUES
(1, 97, 'Rotate Logs', 'rotation.logs', '{\"rule-type\":\"interval-days\",\"interval-days\":\"30\",\"exec-day\":\"18\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"P30D\"}', 1, 0, NULL, '2025-01-17 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"logstokeep\":1}', NULL, '2024-12-18 06:39:13', 32, NULL, NULL),
(2, 98, 'Session GC', 'session.gc', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, NULL, '2024-12-19 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"enable_session_gc\":1,\"enable_session_metadata_gc\":1}', NULL, '2024-12-18 06:39:13', 32, NULL, NULL),
(3, 99, 'Update Notification', 'update.notification', '{\"rule-type\":\"interval-hours\",\"interval-hours\":\"24\",\"exec-day\":\"01\",\"exec-time\":\"06:00\"}', '{\"type\":\"interval\",\"exp\":\"PT24H\"}', 1, 0, NULL, '2024-12-19 06:00:00', 0, 0, NULL, 0, 0, 0, '{\"individual_log\":false,\"log_file\":\"\",\"notifications\":{\"success_mail\":\"0\",\"failure_mail\":\"1\",\"fatal_failure_mail\":\"1\",\"orphan_mail\":\"1\"},\"email\":\"\",\"language_override\":\"\"}', NULL, '2024-12-18 06:39:13', 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_schemaorg`
--

CREATE TABLE `d6gvw_schemaorg` (
  `id` int(10) UNSIGNED NOT NULL,
  `itemId` int(10) UNSIGNED DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `schemaType` varchar(100) DEFAULT NULL,
  `schema` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_schemas`
--

CREATE TABLE `d6gvw_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_schemas`
--

INSERT INTO `d6gvw_schemas` (`extension_id`, `version_id`) VALUES
(240, '5.2.2-2024-09-24'),
(285, '5.1.07');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_session`
--

CREATE TABLE `d6gvw_session` (
  `session_id` varbinary(192) NOT NULL,
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(3) UNSIGNED DEFAULT 1,
  `time` int(11) NOT NULL DEFAULT 0,
  `data` mediumtext DEFAULT NULL,
  `userid` int(11) DEFAULT 0,
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_session`
--

INSERT INTO `d6gvw_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
(0x367567683732623075617676756d706e71317635717135363532, 1, 0, 1734514712, 'joomla|s:8892:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjg6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjEzMTA7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNzM0NTAzOTk1O3M6NDoibGFzdCI7aToxNzM0NTE0NzEyO3M6Mzoibm93IjtpOjE3MzQ1MTQ3MTI7fXM6NToidG9rZW4iO3M6MzI6Ijc5MTgzZmEzMjg1YWFkY2IyMzNlY2QyMGY0MzYyOWZmIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjExOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjo0OntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO3M6MTI6InJlZGlyZWN0X3VybCI7TjtzOjY6Im1hbmFnZSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo2OiJmaWx0ZXIiO2E6Nzp7czo2OiJzZWFyY2giO3M6NjoiYmFubmVyIjtzOjY6InN0YXR1cyI7czowOiIiO3M6OToiY2xpZW50X2lkIjtzOjA6IiI7czo0OiJ0eXBlIjtzOjA6IiI7czo2OiJmb2xkZXIiO3M6MDoiIjtzOjEwOiJwYWNrYWdlX2lkIjtzOjA6IiI7czo0OiJjb3JlIjtzOjA6IiI7fXM6NDoibGlzdCI7YToyOntzOjEyOiJmdWxsb3JkZXJpbmciO3M6ODoibmFtZSBBU0MiO3M6NToibGltaXQiO3M6MjoiMjAiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX1zOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjozOntzOjk6InRlbXBsYXRlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO2k6MDtzOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6OToiYS5lbGVtZW50IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjY6InN0eWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo5OiJjbGllbnRfaWQiO3M6MToiMCI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnRlbXBsYXRlIjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NToic3R5bGUiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjk6ImNvbV9tZW51cyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo1OiJpdGVtcyI7Tzo4OiJzdGRDbGFzcyI6NDp7czo4OiJtZW51dHlwZSI7czo4OiJtYWlubWVudSI7czo5OiJjbGllbnRfaWQiO2k6MDtzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjU6ImEubGZ0IjtzOjU6InN0YXJ0IjtkOjA7fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiaXRlbSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoyOiJpZCI7YToxOntpOjA7aToxMDI7fXM6NDoiZGF0YSI7TjtzOjQ6InR5cGUiO047czo0OiJsaW5rIjtOO319fXM6MTQ6ImNvbV9jYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjoyOntzOjEwOiJjYXRlZ29yaWVzIjtPOjg6InN0ZENsYXNzIjozOntzOjc6ImNvbnRlbnQiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czoxMToiY29tX2NvbnRlbnQiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9czo1OiJtb2RhbCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiZXh0ZW5zaW9uIjtzOjExOiJjb21fY29udGVudCI7fXM6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fXM6NToidXNlcnMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmlsdGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjk6ImV4dGVuc2lvbiI7czo5OiJjb21fdXNlcnMiO31zOjQ6Imxpc3QiO2E6NDp7czo5OiJkaXJlY3Rpb24iO3M6MzoiYXNjIjtzOjU6ImxpbWl0IjtpOjIwO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fXM6MTE6ImZsZXhiYW5uZXJzIjtPOjg6InN0ZENsYXNzIjoyOntzOjY6ImZpbHRlciI7Tzo4OiJzdGRDbGFzcyI6MTp7czo5OiJleHRlbnNpb24iO3M6MTU6ImNvbV9mbGV4YmFubmVycyI7fXM6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czo1OiJhLmxmdCI7czo1OiJzdGFydCI7ZDowO319fXM6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJjYXRlZ29yeSI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJkYXRhIjtOO3M6NzoiY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO31zOjExOiJmbGV4YmFubmVycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJkYXRhIjtOO31zOjI6ImlkIjthOjA6e319fX1zOjExOiJjb21fbW9kdWxlcyI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJtb2R1bGVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjE6IjAiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiY2xpZW50X2lkIjtpOjA7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLnBvc2l0aW9uIjtzOjU6InN0YXJ0IjtkOjA7fX19czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6Im1vZHVsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319czozOiJhZGQiO086ODoic3RkQ2xhc3MiOjE6e3M6NjoibW9kdWxlIjtPOjg6InN0ZENsYXNzIjoyOntzOjEyOiJleHRlbnNpb25faWQiO047czo2OiJwYXJhbXMiO047fX19czoxMToiY29tX2NvbnRlbnQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo3OiJhcnRpY2xlIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YToxOntpOjA7aTo1O319fX1zOjE0OiJjb21fdmlydHVlbWFydCI7Tzo4OiJzdGRDbGFzcyI6NTp7czo4OiJjYXRlZ29yeSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxNToidG9wX2NhdGVnb3J5X2lkIjtzOjA6IiI7fXM6NzoicHJvZHVjdCI7Tzo4OiJzdGRDbGFzcyI6MTE6e3M6MzoiYWRkIjtPOjg6InN0ZENsYXNzIjozOntzOjEyOiJmaWx0ZXJfb3JkZXIiO3M6MTA6ImNyZWF0ZWRfb24iO3M6MTY6ImZpbHRlcl9vcmRlcl9EaXIiO3M6NDoiREVTQyI7czoxMToic2VhcmNoX3R5cGUiO3M6MDoiIjt9czoyMjoidmlydHVlbWFydF9jYXRlZ29yeV9pZCI7YToxOntpOjA7czoxOiIwIjt9czoyNjoidmlydHVlbWFydF9tYW51ZmFjdHVyZXJfaWQiO3M6MToiMCI7czoxNDoiZmlsdGVyX3Byb2R1Y3QiO3M6MDoiIjtzOjExOiJzZWFyY2hfdHlwZSI7czowOiIiO3M6MTI6InNlYXJjaF9vcmRlciI7czoyOiJiZiI7czoxMToic2VhcmNoX2RhdGUiO3M6MTU6Ijg6MzcgMTguMTIuMjAyNCI7czoxNDoibGlzdF9wdWJsaXNoZWQiO3M6MjoiLTEiO3M6MTU6InByb2R1Y3RTaG9wcGVycyI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZmlsdGVyX29yZGVyIjtzOjEwOiJjcmVhdGVkX29uIjtzOjE2OiJmaWx0ZXJfb3JkZXJfRGlyIjtzOjQ6IkRFU0MiO31zOjQ6InNhdmUiO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6ImZpbHRlcl9vcmRlciI7czoxMDoiY3JlYXRlZF9vbiI7czoxNjoiZmlsdGVyX29yZGVyX0RpciI7czo0OiJERVNDIjt9czo1OiJhcHBseSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoxMjoiZmlsdGVyX29yZGVyIjtzOjEwOiJjcmVhdGVkX29uIjtzOjE2OiJmaWx0ZXJfb3JkZXJfRGlyIjtzOjQ6IkRFU0MiO319czoyMDoidmlydHVlbWFydF9jdXN0b21faWQiO2E6MTp7aTowO3M6MDoiIjt9czo0OiJ1c2VyIjtPOjg6InN0ZENsYXNzIjoxOntzOjE0OiJlZGl0c2hvcHNlYXJjaCI7czowOiIiO31zOjY6Im9yZGVycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJzZWFyY2giO3M6MDoiIjt9fXM6MTA6ImNvbV9maWVsZHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NjoiZmllbGRzIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6ImNvbnRleHQiO3M6MTk6ImNvbV9jb250ZW50LmFydGljbGUiO3M6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO2k6MjA7czo4OiJvcmRlcmluZyI7czoxMDoiYS5vcmRlcmluZyI7czo1OiJzdGFydCI7ZDowO319czo2OiJncm91cHMiO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY29udGV4dCI7czoxOToiY29tX2NvbnRlbnQuYXJ0aWNsZSI7czo0OiJsaXN0IjthOjQ6e3M6OToiZGlyZWN0aW9uIjtzOjM6ImFzYyI7czo1OiJsaW1pdCI7aToyMDtzOjg6Im9yZGVyaW5nIjtzOjEwOiJhLm9yZGVyaW5nIjtzOjU6InN0YXJ0IjtkOjA7fX19czoxNToiY29tX2ZsZXhiYW5uZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjQ6e3M6MTA6ImZsZXhiYW5uZXIiO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319czo0OiJsaW5rIjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6NjoiY2xpZW50IjtPOjg6InN0ZENsYXNzIjoyOntzOjQ6ImRhdGEiO047czoyOiJpZCI7YTowOnt9fXM6ODoibG9jYXRpb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NDoiZGF0YSI7TjtzOjI6ImlkIjthOjA6e319fX1zOjEwOiJjb21fY29uZmlnIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiY29tcG9uZW50IjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21fdGVtcGxhdGVzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19fXM6MTE6ImNvbV9wbHVnaW5zIjtPOjg6InN0ZENsYXNzIjoxOntzOjc6InBsdWdpbnMiO086ODoic3RkQ2xhc3MiOjM6e3M6NjoiZmlsdGVyIjthOjU6e3M6Njoic2VhcmNoIjtzOjQ6ImxpdmUiO3M6NzoiZW5hYmxlZCI7czowOiIiO3M6NjoiZm9sZGVyIjtzOjA6IiI7czo3OiJlbGVtZW50IjtzOjA6IiI7czo2OiJhY2Nlc3MiO3M6MDoiIjt9czo0OiJsaXN0IjthOjQ6e3M6MTI6ImZ1bGxvcmRlcmluZyI7czoxMDoiZm9sZGVyIEFTQyI7czo1OiJsaW1pdCI7czoyOiIyMCI7czo5OiJzb3J0VGFibGUiO3M6NjoiZm9sZGVyIjtzOjE0OiJkaXJlY3Rpb25UYWJsZSI7czozOiJBU0MiO31zOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MzI7fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjExOiJtZmFfY2hlY2tlZCI7aToxO31zOjg6Im92ZXJyaWRlIjtPOjg6InN0ZENsYXNzIjowOnt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX1zOjI6InZtIjtPOjg6InN0ZENsYXNzIjoyOntzOjE4OiJ2bWNhcnRsYXN0VmVuZG9ySWQiO2k6MTtzOjY6InZtY2FydCI7czo4MTQ6InsiY2FydFByb2R1Y3RzRGF0YSI6W10sInZlbmRvcklkIjoxLCJsYXN0VmlzaXRlZENhdGVnb3J5SWQiOjAsInZpcnR1ZW1hcnRfc2hpcG1lbnRtZXRob2RfaWQiOjAsInZpcnR1ZW1hcnRfcGF5bWVudG1ldGhvZF9pZCI6MCwiYXV0b21hdGljU2VsZWN0ZWRTaGlwbWVudCI6ZmFsc2UsImF1dG9tYXRpY1NlbGVjdGVkUGF5bWVudCI6ZmFsc2UsIm9yZGVyX251bWJlciI6bnVsbCwiQlQiOltdLCJTVCI6eyJhZGRyZXNzX3R5cGVfbmFtZSI6IkFkZHJlc3MgTmlja25hbWUifSwiY2FydGZpZWxkcyI6W10sImNvdXBvbkNvZGUiOiIiLCJfdHJpZXNWYWxpZGF0ZUNvdXBvbiI6W10sIm9yZGVyX2xhbmd1YWdlIjoiZW4tR0IiLCJwcmljZXNDdXJyZW5jeSI6bnVsbCwicGF5bWVudEN1cnJlbmN5IjpudWxsLCJfZ3Vlc3QiOjAsIl9pbkNoZWNrT3V0IjpmYWxzZSwiX2luQ29uZmlybSI6ZmFsc2UsIl9yZWRpcmVjdGVkIjpmYWxzZSwiX2RhdGFWYWxpZGF0ZWQiOmZhbHNlLCJfY29uZmlybURvbmUiOmZhbHNlLCJTVHNhbWVBc0JUIjoxLCJzZWxlY3RlZF9zaGlwdG8iOjAsIl9mcm9tQ2FydCI6ZmFsc2UsImxheW91dCI6ImRlZmF1bHQiLCJsYXlvdXRQYXRoIjoiIiwidmlydHVlbWFydF9jYXJ0X2lkIjowLCJPcmRlcklkT3JkZXJEb25lIjpmYWxzZSwib3JkZXJkb25lSHRtbCI6ZmFsc2UsInZpcnR1ZW1hcnRfb3JkZXJfaWQiOmZhbHNlLCJieURlZmF1bHRCVCI6W10sImJ5RGVmYXVsdFNUIjp7ImFkZHJlc3NfdHlwZV9uYW1lIjoxfSwicHJvZHVjdENhcnRMb2FkZWQiOltdLCJsb2FkZWRDYXJ0IjpmYWxzZSwibGFzdEFkZGVkUHJvZHVjdCI6MH0iO31zOjU6ImJsb2NrIjtOO31zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6MTI6IgAqAHNlcGFyYXRvciI7czoxOiIuIjt9\";', 32, 'admin'),
(0x653862346c67376137627234763334646b356273757436326667, 0, 1, 1734514668, 'joomla|s:2368:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjQ6e3M6Nzoic2Vzc2lvbiI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo3OiJjb3VudGVyIjtpOjEzNDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE3MzQ1MDQ0Njk7czo0OiJsYXN0IjtpOjE3MzQ1MTQ1Nzk7czozOiJub3ciO2k6MTczNDUxNDY2Njt9czo1OiJ0b2tlbiI7czozMjoiZWI0NGJkMThhYTk5MDMyMGQ2NzdiN2ExZjA1NzBhOWQiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxNDoiY29tX3ZpcnR1ZW1hcnQiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoiY2F0ZWdvcnkiO086ODoic3RkQ2xhc3MiOjE6e3M6NToibGltaXQiO3M6MjoiMjQiO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czoxMjoiACoAc2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086MjA6Ikpvb21sYVxDTVNcVXNlclxVc2VyIjoxOntzOjI6ImlkIjtpOjA7fXM6Mjoidm0iO086ODoic3RkQ2xhc3MiOjc6e3M6MTk6InZtbGFzdHZpc2l0ZWRJdGVtaWQiO2k6MTA5O3M6MjM6InZtbGFzdHZpc2l0ZWRjYXRlZ29yeWlkIjtpOjE7czoxOToidm1sYXN0dmlzaXRlZG1hbnVpZCI7aTowO3M6MTg6InZtY2FydGxhc3RWZW5kb3JJZCI7aToxO3M6Njoidm1jYXJ0IjtzOjg2OToieyJjYXJ0UHJvZHVjdHNEYXRhIjpbXSwidmVuZG9ySWQiOjEsImxhc3RWaXNpdGVkQ2F0ZWdvcnlJZCI6MCwidmlydHVlbWFydF9zaGlwbWVudG1ldGhvZF9pZCI6MCwidmlydHVlbWFydF9wYXltZW50bWV0aG9kX2lkIjowLCJhdXRvbWF0aWNTZWxlY3RlZFNoaXBtZW50IjpmYWxzZSwiYXV0b21hdGljU2VsZWN0ZWRQYXltZW50IjpmYWxzZSwib3JkZXJfbnVtYmVyIjpudWxsLCJCVCI6eyJjdXN0b21lcl9ub3RlIjoiIiwidG9zIjoiMCJ9LCJTVCI6eyJhZGRyZXNzX3R5cGVfbmFtZSI6IkFkZHJlc3MgTmlja25hbWUifSwiY2FydGZpZWxkcyI6eyJjdXN0b21lcl9ub3RlIjoiIiwidG9zIjoiMCJ9LCJjb3Vwb25Db2RlIjoiIiwiX3RyaWVzVmFsaWRhdGVDb3Vwb24iOltdLCJvcmRlcl9sYW5ndWFnZSI6ImVuLUdCIiwicHJpY2VzQ3VycmVuY3kiOjE0NywicGF5bWVudEN1cnJlbmN5IjpudWxsLCJfZ3Vlc3QiOjEsIl9pbkNoZWNrT3V0IjpmYWxzZSwiX2luQ29uZmlybSI6ZmFsc2UsIl9yZWRpcmVjdGVkIjpmYWxzZSwiX2RhdGFWYWxpZGF0ZWQiOmZhbHNlLCJfY29uZmlybURvbmUiOmZhbHNlLCJTVHNhbWVBc0JUIjoiMSIsInNlbGVjdGVkX3NoaXB0byI6MCwiX2Zyb21DYXJ0Ijp0cnVlLCJsYXlvdXQiOiJkZWZhdWx0IiwibGF5b3V0UGF0aCI6IiIsInZpcnR1ZW1hcnRfY2FydF9pZCI6MCwiT3JkZXJJZE9yZGVyRG9uZSI6ZmFsc2UsIm9yZGVyZG9uZUh0bWwiOmZhbHNlLCJ2aXJ0dWVtYXJ0X29yZGVyX2lkIjpmYWxzZSwiYnlEZWZhdWx0QlQiOltdLCJieURlZmF1bHRTVCI6eyJhZGRyZXNzX3R5cGVfbmFtZSI6MX0sInByb2R1Y3RDYXJ0TG9hZGVkIjpbXSwibG9hZGVkQ2FydCI6dHJ1ZSwibGFzdEFkZGVkUHJvZHVjdCI6MX0iO3M6MjE6InZtbGFzdHByb2R1Y3RvcmRlcmluZyI7czoxNToiYHBgLnByb2R1Y3Rfc2t1IjtzOjIzOiJ2bWxhc3R2aXNpdGVkcHJvZHVjdGlkcyI7YToyOntpOjA7aToxO2k6MTtpOjI7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjEyOiIAKgBzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_tags`
--

CREATE TABLE `d6gvw_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL DEFAULT '' COMMENT 'The keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_tags`
--

INSERT INTO `d6gvw_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, NULL, NULL, 1, '', '', '', '', 32, '2024-12-18 06:38:50', '', 32, '2024-12-18 06:38:50', '', '', 0, '*', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_template_overrides`
--

CREATE TABLE `d6gvw_template_overrides` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `hash_id` varchar(255) NOT NULL DEFAULT '',
  `extension_id` int(11) DEFAULT 0,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `action` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_date` datetime NOT NULL,
  `modified_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_template_styles`
--

CREATE TABLE `d6gvw_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `inheritable` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(50) DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_template_styles`
--

INSERT INTO `d6gvw_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `inheritable`, `parent`, `params`) VALUES
(10, 'atum', 1, '1', 'Atum - Default', 1, '', '{\"hue\":\"hsl(214, 63%, 20%)\",\"bg-light\":\"#f0f4fb\",\"text-dark\":\"#495057\",\"text-light\":\"#ffffff\",\"link-color\":\"#2a69b8\",\"special-color\":\"#001b4c\",\"colorScheme\":\"os\",\"monochrome\":\"0\",\"loginLogo\":\"\",\"loginLogoAlt\":\"\",\"logoBrandLarge\":\"\",\"logoBrandLargeAlt\":\"\",\"logoBrandSmall\":\"\",\"logoBrandSmallAlt\":\"\"}'),
(11, 'cassiopeia', 0, '0', 'Cassiopeia - Default', 1, '', '{\"brand\":\"1\",\"logoFile\":\"\",\"siteTitle\":\"\",\"siteDescription\":\"\",\"useFontScheme\":\"0\",\"colorName\":\"colors_standard\",\"fluidContainer\":\"0\",\"stickyHeader\":0,\"backTop\":0}'),
(12, 'theme-200335-j4', 0, '1', 'theme-200335-j4 - Default', 0, '', '{\"slideshow_image_0\":\"\",\"horizontal_align0\":\"Left\",\"vertical_align0\":\"Top\",\"stretch0\":\"Fill\",\"slideshow_image_1\":\"\",\"horizontal_align1\":\"Left\",\"vertical_align1\":\"Top\",\"stretch1\":\"Fill\",\"enable_slide\":\"1\",\"enable_Designed_By\":\"1\",\"Designed_By\":\"http:\\/\\/templatetoaster.com\",\"Designed_By_Link_FontSize\":\"14\",\"Designed_By_FontSize\":\"14\",\"footer_designed_by_color\":\"#000000\",\"footer_designed_by_link_color\":\"#061a3a\",\"sidebar_menu_font_size\":\"14\",\"block_heading_font_size\":\"14\",\"custom_css\":\"\",\"enable_read_more_button\":\"1\",\"mbmoduleposition00\":\"block\",\"mbmoduleposition01\":\"block\",\"mbmoduleposition02\":\"block\",\"mbmoduleposition03\":\"block\",\"mamoduleposition00\":\"block\",\"mamoduleposition01\":\"block\",\"mamoduleposition02\":\"block\",\"mamoduleposition03\":\"block\",\"sbmoduleposition00\":\"block\",\"sbmoduleposition01\":\"block\",\"sbmoduleposition02\":\"block\",\"sbmoduleposition03\":\"block\",\"samoduleposition00\":\"block\",\"samoduleposition01\":\"block\",\"samoduleposition02\":\"block\",\"samoduleposition03\":\"block\",\"camoduleposition00\":\"block\",\"camoduleposition01\":\"block\",\"camoduleposition02\":\"block\",\"camoduleposition03\":\"block\",\"cbmoduleposition00\":\"block\",\"cbmoduleposition01\":\"block\",\"cbmoduleposition02\":\"block\",\"cbmoduleposition03\":\"block\",\"menu\":\"block\",\"famoduleposition00\":\"block\",\"famoduleposition01\":\"block\",\"famoduleposition02\":\"block\",\"famoduleposition03\":\"block\",\"fbmoduleposition00\":\"block\",\"fbmoduleposition01\":\"block\",\"fbmoduleposition02\":\"block\",\"fbmoduleposition03\":\"block\",\"leftfooterarea\":\"block\",\"centerfooterarea\":\"block\",\"rightfooterarea\":\"block\",\"debug\":\"block\",\"enable_click_on_menu\":\"h_menu_hover\",\"enable_click_on_sidebar_menu\":\"v_menu_hover\",\"mbmoduleposition00ms\":\"h_menu\",\"mbmoduleposition01ms\":\"h_menu\",\"mbmoduleposition02ms\":\"h_menu\",\"mbmoduleposition03ms\":\"h_menu\",\"mamoduleposition00ms\":\"h_menu\",\"mamoduleposition01ms\":\"h_menu\",\"mamoduleposition02ms\":\"h_menu\",\"mamoduleposition03ms\":\"h_menu\",\"sbmoduleposition00ms\":\"h_menu\",\"sbmoduleposition01ms\":\"h_menu\",\"sbmoduleposition02ms\":\"h_menu\",\"sbmoduleposition03ms\":\"h_menu\",\"samoduleposition00ms\":\"h_menu\",\"samoduleposition01ms\":\"h_menu\",\"samoduleposition02ms\":\"h_menu\",\"samoduleposition03ms\":\"h_menu\",\"camoduleposition00ms\":\"h_menu\",\"camoduleposition01ms\":\"h_menu\",\"camoduleposition02ms\":\"h_menu\",\"camoduleposition03ms\":\"h_menu\",\"cbmoduleposition00ms\":\"h_menu\",\"cbmoduleposition01ms\":\"h_menu\",\"cbmoduleposition02ms\":\"h_menu\",\"cbmoduleposition03ms\":\"h_menu\",\"menums\":\"h_menu\",\"famoduleposition00ms\":\"h_menu\",\"famoduleposition01ms\":\"h_menu\",\"famoduleposition02ms\":\"h_menu\",\"famoduleposition03ms\":\"h_menu\",\"fbmoduleposition00ms\":\"h_menu\",\"fbmoduleposition01ms\":\"h_menu\",\"fbmoduleposition02ms\":\"h_menu\",\"fbmoduleposition03ms\":\"h_menu\",\"leftfooterareams\":\"h_menu\",\"centerfooterareams\":\"h_menu\",\"rightfooterareams\":\"h_menu\"}'),
(13, 'vmadmin', 1, '0', 'vmadmin - Default', 0, '', '{}'),
(14, 'vmbasic', 0, '0', 'VM Basic - Default', 1, '', '{\"logoFile\":\"\",\"footerlogo\":\"1\",\"backTop\":\"0\",\"gfonts\":\"\",\"bodyfontfamily\":\"\",\"headingsfontfamily\":\"\",\"customcss\":\"0\",\"inlinecustomcss\":\"\",\"headcustomjs\":\"\",\"bodycustomjs\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_tuf_metadata`
--

CREATE TABLE `d6gvw_tuf_metadata` (
  `id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `root` text DEFAULT NULL,
  `targets` text DEFAULT NULL,
  `snapshot` text DEFAULT NULL,
  `timestamp` text DEFAULT NULL,
  `mirrors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Secure TUF Updates';

--
-- Dumping data for table `d6gvw_tuf_metadata`
--

INSERT INTO `d6gvw_tuf_metadata` (`id`, `update_site_id`, `root`, `targets`, `snapshot`, `timestamp`, `mirrors`) VALUES
(1, 1, '{\"signed\":{\"_type\":\"root\",\"spec_version\":\"1.0\",\"version\":6,\"expires\":\"2026-01-04T10:59:13Z\",\"keys\":{\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"9b2af2d9b9727227735253d795bd27ea8f0e294a5f3603e822dc5052b44802b9\"}},\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a18e5ebabc19d5d5984b601a292ece61ba3662ab2d071dc520da5bd4f8948799\"}},\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"cb0a7a131961a20edea051d6dc2b091fb650bd399bd8514adb67b3c60db9f8f9\"}},\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"589d029a68b470deff1ca16dbf3eea6b5b3fcba0ae7bb52c468abc7fb058b2a2\"}},\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6043c8bacc76ac5c9750f45454dd865c6ca1fc57d69e14cc192cfd420f6a66a9\"}},\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"a4b8509488f1c29ab0b1f610e7452fbec78b4f33f1fba5a418d6ff087c567429\"}},\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"6eb44460e5914e8e0df726ddb90bd1f3771b8ce5af19b40fb01ac5a85b023a6f\"}},\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"ad1950e117b29ebe7a38635a2e574123e07571e4f9a011783e053b5f15d2562a\"}},\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\":{\"keytype\":\"ed25519\",\"scheme\":\"ed25519\",\"keyid_hash_algorithms\":[\"sha256\",\"sha512\"],\"keyval\":{\"public\":\"5d451915bc2b93a0e4e4745bc6a8b292d58996d50e0fb66c78c7827152a65879\"}}},\"roles\":{\"root\":{\"keyids\":[\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\"],\"threshold\":1},\"snapshot\":{\"keyids\":[\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"2dcaf3d0e552f150792f7c636d45429246dcfa34ac35b46a44f5c87cd17d457e\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"targets\":{\"keyids\":[\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"ecc851a051c8d6439331ff0a37c7727321fc39896a34f950f73638b8a7cb472e\",\"e2229942b0fc1e6d7f82adf258e5bdadac10046d1470b7ec459c9eb4e076026b\",\"bfee044dd4574a281c9b7c0b6829913ef292c66c0512d1091a298cfca8493da9\",\"9eabc37383b243cd236375c66693db385911914b52556e1ec05fc70ed45e1bfe\"],\"threshold\":1},\"timestamp\":{\"keyids\":[\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\"],\"threshold\":1}},\"consistent_snapshot\":true},\"signatures\":[{\"keyid\":\"1b1b1dd55b2c1c7258714cf1c1ae06f23e4607b28c762d016a9d81c48ffe5669\",\"sig\":\"ba9fc6e7ff7a8b85d8c60eb0319e6be7a501aba26898ed1ad64db6726b5315f3f426fcf29e632f2cbdb83a888324a1a0963d3145e0a0b34803be4c6e20732d0d\"}]}', '{\"signed\":{\"_type\":\"targets\",\"spec_version\":\"1.0\",\"version\":30,\"expires\":\"2025-02-26T18:11:06Z\",\"targets\":{\"Joomla_5.1.2-Stable-Upgrade_Package.zip\":{\"length\":28134889,\"hashes\":{\"sha512\":\"d6b46cdedb9b31d01a607fe4c2f3a830a3265ed6ae5c0cb7b0f836b1b016ee7c639bd8948df00baf1b61a87f2fc71368a80b39e67ef9ec2b8842ee0ab09a620f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.2/Joomla_5.1.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5909-joomla-5-1-2-and-joomla-4-4-6-security-and-bug-fix-release.html\",\"title\":\"Joomla! 5.1.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"6.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.2\"}},\"Joomla_5.1.4-Stable-Update_Package.zip\":{\"length\":28289998,\"hashes\":{\"sha512\":\"97c556bddd77604d89106077e09e43845927e0507179bfca7646aadddaf69246079d71e83ceb33b714f4437d836deac8d3ec12fc103024524e2ae1ae41885104\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.1.4 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-1-4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.1.4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.1.4/Joomla_5.1.4-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5911-joomla-5-1-4-and-joomla-4-4-8-are-here.html\",\"title\":\"Joomla! 5.1.4 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.1.4\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.1.4\"}},\"Joomla_5.2.0-Stable-Update_Package.zip\":{\"length\":28151103,\"hashes\":{\"sha512\":\"f6d0bdeb9362d18fd570a0ec06e24eebbc8bf88db74d7abd3995f939b2af91edd95e8fa31fbab325877b3d0eae49e3fe3e592a0d3d3ee7942570f3c05b97f75f\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.0/Joomla_5.2.0-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5916-joomla-5-2-0-and-joomla-4-4-9-are-here.html\",\"title\":\"Joomla! 5.2.0 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0\"}},\"Joomla_5.2.0-beta3-Beta-Update_Package.zip\":{\"length\":28143116,\"hashes\":{\"sha512\":\"7fd986f6aa2ea6f17944322fb5ee030919d4753d322aec1efc3fc72cb402179973f10bd011aeb55137aa07c564f2b8f2b65e9876194790d53a7912bf44828c92\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-beta3 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-beta3/Joomla_5.2.0-beta3-Beta-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://developer.joomla.org/news/950-joomla-5-2-0-beta-3.html\",\"title\":\"Joomla! 5.2.0-beta3 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-beta3\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Beta\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-beta3\"}},\"Joomla_5.2.0-rc1-Release_Candidate-Update_Package.zip\":{\"length\":28144127,\"hashes\":{\"sha512\":\"b757bbe2d941df05786ec2d8382c429b75d98b9efb6174c2d4981c12d8ffdd88e99607c67586bdb720fb1f889b611d87dd908db18cc18fb2305db9a520510d7e\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-rc1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-rc1/Joomla_5.2.0-rc1-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5912-joomla-5-2-0-release-candidate.html\",\"title\":\"Joomla! 5.2.0-rc1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-rc1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-rc1\"}},\"Joomla_5.2.0-rc2-Release_Candidate-Update_Package.zip\":{\"length\":28144148,\"hashes\":{\"sha512\":\"e82886e3f24a67180e369ed04b1d1b098052f8c7f226169dd4b32bdcc78f9a5533ab01765837ab465c55b7be3561e488bec31126dbf2338ff628ed71c78f310b\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.0-rc2 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.0-rc2/Joomla_5.2.0-rc2-Release_Candidate-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5913-joomla-5-2-0-release-candidate-2.html\",\"title\":\"Joomla! 5.2.0-rc2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.0-rc2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"RC\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.0-rc2\"}},\"Joomla_5.2.1-Stable-Update_Package.zip\":{\"length\":28183353,\"hashes\":{\"sha512\":\"9e846affcbf04a4d1c60d6cb54182e6800defb56aa90c8c5664be317ee4fc2fffe6b9986c875403fe54a488427969861b0c4ed2c839abd1c3f1a91a91131abae\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.1 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.1/Joomla_5.2.1-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5917-joomla-5-2-1-security-release.html\",\"title\":\"Joomla! 5.2.1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.1\"}},\"Joomla_5.2.2-Stable-Update_Package.zip\":{\"length\":28252628,\"hashes\":{\"sha512\":\"563001cf71b91ee028f439608f39eb4255a112a505bf81ce94a835ffabddb1f74c45f57cd555fd3769cb5660e6cc293642ff0e66ce8b8cdffaeaf0d65caa7223\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.2.2 Release\",\"downloads\":[{\"url\":\"https://downloads.joomla.org/cms/joomla5/5-2-2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.2.2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"},{\"url\":\"https://update.joomla.org/releases/5.2.2/Joomla_5.2.2-Stable-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://www.joomla.org/announcements/release-news/5918-joomla-5-2-2-security-bugfix-release.html\",\"title\":\"Joomla! 5.2.2 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.2.2\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Stable\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.2.2\"}},\"Joomla_5.3.0-alpha1-Alpha-Update_Package.zip\":{\"length\":28263180,\"hashes\":{\"sha512\":\"0a75a8093eacad4a0da56450111ee780e1969587930557c3f0a6306208874d7b6aa3960a229f5ea61a9abcc04e9f45f1890eefb4c8fe432a7bb8d7fe197d72ec\"},\"custom\":{\"client\":\"site\",\"description\":\"Joomla! 5.3.0-alpha1 Release\",\"downloads\":[{\"url\":\"https://github.com/joomla/joomla-cms/releases/download/5.3.0-alpha1/Joomla_5.3.0-alpha1-Alpha-Update_Package.zip\",\"format\":\"zip\",\"type\":\"full\"}],\"element\":\"joomla\",\"infourl\":{\"url\":\"https://github.com/joomla/joomla-cms/releases/tag/5.3.0-alpha1\",\"title\":\"Joomla! 5.3.0-alpha1 Release\"},\"maintainer\":\"Joomla! Production Department\",\"maintainerurl\":\"https://www.joomla.org\",\"name\":\"Joomla! 5.3.0-alpha1\",\"php_minimum\":\"8.1.0\",\"channel\":\"5.x\",\"stability\":\"Alpha\",\"supported_databases\":{\"mariadb\":\"10.4\",\"mysql\":\"8.0.13\",\"postgresql\":\"11.0\"},\"targetplatform\":{\"name\":\"joomla\",\"version\":\"(5\\\\.[0-4])|^(4\\\\.4)\"},\"type\":\"file\",\"version\":\"5.3.0-alpha1\"}}}},\"signatures\":[{\"keyid\":\"31dd7c7290d664c9b88c0dead2697175293ea7df81b7f24153a37370fd3901c3\",\"sig\":\"83f91fbcca6c1e430eb9753bf8bb1f5af6c3fc4e1d4484f34594f629fad2273a1ffe04a092e560c6c484babd91dfc73bc4231a9da8641dfd2e2963b6eb356d0c\"}]}', '{\"signed\":{\"_type\":\"snapshot\",\"spec_version\":\"1.0\",\"version\":35,\"expires\":\"2025-07-03T11:05:02Z\",\"meta\":{\"targets.json\":{\"length\":10170,\"hashes\":{\"sha512\":\"1fa41f7903b4f06798e65dfab0ce744c0d5792db13fee9443c0aae3c84685261b4ef2427e03508a84dffa67a27d185b679f8df6c7087c2d939e370afc4d47a42\"},\"version\":30}}},\"signatures\":[{\"keyid\":\"07eb082f367c034a95878687f6648aa76d93652b6ee73e58817053d89af6c44f\",\"sig\":\"99c800b4f4a2f86b3f33b1574cc6082e8b317c54f6c769f14c9b7295dbcea8b5153f2cadb6c57d4453504824b5f2073f70986c1ecfaeb87578aaf677129e6e01\"}]}', '{\"signed\":{\"_type\":\"timestamp\",\"spec_version\":\"1.0\",\"version\":394,\"expires\":\"2024-12-20T01:10:56Z\",\"meta\":{\"snapshot.json\":{\"length\":532,\"hashes\":{\"sha512\":\"04bea29cafa80510dbaeab7748aad2d5c75fa3663de3f8913ba3caa5968b01ac5519e13deb72da65f0a0bbf49adf2d35f6376cf5c2b44404970845e9f3de9db5\"},\"version\":35}}},\"signatures\":[{\"keyid\":\"9e41a9d62d94c6a1c8a304f62c5bd72d84a9f286f27e8327cedeacb09e5156cc\",\"sig\":\"9129c1ab630d9037316a3c8955c09f00c139483c7b4d38912c33033591a41eb639eb917aca5d354dd87a4719dd203adccb626f37d9af32dde6852b6867f7030e\"}]}', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_ucm_base`
--

CREATE TABLE `d6gvw_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(11) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_ucm_content`
--

CREATE TABLE `d6gvw_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext DEFAULT NULL,
  `core_state` tinyint(4) NOT NULL DEFAULT 0,
  `core_checked_out_time` datetime DEFAULT NULL,
  `core_checked_out_user_id` int(10) UNSIGNED DEFAULT NULL,
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_params` text DEFAULT NULL,
  `core_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `core_metadata` varchar(2048) NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL,
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL,
  `core_language` char(7) NOT NULL DEFAULT '',
  `core_publish_up` datetime DEFAULT NULL,
  `core_publish_down` datetime DEFAULT NULL,
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `core_images` text DEFAULT NULL,
  `core_urls` text DEFAULT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `core_ordering` int(11) NOT NULL DEFAULT 0,
  `core_metakey` text DEFAULT NULL,
  `core_metadesc` text DEFAULT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_updates`
--

CREATE TABLE `d6gvw_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `changelogurl` text DEFAULT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `d6gvw_updates`
--

INSERT INTO `d6gvw_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `changelogurl`, `extra_query`) VALUES
(103, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '5.0.2.1', '', 'https://update.joomla.org/language/details5/af-ZA_details.xml', '', '', ''),
(104, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '5.2.2.5', '', 'https://update.joomla.org/language/details5/be-BY_details.xml', '', '', ''),
(105, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '5.2.2.2', '', 'https://update.joomla.org/language/details5/ca-ES_details.xml', '', '', ''),
(106, 2, 0, 'Chinese, Simplified', '', 'pkg_zh-CN', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/zh-CN_details.xml', '', '', ''),
(107, 2, 0, 'Chinese, Traditional', '', 'pkg_zh-TW', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/zh-TW_details.xml', '', '', ''),
(108, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/hr-HR_details.xml', '', '', ''),
(109, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '5.2.0.1', '', 'https://update.joomla.org/language/details5/cs-CZ_details.xml', '', '', ''),
(110, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/da-DK_details.xml', '', '', ''),
(111, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/nl-NL_details.xml', '', '', ''),
(112, 2, 0, 'English, Australia', '', 'pkg_en-AU', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-AU_details.xml', '', '', ''),
(113, 2, 0, 'English, Canada', '', 'pkg_en-CA', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-CA_details.xml', '', '', ''),
(114, 2, 0, 'English, New Zealand', '', 'pkg_en-NZ', 'package', '', 0, '5.0.3.2', '', 'https://update.joomla.org/language/details5/en-NZ_details.xml', '', '', ''),
(115, 2, 0, 'English, USA', '', 'pkg_en-US', 'package', '', 0, '5.0.3.1', '', 'https://update.joomla.org/language/details5/en-US_details.xml', '', '', ''),
(116, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/et-EE_details.xml', '', '', ''),
(117, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/fi-FI_details.xml', '', '', ''),
(118, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/nl-BE_details.xml', '', '', ''),
(119, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/fr-FR_details.xml', '', '', ''),
(120, 2, 0, 'French, Canada', '', 'pkg_fr-CA', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/fr-CA_details.xml', '', '', ''),
(121, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/ka-GE_details.xml', '', '', ''),
(122, 2, 0, 'German', '', 'pkg_de-DE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/de-DE_details.xml', '', '', ''),
(123, 2, 0, 'German, Austria', '', 'pkg_de-AT', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/de-AT_details.xml', '', '', ''),
(124, 2, 0, 'German, Liechtenstein', '', 'pkg_de-LI', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/de-LI_details.xml', '', '', ''),
(125, 2, 0, 'German, Luxembourg', '', 'pkg_de-LU', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/de-LU_details.xml', '', '', ''),
(126, 2, 0, 'German, Switzerland', '', 'pkg_de-CH', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/de-CH_details.xml', '', '', ''),
(127, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/el-GR_details.xml', '', '', ''),
(128, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '5.2.0.1', '', 'https://update.joomla.org/language/details5/hu-HU_details.xml', '', '', ''),
(129, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/it-IT_details.xml', '', '', ''),
(130, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/ja-JP_details.xml', '', '', ''),
(131, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '5.0.0.4', '', 'https://update.joomla.org/language/details5/kk-KZ_details.xml', '', '', ''),
(132, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '5.0.2.1', '', 'https://update.joomla.org/language/details5/ko-KR_details.xml', '', '', ''),
(133, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '5.2.2.2', '', 'https://update.joomla.org/language/details5/lv-LV_details.xml', '', '', ''),
(134, 2, 0, 'Pashto Afghanistan', '', 'pkg_ps-AF', 'package', '', 0, '5.0.1.1', '', 'https://update.joomla.org/language/details5/ps-AF_details.xml', '', '', ''),
(135, 2, 0, 'Persian Farsi', '', 'pkg_fa-IR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/fa-IR_details.xml', '', '', ''),
(136, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/pl-PL_details.xml', '', '', ''),
(137, 2, 0, 'Portuguese, Brazil', '', 'pkg_pt-BR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/pt-BR_details.xml', '', '', ''),
(138, 2, 0, 'Portuguese, Portugal', '', 'pkg_pt-PT', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/pt-PT_details.xml', '', '', ''),
(139, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '5.2.0.2', '', 'https://update.joomla.org/language/details5/ro-RO_details.xml', '', '', ''),
(140, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/ru-RU_details.xml', '', '', ''),
(141, 2, 0, 'Serbian, Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/sr-RS_details.xml', '', '', ''),
(142, 2, 0, 'Serbian, Latin', '', 'pkg_sr-YU', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/sr-YU_details.xml', '', '', ''),
(143, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '5.2.1.1', '', 'https://update.joomla.org/language/details5/sk-SK_details.xml', '', '', ''),
(144, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/sl-SI_details.xml', '', '', ''),
(145, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/es-ES_details.xml', '', '', ''),
(146, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/sv-SE_details.xml', '', '', ''),
(147, 2, 0, 'Tamil, India', '', 'pkg_ta-IN', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/ta-IN_details.xml', '', '', ''),
(148, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/th-TH_details.xml', '', '', ''),
(149, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/tr-TR_details.xml', '', '', ''),
(150, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '5.1.3.1', '', 'https://update.joomla.org/language/details5/uk-UA_details.xml', '', '', ''),
(151, 2, 0, 'Urdu, Pakistan', '', 'pkg_ur-PK', 'package', '', 0, '5.1.2.1', '', 'https://update.joomla.org/language/details5/ur-PK_details.xml', '', '', ''),
(152, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '5.2.2.1', '', 'https://update.joomla.org/language/details5/cy-GB_details.xml', '', '', ''),
(153, 4, 247, 'JD Simple Contact Form', '', 'mod_jdsimplecontactform', 'module', '', 0, '1.9', '', 'https://cdn.joomdev.com/updates/mod_jdsimplecontactform.xml', 'https://www.joomdev.com/products/extensions/jd-simple-contact-form', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_update_sites`
--

CREATE TABLE `d6gvw_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT 0,
  `last_check_timestamp` bigint(20) DEFAULT 0,
  `extra_query` varchar(1000) DEFAULT '',
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `d6gvw_update_sites`
--

INSERT INTO `d6gvw_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`, `checked_out`, `checked_out_time`) VALUES
(1, 'Joomla! Core', 'tuf', 'https://update.joomla.org/cms/', 1, 1734512642, '', NULL, NULL),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_5.xml', 1, 1734512645, '', NULL, NULL),
(3, 'Joomla! Update Component', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1734512645, '', NULL, NULL),
(4, 'mod_jdsimplecontactform', 'extension', 'https://cdn.joomdev.com/updates/mod_jdsimplecontactform.xml', 1, 1734512647, '', NULL, NULL),
(5, 'VirtueMart Update Site', 'extension', 'http://extensions.virtuemart.net/releases/istraxx/virtuemart_update.xml', 1, 1734512647, '', NULL, NULL),
(6, 'VirtueMart plg_vmpayment_standard Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml', 1, 1734512648, '', NULL, NULL),
(7, 'VirtueMart plg_vmpayment_paypal_checkout Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_checkout_update.xml', 1, 1734512649, '', NULL, NULL),
(8, 'VirtueMart plg_vmpayment_paypal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml', 1, 1734512649, '', NULL, NULL),
(9, 'VirtueMart plg_vmpayment_sofort Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml', 1, 1734512650, '', NULL, NULL),
(10, 'VirtueMart3 plg_vmpayment_skrill Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml', 1, 1734512650, '', NULL, NULL),
(11, 'VirtueMart plg_vmpayment_paybox Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paybox_update.xml', 1, 1734512651, '', NULL, NULL),
(12, 'VirtueMart3 plg_vmpayment_tco Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_tco_update.xml', 1, 1734512651, '', NULL, NULL),
(13, 'VirtueMart plg_vmpayment_eway Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmpayment_eway_update.xml', 1, 1734512652, '', NULL, NULL),
(14, 'VirtueMart plg_vmpayment_realex_hpp_api Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml', 1, 1734512653, '', NULL, NULL),
(15, 'VirtueMart plg_vmuserfield_realex_hpp_api Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml', 1, 1734512653, '', NULL, NULL),
(16, 'VirtueMart plg_vmpayment_authorizenet Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml', 1, 1734512654, '', NULL, NULL),
(17, 'VirtueMart plg_vmpayment_sofort_ideal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml', 1, 1734512654, '', NULL, NULL),
(18, 'VirtueMart plg_vmpayment_klikandpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klikandpay_update.xml', 1, 1734512655, '', NULL, NULL),
(19, 'VirtueMart3 plg_vmshipment_weight_countries Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 1, 1734512655, '', NULL, NULL),
(20, 'VM Advanced Shipping by Rules Updates', 'extension', 'http://open-tools.net/UpdateServer/index.php?package=Joomla&amp;extension=AdvancedShippingByRules&amp;file=extension.xml', 1, 1734512656, '', NULL, NULL),
(21, 'VirtueMart3 plg_vmcustom_textinput Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml', 1, 1734512657, '', NULL, NULL),
(22, 'VirtueMart3 plg_vmcustom_specification Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml', 1, 1734512658, '', NULL, NULL),
(23, 'VirtueMart, ${PHING.COMPANY} - ${PHING.NAME.EXTSHORT} - Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_download_simple_update.xml', 1, 1734512658, '', NULL, NULL),
(24, 'VirtueMart3 plg_vmcalculation_avalara Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml', 1, 1734512659, '', NULL, NULL),
(25, 'VirtueMart3 plg_search_virtuemart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml', 1, 1734512660, '', NULL, NULL),
(26, 'VM Framework Loader during Plugin Updates', 'extension', 'http://virtuemart.net/releases/vm3/plg_system_vmLoaderPluginUpdate_update.xml', 1, 1734512660, '', NULL, NULL),
(27, 'VirtueMart3 mod_virtuemart_currencies Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml', 1, 1734512661, '', NULL, NULL),
(28, 'VirtueMart3 mod_virtuemart_product Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 1, 1734512661, '', NULL, NULL),
(29, 'VirtueMart3 mod_virtuemart_search Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml', 1, 1734512662, '', NULL, NULL),
(30, 'VirtueMart3 mod_virtuemart_manufacturer Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml', 1, 1734512662, '', NULL, NULL),
(31, 'VirtueMart3 mod_virtuemart_cart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml', 1, 1734512663, '', NULL, NULL),
(32, 'VirtueMart3 mod_virtuemart_category Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml', 1, 1734512663, '', NULL, NULL),
(33, 'VirtueMart3 AIO Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 1, 1734512664, '', NULL, NULL),
(34, 'VirtueMart Administrator Template Update Site', 'extension', 'http://virtuemart.net/releases/vm3/vmadmin.xml', 1, 1734512664, '', NULL, NULL),
(35, 'TCPDF Update Site', 'extension', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 1, 1734512665, '', NULL, NULL),
(36, 'VirtueMart, istraxx - virtuemart_languages - Update Site', 'extension', 'http://extensions.virtuemart.net/releases/istraxx/istraxx_modvm3_virtuemart_languages.xml', 1, 1734512667, '', NULL, NULL),
(37, 'VirtueMart, ${PHING.COMPANY} - ${PHING.NAME.EXTSHORT} - Update Site', 'extension', 'http://extensions.virtuemart.net/releases/${PHING.COMPANY}/${PHING.COMPANY}_${PHING.PKG.PREFIX}${PHING.VMVERSION}_${PHING.NAME.EXTSHORT}.xml', 1, 1734512670, '', NULL, NULL),
(38, 'FlexBanners', 'extension', 'https://inchhosting.uk/releases/flexbanner5_releases.xml', 1, 1734512672, '', NULL, NULL),
(39, 'ChatAndBot Updates', 'extension', 'https://chatandbot.com/plugins/jm/updates.xml', 1, 1734513912, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_update_sites_extensions`
--

CREATE TABLE `d6gvw_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT 0,
  `extension_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `d6gvw_update_sites_extensions`
--

INSERT INTO `d6gvw_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 240),
(2, 241),
(3, 24),
(4, 247),
(5, 250),
(5, 284),
(6, 252),
(7, 253),
(8, 254),
(9, 255),
(10, 256),
(11, 257),
(12, 258),
(13, 259),
(14, 260),
(15, 261),
(16, 262),
(17, 263),
(18, 264),
(19, 265),
(20, 266),
(21, 267),
(22, 268),
(23, 269),
(24, 270),
(25, 271),
(26, 272),
(27, 273),
(28, 274),
(29, 275),
(30, 276),
(31, 277),
(32, 278),
(33, 251),
(34, 279),
(35, 280),
(36, 282),
(37, 283),
(38, 285),
(38, 287),
(39, 288);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_usergroups`
--

CREATE TABLE `d6gvw_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_usergroups`
--

INSERT INTO `d6gvw_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_users`
--

CREATE TABLE `d6gvw_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT 0,
  `sendEmail` tinyint(4) DEFAULT 0,
  `registerDate` datetime NOT NULL,
  `lastvisitDate` datetime DEFAULT NULL,
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime DEFAULT NULL COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT 0 COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Backup Codes',
  `requireReset` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Require user to reset password on next login',
  `authProvider` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name of used authentication plugin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_users`
--

INSERT INTO `d6gvw_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`, `authProvider`) VALUES
(32, 'myhuong', 'admin', 'huong@gmail.com', '$2y$10$FpDmx9I15I7Ddgw7EQdyU.t8b80A9gE2mQHRCbU34RCdGe69.atv.', 0, 1, '2024-12-18 06:39:32', '2024-12-18 06:39:58', '0', '{}', NULL, 0, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_user_keys`
--

CREATE TABLE `d6gvw_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(191) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_user_mfa`
--

CREATE TABLE `d6gvw_user_mfa` (
  `id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `method` varchar(100) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `options` mediumtext NOT NULL,
  `created_on` datetime NOT NULL,
  `last_used` datetime DEFAULT NULL,
  `tries` int(11) NOT NULL DEFAULT 0,
  `last_try` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Multi-factor Authentication settings';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_user_notes`
--

CREATE TABLE `d6gvw_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `catid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL,
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `publish_up` datetime DEFAULT NULL,
  `publish_down` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_user_profiles`
--

CREATE TABLE `d6gvw_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

--
-- Dumping data for table `d6gvw_user_profiles`
--

INSERT INTO `d6gvw_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(32, 'guidedtour.id.12', '{\"state\":\"delayed\",\"time\":{\"date\":\"2024-12-18 09:04:08.694101\",\"timezone_type\":3,\"timezone\":\"UTC\"}}', 0),
(32, 'joomlatoken.enabled', '1', 2),
(32, 'joomlatoken.token', 'MYrRTxUyaRu+5ycrZngSGRE9qXPlS9e8/jtcDhqKGgw=', 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_user_usergroup_map`
--

CREATE TABLE `d6gvw_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_user_usergroup_map`
--

INSERT INTO `d6gvw_user_usergroup_map` (`user_id`, `group_id`) VALUES
(32, 8);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_viewlevels`
--

CREATE TABLE `d6gvw_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT 0,
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_viewlevels`
--

INSERT INTO `d6gvw_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_adminmenuentries`
--

CREATE TABLE `d6gvw_virtuemart_adminmenuentries` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `module_id` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `uikit_icon` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Administration Menu Items';

--
-- Dumping data for table `d6gvw_virtuemart_adminmenuentries`
--

INSERT INTO `d6gvw_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `uikit_icon`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 'category', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 'product', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 'customfield', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 'inventory', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 'calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 'comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 'cart', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 'gift-box', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 'revenue', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 'user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 'users', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 'manufacturer', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 'category', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 'shop', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 'image', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 'shipment', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 'credit-card', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 'cog', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 'id-card', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 'future', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 'currencies', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 'world', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 'lifesaver', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 'lifesaver', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 'lifesaver', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 'lifesaver', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 'lifesaver', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 'lifesaver', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 'lifesaver', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calcs`
--

CREATE TABLE `d6gvw_virtuemart_calcs` (
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT 0,
  `calc_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` varchar(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` varchar(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'The Amount',
  `calc_currency` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Visible for Vendors',
  `publish_up` datetime DEFAULT NULL COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime DEFAULT NULL COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT 0,
  `has_categories` tinyint(1) DEFAULT NULL,
  `has_shoppergroups` tinyint(1) DEFAULT NULL,
  `has_manufacturers` tinyint(1) DEFAULT NULL,
  `has_countries` tinyint(1) DEFAULT NULL,
  `has_states` tinyint(1) DEFAULT NULL,
  `calc_params` varchar(15359) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calc_categories`
--

CREATE TABLE `d6gvw_virtuemart_calc_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calc_countries`
--

CREATE TABLE `d6gvw_virtuemart_calc_countries` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calc_manufacturers`
--

CREATE TABLE `d6gvw_virtuemart_calc_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calc_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_calc_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_calc_states`
--

CREATE TABLE `d6gvw_virtuemart_calc_states` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_carts`
--

CREATE TABLE `d6gvw_virtuemart_carts` (
  `virtuemart_cart_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store the cart';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_categories`
--

CREATE TABLE `d6gvw_virtuemart_categories` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_parent_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Belongs to vendor',
  `category_template` varchar(128) DEFAULT NULL,
  `category_layout` varchar(64) DEFAULT NULL,
  `category_product_layout` varchar(64) DEFAULT NULL,
  `products_per_row` varchar(1) NOT NULL DEFAULT '',
  `limit_list_step` varchar(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) UNSIGNED DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `cat_params` varchar(15359) NOT NULL DEFAULT '',
  `metarobot` varchar(40) NOT NULL DEFAULT '',
  `metaauthor` varchar(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `has_children` tinyint(1) DEFAULT NULL,
  `has_medias` tinyint(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Product Categories are stored here';

--
-- Dumping data for table `d6gvw_virtuemart_categories`
--

INSERT INTO `d6gvw_virtuemart_categories` (`virtuemart_category_id`, `category_parent_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `cat_params`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `has_children`, `has_medias`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 1, '', '', '', '', '0', 0, 0, 'show_store_desc=\"\"|showcategory_desc=\"\"|showcategory=\"\"|categories_per_row=\"\"|showproducts=\"\"|omitLoaded=\"\"|showsearch=\"\"|productsublayout=\"\"|featured=\"\"|featured_rows=\"\"|omitLoaded_featured=\"\"|discontinued=\"\"|discontinued_rows=\"\"|omitLoaded_discontinued=\"\"|latest=\"\"|latest_rows=\"\"|omitLoaded_latest=\"\"|topten=\"\"|topten_rows=\"\"|omitLoaded_topten=\"\"|recent=\"\"|recent_rows=\"\"|omitLoaded_recent=\"\"|', '', '', 0, 0, 1, 0, 1, '2024-12-18 07:21:05', 32, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_categories_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_categories_en_gb` (
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL,
  `category_name` varchar(400) NOT NULL DEFAULT '',
  `category_description` text DEFAULT NULL,
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_virtuemart_categories_en_gb`
--

INSERT INTO `d6gvw_virtuemart_categories_en_gb` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Đồng Hồ Daniel Wellington Classic', '', '', '', '', 'đồng-hồ-daniel-wellington-classic');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_category_categories`
--

CREATE TABLE `d6gvw_virtuemart_category_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `category_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `category_child_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Category child-parent relation list';

--
-- Dumping data for table `d6gvw_virtuemart_category_categories`
--

INSERT INTO `d6gvw_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_category_medias`
--

CREATE TABLE `d6gvw_virtuemart_category_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_configs`
--

CREATE TABLE `d6gvw_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL,
  `config` text DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Holds configuration settings';

--
-- Dumping data for table `d6gvw_virtuemart_configs`
--

INSERT INTO `d6gvw_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'backendTemplate=\"1\"|useSSL=\"0\"|dangeroustools=\"0\"|debug_enable=\"none\"|vmdev=\"none\"|multix=\"none\"|usefancy=\"1\"|jchosen=\"1\"|enableEnglish=\"1\"|shop_is_offline=\"0\"|offline_message=\"Our Shop is currently down for maintenance. Please check back again soon.\"|use_as_catalog=\"0\"|currency_converter_module=\"convertECB.php\"|order_mail_html=\"1\"|useVendorEmail=\"0\"|pdf_button_enable=\"1\"|show_emailfriend=\"0\"|show_printicon=\"1\"|show_out_of_stock_products=\"1\"|ask_captcha=\"1\"|coupons_enable=\"1\"|show_uncat_parent_products=\"0\"|show_uncat_child_products=\"1\"|show_unpub_cat_products=\"0\"|coupons_default_expire=\"1,M\"|weight_unit_default=\"KG\"|lwh_unit_default=\"M\"|list_limit=\"30\"|showReviewFor=\"all\"|reviewMode=\"bought\"|showRatingFor=\"all\"|ratingMode=\"bought\"|reviews_autopublish=\"1\"|reviews_minimum_comment_length=\"2\"|reviews_maximum_comment_length=\"2000\"|product_navigation=\"1\"|display_stock=\"1\"|vmtemplate=\"\"|category_template=\"0\"|showcategory=\"1\"|categorylayout=\"\"|categories_per_row=\"3\"|productlayout=\"\"|products_per_row=\"3\"|llimit_init_FE=\"24\"|vmlayout=\"\"|show_store_desc=\"1\"|show_categories=\"1\"|featured_rows=\"1\"|topten=\"0\"|topten_rows=\"1\"|recent=\"0\"|recent_rows=\"1\"|latest=\"0\"|latest_rows=\"1\"|legacylayouts=\"0\"|assets_general_path=\"components\\/com_virtuemart\\/assets\\/\"|media_category_path=\"images\\/virtuemart\\/category\\/\"|media_product_path=\"images\\/virtuemart\\/product\\/\"|media_manufacturer_path=\"images\\/virtuemart\\/manufacturer\\/\"|media_vendor_path=\"images\\/virtuemart\\/vendor\\/\"|forSale_path_thumb=\"images\\/virtuemart\\/forSale\\/resized\\/\"|img_resize_enable=\"1\"|img_width=\"0\"|img_height=\"250\"|no_image_set=\"noimage_new.gif\"|no_image_found=\"warning.png\"|browse_orderby_field=\"pc.ordering,product_name\"|browse_cat_orderby_field=\"c.ordering,category_name\"|browse_orderby_fields=[\"product_name\",\"`p`.product_sku\",\"pc.ordering\"]|browse_search_fields=[\"product_name\",\"`p`.product_sku\",\"product_s_desc\"]|askprice=\"0\"|roundindig=\"1\"|show_prices=\"1\"|price_show_packaging_pricelabel=\"0\"|show_tax=\"1\"|basePrice=\"0\"|basePriceText=\"1\"|basePriceRounding=\"-1\"|variantModification=\"0\"|variantModificationText=\"1\"|variantModificationRounding=\"-1\"|basePriceVariant=\"1\"|basePriceVariantText=\"1\"|basePriceVariantRounding=\"-1\"|basePriceWithTax=\"0\"|basePriceWithTaxText=\"1\"|basePriceWithTaxRounding=\"-1\"|discountedPriceWithoutTax=\"1\"|discountedPriceWithoutTaxText=\"1\"|discountedPriceWithoutTaxRounding=\"-1\"|salesPriceWithDiscount=\"0\"|salesPriceWithDiscountText=\"1\"|salesPriceWithDiscountRounding=\"-1\"|salesPrice=\"1\"|salesPriceText=\"1\"|salesPriceRounding=\"-1\"|priceWithoutTax=\"1\"|priceWithoutTaxText=\"1\"|priceWithoutTaxRounding=\"-1\"|discountAmount=\"1\"|discountAmountText=\"1\"|discountAmountRounding=\"-1\"|taxAmount=\"1\"|taxAmountText=\"1\"|taxAmountRounding=\"-1\"|unitPrice=\"1\"|unitPriceText=\"1\"|unitPriceRounding=\"-1\"|addtocart_popup=\"1\"|check_stock=\"0\"|automatic_payment=\"0\"|automatic_shipment=\"0\"|oncheckout_opc=\"1\"|oncheckout_ajax=\"1\"|oncheckout_show_legal_info=\"1\"|oncheckout_show_register=\"1\"|oncheckout_show_steps=\"0\"|oncheckout_show_register_text=\"COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER\"|oncheckout_show_images=\"1\"|inv_os=[\"C\"]|email_os_s=[\"U\",\"C\",\"X\",\"R\",\"S\"]|email_os_v=[\"U\",\"C\",\"X\",\"R\"]|seo_disabled=\"0\"|seo_translate=\"0\"|seo_use_id=\"0\"|enable_content_plugin=\"0\"|reg_captcha=\"0\"|handle_404=\"1\"|member_access_number=\"\"|vmDefLang=\"en-GB\"|active_languages=[\"en-GB\"]|prodOnlyWLang=\"0\"|vm_lfbs=\"\"|ReInjectJLanguage=\"0\"|backendStyle=\"default-white-blue\"|debug_enable_methods=\"0\"|debug_enable_router=\"0\"|debug_Sql=\"0\"|revproxvar=\"\"|multixcart=\"0\"|optimisedProductSql=\"1\"|optimisedCalcSql=\"1\"|optimisedCatSql=\"1\"|invoiceInUserLang=\"0\"|debug_mail=\"0\"|addVendorEmail=\"\"|email_sf_s=[\"email\"]|attach=\"\"|attach_os=[\"U\",\"C\",\"X\",\"R\"]|norm_units=\"KG,100G,M,SM,CUBM,L,100ML,P\"|pdf_icon=\"0\"|cp_rm=[\"C\"]|recommend_unauth=\"customers\"|ask_question=\"0\"|ask_question_vendor=\"0\"|asks_minimum_comment_length=\"50\"|asks_maximum_comment_length=\"2000\"|lstockmail=\"0\"|stockhandle_products=\"0\"|stockhandle=\"none\"|rised_availability=\"\"|image=\"\"|show_pcustoms=\"1\"|show_subcat_products=\"0\"|strictCustomfieldTags=\"0\"|cat_productdetails=\"0\"|latest_products_orderBy=\"created_on\"|reviews_languagefilter=\"0\"|vm_num_ratings_show=\"3\"|rr_os=[\"C\"]|showcategory_desc=\"1\"|showsearch=\"1\"|ProductGroupsSequence=\"featured, discontinued, latest, topten, recent\"|showproducts=\"1\"|omitLoaded=\"1\"|show_manufacturers=\"1\"|manufacturer_per_row=\"3\"|featured=\"0\"|omitLoaded_featured=\"1\"|discontinued=\"0\"|discontinued_rows=\"1\"|omitLoaded_discontinued=\"1\"|omitLoaded_topten=\"1\"|omitLoaded_recent=\"1\"|omitLoaded_latest=\"1\"|add_img_main=\"1\"|img_width_full=\"\"|img_height_full=\"\"|forSale_path=\"\"|bootstrap=\"bs5\"|categorytemplate=\"\"|cartlayout=\"\"|productsublayout=\"\"|mediaLimit=\"20\"|llimit_init_BE=\"30\"|pagseq=\"\"|pagseq_1=\"\"|pagseq_2=\"\"|pagseq_3=\"\"|pagseq_4=\"\"|pagseq_5=\"\"|lazyLoad=\"1\"|setRealImageSize=\"1\"|useLayoutOverrides=\"1\"|css=\"1\"|jquery_framework=\"1\"|jquery=\"1\"|jprice=\"1\"|jsite=\"1\"|jdynupdate=\"1\"|ajax_category=\"1\"|homepage_categories_per_row=\"3\"|homepage_products_per_row=\"3\"|vm_prices_info_tax=\"0\"|vm_prices_info_delivery=\"0\"|rappenrundung=\"0\"|cVarswT=\"1\"|pricesbyCurrency=\"0\"|price_orderby=\"DESC\"|expertPrices=\"0\"|simple_prices_display=\"0\"|discountedPriceWithoutTaxTt=\"0\"|discountedPriceWithoutTaxTtText=\"0\"|discountedPriceWithoutTaxTtRounding=\"-1\"|priceWithoutTaxTt=\"0\"|priceWithoutTaxTtText=\"0\"|priceWithoutTaxTtRounding=\"-1\"|taxAmountTt=\"0\"|taxAmountTtText=\"0\"|taxAmountTtRounding=\"-1\"|salesPriceTt=\"0\"|salesPriceTtText=\"0\"|salesPriceTtRounding=\"-1\"|discountAmountTt=\"0\"|discountAmountTtText=\"0\"|discountAmountTtRounding=\"-1\"|popup_rel=\"1\"|set_automatic_shipment=\"0\"|set_automatic_payment=\"0\"|radicalShipPaymentVat=\"1\"|agree_to_tos_onorder=\"1\"|oncheckout_change_shopper=\"1\"|del_date_type=\"m\"|oncheckout_only_registered=\"0\"|regNeedProdCart=\"0\"|cartCookieExpire=\"0\"|showCartLoadedMsg=\"1\"|ordertracking=\"guests\"|prd_brws_orderby_dir=\"ASC\"|cat_brws_orderby_dir=\"ASC\"|feed_latest_published=\"0\"|feed_latest_nb=\"5\"|feed_topten_published=\"0\"|feed_topten_nb=\"5\"|feed_featured_published=\"0\"|feed_featured_nb=\"5\"|feed_home_show_images=\"1\"|feed_home_show_prices=\"1\"|feed_home_show_description=\"0\"|feed_home_description_type=\"product_s_desc\"|feed_home_max_text_length=\"500\"|feed_cat_published=\"0\"|feed_cat_show_images=\"0\"|feed_cat_show_prices=\"0\"|feed_cat_show_description=\"0\"|feed_cat_description_type=\"product_s_desc\"|feed_cat_max_text_length=\"500\"|use_seo_suffix=\"1\"|seo_sufix=\"-detail\"|transliterateSlugs=\"0\"|seo_full=\"1\"|router_by_menu=\"0\"|sef_for_cart_links=\"1\"|UseCachegetChildCategoryList=\"1\"|useCacheVmGetCategoryRoute=\"1\"|UseCachegetOrderByList=\"1\"|task=\"save\"|option=\"com_virtuemart\"|view=\"config\"|4fccc0767c4c65e997ac72ef558650cb=\"1\"', '2024-12-18 07:19:38', 32, '2024-12-18 07:49:16', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_countries`
--

CREATE TABLE `d6gvw_virtuemart_countries` (
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT 1,
  `country_name` varchar(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `country_num_code` char(3) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Country records';

--
-- Dumping data for table `d6gvw_virtuemart_countries`
--

INSERT INTO `d6gvw_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `country_num_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', '004', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(2, 1, 'Albania', 'ALB', 'AL', '008', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(3, 1, 'Algeria', 'DZA', 'DZ', '012', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(4, 1, 'American Samoa', 'ASM', 'AS', '016', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(5, 1, 'Andorra', 'AND', 'AD', '020', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(6, 1, 'Angola', 'AGO', 'AO', '024', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(7, 1, 'Anguilla', 'AIA', 'AI', '660', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', '010', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', '028', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(10, 1, 'Argentina', 'ARG', 'AR', '032', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(11, 1, 'Armenia', 'ARM', 'AM', '051', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(12, 1, 'Aruba', 'ABW', 'AW', '533', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(13, 1, 'Australia', 'AUS', 'AU', '036', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(14, 1, 'Austria', 'AUT', 'AT', '040', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', '031', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(16, 1, 'Bahamas (the)', 'BHS', 'BS', '044', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(17, 1, 'Bahrain', 'BHR', 'BH', '048', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', '050', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(19, 1, 'Barbados', 'BRB', 'BB', '052', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(20, 1, 'Belarus', 'BLR', 'BY', '112', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(21, 1, 'Belgium', 'BEL', 'BE', '056', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(22, 1, 'Belize', 'BLZ', 'BZ', '084', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(23, 1, 'Benin', 'BEN', 'BJ', '204', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(24, 1, 'Bermuda', 'BMU', 'BM', '060', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(25, 1, 'Bhutan', 'BTN', 'BT', '064', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(26, 1, 'Bolivia (Plurinational State of)', 'BOL', 'BO', '068', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(27, 1, 'Bosnia and Herzegovina', 'BIH', 'BA', '070', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(28, 1, 'Botswana', 'BWA', 'BW', '072', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', '074', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(30, 1, 'Brazil', 'BRA', 'BR', '076', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(31, 1, 'British Indian Ocean Territory (the)', 'IOT', 'IO', '086', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', '096', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', '100', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', '854', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(35, 1, 'Burundi', 'BDI', 'BI', '108', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(36, 1, 'Cambodia', 'KHM', 'KH', '116', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(37, 1, 'Cameroon', 'CMR', 'CM', '120', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(38, 1, 'Canada', 'CAN', 'CA', '124', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(39, 1, 'Cabo Verde', 'CPV', 'CV', '132', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(40, 1, 'Cayman Islands (the)', 'CYM', 'KY', '136', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(41, 1, 'Central African Republic (the)', 'CAF', 'CF', '140', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(42, 1, 'Chad', 'TCD', 'TD', '148', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(43, 1, 'Chile', 'CHL', 'CL', '152', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(44, 1, 'China', 'CHN', 'CN', '156', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', '162', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(46, 1, 'Cocos (Keeling) Islands (the)', 'CCK', 'CC', '166', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(47, 1, 'Colombia', 'COL', 'CO', '170', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(48, 1, 'Comoros (the)', 'COM', 'KM', '174', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(49, 1, 'Congo (the)', 'COG', 'CG', '178', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(50, 1, 'Cook Islands (the)', 'COK', 'CK', '184', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', '188', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(52, 1, 'Côte d\'Ivoire', 'CIV', 'CI', '384', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(53, 1, 'Croatia', 'HRV', 'HR', '191', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(54, 1, 'Cuba', 'CUB', 'CU', '192', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(55, 1, 'Cyprus', 'CYP', 'CY', '196', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(56, 1, 'Czechia', 'CZE', 'CZ', '203', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(57, 1, 'Denmark', 'DNK', 'DK', '208', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', '262', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(59, 1, 'Dominica', 'DMA', 'DM', '212', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(60, 1, 'Dominican Republic (the)', 'DOM', 'DO', '214', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(61, 1, 'Timor-Leste', 'TLS', 'TL', '626', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(62, 1, 'Ecuador', 'ECU', 'EC', '218', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(63, 1, 'Egypt', 'EGY', 'EG', '818', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(64, 1, 'El Salvador', 'SLV', 'SV', '222', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', '226', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(66, 1, 'Eritrea', 'ERI', 'ER', '232', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(67, 1, 'Estonia', 'EST', 'EE', '233', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', '231', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(69, 1, 'Falkland Islands (the) [Malvinas]', 'FLK', 'FK', '238', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(70, 1, 'Faroe Islands (the)', 'FRO', 'FO', '234', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(71, 1, 'Fiji', 'FJI', 'FJ', '242', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(72, 1, 'Finland', 'FIN', 'FI', '246', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(73, 1, 'France', 'FRA', 'FR', '250', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(74, 1, 'France, Metropolitan', 'FXX', 'FX', 'x-1', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(75, 1, 'French Guiana', 'GUF', 'GF', '254', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', '258', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(77, 1, 'French Southern Territories (the)', 'ATF', 'TF', '260', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(78, 1, 'Gabon', 'GAB', 'GA', '266', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(79, 1, 'Gambia (the)', 'GMB', 'GM', '270', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(80, 1, 'Georgia', 'GEO', 'GE', '268', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(81, 1, 'Germany', 'DEU', 'DE', '276', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(82, 1, 'Ghana', 'GHA', 'GH', '288', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', '292', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(84, 1, 'Greece', 'GRC', 'GR', '300', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(85, 1, 'Greenland', 'GRL', 'GL', '304', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(86, 1, 'Grenada', 'GRD', 'GD', '308', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', '312', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(88, 1, 'Guam', 'GUM', 'GU', '316', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(89, 1, 'Guatemala', 'GTM', 'GT', '320', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(90, 1, 'Guinea', 'GIN', 'GN', '324', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(91, 1, 'Guinea-Bissau', 'GNB', 'GW', '624', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(92, 1, 'Guyana', 'GUY', 'GY', '328', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(93, 1, 'Haiti', 'HTI', 'HT', '332', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(94, 1, 'Heard Island and McDonald Islands', 'HMD', 'HM', '334', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(95, 1, 'Honduras', 'HND', 'HN', '340', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', '344', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(97, 1, 'Hungary', 'HUN', 'HU', '348', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(98, 1, 'Iceland', 'ISL', 'IS', '352', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(99, 1, 'India', 'IND', 'IN', '356', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(100, 1, 'Indonesia', 'IDN', 'ID', '360', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', '364', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', '368', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(103, 1, 'Ireland', 'IRL', 'IE', '372', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(104, 1, 'Israel', 'ISR', 'IL', '376', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(105, 1, 'Italy', 'ITA', 'IT', '380', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(106, 1, 'Jamaica', 'JAM', 'JM', '388', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(107, 1, 'Japan', 'JPN', 'JP', '392', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(108, 1, 'Jordan', 'JOR', 'JO', '400', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', '398', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(110, 1, 'Kenya', 'KEN', 'KE', '404', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(111, 1, 'Kiribati', 'KIR', 'KI', '296', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(112, 1, 'Korea (the Democratic People\'s Republic of)', 'PRK', 'KP', '408', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(113, 1, 'Korea (the Republic of)', 'KOR', 'KR', '410', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(114, 1, 'Kuwait', 'KWT', 'KW', '414', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', '417', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(116, 1, 'Lao People\'s Democratic Republic (the)', 'LAO', 'LA', '418', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(117, 1, 'Latvia', 'LVA', 'LV', '428', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(118, 1, 'Lebanon', 'LBN', 'LB', '422', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(119, 1, 'Lesotho', 'LSO', 'LS', '426', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(120, 1, 'Liberia', 'LBR', 'LR', '430', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(121, 1, 'Libya', 'LBY', 'LY', '434', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', '438', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(123, 1, 'Lithuania', 'LTU', 'LT', '440', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', '442', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(125, 1, 'Macao', 'MAC', 'MO', '446', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(126, 1, 'North Macedonia', 'MKD', 'MK', '807', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(127, 1, 'Madagascar', 'MDG', 'MG', '450', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(128, 1, 'Malawi', 'MWI', 'MW', '454', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(129, 1, 'Malaysia', 'MYS', 'MY', '458', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(130, 1, 'Maldives', 'MDV', 'MV', '462', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(131, 1, 'Mali', 'MLI', 'ML', '466', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(132, 1, 'Malta', 'MLT', 'MT', '470', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(133, 1, 'Marshall Islands (the)', 'MHL', 'MH', '584', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', '474', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(135, 1, 'Mauritania', 'MRT', 'MR', '478', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(136, 1, 'Mauritius', 'MUS', 'MU', '480', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(137, 1, 'Mayotte', 'MYT', 'YT', '175', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(138, 1, 'Mexico', 'MEX', 'MX', '484', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(139, 1, 'Micronesia (Federated States of)', 'FSM', 'FM', '583', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(140, 1, 'Moldova (the Republic of)', 'MDA', 'MD', '498', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(141, 1, 'Monaco', 'MCO', 'MC', '492', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(142, 1, 'Mongolia', 'MNG', 'MN', '496', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(143, 1, 'Montserrat', 'MSR', 'MS', '500', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(144, 1, 'Morocco', 'MAR', 'MA', '504', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', '508', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(146, 1, 'Myanmar', 'MMR', 'MM', '104', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(147, 1, 'Namibia', 'NAM', 'NA', '516', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(148, 1, 'Nauru', 'NRU', 'NR', '520', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(149, 1, 'Nepal', 'NPL', 'NP', '524', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(150, 1, 'Netherlands (the)', 'NLD', 'NL', '528', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 'x-2', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', '540', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', '554', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', '558', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(155, 1, 'Niger (the)', 'NER', 'NE', '562', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(156, 1, 'Nigeria', 'NGA', 'NG', '566', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(157, 1, 'Niue', 'NIU', 'NU', '570', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', '574', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(159, 1, 'Northern Mariana Islands (the)', 'MNP', 'MP', '580', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(160, 1, 'Norway', 'NOR', 'NO', '578', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(161, 1, 'Oman', 'OMN', 'OM', '512', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(162, 1, 'Pakistan', 'PAK', 'PK', '586', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(163, 1, 'Palau', 'PLW', 'PW', '585', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(164, 1, 'Panama', 'PAN', 'PA', '591', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', '598', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(166, 1, 'Paraguay', 'PRY', 'PY', '600', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(167, 1, 'Peru', 'PER', 'PE', '604', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(168, 1, 'Philippines (the)', 'PHL', 'PH', '608', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', '612', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(170, 1, 'Poland', 'POL', 'PL', '616', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(171, 1, 'Portugal', 'PRT', 'PT', '620', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', '630', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(173, 1, 'Qatar', 'QAT', 'QA', '634', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(174, 1, 'Réunion', 'REU', 'RE', '638', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(175, 1, 'Romania', 'ROU', 'RO', '642', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(176, 1, 'Russian Federation (the)', 'RUS', 'RU', '643', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(177, 1, 'Rwanda', 'RWA', 'RW', '646', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', '659', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', '662', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', '670', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(181, 1, 'Samoa', 'WSM', 'WS', '882', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(182, 1, 'San Marino', 'SMR', 'SM', '674', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', '678', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', '682', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(185, 1, 'Senegal', 'SEN', 'SN', '686', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(186, 1, 'Seychelles', 'SYC', 'SC', '690', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', '694', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(188, 1, 'Singapore', 'SGP', 'SG', '702', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(189, 1, 'Slovakia', 'SVK', 'SK', '703', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(190, 1, 'Slovenia', 'SVN', 'SI', '705', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', '090', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(192, 1, 'Somalia', 'SOM', 'SO', '706', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', '710', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', '239', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(195, 1, 'Spain', 'ESP', 'ES', '724', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', '144', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(197, 1, 'Saint Helena, Ascension and Tristan da Cunha', 'SHN', 'SH', '654', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(198, 1, 'Saint Pierre and Miquelon', 'SPM', 'PM', '666', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(199, 1, 'Sudan (the)', 'SDN', 'SD', '729', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(200, 1, 'Suriname', 'SUR', 'SR', '740', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(201, 1, 'Svalbard and Jan Mayen', 'SJM', 'SJ', '744', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(202, 1, 'Eswatini', 'SWZ', 'SZ', '748', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(203, 1, 'Sweden', 'SWE', 'SE', '752', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(204, 1, 'Switzerland', 'CHE', 'CH', '756', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(205, 1, 'Syrian Arab Republic (the)', 'SYR', 'SY', '760', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(206, 1, 'Taiwan (Province of China)', 'TWN', 'TW', '158', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', '762', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(208, 1, 'Tanzania, the United Republic of', 'TZA', 'TZ', '834', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(209, 1, 'Thailand', 'THA', 'TH', '764', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(210, 1, 'Togo', 'TGO', 'TG', '768', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(211, 1, 'Tokelau', 'TKL', 'TK', '772', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(212, 1, 'Tonga', 'TON', 'TO', '776', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', '780', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(214, 1, 'Tunisia', 'TUN', 'TN', '788', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(215, 1, 'Turkey', 'TUR', 'TR', '792', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', '795', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(217, 1, 'Turks and Caicos Islands (the)', 'TCA', 'TC', '796', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', '798', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(219, 1, 'Uganda', 'UGA', 'UG', '800', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(220, 1, 'Ukraine', 'UKR', 'UA', '804', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(221, 1, 'United Arab Emirates (the)', 'ARE', 'AE', '784', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(222, 1, 'United Kingdom of Great Britain and Northern Ireland (the)', 'GBR', 'GB', '826', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(223, 1, 'United States of America (the)', 'USA', 'US', '840', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(224, 1, 'United States Minor Outlying Islands (the)', 'UMI', 'UM', '581', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(225, 1, 'Uruguay', 'URY', 'UY', '858', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', '860', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', '548', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(228, 1, 'Holy See (the)', 'VAT', 'VA', '336', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(229, 1, 'Venezuela (Bolivarian Republic of)', 'VEN', 'VE', '862', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', '704', 0, 1, NULL, 0, NULL, 0, NULL, 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', '092', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', '850', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(233, 1, 'Wallis and Futuna', 'WLF', 'WF', '876', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(234, 1, 'Western Sahara*', 'ESH', 'EH', '732', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(235, 1, 'Yemen', 'YEM', 'YE', '887', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(236, 1, 'Yugoslavia', 'YUG', 'YU', 'x-3', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(237, 1, 'Congo (the Democratic Republic of the)', 'COD', 'CD', '180', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', '894', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', '716', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(240, 1, 'East Timor', 'XET', 'XE', 'x-4', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(241, 1, 'Jersey', 'JEY', 'JE', '832', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(242, 1, 'Saint Barthélemy', 'BLM', 'BL', '652', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(243, 1, 'Bonaire, Sint Eustatius and Saba', 'BES', 'BQ', '535', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(244, 1, 'Canary Islands', 'XCA', 'IC', 'x-5', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(245, 1, 'Serbia', 'SRB', 'RS', '688', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(246, 1, 'Saint Martin (French part)', 'MAF', 'MF', '663', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(247, 1, 'Sint Maarten (Dutch part)', 'SXM', 'SX', '534', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(248, 1, 'Palestine, State of', 'PSE', 'PS', '275', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(249, 1, 'Montenegro', 'MNE', 'ME', '499', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(350, 1, 'Åland Islands', 'ALA', 'AX', '248', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(351, 1, 'Curaçao', 'CUW', 'CW', '531', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(352, 1, 'Guernsey', 'GGY', 'GG', '831', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(353, 1, 'Isle of Man', 'IMN', 'IM', '833', 0, 0, NULL, 0, NULL, 0, NULL, 0),
(354, 1, 'South Sudan', 'SSD', 'SS', '728', 0, 0, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_coupons`
--

CREATE TABLE `d6gvw_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `coupon_code` varchar(248) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `coupon_value_max` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `virtuemart_shoppergroup_ids` text DEFAULT NULL,
  `virtuemart_shopper_ids` text DEFAULT NULL,
  `virtuemart_product_ids` text DEFAULT NULL,
  `virtuemart_category_ids` text DEFAULT NULL,
  `virtuemart_coupon_max_attempt_per_user` tinyint(4) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store coupon codes';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_currencies`
--

CREATE TABLE `d6gvw_virtuemart_currencies` (
  `virtuemart_currency_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(12,5) DEFAULT NULL,
  `currency_symbol` varchar(8) DEFAULT NULL,
  `currency_decimal_place` varchar(8) DEFAULT NULL,
  `currency_decimal_symbol` varchar(8) DEFAULT NULL,
  `currency_thousands` varchar(8) DEFAULT NULL,
  `currency_positive_style` varchar(64) DEFAULT NULL,
  `currency_negative_style` varchar(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 1,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store currencies';

--
-- Dumping data for table `d6gvw_virtuemart_currencies`
--

INSERT INTO `d6gvw_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, 0.00000, 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, 0.00000, 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, 0.00000, 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, 0.00000, '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, 0.00000, 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, 0.00000, '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, 0.00000, 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, 0.00000, 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, 0.00000, '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, 0.00000, 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, 0.00000, 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, 0.00000, 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, 0.00000, 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, 0.00000, '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, 0.00000, 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, 0.00000, 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, 0.00000, '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(31, 1, 'Colombian peso', '', 'COP', 170, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, 0.00000, '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, 0.00000, 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, 0.00000, '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, 0.00000, '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(40, 1, 'Danish krone', '', 'DKK', 208, 0.00000, 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, 0.00000, 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, 0.00000, 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, 0.00000, 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(47, 1, 'Euro', '', 'EUR', 978, 0.00000, '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(52, 1, 'British pound', '', 'GBP', 826, 0.00000, '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, 0.00000, 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, 0.00000, 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, 0.00000, 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, 0.00000, '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, 0.00000, 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, 0.00000, 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, 0.00000, 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, 0.00000, 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, 0.00000, '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(68, 1, 'Indian rupee', '', 'INR', 356, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, 0.00000, 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, 0.00000, '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, 0.00000, 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, 0.00000, 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, 0.00000, '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, 0.00000, 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, 0.00000, '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, 0.00000, 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(79, 1, 'North Korean won', '', 'KPW', 408, 0.00000, '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(80, 1, 'South Korean won', '', 'KRW', 410, 0.00000, '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, 0.00000, 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(83, 1, 'Lao kip', '', 'LAK', 418, 0.00000, '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, 0.00000, '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, 0.00000, 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, 0.00000, 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, 0.00000, 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, 0.00000, '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, 0.00000, 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, 0.00000, 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, 0.00000, 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, 0.00000, 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, 0.00000, 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, 0.00000, '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, 0.00000, 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(108, 1, 'Omani rial', '', 'OMR', 512, 0.00000, '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, 0.00000, 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, 0.00000, 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, 0.00000, 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, 0.00000, '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, 0.00000, 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, 0.00000, '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, 0.00000, '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(118, 1, 'Romanian leu', '', 'RON', 946, 0.00000, 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, 0.00000, 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, 0.00000, '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, 0.00000, '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, 0.00000, 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, 0.00000, 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, 0.00000, 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, 0.00000, 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, 0.00000, 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, 0.00000, 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(135, 1, 'Thai baht', '', 'THB', 764, 0.00000, '฿', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, 0.00000, 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, 0.00000, 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(139, 1, 'Türk Lirası', '', 'TRY', 949, 0.00000, 'TL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, 0.00000, 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, 0.00000, 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, 0.00000, 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(144, 1, 'United States dollar', '', 'USD', 840, 0.00000, '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, 0.00000, '₫', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, 0.00000, 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(149, 1, 'Samoan tala', '', 'WST', 882, 0.00000, 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, 0.00000, '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, 0.00000, 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(153, 1, 'South African rand', '', 'ZAR', 710, 0.00000, 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, 0.00000, 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, 0.00000, 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, 0.00000, 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, 0.00000, 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, 0.00000, 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, 0.00000, 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, 0.00000, 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, 0.00000, 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, 0.00000, 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, 0.00000, 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, 0.00000, 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, 0.00000, 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, 0.00000, 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, 0.00000, 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, 0.00000, 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, 0.00000, 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, 0.00000, '$', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, 0.00000, 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, 0.00000, 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, 0.00000, '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, 0.00000, 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, 0.00000, '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, 0.00000, 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, 0.00000, 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, 0.00000, '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, 0.00000, 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, 0.00000, 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, 0.00000, 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(187, 1, 'CFP franc', '', 'XPF', 953, 0.00000, 'F', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, 0.00000, '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, 0.00000, 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, 0.00000, 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, 0.00000, '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, 0.00000, 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, 0.00000, 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, 0.00000, 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, 0.00000, 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, 0.00000, 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, 0.00000, 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, 0.00000, 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, 0.00000, '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, 0.00000, 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(201, 1, 'Mvdol', '', 'BOV', 984, 0.00000, 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_customs`
--

CREATE TABLE `d6gvw_virtuemart_customs` (
  `virtuemart_custom_id` int(1) UNSIGNED NOT NULL,
  `custom_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `custom_jplugin_id` int(1) NOT NULL DEFAULT 0,
  `custom_element` varchar(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:Display in admin only',
  `custom_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT 1,
  `custom_tip` varchar(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(4095) DEFAULT NULL COMMENT 'default value',
  `custom_desc` varchar(4095) DEFAULT NULL COMMENT 'description or unit',
  `field_type` varchar(2) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Add input to cart',
  `searchable` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Available as search filter',
  `layout_pos` varchar(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` text DEFAULT NULL,
  `virtuemart_shoppergroup_id` varchar(255) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='custom fields definition';

--
-- Dumping data for table `d6gvw_virtuemart_customs`
--

INSERT INTO `d6gvw_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `searchable`, `layout_pos`, `custom_params`, `virtuemart_shoppergroup_id`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', 'related_products', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, 0, 0, 'related_products', 'wPrice=\"1\"|wImage=\"1\"|wDescr=\"1\"|', '', 0, 1, NULL, 0, 0, NULL, 0, NULL, 0),
(2, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', 'related_categories', 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, 0, 0, 'related_categories', 'wImage=\"1\"|wDescr=\"1\"|', '', 0, 1, NULL, 0, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_invoices`
--

CREATE TABLE `d6gvw_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `order_status` char(3) DEFAULT NULL,
  `xhtml` text DEFAULT NULL,
  `o_hash` varchar(33) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='custom fields definition';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_manufacturercategories`
--

CREATE TABLE `d6gvw_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Manufacturers are assigned to these categories';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_manufacturercategories_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_manufacturercategories_en_gb` (
  `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL,
  `mf_category_name` varchar(400) NOT NULL DEFAULT '',
  `mf_category_desc` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_manufacturers`
--

CREATE TABLE `d6gvw_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `hits` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Manufacturers are those who deliver products';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_manufacturers_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_manufacturers_en_gb` (
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL,
  `mf_name` varchar(400) NOT NULL DEFAULT '',
  `mf_email` varchar(255) NOT NULL DEFAULT '',
  `mf_desc` text DEFAULT NULL,
  `mf_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_manufacturer_medias`
--

CREATE TABLE `d6gvw_virtuemart_manufacturer_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_medias`
--

CREATE TABLE `d6gvw_virtuemart_medias` (
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `file_title` varchar(126) NOT NULL DEFAULT '',
  `file_description` varchar(254) NOT NULL DEFAULT '',
  `file_meta` varchar(254) NOT NULL DEFAULT '',
  `file_class` varchar(64) NOT NULL DEFAULT '',
  `file_mimetype` varchar(64) NOT NULL DEFAULT '',
  `file_type` varchar(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT 0,
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT 0,
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT 0,
  `file_params` varchar(12287) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Additional Images and Files which are assigned to products';

--
-- Dumping data for table `d6gvw_virtuemart_medias`
--

INSERT INTO `d6gvw_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'dong-ho-daniel-wellington-DW-DW00100125-1.jpg', '', '', '', 'image/jpeg', 'product', 'images/virtuemart/product/dong-ho-daniel-wellington-DW-DW00100125-1.jpg', '', 0, 0, 0, '', '', 0, 1, '2024-12-18 07:23:08', 32, NULL, 0, NULL, 0),
(2, 1, 'dong-ho-olympia-star-opa58057msk-trang-nam-pin-day-inox.jpg', '', '', '', 'image/jpeg', 'product', 'images/virtuemart/product/dong-ho-olympia-star-opa58057msk-trang-nam-pin-day-inox.jpg', '', 0, 0, 0, '', '', 0, 1, '2024-12-18 07:41:09', 32, '2024-12-18 07:45:57', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE `d6gvw_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) UNSIGNED NOT NULL,
  `cats` longblob DEFAULT NULL,
  `catsxref` blob DEFAULT NULL,
  `manus` longblob DEFAULT NULL,
  `mfcats` blob DEFAULT NULL,
  `shoppergroups` longblob DEFAULT NULL,
  `products` longblob DEFAULT NULL,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob DEFAULT NULL,
  `orders` longblob DEFAULT NULL,
  `attributes` longblob DEFAULT NULL,
  `relatedproducts` longblob DEFAULT NULL,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_modules`
--

CREATE TABLE `d6gvw_virtuemart_modules` (
  `module_id` int(1) UNSIGNED NOT NULL,
  `module_name` char(191) DEFAULT NULL,
  `module_description` varchar(15359) DEFAULT NULL,
  `module_perms` char(191) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `d6gvw_virtuemart_modules`
--

INSERT INTO `d6gvw_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_orders`
--

CREATE TABLE `d6gvw_virtuemart_orders` (
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `order_note` varchar(7000) DEFAULT NULL,
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `invoice_locked` tinyint(1) NOT NULL DEFAULT 0,
  `order_total` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_billTax` varchar(1000) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(12,5) DEFAULT NULL,
  `order_shipment` decimal(12,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(12,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `coupon_code` varchar(248) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT 0.00,
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(3) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(12,6) NOT NULL DEFAULT 1.000000,
  `user_shoppergroups` varchar(30) DEFAULT NULL,
  `payment_currency_id` smallint(1) DEFAULT NULL,
  `payment_currency_rate` decimal(12,6) NOT NULL DEFAULT 1.000000,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(45) NOT NULL DEFAULT '',
  `STsameAsBT` tinyint(1) NOT NULL DEFAULT 0,
  `paid` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `paid_on` datetime DEFAULT NULL,
  `o_hash` varchar(33) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Used to store all orders';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_orderstates`
--

CREATE TABLE `d6gvw_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `order_status_code` char(3) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_color` varchar(64) DEFAULT NULL,
  `order_status_description` varchar(12359) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `order_status_email_layout` varchar(128) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All available order statuses';

--
-- Dumping data for table `d6gvw_virtuemart_orderstates`
--

INSERT INTO `d6gvw_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_color`, `order_status_description`, `order_stock_handle`, `order_status_email_layout`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', NULL, '', 'R', '', 1, 1, NULL, 0, NULL, 0, NULL, 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', NULL, '', 'R', '', 2, 1, NULL, 0, NULL, 0, NULL, 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', NULL, '', 'R', '', 3, 1, NULL, 0, NULL, 0, NULL, 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', NULL, '', 'A', '', 4, 1, NULL, 0, NULL, 0, NULL, 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', NULL, '', 'A', '', 5, 1, NULL, 0, NULL, 0, NULL, 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', NULL, '', 'O', '', 6, 1, NULL, 0, NULL, 0, NULL, 0),
(7, 1, 'F', 'COM_VIRTUEMART_ORDER_STATUS_COMPLETED', NULL, '', 'R', '', 7, 1, NULL, 0, NULL, 0, NULL, 0),
(8, 1, 'D', 'COM_VIRTUEMART_ORDER_STATUS_DENIED', NULL, '', 'A', '', 8, 1, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_order_calc_rules`
--

CREATE TABLE `d6gvw_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_calc_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `calc_result` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `calc_value` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `calc_currency` int(1) DEFAULT NULL,
  `calc_params` varchar(15359) NOT NULL DEFAULT '',
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all calculation rules which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_order_histories`
--

CREATE TABLE `d6gvw_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `order_status_code` char(3) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `comments` varchar(15359) DEFAULT NULL,
  `paid` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `o_hash` varchar(33) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all actions and changes that occur to an order';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_order_items`
--

CREATE TABLE `d6gvw_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(3) DEFAULT NULL,
  `product_attribute` mediumtext DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `paid` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `oi_hash` varchar(33) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all items (products) which are part of an order';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_order_item_histories`
--

CREATE TABLE `d6gvw_virtuemart_order_item_histories` (
  `virtuemart_order_item_history_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(3) DEFAULT NULL,
  `product_attribute` mediumtext DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `paid` decimal(15,5) NOT NULL DEFAULT 0.00000,
  `oi_hash` varchar(33) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all actions and changes that occur to an order item only';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_order_userinfos`
--

CREATE TABLE `d6gvw_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_order_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `zip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `tos` tinyint(1) NOT NULL DEFAULT 0,
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores the BillTo and ShipTo Information at order time';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_paymentmethods`
--

CREATE TABLE `d6gvw_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `payment_jplugin_id` int(1) NOT NULL DEFAULT 0,
  `payment_element` varchar(50) NOT NULL DEFAULT '',
  `payment_params` text DEFAULT NULL,
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `shared` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The payment methods of your store';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_paymentmethods_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_paymentmethods_en_gb` (
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL,
  `payment_name` varchar(400) NOT NULL DEFAULT '',
  `payment_desc` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='xref table for paymentmethods to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_products`
--

CREATE TABLE `d6gvw_virtuemart_products` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `product_parent_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_sku` varchar(192) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT 0,
  `product_ordered` int(1) NOT NULL DEFAULT 0,
  `product_stockhandle` varchar(24) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_available_date` datetime DEFAULT NULL,
  `product_availability` varchar(32) DEFAULT NULL,
  `product_special` tinyint(1) NOT NULL DEFAULT 0,
  `product_discontinued` tinyint(1) NOT NULL DEFAULT 0,
  `product_sales` int(1) NOT NULL DEFAULT 0,
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) UNSIGNED DEFAULT NULL,
  `product_params` varchar(255) NOT NULL DEFAULT '',
  `product_canon_category_id` int(1) DEFAULT NULL,
  `hits` int(1) UNSIGNED DEFAULT NULL,
  `intnotes` text DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` varchar(48) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 0,
  `pordering` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `has_categories` tinyint(1) DEFAULT NULL,
  `has_manufacturers` tinyint(1) DEFAULT NULL,
  `has_medias` tinyint(1) DEFAULT NULL,
  `has_prices` tinyint(1) DEFAULT NULL,
  `has_shoppergroups` tinyint(1) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='All products are stored here.';

--
-- Dumping data for table `d6gvw_virtuemart_products`
--

INSERT INTO `d6gvw_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `product_stockhandle`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_discontinued`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `product_canon_category_id`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `has_categories`, `has_manufacturers`, `has_medias`, `has_prices`, `has_shoppergroups`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 0, 'DW00100125 ', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2024-12-18 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|shared_stock=0|product_box=\"\"|', 0, NULL, '', '', '', '', 1, 0, 1, 0, 1, 1, 0, '2024-12-18 07:23:08', 32, NULL, 0, NULL, 0),
(2, 1, 0, 'OPA58057MSK-T', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 0, 0, '0', 0, '2024-12-18 00:00:00', '', 0, 0, 0, 'KG', NULL, 'min_order_level=\"\"|max_order_level=\"\"|step_order_level=\"\"|shared_stock=0|product_box=\"\"|', 0, NULL, '', '', '', '', 1, 0, 1, 0, 1, 1, 0, '2024-12-18 07:39:06', 32, '2024-12-18 07:45:57', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_products_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_products_en_gb` (
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` text DEFAULT NULL,
  `product_name` varchar(400) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_virtuemart_products_en_gb`
--

INSERT INTO `d6gvw_virtuemart_products_en_gb` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Mẫu đồng hồ Daniel Wellington DW00100125 mang phong cách đơn giản với mặt số 2 kim, phiên bản size 40mm. Chi tiết vàng hồng thời trang được sử dụng trên phần vỏ máy và kim chỉ, tạo nên vẻ ngoài thanh lịch và đẳng cấp cho người đeo.', '<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/dong-ho-daniel-wellington-DW-DW00100125-1.jpg\" width=\"358\" height=\"418\" loading=\"lazy\" data-path=\"local-images:/dong-ho-daniel-wellington-DW-DW00100125-1.jpg\"></p>\r\n<h2 style=\"text-align: justify;\"><strong>Đồng hồ Daniel Wellington DW00100125 đa-zi-năng trong phong cách</strong></h2>\r\n<p style=\"text-align: justify;\"><em>Thương hiệu đồng hồ Daniel Wellington hay đồng hồ DW từ khi du nhập vào Việt Nam đã tạo nên một cơn sốt rất mạnh mẽ trong giới trẻ hiện đại. Những người trẻ tuổi lựa chọn dòng đồng hồ DW vì thiết kế tối giản nhất mà lại mang đến vẻ đẹp thời thượng nhất. Hơn cả, việc mix đồ cùng những chiếc đồng hồ DW còn không thể đơn giản dễ dàng hơn. Thương hiệu đến từ Thụy Điển này luôn đều đặn tung ra những mẫu sản phẩm hút hồn khách hàng, mới nhất có thể kể đến chiếc đồng hồ Daniel Wellington DW00100125.</em></p>\r\n<h2 style=\"text-align: justify;\"><strong>Thiết kế đặc trưng : tối giản mà thời thượng, ấn tượng</strong></h2>\r\n<h4 style=\"text-align: justify;\"><strong>– Daniel Wellington –  hút mắt</strong></h4>\r\n<p style=\"text-align: justify;\">Khách hàng sau khi đã trải nghiệm những chiếc đồng hồ cầu kỳ như đồng hồ gắn bộ kiện máy cơ với 3 đồng hồ nhỏ chất lừ, hay những thiết kế con số La Mã thu hút người xem, thì vẫn không quên được kiểu dáng tối giản đến thời thượng của dòng đồng hồ DW. Chiếc <strong>đồng hồ DW00100125</strong> này cũng vậy, cũng mang đến cho khách hàng cảm giác hút mắt như những người anh em của nó.</p>\r\n<h4 style=\"text-align: justify;\"><strong>– Mặt đồng hồ tròn, siêu mỏng ấn tượng</strong></h4>\r\n<p style=\"text-align: justify;\">Đây là một điểm nổi bật và khác lạ của đồng hồ Daniel Wellington so với các thương hiệu khác. Chiếc <strong>đồng hồ Daniel Wellington DW00100125 </strong>lấy tông màu tối làm chủ đạo, tăng phần bí ẩn và mạnh mẽ cho người đeo. Những vạch số chia giờ và giây được chạm khắc tinh tế, có độ dày và dài rất phù hợp so với tổng bố cục sản phẩm.</p>\r\n<h4 style=\"text-align: justify;\"><strong>– Chạm khắc có độ mỏng tinh tế</strong></h4>\r\n<p style=\"text-align: justify;\">Kim giờ và kim phút cũng được chạm khắc có độ mỏng tinh tế, khiến người đeo có cảm giác nhẹ nhàng và dễ chịu.Tất cả đều được tối giản một cách tinh tế. Thêm vào đó, tông màu vàng kim sang trọng càng nổi bật trên nền đen bí ẩn, khiến cho chiếc đồng hồ Daniel Wellington DW00100125 thật sự như toát lên độ đẳng cấp, quyền lực.  Đường kính mặt 40mm là một kích thước rất lý tưởng cho form tay của phái mạnh Việt Nam.</p>\r\n<p style=\"text-align: justify;\">Dây đồng hồ được làm từ chất liệu da , lấy tông màu nâu làm lan tỏa vẻ đẹp cổ điển tới từ châu Âu. Giới trẻ hiện đại Việt Nam chuộng mẫu mã sản phẩm này cũng một phần vì những lí do này.</p>\r\n<h4 style=\"text-align: justify;\"><strong>– Chất lượng bảo đảm</strong></h4>\r\n<p style=\"text-align: justify;\">Các sản phẩm được đảm bảo bằng thương hiệu Châu Âu, đặc biệt là từ các nước phát triển quá mạnh mẽ như Thụy Điển luôn được người tiêu dùng Việt săn đón. Sản <strong>phẩm đồng hồ Daniel Wellington DW00100125</strong> có mặt kính được làm từ chất liệu mineral thay vì dùng loại kính sapphire làm gia tăng độ chống trầy xước cho sản phẩm. Một vài tác động như rơi hay va đập nhẹ sẽ không nhằm nhò gì với sản phẩm đồng hồ này</p>\r\n<p style=\"text-align: justify;\">Ngoài ra, mức độ chịu nước của đồng hồ này lên tới con số 30m. Nếu đi trời mưa nhẹ hay rửa  tay, đi tắm biển thì các bạn cũng không phải quá lo lắng nhé, sản phẩm này có sức bền đáng kinh ngạc đấy</p>\r\n<p style=\"text-align: justify;\">Sau khi đi biển, bạn cần lấy khăn lau đi cát bẩn và lau khô sản phẩm để chất lượng sản phẩm tốt nhất có thể nhé.</p>\r\n<h2 style=\"text-align: justify;\"><strong>Đồng hồ Daniel Wellington giá rẻ không ngờ</strong></h2>\r\n<p style=\"text-align: justify;\">Với các thương hiệu đến từ Châu Âu thì giá thành của sản phẩm chắc chắn sẽ ở mức cao. Thế nhưng, với dòng sản phẩm <strong>đồng hồ Daniel Wellington</strong> thì bạn không phải lo lắng, nó sẽ chỉ nằm ở mức giá lý tưởng thôi, dao động từ 1-3 triệu thôi. Sản phẩm <strong>đồng hồ Daniel Wellington DW00100125 </strong>được các bạn trẻ ưa chuộng cũng một phần vì lí do này</p>\r\n<h2 style=\"text-align: justify;\"><strong>Đa-zi-năng trong phong cách</strong></h2>\r\n<p style=\"text-align: justify;\">Khoác lên mình bộ âu phục, chiếc <strong>đồng hồ DW00100125</strong> sẽ khiến bạn thêm phần lịch lãm, sang trọng. Mặc bộ quần áo phông đơn giản, <strong>đồng hồ DW00100125</strong> lại khiến bạn có phong cách trẻ trung, năng động. Với<strong> Daniel Wellington DW00100125</strong>, không có gì là quá khó khăn để biến tấu phong cách.</p>\r\n<p style=\"text-align: justify;\">Hãy mau chóng đến với <strong>đồng hồ Daniel Wellington chính hãng</strong> để sắm cho mình một chiếc <strong>đồng hồ Daniel Wellington DW00100125</strong> tinh tế, thời thượng, có thể giúp bạn nhanh chóng biến hóa mọi phong cách nào.</p>', 'Đồng Hồ Daniel Wellington Classic', '', '', '', 'đồng-hồ-daniel-wellington-classic'),
(2, '', '<h2 style=\"text-align: justify;\"> </h2>\r\n<h2><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/dong-ho-olympia-star-opa58057msk-trang-nam-pin-day-inox.jpg\" width=\"398\" height=\"464\" loading=\"lazy\" data-path=\"local-images:/dong-ho-olympia-star-opa58057msk-trang-nam-pin-day-inox.jpg\"></h2>\r\n<h2 style=\"text-align: justify;\"> </h2>\r\n<h2 style=\"text-align: justify;\">1.ĐÁNH GIÁ THIẾT KẾ ĐỒNG HỒ Olympia Star OPA58057MSK-T</h2>\r\n<h3 style=\"text-align: justify;\"><strong>KÍCH CỠ VÀ TRỌNG LƯỢNG OPA58057MSK-T</strong></h3>\r\n<ul style=\"text-align: justify;\">\r\n<li> </li>\r\n</ul>\r\n<p style=\"text-align: justify;\"><a href=\"https://shopdongho.com/dong-ho-olympia-star-la-cua-nuoc-nao/\"><strong>Olympia Star</strong></a> là thương hiệu châu Á, thiết kế sản phẩm nhắm vào phân khúc khách hàng châu Á. Với kích thước 40mm là một kích thước rất phổ thông và phù hợp với hầu hết cổ tay của người đàn ông Việt Nam. Vậy nên, nếu bạn còn băn khoăn không biết liệu rằng em nó có vừa vặn hay không thì bạn hãy tới ngay chi nhánh gần nhất của <a href=\"https://shopdongho.com/7-ly-do-ban-nen-mua-dong-ho-chinh-hang-tai-shopdongho/\"><strong>SHOPDONGHO.com</strong></a> để được tư vấn kĩ hơn nhé!</p>\r\n<p style=\"text-align: justify;\"> </p>\r\n<h3 style=\"text-align: justify;\"><strong>VỎ VÀ MẶT ĐỒNG HỒ</strong></h3>\r\n<ul style=\"text-align: justify;\">\r\n<li>✅Vỏ đồng hồ được đúc nguyên khối từ chất liệu <strong><a href=\"https://shopdongho.com/thep-khong-gi-316l-chat-lieu-che-tac-dong-ho-pho-bien-nhat-hien-nay/\">thép không gỉ 316L</a></strong><strong> chuyên dụng</strong><strong> được mạ vàng theo công nghệ PVD tiên tiến</strong>, đảm bảo độ sáng bóng và bền bỉ trong suốt thời gian sử dụng. Dễ dàng đánh bóng khi có trầy xước.</li>\r\n<li><strong>✅</strong><strong>Cột số chỉ giờ </strong>là sự kết hợp giữa vạch đơn vạch đôi tạo điểm nhấn ở vị trí 3,6,9,12 giờ.</li>\r\n<li><strong>✅</strong><strong>Dial trắng </strong>làm nền cho chất liệu kim loại vàng, giúp sản phẩm tinh tế, thanh thoát và sang trọng hơn. Phù hợp cho nhiều phong cách thời trang khác nhau trong cuộc sống.</li>\r\n<li>✅Là một trong những loại kim đồng hồ phổ biến nhất hiện nay bởi hình dáng cân xứng hài hòa,  có sự tương thích cao với tất cả các phong cách từ cổ đến kim, không phân biệt nam nữ, độ tuổi.</li>\r\n<li><strong>✅<a href=\"https://shopdongho.com/kinh-sapphire-dong-ho-va-tat-ca-thong-tin-ban-can-biet/\">Mặt kính Sapphire</a></strong><strong> </strong>chống trầy xước cao. Bởi tính năng đặc phù nên quy trình sản xuất kính Sapphire khác với những loại kính khác. Chính vì vậy, đây là loại kính chỉ xuất hiện trong phân khúc đồng hồ cao cấp các các thương hiệu đồng hồ trên thị trường hiện nay.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"> </p>\r\n<h3 style=\"text-align: justify;\"><strong>DÂY ĐEO ĐỒNG HỒ</strong></h3>\r\n<ul style=\"text-align: justify;\">\r\n<li><strong>✅</strong><strong>Dây đeo và mắc cài đồng hồ OLYMPIA STAR NAM OPA58057MSK-T </strong>được làm bằng <strong>thép không gỉ 316L chuyên dụng mạ PVD</strong>, dễ dàng đánh bóng khi khách hàng có nhu cầu làm mới.</li>\r\n<li>✅Dây đeo được làm từ nhiều mắt và khoá cài dạng gập 3, thuận tiện nới lỏng hoặc thu gọn cho vừa cổ tay, tránh trường hợp đồng hồ lỏng lẻo gây va đập nhiều.</li>\r\n<li>✅Màu sắc vàng kim kết hợp với bạc lạ mắt<strong> (DÂY DEMI)</strong>, khiến đồng hồ không chỉ mang nét trẻ trung mà còn toát ra sự chín chắn, sang trọng.</li>\r\n<li>✅Nếu bạn là người thường xuyên tiếp xúc với nước thì dây kim loại chính là lựa chọn sáng suốt.</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"> </p>\r\n<h2 style=\"text-align: justify;\">2.KHÁM PHÁ TÍNH NĂNG ĐỒNG HỒ <strong>OLYMPIA STAR NAM OPA58057MSK-T</strong></h2>\r\n<p style=\"text-align: justify;\">Các tính năng của <strong>OPA58057MSK-T </strong>đáp ứng nhu cầu thời gian cơ bản cho người dùng. Bao gồm:</p>\r\n<ul style=\"text-align: justify;\">\r\n<li><strong>✅Lịch Ngày</strong> ở vị trí 3 giờ<strong>.</strong></li>\r\n<li><strong>✅</strong><strong>Lịch Thứ</strong> ở vị trí 6 giờ.</li>\r\n<li>✅Khả năng <strong>chống nước <a href=\"https://shopdongho.com/kha-nang-chong-nuoc-cua-dong-ho-deo-tay/\">3ATM(30m)</a></strong> hỗ trợ người dùng thoải mái trong sinh hoạt hàng ngày như đi mưa, rửa tay v.v…</li>\r\n</ul>\r\n<p style=\"text-align: justify;\"> </p>\r\n<h2 style=\"text-align: justify;\">3.CÁC LƯU Ý KHI SỬ DỤNG <strong>OLYMPIA STAR NAM OPA58057MSK-T</strong></h2>\r\n<ul>\r\n<li style=\"text-align: justify;\">?Đồng hồ <strong>OLYMPIA STAR NAM OPA58057MSK-T </strong>được vận hành bằng một bộ máy Quartz chất lượng cao.</li>\r\n<li style=\"text-align: justify;\">?Tuổi thọ pin có thể lên đến 3 năm. Tuy nhiên trong thời gian sử dụng, nếu  anh em cảm thấy có dấu hiệu chạy chậm thì nên mang đồng hồ đến các cơ sở uy tín để thay pin nhé. Tránh trường hợp đồng hồ chạy pin yếu lâu ngày gây hư hỏng máy.</li>\r\n<li style=\"text-align: justify;\">?Tuyệt đối không rút chốt chỉnh giờ khi đang ở dưới nước, hoặc trong môi trường ẩm ướt.</li>\r\n<li style=\"text-align: justify;\">?Không mang đi bơi, đi lặn, hoặc những vận động mạnh dưới nước, không mang đi xông hơi…</li>\r\n<li style=\"text-align: justify;\">?Tránh va đập mạnh vào mặt kính, hay làm rơi đồng hồ sẽ ảnh hưởng đến linh kiện bên trong.</li>\r\n<li style=\"text-align: justify;\">?Không sử dụng ở nơi có từ trường mạnh, tránh những vật dụng nhiễm từ tính.</li>\r\n</ul>', 'Đồng Hồ Olympia Star Nam', '', '', '', 'đồng-hồ-olympia-star-nam');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_categories`
--

CREATE TABLE `d6gvw_virtuemart_product_categories` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_category_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps Products to Categories';

--
-- Dumping data for table `d6gvw_virtuemart_product_categories`
--

INSERT INTO `d6gvw_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_customfields`
--

CREATE TABLE `d6gvw_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT 0,
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT 1 COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `override` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `noninheritable` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `customfield_params` text DEFAULT NULL COMMENT 'Param for Plugins',
  `product_sku` varchar(64) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='custom fields';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_manufacturers`
--

CREATE TABLE `d6gvw_virtuemart_product_manufacturers` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` int(1) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps a product to a manufacturer';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_medias`
--

CREATE TABLE `d6gvw_virtuemart_product_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_virtuemart_product_medias`
--

INSERT INTO `d6gvw_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_prices`
--

CREATE TABLE `d6gvw_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime DEFAULT NULL,
  `product_price_publish_down` datetime DEFAULT NULL,
  `price_quantity_start` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `price_quantity_end` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Holds price records for a product';

--
-- Dumping data for table `d6gvw_virtuemart_product_prices`
--

INSERT INTO `d6gvw_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 1, 0, 5900000.000000, 0, 0.00000, 0, 0, 147, NULL, NULL, 0, 0, '2024-12-18 07:23:08', 32, NULL, 0),
(2, 2, 0, 3780000.000000, 0, 0.00000, 0, 0, 147, NULL, NULL, 0, 0, '2024-12-18 07:39:06', 32, '2024-12-18 07:45:57', 32);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_product_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_product_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps Products to Categories';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_ratings`
--

CREATE TABLE `d6gvw_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `rates` int(1) NOT NULL DEFAULT 0,
  `ratingcount` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `rating` decimal(10,1) NOT NULL DEFAULT 0.0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_rating_reviews`
--

CREATE TABLE `d6gvw_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_rating_vote_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(15359) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT 0,
  `review_rates` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `review_ratingcount` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `review_rating` decimal(10,2) NOT NULL DEFAULT 0.00,
  `review_language` varchar(10) DEFAULT NULL,
  `review_editable` tinyint(1) NOT NULL DEFAULT 1,
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `customer` varchar(128) NOT NULL DEFAULT '',
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_rating_votes`
--

CREATE TABLE `d6gvw_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `vote` int(1) NOT NULL DEFAULT 0,
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_shipmentmethods`
--

CREATE TABLE `d6gvw_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT 0,
  `shipment_element` varchar(50) NOT NULL DEFAULT '',
  `shipment_params` text DEFAULT NULL,
  `currency_id` int(1) UNSIGNED DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Shipment created from the shipment plugins';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_shipmentmethods_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_shipmentmethods_en_gb` (
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL,
  `shipment_name` varchar(400) NOT NULL DEFAULT '',
  `shipment_desc` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='xref table for shipment to shoppergroup';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `shopper_group_name` varchar(128) DEFAULT NULL,
  `shopper_group_desc` varchar(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT 0,
  `price_display` blob DEFAULT NULL,
  `default` tinyint(1) NOT NULL DEFAULT 0,
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `d6gvw_virtuemart_shoppergroups`
--

INSERT INTO `d6gvw_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, NULL, 2, 0, 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, NULL, 1, 0, 0, 1, 1, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_states`
--

CREATE TABLE `d6gvw_virtuemart_states` (
  `virtuemart_state_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `virtuemart_country_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_worldzone_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `state_name` varchar(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 1,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='States that are assigned to a country';

--
-- Dumping data for table `d6gvw_virtuemart_states`
--

INSERT INTO `d6gvw_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(255, 1, 105, 0, 'L\'Aquila', 'AQU', 'AQ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(318, 1, 105, 0, 'Vibo Valentia', 'VIV', 'VV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 0, NULL, 0, NULL, 0, NULL, 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0);
INSERT INTO `d6gvw_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(730, 1, 150, 0, 'Drenthe', 'DR', 'DR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(731, 1, 150, 0, 'Flevoland', 'FLV', 'FL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(732, 1, 150, 0, 'Friesland', 'FR', 'FR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(733, 1, 150, 0, 'Gelderland', 'GLD', 'GL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(734, 1, 150, 0, 'Groningen', 'GR', 'GR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(735, 1, 150, 0, 'Limburg', 'LB', 'LB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(736, 1, 150, 0, 'Noord-Brabant', 'NB', 'NB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(737, 1, 150, 0, 'Noord-Holland', 'NH', 'NH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(738, 1, 150, 0, 'Overijssel', 'OVR', 'OV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(739, 1, 150, 0, 'Utrecht', 'UT', 'UT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(740, 1, 150, 0, 'Zuid-Holland', 'ZH', 'ZH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(741, 1, 150, 0, 'Zeeland', 'ZL', 'ZL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(742, 1, 21, 0, 'Antwerpen', 'ant', 'AW', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(743, 1, 21, 0, 'Limburg', 'lim', 'LI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(744, 1, 21, 0, 'Oost-Vlaanderen', 'ov', 'OV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(745, 1, 21, 0, 'Vlaams-Brabant', 'vb', 'VB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(746, 1, 21, 0, 'West-Vlaanderen', 'wv', 'WV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(747, 1, 21, 0, 'Waals-Brabant (Brabant wallon)', 'wb', 'WB', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(748, 1, 21, 0, 'Henegouwen (Hainaut),', 'he', 'HE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(749, 1, 21, 0, 'Luik (Liège/Lüttich)', 'lui', 'LU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(750, 1, 21, 0, 'Luxemburg (Luxembourg)', 'lux', 'LX', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(751, 1, 215, 0, 'Adana', 'ADN', '01', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(752, 1, 215, 0, 'Adıyaman', 'ADY', '02', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(753, 1, 215, 0, 'Afyon', 'AFN', '03', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(754, 1, 215, 0, 'Ağrı', 'AGR', '04', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(755, 1, 215, 0, 'Amasya', 'AMS', '05', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(756, 1, 215, 0, 'Ankara', 'ANK', '06', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(757, 1, 215, 0, 'Antalya', 'ANT', '07', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(758, 1, 215, 0, 'Artvin', 'ART', '08', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(759, 1, 215, 0, 'Aydın', 'AYD', '09', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(760, 1, 215, 0, 'Balıkesir', 'BLK', '10', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(761, 1, 215, 0, 'Bilecik', 'BLC', '11', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(762, 1, 215, 0, 'Bingöl', 'BIN', '12', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(763, 1, 215, 0, 'Bitlis', 'BIT', '13', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(764, 1, 215, 0, 'Bolu', 'BOL', '14', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(765, 1, 215, 0, 'Burdur', 'DRD', '15', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(766, 1, 215, 0, 'Bursa', 'BUR', '16', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(767, 1, 215, 0, 'Çanakkale', 'CNK', '17', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(768, 1, 215, 0, 'Çankırı', 'CAK', '18', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(769, 1, 215, 0, 'Çorum', 'COR', '19', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(770, 1, 215, 0, 'Denizli', 'DEN', '20', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(771, 1, 215, 0, 'Diyarbakır', 'DYB', '21', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(772, 1, 215, 0, 'Edirne', 'EDR', '22', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(773, 1, 215, 0, 'Elazığ', 'ELZ', '23', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(774, 1, 215, 0, 'Erzincan', 'ERN', '24', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(775, 1, 215, 0, 'Erzurum', 'ERZ', '25', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(776, 1, 215, 0, 'Eskişehir', 'ESK', '26', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(777, 1, 215, 0, 'Gaziantep', 'GZA', '27', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(778, 1, 215, 0, 'Giresun', 'GRS', '28', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(779, 1, 215, 0, 'Gümüşhane', 'GMH', '29', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(780, 1, 215, 0, 'Hakkari', 'HKK', '30', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(781, 1, 215, 0, 'Hatay', 'HTY', '31', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(782, 1, 215, 0, 'Isparta', 'ISP', '32', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(783, 1, 215, 0, 'İçel (Mersin)', 'ICE', '33', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(784, 1, 215, 0, 'İstanbul', 'IST', '34', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(785, 1, 215, 0, 'İzmir', 'IZM', '35', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(786, 1, 215, 0, 'Kars', 'KRS', '36', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(787, 1, 215, 0, 'Kastamonu', 'KST', '37', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(788, 1, 215, 0, 'Kayseri', 'KYS', '38', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(789, 1, 215, 0, 'Kırklareli', 'KIR', '39', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(790, 1, 215, 0, 'Kırşehir', 'KIS', '40', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(791, 1, 215, 0, 'Kocaeli', 'KCL', '41', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(792, 1, 215, 0, 'Konya', 'KNY', '42', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(793, 1, 215, 0, 'Kütahya', 'KTH', '43', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(794, 1, 215, 0, 'Malatya', 'MLT', '44', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(795, 1, 215, 0, 'Manisa', 'MNS', '45', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(796, 1, 215, 0, 'K.maraş', 'KAH', '46', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(797, 1, 215, 0, 'Mardin', 'MRD', '47', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(798, 1, 215, 0, 'Muğla', 'MGL', '48', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(799, 1, 215, 0, 'Muş', 'MUS', '49', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(800, 1, 215, 0, 'Nevşehir', 'NEV', '50', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(801, 1, 215, 0, 'Niğde', 'NIG', '51', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(802, 1, 215, 0, 'Ordu', 'ORD', '52', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(803, 1, 215, 0, 'Rize', 'RIZ', '53', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(804, 1, 215, 0, 'Sakarya', 'SKR', '54', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(805, 1, 215, 0, 'Samsun', 'SMS', '55', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(806, 1, 215, 0, 'Siirt', 'SRT', '56', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(807, 1, 215, 0, 'Sinop', 'SNP', '57', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(808, 1, 215, 0, 'Sivas', 'SVS', '58', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(809, 1, 215, 0, 'Tekirdağ', 'TKR', '59', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(810, 1, 215, 0, 'Tokat', 'TKT', '60', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(811, 1, 215, 0, 'Trabzon', 'TRZ', '61', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(812, 1, 215, 0, 'Tunceli', 'TUN', '62', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(813, 1, 215, 0, 'Şanlıurfa', 'SNF', '63', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(814, 1, 215, 0, 'Uşak', 'USK', '64', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(815, 1, 215, 0, 'Van', 'VAN', '65', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(816, 1, 215, 0, 'Yozgat', 'YZT', '66', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(817, 1, 215, 0, 'Zonguldak', 'ZNG', '67', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(818, 1, 215, 0, 'Aksaray', 'AKS', '68', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(819, 1, 215, 0, 'Bayburt', 'BYB', '69', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(820, 1, 215, 0, 'Karaman', 'KRM', '70', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(821, 1, 215, 0, 'Kırıkkale', 'KRK', '71', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(822, 1, 215, 0, 'Batman', 'BTM', '72', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(823, 1, 215, 0, 'Şırnak', 'SRK', '73', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(824, 1, 215, 0, 'Bartın', 'BRT', '74', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(825, 1, 215, 0, 'Ardahan', 'ARH', '75', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(826, 1, 215, 0, 'Iğdır', 'IGD', '76', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(827, 1, 215, 0, 'Yalova', 'TLV', '77', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(828, 1, 215, 0, 'Karabük', 'KRB', '78', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(829, 1, 215, 0, 'Kilis', 'KLS', '79', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(830, 1, 215, 0, 'Osmaniye', 'OSM', '80', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(831, 1, 215, 0, 'Düzce', 'DZC', '81', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(832, 1, 33, 0, 'Благоевград', 'БЛГ', 'БЛ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(833, 1, 33, 0, 'Бургас', 'БРС', 'БС', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(834, 1, 33, 0, 'Варна', 'ВРН', 'ВН', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(835, 1, 33, 0, 'Велико Търново', 'ВТР', 'ВТ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(836, 1, 33, 0, 'Видин', 'ВДН', 'ВД', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(837, 1, 33, 0, 'Враца', 'ВРЦ', 'ВР', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(838, 1, 33, 0, 'Габрово', 'ГБР', 'ГБ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(839, 1, 33, 0, 'Добрич', 'ДБЧ', 'ДЧ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(840, 1, 33, 0, 'Кърджъли', 'КДЖ', 'КД', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(841, 1, 33, 0, 'Кюстендил', 'КДН', 'КН', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(842, 1, 33, 0, 'Ловеч', 'ЛВЧ', 'ЛЧ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(843, 1, 33, 0, 'Монтана', 'МНТ', 'МТ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(844, 1, 33, 0, 'Пазарджик', 'ПЗД', 'ПЗ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(845, 1, 33, 0, 'Перник', 'ПРК', 'ПК', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(846, 1, 33, 0, 'Плевен', 'ПЛН', 'ПН', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(847, 1, 33, 0, 'Пловдив', 'ПЛД', 'ПД', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(848, 1, 33, 0, 'Разград', 'РЗГ', 'РЗ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(849, 1, 33, 0, 'Русе', 'РУС', 'РС', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(850, 1, 33, 0, 'Силистра', 'СЛС', 'СС', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(851, 1, 33, 0, 'Сливен', 'СЛН', 'СН', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(852, 1, 33, 0, 'Смолян', 'СМЛ', 'СМ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(853, 1, 33, 0, 'София', 'СФЯ', 'СФ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(854, 1, 33, 0, 'Стара Загора', 'СТЗ', 'СТ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(855, 1, 33, 0, 'Търговище', 'ТРГ', 'ТГ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(856, 1, 33, 0, 'Хасково', 'ХСВ', 'ХС', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(857, 1, 33, 0, 'Шумен', 'ШМН', 'ШН', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(858, 1, 33, 0, 'Ямбол', 'ЯМБ', 'ЯМ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(859, 1, 47, 0, 'Amazonas', 'AMA', 'AM', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(860, 1, 47, 0, 'Antioquia', 'ANT', 'AN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(861, 1, 47, 0, 'Arauca', 'ARA', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(862, 1, 47, 0, 'Atlantico', 'ATL', 'AT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(863, 1, 47, 0, 'Boyaca', 'BOY', 'BO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(864, 1, 47, 0, 'Caldas', 'CAL', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(865, 1, 47, 0, 'Caqueta', 'CAQ', 'CQ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(866, 1, 47, 0, 'Cauca', 'CAU', 'CC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(867, 1, 47, 0, 'Cesar', 'CES', 'CE', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(868, 1, 47, 0, 'Chocó', 'CHO', 'CH', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(869, 1, 47, 0, 'Cordoba', 'COR', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(870, 1, 47, 0, 'Guaviare', 'GUA', 'GU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(871, 1, 47, 0, 'Guainia', 'GUI', 'GI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(872, 1, 47, 0, 'Huila', 'HUI', 'HU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(873, 1, 47, 0, 'La Guajira', 'LAG', 'LA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(874, 1, 47, 0, 'Magdalena', 'MAG', 'MG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(875, 1, 47, 0, 'Meta', 'MET', 'ME', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(876, 1, 47, 0, 'Nariño', 'NAR', 'NA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(877, 1, 47, 0, 'Norte de Santander', 'NOR', 'NO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(878, 1, 47, 0, 'Putumayo', 'PUT', 'PU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(879, 1, 47, 0, 'Quindio', 'QUI', 'QU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(880, 1, 47, 0, 'Risaralda', 'RIS', 'RI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(881, 1, 47, 0, 'San Andres y Providencia', 'SAN', 'SA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(882, 1, 47, 0, 'Santander', 'STR', 'ST', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(883, 1, 47, 0, 'Sucre', 'SUC', 'SU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(884, 1, 47, 0, 'Tolima', 'TOL', 'TO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(885, 1, 47, 0, 'Valle del Cauca', 'VAL', 'VC', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(886, 1, 47, 0, 'Vaupés', 'VAU', 'VA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(887, 1, 47, 0, 'Vichada', 'VIC', 'VI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(888, 1, 47, 0, 'Casanare', 'CAS', 'CS', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(889, 1, 47, 0, 'Cundinamarca', 'CUN', 'CU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(890, 1, 47, 0, 'Bolivar', 'BOL', 'BV', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(891, 1, 47, 0, 'Bogotá D.C.', 'BOG', 'BG', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(892, 1, 105, 0, 'Barletta-Andria-Trani', 'BAT', 'BT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(893, 1, 225, 0, 'Artigas', 'ART', 'AR', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(894, 1, 225, 0, 'Canelones', 'CAN', 'CA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(895, 1, 225, 0, 'Cerro Largo', 'CEL', 'CL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(896, 1, 225, 0, 'Colonia', 'COL', 'CO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(897, 1, 225, 0, 'Durazno', 'DUR', 'DU', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(898, 1, 225, 0, 'Flores', 'FLO', 'FL', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(899, 1, 225, 0, 'Florida', 'FDA', 'FD', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(900, 1, 225, 0, 'Lavalleja', 'LAV', 'LA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(901, 1, 225, 0, 'Maldonado', 'MAL', 'MA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(902, 1, 225, 0, 'Montevideo', 'MON', 'MO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(903, 1, 225, 0, 'Río Negro', 'RIO', 'RN', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(904, 1, 225, 0, 'Rivera', 'RIV', 'RI', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(905, 1, 225, 0, 'San José', 'SAN', 'SJ', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(906, 1, 225, 0, 'Soriano', 'SOR', 'SO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(907, 1, 225, 0, 'Tacuarembó', 'TAC', 'TA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(908, 1, 225, 0, 'Treinta y Tres', 'TYT', 'TT', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(909, 1, 225, 0, 'Paysandú', 'PDU', 'PA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(910, 1, 225, 0, 'Salto', 'SAL', 'SA', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0),
(911, 1, 225, 0, 'Rocha', 'ROC', 'RO', 0, 1, 1, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_userfields`
--

CREATE TABLE `d6gvw_virtuemart_userfields` (
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 1,
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT 0,
  `name` varchar(250) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` varchar(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT 0,
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default` varchar(255) DEFAULT NULL,
  `placeholder` varchar(255) DEFAULT NULL,
  `html_classes` varchar(155) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 0,
  `shipment` tinyint(1) NOT NULL DEFAULT 0,
  `account` tinyint(1) NOT NULL DEFAULT 1,
  `cart` tinyint(1) NOT NULL DEFAULT 0,
  `readonly` tinyint(1) NOT NULL DEFAULT 0,
  `calculated` tinyint(1) NOT NULL DEFAULT 0,
  `sys` tinyint(4) NOT NULL DEFAULT 0,
  `userfield_params` text DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Holds the fields for the user information';

--
-- Dumping data for table `d6gvw_virtuemart_userfields`
--

INSERT INTO `d6gvw_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `placeholder`, `html_classes`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, NULL, 4, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 400, 30, 1, 0, 0, '', NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 150, 30, 1, 0, 0, '', NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 100, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, NULL, 10, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 100, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, NULL, 12, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, NULL, 13, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, NULL, 14, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, NULL, 13, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'COM_VIRTUEMART_USER_FORM_ST_LABEL', NULL, NULL, 0, 1, 0, 0, 0, 0, 1, NULL, 16, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, NULL, 18, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 20, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, NULL, 22, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 24, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 26, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 28, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 30, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 32, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 34, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 36, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 38, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 40, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 42, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 44, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, NULL, 46, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 2, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, NULL, 14, 0, 1, NULL, 0, NULL, 0, NULL, 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, NULL, 48, 0, 0, NULL, 0, NULL, 0, NULL, 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, NULL, 50, 0, 0, NULL, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_userfield_values`
--

CREATE TABLE `d6gvw_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `fieldtitle` varchar(255) NOT NULL DEFAULT '',
  `fieldvalue` varchar(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Holds the different values for dropdown and radio lists';

--
-- Dumping data for table `d6gvw_virtuemart_userfield_values`
--

INSERT INTO `d6gvw_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, NULL, 0, NULL, 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, NULL, 0, NULL, 0),
(3, 51, 'None', '', 0, 0, NULL, 0, NULL, 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, NULL, 0, NULL, 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, NULL, 0, NULL, 0),
(6, 51, 'State government (United States)', 'B', 0, 2, NULL, 0, NULL, 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, NULL, 0, NULL, 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, NULL, 0, NULL, 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, NULL, 0, NULL, 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, NULL, 0, NULL, 0),
(11, 51, 'Resale (both)', 'G', 0, 7, NULL, 0, NULL, 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, NULL, 0, NULL, 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, NULL, 0, NULL, 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, NULL, 0, NULL, 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, NULL, 0, NULL, 0),
(16, 51, 'Other (both)', 'L', 0, 12, NULL, 0, NULL, 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, NULL, 0, NULL, 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, NULL, 0, NULL, 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_userinfos`
--

CREATE TABLE `d6gvw_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_country_id` smallint(1) UNSIGNED NOT NULL DEFAULT 0,
  `zip` varchar(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `tos` tinyint(1) NOT NULL DEFAULT 0,
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `d6gvw_virtuemart_userinfos`
--

INSERT INTO `d6gvw_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 32, 'BT', '', 'AAA', '', 'AAA', 'AAA', 'AAA', '', '', '', 'dfref', '', 'TRà Vinh', 0, 230, 'gzzh112', 0, 0, '', '2024-12-18 07:31:45', 32, '2024-12-18 07:47:55', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vendors`
--

CREATE TABLE `d6gvw_virtuemart_vendors` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_name` varchar(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(14335) NOT NULL DEFAULT '',
  `metarobot` varchar(20) DEFAULT NULL,
  `metaauthor` varchar(64) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `d6gvw_virtuemart_vendors`
--

INSERT INTO `d6gvw_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'AAA', 147, '', 'max_cats_per_product=-1|max_products=-1|max_customers=-1|force_product_pattern=-1|vendor_min_pov=\"0\"|vendor_min_poq=1|vendor_freeshipment=0.0|vendor_address_format=\"\"|vendor_date_format=\"\"|vendor_letter_format=\"A4\"|vendor_letter_orientation=\"P\"|vendor_letter_margin_top=\"55\"|vendor_letter_margin_left=\"25\"|vendor_letter_margin_right=\"25\"|vendor_letter_margin_bottom=\"25\"|vendor_letter_margin_header=\"20\"|vendor_letter_margin_footer=\"20\"|vendor_letter_font=\"helvetica\"|vendor_letter_font_size=\"8\"|vendor_letter_header_font_size=\"250\"|vendor_letter_footer_font_size=\"200\"|vendor_letter_header=\"1\"|vendor_letter_header_line=\"1\"|vendor_letter_header_line_color=\"#000000\"|vendor_letter_header_image=\"1\"|vendor_letter_header_imagesize=\"60\"|vendor_letter_header_cell_height_ratio=1|vendor_letter_footer=\"1\"|vendor_letter_footer_line=\"1\"|vendor_letter_footer_line_color=\"#000000\"|vendor_letter_footer_cell_height_ratio=\"1\"|vendor_letter_add_tos=\"0\"|vendor_letter_add_tos_newpage=\"1\"|vendor_letter_for_product_pdf=\"0\"|vendor_mail_width=640|vendor_mail_header=1|vendor_mail_tos=1|vendor_mail_logo=1|vendor_mail_logo_width=200|vendor_mail_font=\"helvetica\"|vendor_mail_header_font_size=11|vendor_mail_font_size=12|vendor_mail_footer_font_size=10|', '', 'admin', '2024-12-18 07:31:45', 32, '2024-12-18 07:47:55', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vendors_en_gb`
--

CREATE TABLE `d6gvw_virtuemart_vendors_en_gb` (
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL,
  `vendor_store_desc` text DEFAULT NULL,
  `vendor_terms_of_service` mediumtext DEFAULT NULL,
  `vendor_legal_info` text DEFAULT NULL,
  `vendor_letter_css` text DEFAULT NULL,
  `vendor_letter_header_html` varchar(6500) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(6500) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` varchar(400) NOT NULL DEFAULT '',
  `vendor_phone` varchar(30) NOT NULL DEFAULT '',
  `vendor_url` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` varchar(255) NOT NULL DEFAULT '',
  `vendor_mail_css` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_virtuemart_vendors_en_gb`
--

INSERT INTO `d6gvw_virtuemart_vendors_en_gb` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `vendor_invoice_free1`, `vendor_invoice_free2`, `vendor_mail_free1`, `vendor_mail_free2`, `vendor_mail_css`, `slug`) VALUES
(1, '', '', '', '', '', '', 'Shop đồng hồ', '', '', '', '', '', '', '', '', '', '', 'shop-đồng-hồ');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vendor_medias`
--

CREATE TABLE `d6gvw_virtuemart_vendor_medias` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_media_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vendor_users`
--

CREATE TABLE `d6gvw_virtuemart_vendor_users` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vmusers`
--

CREATE TABLE `d6gvw_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT 0,
  `customer_number` varchar(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) UNSIGNED DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Holds the unique user data';

--
-- Dumping data for table `d6gvw_virtuemart_vmusers`
--

INSERT INTO `d6gvw_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(32, 1, 1, 'AD21232f2', 0, 0, 0, '2024-12-18 07:19:38', 0, '2024-12-18 07:47:55', 32, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE `d6gvw_virtuemart_vmuser_shoppergroups` (
  `id` int(1) UNSIGNED NOT NULL,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='xref table for users to shopper group';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_waitingusers`
--

CREATE TABLE `d6gvw_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL,
  `virtuemart_product_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `virtuemart_user_id` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `notify_email` varchar(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT 0,
  `notify_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ordering` int(1) NOT NULL DEFAULT 0,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_virtuemart_worldzones`
--

CREATE TABLE `d6gvw_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL,
  `virtuemart_vendor_id` int(1) UNSIGNED DEFAULT NULL,
  `zone_name` varchar(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(14335) DEFAULT NULL,
  `zone_tax_rate` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `ordering` int(1) NOT NULL DEFAULT 0,
  `shared` tinyint(1) NOT NULL DEFAULT 0,
  `published` tinyint(1) NOT NULL DEFAULT 1,
  `created_on` datetime DEFAULT NULL,
  `created_by` int(1) NOT NULL DEFAULT 0,
  `modified_on` datetime DEFAULT NULL,
  `modified_by` int(1) NOT NULL DEFAULT 0,
  `locked_on` datetime DEFAULT NULL,
  `locked_by` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='The Zones managed by the Zone Shipment Module';

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_webauthn_credentials`
--

CREATE TABLE `d6gvw_webauthn_credentials` (
  `id` varchar(1000) NOT NULL COMMENT 'Credential ID',
  `user_id` varchar(128) NOT NULL COMMENT 'User handle',
  `label` varchar(190) NOT NULL COMMENT 'Human readable label',
  `credential` mediumtext NOT NULL COMMENT 'Credential source data, JSON format'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_workflows`
--

CREATE TABLE `d6gvw_workflows` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `extension` varchar(50) NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_workflows`
--

INSERT INTO `d6gvw_workflows` (`id`, `asset_id`, `published`, `title`, `description`, `extension`, `default`, `ordering`, `created`, `created_by`, `modified`, `modified_by`, `checked_out_time`, `checked_out`) VALUES
(1, 56, 1, 'COM_WORKFLOW_BASIC_WORKFLOW', '', 'com_content.article', 1, 1, '2024-12-18 06:38:55', 32, '2024-12-18 06:38:55', 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_workflow_associations`
--

CREATE TABLE `d6gvw_workflow_associations` (
  `item_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Extension table id value',
  `stage_id` int(11) NOT NULL COMMENT 'Foreign Key to #__workflow_stages.id',
  `extension` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_workflow_associations`
--

INSERT INTO `d6gvw_workflow_associations` (`item_id`, `stage_id`, `extension`) VALUES
(1, 1, 'com_content.article'),
(2, 1, 'com_content.article'),
(3, 1, 'com_content.article'),
(4, 1, 'com_content.article'),
(5, 1, 'com_content.article');

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_workflow_stages`
--

CREATE TABLE `d6gvw_workflow_stages` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `default` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_workflow_stages`
--

INSERT INTO `d6gvw_workflow_stages` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `default`, `checked_out_time`, `checked_out`) VALUES
(1, 57, 1, 1, 1, 'COM_WORKFLOW_BASIC_STAGE', '', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `d6gvw_workflow_transitions`
--

CREATE TABLE `d6gvw_workflow_transitions` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) DEFAULT 0,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `workflow_id` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `from_stage_id` int(11) NOT NULL,
  `to_stage_id` int(11) NOT NULL,
  `options` text NOT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `checked_out` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d6gvw_workflow_transitions`
--

INSERT INTO `d6gvw_workflow_transitions` (`id`, `asset_id`, `ordering`, `workflow_id`, `published`, `title`, `description`, `from_stage_id`, `to_stage_id`, `options`, `checked_out_time`, `checked_out`) VALUES
(1, 58, 1, 1, 1, 'UNPUBLISH', '', -1, 1, '{\"publishing\":\"0\"}', NULL, NULL),
(2, 59, 2, 1, 1, 'PUBLISH', '', -1, 1, '{\"publishing\":\"1\"}', NULL, NULL),
(3, 60, 3, 1, 1, 'TRASH', '', -1, 1, '{\"publishing\":\"-2\"}', NULL, NULL),
(4, 61, 4, 1, 1, 'ARCHIVE', '', -1, 1, '{\"publishing\":\"2\"}', NULL, NULL),
(5, 62, 5, 1, 1, 'FEATURE', '', -1, 1, '{\"featuring\":\"1\"}', NULL, NULL),
(6, 63, 6, 1, 1, 'UNFEATURE', '', -1, 1, '{\"featuring\":\"0\"}', NULL, NULL),
(7, 64, 7, 1, 1, 'PUBLISH_AND_FEATURE', '', -1, 1, '{\"publishing\":\"1\",\"featuring\":\"1\"}', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `d6gvw_action_logs`
--
ALTER TABLE `d6gvw_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- Indexes for table `d6gvw_action_logs_extensions`
--
ALTER TABLE `d6gvw_action_logs_extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_action_logs_users`
--
ALTER TABLE `d6gvw_action_logs_users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `idx_notify` (`notify`);

--
-- Indexes for table `d6gvw_action_log_config`
--
ALTER TABLE `d6gvw_action_log_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_assets`
--
ALTER TABLE `d6gvw_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `d6gvw_associations`
--
ALTER TABLE `d6gvw_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `d6gvw_banners`
--
ALTER TABLE `d6gvw_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_banner_clients`
--
ALTER TABLE `d6gvw_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `d6gvw_banner_tracks`
--
ALTER TABLE `d6gvw_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `d6gvw_categories`
--
ALTER TABLE `d6gvw_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_contact_details`
--
ALTER TABLE `d6gvw_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_content`
--
ALTER TABLE `d6gvw_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(191));

--
-- Indexes for table `d6gvw_contentitem_tag_map`
--
ALTER TABLE `d6gvw_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `d6gvw_content_frontpage`
--
ALTER TABLE `d6gvw_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `d6gvw_content_rating`
--
ALTER TABLE `d6gvw_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `d6gvw_content_types`
--
ALTER TABLE `d6gvw_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `d6gvw_extensions`
--
ALTER TABLE `d6gvw_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `d6gvw_fields`
--
ALTER TABLE `d6gvw_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_fields_categories`
--
ALTER TABLE `d6gvw_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `d6gvw_fields_groups`
--
ALTER TABLE `d6gvw_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_fields_values`
--
ALTER TABLE `d6gvw_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `d6gvw_finder_filters`
--
ALTER TABLE `d6gvw_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `d6gvw_finder_links`
--
ALTER TABLE `d6gvw_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `d6gvw_finder_links_terms`
--
ALTER TABLE `d6gvw_finder_links_terms`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `d6gvw_finder_logging`
--
ALTER TABLE `d6gvw_finder_logging`
  ADD PRIMARY KEY (`md5sum`),
  ADD KEY `searchterm` (`searchterm`(191));

--
-- Indexes for table `d6gvw_finder_taxonomy`
--
ALTER TABLE `d6gvw_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_level` (`level`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `d6gvw_finder_taxonomy_map`
--
ALTER TABLE `d6gvw_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `d6gvw_finder_terms`
--
ALTER TABLE `d6gvw_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_finder_terms_common`
--
ALTER TABLE `d6gvw_finder_terms_common`
  ADD UNIQUE KEY `idx_term_language` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `d6gvw_finder_tokens`
--
ALTER TABLE `d6gvw_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_stem` (`stem`),
  ADD KEY `idx_context` (`context`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_finder_tokens_aggregate`
--
ALTER TABLE `d6gvw_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `d6gvw_finder_types`
--
ALTER TABLE `d6gvw_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `d6gvw_flexbanners`
--
ALTER TABLE `d6gvw_flexbanners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_flexbannersclient`
--
ALTER TABLE `d6gvw_flexbannersclient`
  ADD PRIMARY KEY (`clientid`);

--
-- Indexes for table `d6gvw_flexbannerslink`
--
ALTER TABLE `d6gvw_flexbannerslink`
  ADD PRIMARY KEY (`linkid`);

--
-- Indexes for table `d6gvw_flexbannerslocations`
--
ALTER TABLE `d6gvw_flexbannerslocations`
  ADD PRIMARY KEY (`locationid`);

--
-- Indexes for table `d6gvw_flexbannerssize`
--
ALTER TABLE `d6gvw_flexbannerssize`
  ADD PRIMARY KEY (`sizeid`);

--
-- Indexes for table `d6gvw_guidedtours`
--
ALTER TABLE `d6gvw_guidedtours`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_uid` (`uid`(191));

--
-- Indexes for table `d6gvw_guidedtour_steps`
--
ALTER TABLE `d6gvw_guidedtour_steps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tour` (`tour_id`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_history`
--
ALTER TABLE `d6gvw_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `d6gvw_languages`
--
ALTER TABLE `d6gvw_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `d6gvw_mail_templates`
--
ALTER TABLE `d6gvw_mail_templates`
  ADD PRIMARY KEY (`template_id`,`language`);

--
-- Indexes for table `d6gvw_menu`
--
ALTER TABLE `d6gvw_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_menu_types`
--
ALTER TABLE `d6gvw_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `d6gvw_messages`
--
ALTER TABLE `d6gvw_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `d6gvw_messages_cfg`
--
ALTER TABLE `d6gvw_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `d6gvw_modules`
--
ALTER TABLE `d6gvw_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_modules_menu`
--
ALTER TABLE `d6gvw_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `d6gvw_newsfeeds`
--
ALTER TABLE `d6gvw_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_overrider`
--
ALTER TABLE `d6gvw_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_postinstall_messages`
--
ALTER TABLE `d6gvw_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `d6gvw_privacy_consents`
--
ALTER TABLE `d6gvw_privacy_consents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `d6gvw_privacy_requests`
--
ALTER TABLE `d6gvw_privacy_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_redirect_links`
--
ALTER TABLE `d6gvw_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modified` (`modified_date`);

--
-- Indexes for table `d6gvw_scheduler_tasks`
--
ALTER TABLE `d6gvw_scheduler_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_last_exit` (`last_exit_code`),
  ADD KEY `idx_next_exec` (`next_execution`),
  ADD KEY `idx_locked` (`locked`),
  ADD KEY `idx_priority` (`priority`),
  ADD KEY `idx_cli_exclusive` (`cli_exclusive`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `d6gvw_schemaorg`
--
ALTER TABLE `d6gvw_schemaorg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_schemas`
--
ALTER TABLE `d6gvw_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `d6gvw_session`
--
ALTER TABLE `d6gvw_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`),
  ADD KEY `client_id_guest` (`client_id`,`guest`);

--
-- Indexes for table `d6gvw_tags`
--
ALTER TABLE `d6gvw_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `d6gvw_template_overrides`
--
ALTER TABLE `d6gvw_template_overrides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_extension_id` (`extension_id`);

--
-- Indexes for table `d6gvw_template_styles`
--
ALTER TABLE `d6gvw_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_client_id` (`client_id`),
  ADD KEY `idx_client_id_home` (`client_id`,`home`);

--
-- Indexes for table `d6gvw_tuf_metadata`
--
ALTER TABLE `d6gvw_tuf_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_ucm_base`
--
ALTER TABLE `d6gvw_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `d6gvw_ucm_content`
--
ALTER TABLE `d6gvw_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `d6gvw_updates`
--
ALTER TABLE `d6gvw_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `d6gvw_update_sites`
--
ALTER TABLE `d6gvw_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `d6gvw_update_sites_extensions`
--
ALTER TABLE `d6gvw_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `d6gvw_usergroups`
--
ALTER TABLE `d6gvw_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `d6gvw_users`
--
ALTER TABLE `d6gvw_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_username` (`username`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `d6gvw_user_keys`
--
ALTER TABLE `d6gvw_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `d6gvw_user_mfa`
--
ALTER TABLE `d6gvw_user_mfa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `d6gvw_user_notes`
--
ALTER TABLE `d6gvw_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `d6gvw_user_profiles`
--
ALTER TABLE `d6gvw_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `d6gvw_user_usergroup_map`
--
ALTER TABLE `d6gvw_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `d6gvw_viewlevels`
--
ALTER TABLE `d6gvw_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `d6gvw_virtuemart_adminmenuentries`
--
ALTER TABLE `d6gvw_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_id` (`module_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_calcs`
--
ALTER TABLE `d6gvw_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `calc_kind` (`calc_kind`),
  ADD KEY `shared` (`shared`),
  ADD KEY `publish_up` (`publish_up`),
  ADD KEY `publish_down` (`publish_down`);

--
-- Indexes for table `d6gvw_virtuemart_calc_categories`
--
ALTER TABLE `d6gvw_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indexes for table `d6gvw_virtuemart_calc_countries`
--
ALTER TABLE `d6gvw_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indexes for table `d6gvw_virtuemart_calc_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `d6gvw_virtuemart_calc_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `d6gvw_virtuemart_calc_states`
--
ALTER TABLE `d6gvw_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indexes for table `d6gvw_virtuemart_carts`
--
ALTER TABLE `d6gvw_virtuemart_carts`
  ADD PRIMARY KEY (`virtuemart_cart_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indexes for table `d6gvw_virtuemart_categories`
--
ALTER TABLE `d6gvw_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`virtuemart_category_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_categories_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_categories_en_gb`
  ADD PRIMARY KEY (`virtuemart_category_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_category_categories`
--
ALTER TABLE `d6gvw_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_child_id` (`category_child_id`),
  ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_category_medias`
--
ALTER TABLE `d6gvw_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`),
  ADD UNIQUE KEY `virtuemart_media_id` (`virtuemart_media_id`,`virtuemart_category_id`),
  ADD KEY `ordering` (`virtuemart_category_id`,`ordering`),
  ADD KEY `virtuemart_media_id_uid` (`virtuemart_media_id`);

--
-- Indexes for table `d6gvw_virtuemart_configs`
--
ALTER TABLE `d6gvw_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indexes for table `d6gvw_virtuemart_countries`
--
ALTER TABLE `d6gvw_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`),
  ADD UNIQUE KEY `country_3_code` (`country_3_code`),
  ADD UNIQUE KEY `country_2_code` (`country_2_code`),
  ADD UNIQUE KEY `country_num_code` (`country_num_code`),
  ADD KEY `country_name` (`country_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_coupons`
--
ALTER TABLE `d6gvw_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `coupon_code` (`coupon_code`),
  ADD KEY `coupon_type` (`coupon_type`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_currencies`
--
ALTER TABLE `d6gvw_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`),
  ADD UNIQUE KEY `currency_code_3` (`currency_code_3`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `currency_name` (`currency_name`),
  ADD KEY `published` (`published`),
  ADD KEY `shared` (`shared`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `currency_numeric_code` (`currency_numeric_code`);

--
-- Indexes for table `d6gvw_virtuemart_customs`
--
ALTER TABLE `d6gvw_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`),
  ADD KEY `field_type_searchable_published` (`field_type`,`searchable`,`published`),
  ADD KEY `custom_parent_id` (`custom_parent_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `custom_element` (`custom_element`),
  ADD KEY `field_type` (`field_type`),
  ADD KEY `is_cart_attribute` (`is_cart_attribute`),
  ADD KEY `is_input` (`is_input`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_invoices`
--
ALTER TABLE `d6gvw_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`),
  ADD UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `d6gvw_virtuemart_manufacturercategories`
--
ALTER TABLE `d6gvw_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_manufacturercategories_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_manufacturercategories_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_manufacturers_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_manufacturers_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_manufacturer_medias`
--
ALTER TABLE `d6gvw_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`),
  ADD UNIQUE KEY `virtuemart_media_id` (`virtuemart_media_id`,`virtuemart_manufacturer_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_media_id_uid` (`virtuemart_media_id`);

--
-- Indexes for table `d6gvw_virtuemart_medias`
--
ALTER TABLE `d6gvw_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`),
  ADD KEY `file_type` (`file_type`),
  ADD KEY `shared` (`shared`);

--
-- Indexes for table `d6gvw_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `d6gvw_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d6gvw_virtuemart_modules`
--
ALTER TABLE `d6gvw_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `module_name` (`module_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_orders`
--
ALTER TABLE `d6gvw_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_number` (`order_number`),
  ADD KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`),
  ADD KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`),
  ADD KEY `order_status` (`order_status`),
  ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `d6gvw_virtuemart_orderstates`
--
ALTER TABLE `d6gvw_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`),
  ADD UNIQUE KEY `order_status_code` (`order_status_code`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_order_calc_rules`
--
ALTER TABLE `d6gvw_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`),
  ADD KEY `virtuemart_calc_id` (`virtuemart_calc_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `d6gvw_virtuemart_order_histories`
--
ALTER TABLE `d6gvw_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`);

--
-- Indexes for table `d6gvw_virtuemart_order_items`
--
ALTER TABLE `d6gvw_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `order_status` (`order_status`);

--
-- Indexes for table `d6gvw_virtuemart_order_item_histories`
--
ALTER TABLE `d6gvw_virtuemart_order_item_histories`
  ADD PRIMARY KEY (`virtuemart_order_item_history_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`);

--
-- Indexes for table `d6gvw_virtuemart_order_userinfos`
--
ALTER TABLE `d6gvw_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`),
  ADD KEY `virtuemart_order_id` (`virtuemart_order_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`);

--
-- Indexes for table `d6gvw_virtuemart_paymentmethods`
--
ALTER TABLE `d6gvw_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD KEY `payment_jplugin_id` (`payment_jplugin_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_paymentmethods_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_paymentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `d6gvw_virtuemart_products`
--
ALTER TABLE `d6gvw_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `product_parent_id` (`product_parent_id`),
  ADD KEY `product_special` (`product_special`),
  ADD KEY `product_discontinued` (`product_discontinued`),
  ADD KEY `product_in_stock` (`product_in_stock`),
  ADD KEY `product_ordered` (`product_ordered`),
  ADD KEY `product_sku` (`product_sku`),
  ADD KEY `published` (`published`),
  ADD KEY `pordering` (`pordering`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `modified_on` (`modified_on`);

--
-- Indexes for table `d6gvw_virtuemart_products_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_products_en_gb`
  ADD PRIMARY KEY (`virtuemart_product_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_product_categories`
--
ALTER TABLE `d6gvw_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`),
  ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_product_id`),
  ADD KEY `virtuemart_product_id_uid` (`virtuemart_product_id`),
  ADD KEY `virtuemart_category_id_uid` (`virtuemart_category_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_product_customfields`
--
ALTER TABLE `d6gvw_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`),
  ADD UNIQUE KEY `unique_custf_prd_value` (`virtuemart_customfield_id`,`virtuemart_product_id`,`virtuemart_custom_id`,`customfield_value`(50)),
  ADD KEY `unique_cust_prd_value` (`virtuemart_custom_id`,`virtuemart_product_id`,`customfield_value`(50)),
  ADD KEY `customfield_value` (`customfield_value`(50)),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`ordering`),
  ADD KEY `virtuemart_custom_id` (`virtuemart_custom_id`),
  ADD KEY `published` (`published`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_product_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`),
  ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_product_id`);

--
-- Indexes for table `d6gvw_virtuemart_product_medias`
--
ALTER TABLE `d6gvw_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`),
  ADD UNIQUE KEY `virtuemart_media_id` (`virtuemart_media_id`,`virtuemart_product_id`),
  ADD KEY `virtuemart_media_id_uid` (`virtuemart_media_id`),
  ADD KEY `ordering` (`virtuemart_product_id`,`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_product_prices`
--
ALTER TABLE `d6gvw_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `product_price` (`product_price`),
  ADD KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`),
  ADD KEY `product_price_publish_up` (`product_price_publish_up`),
  ADD KEY `product_price_publish_down` (`product_price_publish_down`),
  ADD KEY `price_quantity_start` (`price_quantity_start`),
  ADD KEY `price_quantity_end` (`price_quantity_end`);

--
-- Indexes for table `d6gvw_virtuemart_product_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `d6gvw_virtuemart_ratings`
--
ALTER TABLE `d6gvw_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`),
  ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_rating_reviews`
--
ALTER TABLE `d6gvw_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`),
  ADD KEY `virtuemart_rating_vote_id` (`virtuemart_rating_vote_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  ADD KEY `created_on` (`created_on`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_rating_votes`
--
ALTER TABLE `d6gvw_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `d6gvw_virtuemart_shipmentmethods`
--
ALTER TABLE `d6gvw_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD KEY `shipment_jplugin_id` (`shipment_jplugin_id`),
  ADD KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `d6gvw_virtuemart_shipmentmethods_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_shipmentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `d6gvw_virtuemart_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_shoppergroup_id`),
  ADD KEY `shopper_group_name` (`shopper_group_name`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_states`
--
ALTER TABLE `d6gvw_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`),
  ADD UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`),
  ADD UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `virtuemart_country_id` (`virtuemart_country_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`);

--
-- Indexes for table `d6gvw_virtuemart_userfields`
--
ALTER TABLE `d6gvw_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `shared` (`shared`),
  ADD KEY `published` (`published`),
  ADD KEY `account` (`account`),
  ADD KEY `shipment` (`shipment`),
  ADD KEY `cart` (`cart`);

--
-- Indexes for table `d6gvw_virtuemart_userfield_values`
--
ALTER TABLE `d6gvw_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`),
  ADD KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`);

--
-- Indexes for table `d6gvw_virtuemart_userinfos`
--
ALTER TABLE `d6gvw_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`),
  ADD KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`),
  ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`),
  ADD KEY `address_type` (`address_type`),
  ADD KEY `address_type_name` (`address_type_name`);

--
-- Indexes for table `d6gvw_virtuemart_vendors`
--
ALTER TABLE `d6gvw_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD KEY `vendor_name` (`vendor_name`),
  ADD KEY `vendor_currency` (`vendor_currency`);

--
-- Indexes for table `d6gvw_virtuemart_vendors_en_gb`
--
ALTER TABLE `d6gvw_virtuemart_vendors_en_gb`
  ADD PRIMARY KEY (`virtuemart_vendor_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `d6gvw_virtuemart_vendor_medias`
--
ALTER TABLE `d6gvw_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indexes for table `d6gvw_virtuemart_vendor_users`
--
ALTER TABLE `d6gvw_virtuemart_vendor_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_vendor_user_id` (`virtuemart_vendor_user_id`,`virtuemart_user_id`);

--
-- Indexes for table `d6gvw_virtuemart_vmusers`
--
ALTER TABLE `d6gvw_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`),
  ADD UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`),
  ADD KEY `user_is_vendor` (`user_is_vendor`);

--
-- Indexes for table `d6gvw_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `d6gvw_virtuemart_waitingusers`
--
ALTER TABLE `d6gvw_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`),
  ADD KEY `virtuemart_product_id` (`virtuemart_product_id`),
  ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `d6gvw_virtuemart_worldzones`
--
ALTER TABLE `d6gvw_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`),
  ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `d6gvw_webauthn_credentials`
--
ALTER TABLE `d6gvw_webauthn_credentials`
  ADD PRIMARY KEY (`id`(100)),
  ADD KEY `user_id` (`user_id`(100));

--
-- Indexes for table `d6gvw_workflows`
--
ALTER TABLE `d6gvw_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_extension` (`extension`),
  ADD KEY `idx_default` (`default`),
  ADD KEY `idx_created` (`created`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_modified` (`modified`),
  ADD KEY `idx_modified_by` (`modified_by`),
  ADD KEY `idx_checked_out` (`checked_out`);

--
-- Indexes for table `d6gvw_workflow_associations`
--
ALTER TABLE `d6gvw_workflow_associations`
  ADD PRIMARY KEY (`item_id`,`extension`),
  ADD KEY `idx_item_stage_extension` (`item_id`,`stage_id`,`extension`),
  ADD KEY `idx_item_id` (`item_id`),
  ADD KEY `idx_stage_id` (`stage_id`),
  ADD KEY `idx_extension` (`extension`);

--
-- Indexes for table `d6gvw_workflow_stages`
--
ALTER TABLE `d6gvw_workflow_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_workflow_id` (`workflow_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_default` (`default`);

--
-- Indexes for table `d6gvw_workflow_transitions`
--
ALTER TABLE `d6gvw_workflow_transitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_title` (`title`(191)),
  ADD KEY `idx_asset_id` (`asset_id`),
  ADD KEY `idx_checked_out` (`checked_out`),
  ADD KEY `idx_from_stage_id` (`from_stage_id`),
  ADD KEY `idx_to_stage_id` (`to_stage_id`),
  ADD KEY `idx_workflow_id` (`workflow_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `d6gvw_action_logs`
--
ALTER TABLE `d6gvw_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `d6gvw_action_logs_extensions`
--
ALTER TABLE `d6gvw_action_logs_extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `d6gvw_action_log_config`
--
ALTER TABLE `d6gvw_action_log_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `d6gvw_assets`
--
ALTER TABLE `d6gvw_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `d6gvw_banners`
--
ALTER TABLE `d6gvw_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_banner_clients`
--
ALTER TABLE `d6gvw_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_categories`
--
ALTER TABLE `d6gvw_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `d6gvw_contact_details`
--
ALTER TABLE `d6gvw_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_content`
--
ALTER TABLE `d6gvw_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d6gvw_content_types`
--
ALTER TABLE `d6gvw_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10003;

--
-- AUTO_INCREMENT for table `d6gvw_extensions`
--
ALTER TABLE `d6gvw_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `d6gvw_fields`
--
ALTER TABLE `d6gvw_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_fields_groups`
--
ALTER TABLE `d6gvw_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_finder_filters`
--
ALTER TABLE `d6gvw_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_finder_links`
--
ALTER TABLE `d6gvw_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `d6gvw_finder_taxonomy`
--
ALTER TABLE `d6gvw_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `d6gvw_finder_terms`
--
ALTER TABLE `d6gvw_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;

--
-- AUTO_INCREMENT for table `d6gvw_finder_types`
--
ALTER TABLE `d6gvw_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `d6gvw_flexbanners`
--
ALTER TABLE `d6gvw_flexbanners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_flexbannersclient`
--
ALTER TABLE `d6gvw_flexbannersclient`
  MODIFY `clientid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_flexbannerslink`
--
ALTER TABLE `d6gvw_flexbannerslink`
  MODIFY `linkid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_flexbannerslocations`
--
ALTER TABLE `d6gvw_flexbannerslocations`
  MODIFY `locationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_flexbannerssize`
--
ALTER TABLE `d6gvw_flexbannerssize`
  MODIFY `sizeid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `d6gvw_guidedtours`
--
ALTER TABLE `d6gvw_guidedtours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `d6gvw_guidedtour_steps`
--
ALTER TABLE `d6gvw_guidedtour_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `d6gvw_history`
--
ALTER TABLE `d6gvw_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `d6gvw_languages`
--
ALTER TABLE `d6gvw_languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_menu`
--
ALTER TABLE `d6gvw_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `d6gvw_menu_types`
--
ALTER TABLE `d6gvw_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_messages`
--
ALTER TABLE `d6gvw_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_modules`
--
ALTER TABLE `d6gvw_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `d6gvw_newsfeeds`
--
ALTER TABLE `d6gvw_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_overrider`
--
ALTER TABLE `d6gvw_overrider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';

--
-- AUTO_INCREMENT for table `d6gvw_postinstall_messages`
--
ALTER TABLE `d6gvw_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d6gvw_privacy_consents`
--
ALTER TABLE `d6gvw_privacy_consents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_privacy_requests`
--
ALTER TABLE `d6gvw_privacy_requests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_redirect_links`
--
ALTER TABLE `d6gvw_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_scheduler_tasks`
--
ALTER TABLE `d6gvw_scheduler_tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `d6gvw_schemaorg`
--
ALTER TABLE `d6gvw_schemaorg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_tags`
--
ALTER TABLE `d6gvw_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_template_overrides`
--
ALTER TABLE `d6gvw_template_overrides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_template_styles`
--
ALTER TABLE `d6gvw_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `d6gvw_tuf_metadata`
--
ALTER TABLE `d6gvw_tuf_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_ucm_content`
--
ALTER TABLE `d6gvw_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_updates`
--
ALTER TABLE `d6gvw_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `d6gvw_update_sites`
--
ALTER TABLE `d6gvw_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `d6gvw_usergroups`
--
ALTER TABLE `d6gvw_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `d6gvw_users`
--
ALTER TABLE `d6gvw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `d6gvw_user_keys`
--
ALTER TABLE `d6gvw_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_user_mfa`
--
ALTER TABLE `d6gvw_user_mfa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_user_notes`
--
ALTER TABLE `d6gvw_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_viewlevels`
--
ALTER TABLE `d6gvw_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_adminmenuentries`
--
ALTER TABLE `d6gvw_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calcs`
--
ALTER TABLE `d6gvw_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calc_categories`
--
ALTER TABLE `d6gvw_virtuemart_calc_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calc_countries`
--
ALTER TABLE `d6gvw_virtuemart_calc_countries`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calc_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_calc_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calc_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_calc_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_calc_states`
--
ALTER TABLE `d6gvw_virtuemart_calc_states`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_carts`
--
ALTER TABLE `d6gvw_virtuemart_carts`
  MODIFY `virtuemart_cart_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_categories`
--
ALTER TABLE `d6gvw_virtuemart_categories`
  MODIFY `virtuemart_category_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_category_categories`
--
ALTER TABLE `d6gvw_virtuemart_category_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_category_medias`
--
ALTER TABLE `d6gvw_virtuemart_category_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_configs`
--
ALTER TABLE `d6gvw_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_countries`
--
ALTER TABLE `d6gvw_virtuemart_countries`
  MODIFY `virtuemart_country_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=355;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_coupons`
--
ALTER TABLE `d6gvw_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_currencies`
--
ALTER TABLE `d6gvw_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_customs`
--
ALTER TABLE `d6gvw_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_invoices`
--
ALTER TABLE `d6gvw_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_manufacturercategories`
--
ALTER TABLE `d6gvw_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_manufacturer_medias`
--
ALTER TABLE `d6gvw_virtuemart_manufacturer_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_medias`
--
ALTER TABLE `d6gvw_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `d6gvw_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_modules`
--
ALTER TABLE `d6gvw_virtuemart_modules`
  MODIFY `module_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_orders`
--
ALTER TABLE `d6gvw_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_orderstates`
--
ALTER TABLE `d6gvw_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_order_calc_rules`
--
ALTER TABLE `d6gvw_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_order_histories`
--
ALTER TABLE `d6gvw_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_order_items`
--
ALTER TABLE `d6gvw_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_order_item_histories`
--
ALTER TABLE `d6gvw_virtuemart_order_item_histories`
  MODIFY `virtuemart_order_item_history_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_order_userinfos`
--
ALTER TABLE `d6gvw_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_paymentmethods`
--
ALTER TABLE `d6gvw_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_products`
--
ALTER TABLE `d6gvw_virtuemart_products`
  MODIFY `virtuemart_product_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_categories`
--
ALTER TABLE `d6gvw_virtuemart_product_categories`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_customfields`
--
ALTER TABLE `d6gvw_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'field id';

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_manufacturers`
--
ALTER TABLE `d6gvw_virtuemart_product_manufacturers`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_medias`
--
ALTER TABLE `d6gvw_virtuemart_product_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_prices`
--
ALTER TABLE `d6gvw_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_product_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_product_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_ratings`
--
ALTER TABLE `d6gvw_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_rating_reviews`
--
ALTER TABLE `d6gvw_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_rating_votes`
--
ALTER TABLE `d6gvw_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_shipmentmethods`
--
ALTER TABLE `d6gvw_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_states`
--
ALTER TABLE `d6gvw_virtuemart_states`
  MODIFY `virtuemart_state_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=912;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_userfields`
--
ALTER TABLE `d6gvw_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_userfield_values`
--
ALTER TABLE `d6gvw_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_userinfos`
--
ALTER TABLE `d6gvw_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_vendors`
--
ALTER TABLE `d6gvw_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_vendor_medias`
--
ALTER TABLE `d6gvw_virtuemart_vendor_medias`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_vendor_users`
--
ALTER TABLE `d6gvw_virtuemart_vendor_users`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_vmusers`
--
ALTER TABLE `d6gvw_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `d6gvw_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_waitingusers`
--
ALTER TABLE `d6gvw_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_virtuemart_worldzones`
--
ALTER TABLE `d6gvw_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d6gvw_workflows`
--
ALTER TABLE `d6gvw_workflows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_workflow_stages`
--
ALTER TABLE `d6gvw_workflow_stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `d6gvw_workflow_transitions`
--
ALTER TABLE `d6gvw_workflow_transitions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
