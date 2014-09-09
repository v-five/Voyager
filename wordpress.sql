-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2014 at 10:39 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-09-03 09:59:33', '2014-09-03 09:59:33', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=193 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'blogname', 'WP Site', 'yes'),
(3, 'blogdescription', 'Just another WordPress site', 'yes'),
(4, 'users_can_register', '0', 'yes'),
(5, 'admin_email', 'admin@site.ro', 'yes'),
(6, 'start_of_week', '1', 'yes'),
(7, 'use_balanceTags', '0', 'yes'),
(8, 'use_smilies', '1', 'yes'),
(9, 'require_name_email', '1', 'yes'),
(10, 'comments_notify', '1', 'yes'),
(11, 'posts_per_rss', '10', 'yes'),
(12, 'rss_use_excerpt', '0', 'yes'),
(13, 'mailserver_url', 'mail.example.com', 'yes'),
(14, 'mailserver_login', 'login@example.com', 'yes'),
(15, 'mailserver_pass', 'password', 'yes'),
(16, 'mailserver_port', '110', 'yes'),
(17, 'default_category', '1', 'yes'),
(18, 'default_comment_status', 'open', 'yes'),
(19, 'default_ping_status', 'open', 'yes'),
(20, 'default_pingback_flag', '0', 'yes'),
(21, 'posts_per_page', '10', 'yes'),
(22, 'date_format', 'F j, Y', 'yes'),
(23, 'time_format', 'g:i a', 'yes'),
(24, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(25, 'comment_moderation', '0', 'yes'),
(26, 'moderation_notify', '1', 'yes'),
(27, 'permalink_structure', '', 'yes'),
(28, 'gzipcompression', '0', 'yes'),
(29, 'hack_file', '0', 'yes'),
(30, 'blog_charset', 'UTF-8', 'yes'),
(31, 'moderation_keys', '', 'no'),
(32, 'active_plugins', 'a:1:{i:0;s:31:"thb-portfolio/thb-portfolio.php";}', 'yes'),
(33, 'home', 'http://localhost', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'voyager', 'yes'),
(42, 'stylesheet', 'voyager', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '27916', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:5:{i:1;a:0:{}i:3;a:3:{s:5:"title";s:13:"Recent Tweets";s:4:"text";s:79:"Zancudo, mighty fullscreen WordPress theme for creatives http://t.co/j3FqOQGnfW";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;i:4;a:3:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:12:"Get in touch";s:4:"text";s:48:"Phone: (000) 111 22 33<br>\r\nFax: (000) 111 22 44";s:6:"filter";b:0;}}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '27916', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:3:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;i:4;a:3:{s:5:"title";s:12:"Latest Posts";s:6:"number";i:2;s:9:"show_date";b:1;}}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:12:"post-sidebar";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:16:"archives-sidebar";a:0:{}s:17:"hamburger-sidebar";a:0:{}s:16:"footer-sidebar-0";a:1:{i:0;s:6:"text-3";}s:16:"footer-sidebar-1";a:1:{i:0;s:14:"recent-posts-4";}s:16:"footer-sidebar-2";a:1:{i:0;s:6:"text-5";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1410256778;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1410256902;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1410266658;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1410289800;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";s:13:"support_email";s:27:"updatehelp392@wordpress.org";}}s:12:"last_checked";i:1410251923;s:15:"version_checked";s:5:"3.9.2";s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_timeout_browser_71306268939c4cfc6fdab578c2b34e73', '1410343303', 'yes'),
(106, '_site_transient_browser_71306268939c4cfc6fdab578c2b34e73', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"36.0.1985.143";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(126, '_transient_twentyfourteen_category_count', '1', 'yes'),
(134, '_site_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1410251925;s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(135, 'recently_activated', 'a:0:{}', 'yes'),
(136, '_site_transient_timeout_wporg_theme_feature_list', '1409785830', 'yes'),
(137, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(139, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1409775614;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(140, 'current_theme', 'Voyager', 'yes'),
(141, 'theme_mods_voyager', 'a:15:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:3;s:6:"mobile";i:3;}s:4:"logo";s:16:"Roboto+Condensed";s:9:"logo_case";s:10:"capitalize";s:7:"tagline";s:16:"Roboto+Condensed";s:12:"tagline_case";s:10:"capitalize";s:9:"divider_4";s:0:"";s:12:"big_headings";s:24:"wc_mano_negra_btaregular";s:12:"primary_font";s:16:"Roboto+Condensed";s:9:"text_font";s:12:"Merriweather";s:9:"divider_8";s:0:"";s:15:"highlight_color";s:7:"#feb616";s:7:"body_bg";s:4:"#fff";s:17:"footer_sidebar_bg";s:7:"#f9f9f9";s:9:"footer_bg";s:4:"#222";}', 'yes'),
(142, 'theme_switched', '', 'yes'),
(145, 'thb_theme_options_voyager', 'a:57:{s:14:"touch_icon_144";s:0:"";s:14:"touch_icon_114";s:0:"";s:13:"touch_icon_72";s:0:"";s:13:"touch_icon_57";s:0:"";s:7:"favicon";s:0:"";s:22:"white_main_logo_retina";s:0:"";s:15:"white_main_logo";s:0:"";s:16:"main_logo_retina";s:0:"";s:9:"main_logo";s:1:"8";s:9:"analytics";s:0:"";s:13:"rss_alternate";s:0:"";s:9:"copyright";s:39:"© 2014  Voyager– All rights reserved";s:21:"enable_responsive_480";s:1:"1";s:21:"enable_responsive_768";s:1:"1";s:21:"thb_blog_likes_active";s:1:"1";s:15:"social_networks";s:46:"social_dribbble,social_twitter,social_facebook";s:19:"enable_social_share";s:1:"1";s:13:"footer_layout";s:29:"one-third,one-third,one-third";s:13:"header_layout";s:15:"header-layout-a";s:13:"logo_position";s:9:"logo-left";s:20:"customizer_text_font";a:2:{s:8:"variants";s:27:"300,300italic,700,700italic";s:7:"subsets";s:0:"";}s:23:"customizer_primary_font";a:2:{s:8:"variants";s:7:"regular";s:7:"subsets";s:0:"";}s:23:"customizer_big_headings";a:2:{s:8:"variants";s:7:"regular";s:7:"subsets";s:0:"";}s:18:"customizer_tagline";a:2:{s:8:"variants";s:7:"regular";s:7:"subsets";s:0:"";}s:15:"customizer_logo";a:2:{s:8:"variants";s:7:"regular";s:7:"subsets";s:0:"";}s:10:"custom_css";s:0:"";s:25:"related_products_per_page";s:1:"4";s:22:"shop_products_per_page";s:1:"9";s:21:"shop_sidebar_position";s:12:"sidebar-left";s:12:"shop_sidebar";s:1:"0";s:12:"shop_columns";s:1:"3";s:17:"thb_sticky_header";s:0:"";s:13:"social_tumblr";s:0:"";s:15:"social_linkedin";s:0:"";s:16:"social_instagram";s:0:"";s:16:"social_five100px";s:0:"";s:13:"social_flickr";s:0:"";s:17:"social_deviantart";s:0:"";s:17:"social_googleplus";s:0:"";s:14:"social_spotify";s:0:"";s:17:"social_soundcloud";s:0:"";s:16:"social_pinterest";s:0:"";s:10:"social_rss";s:0:"";s:15:"social_facebook";s:31:"http://facebook.com/thehappybit";s:12:"social_vimeo";s:0:"";s:14:"social_twitter";s:30:"http://twitter.com/thehappybit";s:15:"social_dribbble";s:31:"http://dribbble.com/thehappybit";s:12:"social_skype";s:0:"";s:13:"social_picasa";s:0:"";s:14:"social_behance";s:0:"";s:14:"social_youtube";s:0:"";s:13:"social_forrst";s:0:"";s:26:"thb_portfolio_likes_active";s:1:"1";s:15:"portfolio_index";s:3:"363";s:16:"works_navigation";s:1:"1";s:14:"works_url_slug";s:0:"";s:15:"enable_lightbox";s:1:"1";}', 'yes'),
(146, 'thb_theme_details_voyager', 'a:2:{s:7:"version";s:3:"1.0";s:17:"framework_version";s:5:"2.0.2";}', 'yes'),
(147, 'thb_duplicable', 'a:0:{}', 'yes'),
(148, '_transient_thb_system_flashdata_1', 'a:2:{s:7:"message";s:0:"";s:4:"type";s:0:"";}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(159, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(160, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(161, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(162, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(184, '_transient_timeout_plugin_slugs', '1410188650', 'no'),
(185, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:19:"bbpress/bbpress.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:9:"hello.php";i:4;s:38:"recent-tweets-widget/recent-tweets.php";i:5;s:31:"thb-portfolio/thb-portfolio.php";i:6;s:27:"woocommerce/woocommerce.php";}', 'no'),
(186, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1410144709', 'no'),
(187, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(190, '_site_transient_timeout_theme_roots', '1410253721', 'yes'),
(191, '_site_transient_theme_roots', 'a:4:{s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";s:12:"twentytwelve";s:7:"/themes";s:7:"voyager";s:7:"/themes";}', 'yes'),
(192, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1410251927;s:7:"checked";a:4:{s:14:"twentyfourteen";s:3:"1.1";s:14:"twentythirteen";s:3:"1.2";s:12:"twentytwelve";s:3:"1.4";s:7:"voyager";s:3:"1.0";}s:8:"response";a:3:{s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.2";s:3:"url";s:43:"https://wordpress.org/themes/twentyfourteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentyfourteen.1.2.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentythirteen";s:7:"package";s:60:"https://wordpress.org/themes/download/twentythirteen.1.3.zip";}s:12:"twentytwelve";a:4:{s:5:"theme";s:12:"twentytwelve";s:11:"new_version";s:3:"1.5";s:3:"url";s:41:"https://wordpress.org/themes/twentytwelve";s:7:"package";s:58:"https://wordpress.org/themes/download/twentytwelve.1.5.zip";}}s:12:"translations";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=310 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(26, 2, '_edit_lock', '1409834156:1'),
(27, 2, '_edit_last', '1'),
(28, 2, 'thb_meta_subtitle', 'Page subtitle or breadcrumb'),
(29, 2, 'thb_meta_pageheader_disable', ''),
(30, 2, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(31, 2, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(32, 2, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(33, 2, 'thb_meta_voyager_page_header_parallax', ''),
(34, 2, 'thb_meta_header_background_overlay_color', ''),
(35, 2, 'thb_meta_header_background_overlay_opacity', ''),
(36, 2, 'thb_meta_header_background_overlay_display', ''),
(37, 2, 'thb_meta_header_background_background_color', ''),
(38, 2, 'thb_meta_header_background_id', ''),
(39, 2, 'thb_meta_sidebar', 'post-sidebar'),
(40, 2, 'thb_meta_sidebar_position', 'sidebar-right'),
(41, 2, 'thb_meta_slideshow_effect', 'move'),
(42, 2, 'thb_meta_slideshow_speed', ''),
(43, 2, 'thb_meta_slideshow_autoplay', ''),
(44, 2, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(45, 2, 'thb_meta_builder_position', 'top'),
(46, 8, '_wp_attached_file', '2014/09/logo.png'),
(47, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:48;s:6:"height";i:48;s:4:"file";s:16:"2014/09/logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(48, 9, '_wp_attached_file', '2014/09/logo1.png'),
(49, 9, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:48;s:6:"height";i:48;s:4:"file";s:17:"2014/09/logo1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:10:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";}}'),
(50, 10, '_edit_last', '1'),
(51, 10, '_edit_lock', '1409834533:1'),
(52, 10, '_wp_page_template', 'default'),
(53, 10, 'thb_meta_pageheader_disable', ''),
(54, 10, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(55, 10, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(56, 10, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(57, 10, 'thb_meta_voyager_page_header_parallax', ''),
(58, 10, 'thb_meta_header_background_overlay_color', ''),
(59, 10, 'thb_meta_header_background_overlay_opacity', ''),
(60, 10, 'thb_meta_header_background_overlay_display', ''),
(61, 10, 'thb_meta_header_background_background_color', ''),
(62, 10, 'thb_meta_header_background_id', ''),
(63, 10, 'thb_meta_slideshow_effect', 'move'),
(64, 10, 'thb_meta_slideshow_speed', ''),
(65, 10, 'thb_meta_slideshow_autoplay', ''),
(66, 10, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(67, 12, '_edit_last', '1'),
(68, 12, '_edit_lock', '1410102295:1'),
(69, 12, '_wp_page_template', 'template-portfolio.php'),
(70, 12, 'thb_meta_pageheader_disable', ''),
(71, 12, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(72, 12, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(73, 12, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(74, 12, 'thb_meta_voyager_page_header_parallax', ''),
(75, 12, 'thb_meta_header_background_overlay_color', ''),
(76, 12, 'thb_meta_header_background_overlay_opacity', ''),
(77, 12, 'thb_meta_header_background_overlay_display', ''),
(78, 12, 'thb_meta_header_background_background_color', ''),
(79, 12, 'thb_meta_header_background_id', ''),
(80, 12, 'thb_meta_slideshow_effect', 'move'),
(81, 12, 'thb_meta_slideshow_speed', ''),
(82, 12, 'thb_meta_slideshow_autoplay', ''),
(83, 12, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(84, 14, '_edit_last', '1'),
(85, 14, '_edit_lock', '1410102128:1'),
(86, 14, '_wp_page_template', 'template-blog-grid.php'),
(87, 14, 'thb_meta_pageheader_disable', ''),
(88, 14, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(89, 14, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-center'),
(90, 14, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(91, 14, 'thb_meta_voyager_page_header_parallax', ''),
(92, 14, 'thb_meta_header_background_overlay_color', ''),
(93, 14, 'thb_meta_header_background_overlay_opacity', ''),
(94, 14, 'thb_meta_header_background_overlay_display', ''),
(95, 14, 'thb_meta_header_background_background_color', ''),
(96, 14, 'thb_meta_header_background_id', ''),
(97, 14, 'thb_meta_slideshow_effect', 'move'),
(98, 14, 'thb_meta_slideshow_speed', ''),
(99, 14, 'thb_meta_slideshow_autoplay', ''),
(100, 14, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(101, 16, '_edit_last', '1'),
(102, 16, '_edit_lock', '1409834601:1'),
(103, 16, '_wp_page_template', 'default'),
(104, 16, 'thb_meta_pageheader_disable', ''),
(105, 16, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(106, 16, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(107, 16, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(108, 16, 'thb_meta_voyager_page_header_parallax', ''),
(109, 16, 'thb_meta_header_background_overlay_color', ''),
(110, 16, 'thb_meta_header_background_overlay_opacity', ''),
(111, 16, 'thb_meta_header_background_overlay_display', ''),
(112, 16, 'thb_meta_header_background_background_color', ''),
(113, 16, 'thb_meta_header_background_id', ''),
(114, 16, 'thb_meta_slideshow_effect', 'move'),
(115, 16, 'thb_meta_slideshow_speed', ''),
(116, 16, 'thb_meta_slideshow_autoplay', ''),
(117, 16, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(118, 18, '_menu_item_type', 'post_type'),
(119, 18, '_menu_item_menu_item_parent', '0'),
(120, 18, '_menu_item_object_id', '16'),
(121, 18, '_menu_item_object', 'page'),
(122, 18, '_menu_item_target', ''),
(123, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(124, 18, '_menu_item_xfn', ''),
(125, 18, '_menu_item_url', ''),
(127, 19, '_menu_item_type', 'post_type'),
(128, 19, '_menu_item_menu_item_parent', '0'),
(129, 19, '_menu_item_object_id', '14'),
(130, 19, '_menu_item_object', 'page'),
(131, 19, '_menu_item_target', ''),
(132, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(133, 19, '_menu_item_xfn', ''),
(134, 19, '_menu_item_url', ''),
(136, 20, '_menu_item_type', 'post_type'),
(137, 20, '_menu_item_menu_item_parent', '0'),
(138, 20, '_menu_item_object_id', '12'),
(139, 20, '_menu_item_object', 'page'),
(140, 20, '_menu_item_target', ''),
(141, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(142, 20, '_menu_item_xfn', ''),
(143, 20, '_menu_item_url', ''),
(145, 21, '_menu_item_type', 'post_type'),
(146, 21, '_menu_item_menu_item_parent', '0'),
(147, 21, '_menu_item_object_id', '10'),
(148, 21, '_menu_item_object', 'page'),
(149, 21, '_menu_item_target', ''),
(150, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(151, 21, '_menu_item_xfn', ''),
(152, 21, '_menu_item_url', ''),
(154, 21, '_thb_menu_item_megamenu', '0'),
(155, 21, '_thb_menu_item_columns', '0'),
(156, 21, '_thb_menu_item_disable_link', '0'),
(157, 20, '_thb_menu_item_megamenu', '0'),
(158, 20, '_thb_menu_item_columns', '0'),
(159, 20, '_thb_menu_item_disable_link', '0'),
(160, 19, '_thb_menu_item_megamenu', '0'),
(161, 19, '_thb_menu_item_columns', '0'),
(162, 19, '_thb_menu_item_disable_link', '0'),
(163, 18, '_thb_menu_item_megamenu', '0'),
(164, 18, '_thb_menu_item_columns', '0'),
(165, 18, '_thb_menu_item_disable_link', '0'),
(166, 14, 'thb_meta_subtitle', 'Page subtitle or breadcrumb'),
(167, 14, 'thb_meta_sidebar', '0'),
(168, 14, 'thb_meta_sidebar_position', 'sidebar-right'),
(169, 14, 'thb_meta_builder_position', 'top'),
(170, 14, 'thb_meta_post_query_num', ''),
(171, 14, 'thb_meta_post_query_filter', ''),
(172, 14, 'thb_meta_post_query_filter_exclude', ''),
(173, 14, 'thb_meta_post_query_include_subcategories', ''),
(174, 14, 'thb_meta_post_query_orderby', 'date'),
(175, 14, 'thb_meta_post_query_order', 'desc'),
(176, 14, 'thb_meta_thumbnails_open_post', ''),
(177, 24, '_edit_last', '1'),
(178, 24, '_edit_lock', '1410101779:1'),
(180, 24, 'thb_meta_gallery_field', ''),
(181, 24, 'thb_meta_quote', ''),
(182, 24, 'thb_meta_quote_author', ''),
(183, 24, 'thb_meta_quote_url', ''),
(184, 24, 'thb_meta_video_url_mp4', ''),
(185, 24, 'thb_meta_video_url_ogv', ''),
(186, 24, 'thb_meta_video_url_mov', ''),
(187, 24, 'thb_meta_video_url_embed', ''),
(188, 24, 'thb_meta_video_url_autoplay', '0'),
(189, 24, 'thb_meta_video_url_loop', '0'),
(190, 24, 'thb_meta_video_url_fit', '0'),
(191, 24, 'thb_meta_audio_url_mp3', ''),
(192, 24, 'thb_meta_audio_url_ogg', ''),
(193, 24, 'thb_meta_audio_url_wav', ''),
(194, 24, 'thb_meta_audio_url_embed', ''),
(195, 24, 'thb_meta_link_url', ''),
(196, 24, 'thb_meta_pageheader_disable', ''),
(197, 24, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(198, 24, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(199, 24, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(200, 24, 'thb_meta_voyager_page_header_parallax', ''),
(201, 24, 'thb_meta_header_background_overlay_color', ''),
(202, 24, 'thb_meta_header_background_overlay_opacity', ''),
(203, 24, 'thb_meta_header_background_overlay_display', ''),
(204, 24, 'thb_meta_header_background_background_color', ''),
(205, 24, 'thb_meta_header_background_id', ''),
(206, 24, 'thb_meta_trip', '0'),
(207, 24, 'thb_meta_trip_stop', '0'),
(208, 24, 'thb_meta_sidebar', 'post-sidebar'),
(209, 24, 'thb_meta_sidebar_position', 'sidebar-right'),
(210, 24, 'thb_meta_post_subtitle', ''),
(211, 24, 'thb_meta_enable_author_block', ''),
(212, 24, 'thb_meta_post_related', ''),
(213, 24, 'thb_meta_post_related_number', '3'),
(214, 24, 'thb_meta_post_related_thumb', ''),
(215, 24, 'thb_meta_slideshow_effect', 'move'),
(216, 24, 'thb_meta_slideshow_speed', ''),
(217, 24, 'thb_meta_slideshow_autoplay', ''),
(218, 24, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(219, 24, 'thb_meta_builder_position', 'top'),
(220, 26, '_edit_last', '1'),
(221, 26, '_edit_lock', '1410101793:1'),
(223, 26, 'thb_meta_gallery_field', ''),
(224, 26, 'thb_meta_quote', ''),
(225, 26, 'thb_meta_quote_author', ''),
(226, 26, 'thb_meta_quote_url', ''),
(227, 26, 'thb_meta_video_url_mp4', ''),
(228, 26, 'thb_meta_video_url_ogv', ''),
(229, 26, 'thb_meta_video_url_mov', ''),
(230, 26, 'thb_meta_video_url_embed', ''),
(231, 26, 'thb_meta_video_url_autoplay', '0'),
(232, 26, 'thb_meta_video_url_loop', '0'),
(233, 26, 'thb_meta_video_url_fit', '0'),
(234, 26, 'thb_meta_audio_url_mp3', ''),
(235, 26, 'thb_meta_audio_url_ogg', ''),
(236, 26, 'thb_meta_audio_url_wav', ''),
(237, 26, 'thb_meta_audio_url_embed', ''),
(238, 26, 'thb_meta_link_url', ''),
(239, 26, 'thb_meta_pageheader_disable', ''),
(240, 26, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(241, 26, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(242, 26, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(243, 26, 'thb_meta_voyager_page_header_parallax', ''),
(244, 26, 'thb_meta_header_background_overlay_color', ''),
(245, 26, 'thb_meta_header_background_overlay_opacity', ''),
(246, 26, 'thb_meta_header_background_overlay_display', ''),
(247, 26, 'thb_meta_header_background_background_color', ''),
(248, 26, 'thb_meta_header_background_id', ''),
(249, 26, 'thb_meta_trip', '0'),
(250, 26, 'thb_meta_trip_stop', '0'),
(251, 26, 'thb_meta_sidebar', 'post-sidebar'),
(252, 26, 'thb_meta_sidebar_position', 'sidebar-right'),
(253, 26, 'thb_meta_post_subtitle', ''),
(254, 26, 'thb_meta_enable_author_block', ''),
(255, 26, 'thb_meta_post_related', ''),
(256, 26, 'thb_meta_post_related_number', '3'),
(257, 26, 'thb_meta_post_related_thumb', ''),
(258, 26, 'thb_meta_slideshow_effect', 'move'),
(259, 26, 'thb_meta_slideshow_speed', ''),
(260, 26, 'thb_meta_slideshow_autoplay', ''),
(261, 26, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(262, 26, 'thb_meta_builder_position', 'top'),
(263, 29, '_edit_last', '1'),
(264, 29, '_edit_lock', '1410101955:1'),
(266, 29, 'thb_meta_gallery_field', ''),
(267, 29, 'thb_meta_quote', ''),
(268, 29, 'thb_meta_quote_author', ''),
(269, 29, 'thb_meta_quote_url', ''),
(270, 29, 'thb_meta_video_url_mp4', ''),
(271, 29, 'thb_meta_video_url_ogv', ''),
(272, 29, 'thb_meta_video_url_mov', ''),
(273, 29, 'thb_meta_video_url_embed', ''),
(274, 29, 'thb_meta_video_url_autoplay', '0'),
(275, 29, 'thb_meta_video_url_loop', '0'),
(276, 29, 'thb_meta_video_url_fit', '0'),
(277, 29, 'thb_meta_audio_url_mp3', ''),
(278, 29, 'thb_meta_audio_url_ogg', ''),
(279, 29, 'thb_meta_audio_url_wav', ''),
(280, 29, 'thb_meta_audio_url_embed', ''),
(281, 29, 'thb_meta_link_url', ''),
(282, 29, 'thb_meta_pageheader_disable', ''),
(283, 29, 'thb_meta_voyager_page_layout', 'page-layout-a'),
(284, 29, 'thb_meta_voyager_page_header_alignment', 'pageheader-alignment-left'),
(285, 29, 'thb_meta_voyager_subtitle_position', 'subtitle-bottom'),
(286, 29, 'thb_meta_voyager_page_header_parallax', ''),
(287, 29, 'thb_meta_header_background_overlay_color', ''),
(288, 29, 'thb_meta_header_background_overlay_opacity', ''),
(289, 29, 'thb_meta_header_background_overlay_display', ''),
(290, 29, 'thb_meta_header_background_background_color', ''),
(291, 29, 'thb_meta_header_background_id', ''),
(292, 29, 'thb_meta_trip', '0'),
(293, 29, 'thb_meta_trip_stop', '0'),
(294, 29, 'thb_meta_sidebar', 'post-sidebar'),
(295, 29, 'thb_meta_sidebar_position', 'sidebar-right'),
(296, 29, 'thb_meta_post_subtitle', ''),
(297, 29, 'thb_meta_enable_author_block', ''),
(298, 29, 'thb_meta_post_related', ''),
(299, 29, 'thb_meta_post_related_number', '3'),
(300, 29, 'thb_meta_post_related_thumb', ''),
(301, 29, 'thb_meta_slideshow_effect', 'move'),
(302, 29, 'thb_meta_slideshow_speed', ''),
(303, 29, 'thb_meta_slideshow_autoplay', ''),
(304, 29, 'thb_duplicable', 'a:1:{i:0;s:0:"";}'),
(305, 29, 'thb_meta_builder_position', 'top'),
(306, 12, 'thb_meta_subtitle', ''),
(307, 12, 'thb_meta_sidebar', '0'),
(308, 12, 'thb_meta_sidebar_position', 'sidebar-right'),
(309, 12, 'thb_meta_builder_position', 'top');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-09-03 09:59:33', '2014-09-03 09:59:33', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2014-09-03 09:59:33', '2014-09-03 09:59:33', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2014-09-03 09:59:33', '2014-09-03 09:59:33', 'Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vestibulum id ligula porta felis euismod semper.\r\n\r\n&nbsp;\r\n\r\nCurabitur blandit tempus porttitor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit sit amet non magna. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 'Standard Page title', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2014-09-04 12:36:31', '2014-09-04 12:36:31', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-09-03 10:01:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-09-03 10:01:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=3', 0, 'post', '', 0),
(7, 1, '2014-09-04 12:30:25', '2014-09-04 12:30:25', 'Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vestibulum id ligula porta felis euismod semper.\r\n\r\n&nbsp;\r\n\r\nCurabitur blandit tempus porttitor. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec id elit non mi porta gravida at eget metus. Maecenas sed diam eget risus varius blandit sit amet non magna. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', 'Standard Page title', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-09-04 12:30:25', '2014-09-04 12:30:25', '', 2, 'http://localhost/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-09-04 12:39:33', '2014-09-04 12:39:33', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2014-09-04 12:39:33', '2014-09-04 12:39:33', '', 0, 'http://localhost/wp-content/uploads/2014/09/logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2014-09-04 12:42:39', '2014-09-04 12:42:39', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo-2', '', '', '2014-09-04 12:42:39', '2014-09-04 12:42:39', '', 0, 'http://localhost/wp-content/uploads/2014/09/logo1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2014-09-04 12:44:31', '2014-09-04 12:44:31', 'About', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2014-09-04 12:44:31', '2014-09-04 12:44:31', '', 0, 'http://localhost/?page_id=10', 0, 'page', '', 0),
(11, 1, '2014-09-04 12:44:31', '2014-09-04 12:44:31', 'About', 'About', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2014-09-04 12:44:31', '2014-09-04 12:44:31', '', 10, 'http://localhost/?p=11', 0, 'revision', '', 0),
(12, 1, '2014-09-04 12:44:54', '2014-09-04 12:44:54', 'Portofolio', 'Portofolio', '', 'publish', 'closed', 'closed', '', 'portofolio', '', '', '2014-09-07 15:04:55', '2014-09-07 15:04:55', '', 0, 'http://localhost/?page_id=12', 0, 'page', '', 0),
(13, 1, '2014-09-04 12:44:54', '2014-09-04 12:44:54', 'Portofolio', 'Portofolio', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2014-09-04 12:44:54', '2014-09-04 12:44:54', '', 12, 'http://localhost/?p=13', 0, 'revision', '', 0),
(14, 1, '2014-09-04 12:45:16', '2014-09-04 12:45:16', 'Blog', 'Blog classic and masonry', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2014-09-07 15:02:08', '2014-09-07 15:02:08', '', 0, 'http://localhost/?page_id=14', 0, 'page', '', 0),
(15, 1, '2014-09-04 12:45:16', '2014-09-04 12:45:16', 'Blog', 'Blog', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-09-04 12:45:16', '2014-09-04 12:45:16', '', 14, 'http://localhost/?p=15', 0, 'revision', '', 0),
(16, 1, '2014-09-04 12:45:31', '2014-09-04 12:45:31', 'Contact', 'Contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2014-09-04 12:45:31', '2014-09-04 12:45:31', '', 0, 'http://localhost/?page_id=16', 0, 'page', '', 0),
(17, 1, '2014-09-04 12:45:31', '2014-09-04 12:45:31', 'Contact', 'Contact', '', 'inherit', 'open', 'open', '', '16-revision-v1', '', '', '2014-09-04 12:45:31', '2014-09-04 12:45:31', '', 16, 'http://localhost/?p=17', 0, 'revision', '', 0),
(18, 1, '2014-09-04 12:46:42', '2014-09-04 12:46:42', ' ', '', '', 'publish', 'open', 'open', '', '18', '', '', '2014-09-04 12:46:42', '2014-09-04 12:46:42', '', 0, 'http://localhost/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2014-09-04 12:46:42', '2014-09-04 12:46:42', ' ', '', '', 'publish', 'open', 'open', '', '19', '', '', '2014-09-04 12:46:42', '2014-09-04 12:46:42', '', 0, 'http://localhost/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2014-09-04 12:46:41', '2014-09-04 12:46:41', ' ', '', '', 'publish', 'open', 'open', '', '20', '', '', '2014-09-04 12:46:41', '2014-09-04 12:46:41', '', 0, 'http://localhost/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2014-09-04 12:46:41', '2014-09-04 12:46:41', ' ', '', '', 'publish', 'open', 'open', '', '21', '', '', '2014-09-04 12:46:41', '2014-09-04 12:46:41', '', 0, 'http://localhost/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2014-09-07 14:53:51', '2014-09-07 14:53:51', 'Blog', 'Blog ', '', 'inherit', 'open', 'open', '', '14-autosave-v1', '', '', '2014-09-07 14:53:51', '2014-09-07 14:53:51', '', 14, 'http://localhost/?p=22', 0, 'revision', '', 0),
(23, 1, '2014-09-07 14:54:37', '2014-09-07 14:54:37', 'Blog', 'Blog classic and masonry', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2014-09-07 14:54:37', '2014-09-07 14:54:37', '', 14, 'http://localhost/?p=23', 0, 'revision', '', 0),
(24, 1, '2014-09-07 14:58:09', '2014-09-07 14:58:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title', '', '', '2014-09-07 14:58:09', '2014-09-07 14:58:09', '', 0, 'http://localhost/?p=24', 0, 'post', '', 0),
(25, 1, '2014-09-07 14:58:09', '2014-09-07 14:58:09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'inherit', 'open', 'open', '', '24-revision-v1', '', '', '2014-09-07 14:58:09', '2014-09-07 14:58:09', '', 24, 'http://localhost/?p=25', 0, 'revision', '', 0),
(26, 1, '2014-09-07 14:58:53', '2014-09-07 14:58:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title-2', '', '', '2014-09-07 14:58:53', '2014-09-07 14:58:53', '', 0, 'http://localhost/?p=26', 0, 'post', '', 0),
(27, 1, '2014-09-07 14:58:53', '2014-09-07 14:58:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'inherit', 'open', 'open', '', '26-revision-v1', '', '', '2014-09-07 14:58:53', '2014-09-07 14:58:53', '', 26, 'http://localhost/?p=27', 0, 'revision', '', 0),
(28, 1, '2014-09-07 14:58:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-09-07 14:58:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=28', 0, 'post', '', 0),
(29, 1, '2014-09-07 14:59:10', '2014-09-07 14:59:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'publish', 'open', 'open', '', 'post-title-3', '', '', '2014-09-07 14:59:10', '2014-09-07 14:59:10', '', 0, 'http://localhost/?p=29', 0, 'post', '', 0),
(30, 1, '2014-09-07 14:59:10', '2014-09-07 14:59:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue. Nullam quis risus eget urna mollis ornare vel eu leo.', 'Post Title', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2014-09-07 14:59:10', '2014-09-07 14:59:10', '', 29, 'http://localhost/?p=30', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Left Menu', 'left-menu', 0),
(3, 'Right Menu', 'right-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(24, 1, 0),
(26, 1, 0),
(29, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 0),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'first_name', ''),
(2, 1, 'last_name', ''),
(3, 1, 'nickname', 'admin'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'wp_user-settings', '=undefined&mfold=f&libraryContent=browse&imgsize=thumbnail'),
(15, 1, 'wp_user-settings-time', '1409738498'),
(16, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(17, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(18, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:8:"add-post";i:1;s:8:"add-trip";i:2;s:12:"add-post_tag";i:3;s:15:"add-post_format";i:4;s:19:"add-trip_categories";}'),
(19, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZL5rrcu0ff/DFb/vSeIGPXvHIW2CD0', 'admin', 'admin@site.ro', '', '2014-09-03 09:59:33', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=310;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
