-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: vagrant
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-1~trusty

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://linux-tuki.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','https://linux-tuki.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Linux-tuki','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Linux asiantuntija palveluksessasi','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','vagrant@linux-tuki.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','closed','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','closed','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','j.n.Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','H:i','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','1','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%year%/%monthnum%/%postname%/','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:6:{i:0;s:21:\"polylang/polylang.php\";i:1;s:35:\"autodescription/autodescription.php\";i:2;s:13:\"cmb2/init.php\";i:3;s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";i:4;s:27:\"redirection/redirection.php\";i:5;s:31:\"responsive-video-embed/wrve.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com\nhttp://rpc.twingly.com\nhttp://api.feedster.com/ping\nhttp://api.moreover.com/RPC2\nhttp://api.moreover.com/ping\nhttp://www.blogdigger.com/RPC2\nhttp://www.blogshares.com/rpc.php\nhttp://www.blogsnow.com/ping\nhttp://www.blogstreet.com/xrbin/xmlrpc.cgi\nhttp://bulkfeeds.net/rpc\nhttp://www.newsisfree.com/xmlrpctest.php\nhttp://ping.blo.gs/\nhttp://ping.feedburner.com\nhttp://ping.syndic8.com/xmlrpc.php\nhttp://ping.weblogalot.com/rpc.php\nhttp://rpc.blogrolling.com/pinger/\nhttp://rpc.technorati.com/rpc/ping\nhttp://rpc.weblogs.com/RPC2\nhttp://www.feedsubmitter.com\nhttp://blo.gs/ping.php\nhttp://www.pingerati.net\nhttp://www.pingmyblog.com\nhttp://geourl.org/ping\nhttp://ipings.com\nhttp://www.weblogalot.com/ping','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','linuxtuki','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','linuxtuki/templates','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','0','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','1','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','38590','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','2','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','10','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:2:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";a:2:{i:0;s:15:\"GADWP_Uninstall\";i:1;s:9:\"uninstall\";}s:27:\"redirection/redirection.php\";a:2:{i:0;s:17:\"Redirection_Admin\";i:1;s:16:\"plugin_uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','Europe/Helsinki','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','8','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'initial_db_version','38590','yes');
INSERT INTO `wp_options` VALUES (92,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (93,'WPLANG','fi','yes');
INSERT INTO `wp_options` VALUES (94,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (95,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (96,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"sidebar-main\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (100,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:1:{s:31:\"seravo-plugin/seravo-plugin.php\";a:11:{s:4:\"Name\";s:13:\"Seravo Plugin\";s:9:\"PluginURI\";s:39:\"https://github.com/Seravo/seravo-plugin\";s:7:\"Version\";s:5:\"1.6.2\";s:11:\"Description\";s:70:\"Enhances WordPress with Seravo.com specific features and integrations.\";s:6:\"Author\";s:9:\"Seravo Oy\";s:9:\"AuthorURI\";s:19:\"https://seravo.com/\";s:10:\"TextDomain\";s:3:\"wpp\";s:10:\"DomainPath\";s:11:\"/languages/\";s:7:\"Network\";b:0;s:5:\"Title\";s:13:\"Seravo Plugin\";s:10:\"AuthorName\";s:9:\"Seravo Oy\";}}s:5:\"count\";i:1;}','no');
INSERT INTO `wp_options` VALUES (101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'cron','a:5:{i:1508280637;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1508323855;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508324925;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1508351149;a:1:{s:22:\"redirection_log_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (114,'secure_auth_key','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (115,'secure_auth_salt','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (116,'logged_in_key','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (117,'logged_in_salt','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (118,'nonce_key','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (119,'nonce_salt','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx','no');
INSERT INTO `wp_options` VALUES (126,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (141,'recently_activated','a:1:{s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";i:1508262125;}','yes');
INSERT INTO `wp_options` VALUES (142,'polylang','a:14:{s:7:\"browser\";b:0;s:7:\"rewrite\";i:1;s:12:\"hide_default\";i:1;s:10:\"force_lang\";i:1;s:13:\"redirect_lang\";i:1;s:13:\"media_support\";b:0;s:9:\"uninstall\";i:0;s:4:\"sync\";a:0:{}s:10:\"post_types\";a:0:{}s:10:\"taxonomies\";a:0:{}s:7:\"domains\";a:0:{}s:7:\"version\";s:5:\"2.2.3\";s:12:\"default_lang\";s:2:\"fi\";s:9:\"nav_menus\";a:1:{s:19:\"linuxtuki/templates\";a:1:{s:7:\"top_nav\";a:3:{s:2:\"fi\";i:14;s:2:\"sv\";i:15;s:2:\"en\";i:16;}}}}','yes');
INSERT INTO `wp_options` VALUES (143,'polylang_wpml_strings','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (144,'widget_polylang','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (172,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (201,'theme_mods_twentyseventeen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1507569236;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (202,'template_root','/themes','yes');
INSERT INTO `wp_options` VALUES (203,'stylesheet_root','/themes','yes');
INSERT INTO `wp_options` VALUES (204,'current_theme','Linux tuki','yes');
INSERT INTO `wp_options` VALUES (205,'theme_mods_linuxtuki','a:1:{i:0;b:0;}','yes');
INSERT INTO `wp_options` VALUES (206,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (207,'default_post_edit_rows','40','yes');
INSERT INTO `wp_options` VALUES (208,'theme_mods_linuxtuki/templates','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"top_nav\";i:14;}}','yes');
INSERT INTO `wp_options` VALUES (252,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (272,'linux_tuki_general_options','a:2:{s:27:\"linux_tuki_default_image_id\";s:2:\"57\";s:24:\"linux_tuki_default_image\";s:30:\"/wp-content/uploads/kuplat.jpg\";}','yes');
INSERT INTO `wp_options` VALUES (365,'the_seo_framework_tested_upgrade_version','2941','yes');
INSERT INTO `wp_options` VALUES (366,'autodescription-site-settings','a:110:{s:22:\"display_seo_bar_tables\";i:1;s:18:\"alter_search_query\";i:1;s:23:\"alter_search_query_type\";s:8:\"in_query\";s:19:\"alter_archive_query\";i:1;s:24:\"alter_archive_query_type\";s:8:\"in_query\";s:13:\"cache_sitemap\";i:1;s:12:\"cache_object\";i:1;s:16:\"canonical_scheme\";s:9:\"automatic\";s:18:\"prev_next_archives\";i:1;s:19:\"prev_next_frontpage\";i:1;s:15:\"title_seperator\";s:4:\"pipe\";s:14:\"title_location\";s:5:\"right\";s:21:\"description_separator\";s:4:\"pipe\";s:21:\"description_additions\";i:1;s:20:\"description_blogname\";i:1;s:22:\"homepage_title_tagline\";s:0:\"\";s:14:\"homepage_title\";s:0:\"\";s:20:\"homepage_description\";s:48:\"Suomen Linux-tuki - asiantuntijan apua tarjolla.\";s:19:\"home_title_location\";s:4:\"left\";s:16:\"homepage_tagline\";i:1;s:25:\"homepage_social_image_url\";s:0:\"\";s:24:\"homepage_social_image_id\";i:0;s:7:\"og_tags\";i:1;s:13:\"facebook_tags\";i:1;s:12:\"twitter_tags\";i:1;s:19:\"social_image_fb_url\";s:0:\"\";s:18:\"social_image_fb_id\";i:0;s:15:\"facebook_author\";s:0:\"\";s:18:\"facebook_publisher\";s:0:\"\";s:14:\"facebook_appid\";s:0:\"\";s:12:\"twitter_card\";s:19:\"summary_large_image\";s:12:\"twitter_site\";s:0:\"\";s:15:\"twitter_creator\";s:0:\"\";s:17:\"post_publish_time\";i:1;s:16:\"post_modify_time\";i:1;s:14:\"knowledge_type\";s:12:\"organization\";s:14:\"knowledge_name\";s:0:\"\";s:19:\"ld_json_breadcrumbs\";i:1;s:16:\"ld_json_sitename\";i:1;s:17:\"ld_json_searchbox\";i:1;s:16:\"knowledge_output\";i:1;s:14:\"knowledge_logo\";i:1;s:18:\"knowledge_facebook\";s:0:\"\";s:17:\"knowledge_twitter\";s:0:\"\";s:15:\"knowledge_gplus\";s:0:\"\";s:19:\"knowledge_instagram\";s:0:\"\";s:17:\"knowledge_youtube\";s:0:\"\";s:18:\"knowledge_linkedin\";s:0:\"\";s:19:\"knowledge_pinterest\";s:0:\"\";s:20:\"knowledge_soundcloud\";s:0:\"\";s:16:\"knowledge_tumblr\";s:0:\"\";s:5:\"noodp\";i:1;s:6:\"noydir\";i:1;s:13:\"paged_noindex\";i:1;s:12:\"date_noindex\";i:1;s:14:\"search_noindex\";i:1;s:18:\"attachment_noindex\";i:1;s:19:\"google_verification\";s:0:\"\";s:17:\"bing_verification\";s:0:\"\";s:19:\"yandex_verification\";s:0:\"\";s:17:\"pint_verification\";s:0:\"\";s:15:\"sitemaps_output\";i:1;s:15:\"sitemaps_robots\";i:1;s:17:\"sitemaps_modified\";i:1;s:18:\"sitemap_timestamps\";i:1;s:11:\"ping_google\";i:1;s:9:\"ping_bing\";i:1;s:11:\"ping_yandex\";i:1;s:14:\"sitemap_styles\";i:1;s:18:\"sitemap_color_main\";s:4:\"#333\";s:20:\"sitemap_color_accent\";s:7:\"#00cd98\";s:16:\"excerpt_the_feed\";i:1;s:15:\"source_the_feed\";i:1;s:12:\"updated_2941\";i:1;s:22:\"cache_meta_description\";i:0;s:17:\"cache_meta_schema\";i:0;s:23:\"display_seo_bar_metabox\";i:0;s:19:\"title_rem_additions\";i:0;s:18:\"title_rem_prefixes\";i:0;s:16:\"category_noindex\";i:0;s:11:\"tag_noindex\";i:0;s:14:\"author_noindex\";i:0;s:12:\"site_noindex\";i:0;s:17:\"category_nofollow\";i:0;s:12:\"tag_nofollow\";i:0;s:15:\"author_nofollow\";i:0;s:13:\"date_nofollow\";i:0;s:15:\"search_nofollow\";i:0;s:19:\"attachment_nofollow\";i:0;s:13:\"site_nofollow\";i:0;s:18:\"category_noarchive\";i:0;s:13:\"tag_noarchive\";i:0;s:16:\"author_noarchive\";i:0;s:14:\"date_noarchive\";i:0;s:16:\"search_noarchive\";i:0;s:20:\"attachment_noarchive\";i:0;s:14:\"site_noarchive\";i:0;s:18:\"home_paged_noindex\";i:0;s:16:\"homepage_noindex\";i:0;s:17:\"homepage_nofollow\";i:0;s:18:\"homepage_noarchive\";i:0;s:13:\"shortlink_tag\";i:0;s:15:\"prev_next_posts\";i:0;s:17:\"page_publish_time\";i:0;s:16:\"page_modify_time\";i:0;s:16:\"home_modify_time\";i:0;s:17:\"home_publish_time\";i:0;s:12:\"sitemap_logo\";i:0;s:17:\"knowledge_logo_id\";i:0;s:18:\"knowledge_logo_url\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (367,'the_seo_framework_upgraded_db_version','2941','yes');
INSERT INTO `wp_options` VALUES (375,'redirection_version','2.3.3','yes');
INSERT INTO `wp_options` VALUES (376,'redirection_options','a:8:{s:7:\"support\";b:0;s:5:\"token\";s:32:\"a426a0facc3eb18612e8154f81e7a085\";s:12:\"monitor_post\";i:0;s:11:\"auto_target\";s:0:\"\";s:15:\"expire_redirect\";i:7;s:10:\"expire_404\";i:7;s:7:\"modules\";a:0:{}s:10:\"newsletter\";b:0;}','yes');
INSERT INTO `wp_options` VALUES (379,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (380,'rewrite_rules','a:165:{s:13:\"sitemap\\.xml$\";s:39:\"index.php?the_seo_framework_sitemap=xml\";s:13:\"sitemap\\.xsl$\";s:39:\"index.php?the_seo_framework_sitemap=xsl\";s:7:\"^api/?$\";s:22:\"index.php?rest_route=/\";s:10:\"^api/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^index.php/api/?$\";s:22:\"index.php?rest_route=/\";s:20:\"^index.php/api/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:55:\"(sv|en)/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:50:\"(sv|en)/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?lang=$matches[1]&category_name=$matches[2]&feed=$matches[3]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:31:\"(sv|en)/category/(.+?)/embed/?$\";s:63:\"index.php?lang=$matches[1]&category_name=$matches[2]&embed=true\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:43:\"(sv|en)/category/(.+?)/page/?([0-9]{1,})/?$\";s:70:\"index.php?lang=$matches[1]&category_name=$matches[2]&paged=$matches[3]\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:25:\"(sv|en)/category/(.+?)/?$\";s:52:\"index.php?lang=$matches[1]&category_name=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:52:\"(sv|en)/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:47:\"(sv|en)/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&tag=$matches[2]&feed=$matches[3]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:28:\"(sv|en)/tag/([^/]+)/embed/?$\";s:53:\"index.php?lang=$matches[1]&tag=$matches[2]&embed=true\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:40:\"(sv|en)/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?lang=$matches[1]&tag=$matches[2]&paged=$matches[3]\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:22:\"(sv|en)/tag/([^/]+)/?$\";s:42:\"index.php?lang=$matches[1]&tag=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:53:\"(sv|en)/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fi&post_format=$matches[1]&feed=$matches[2]\";s:48:\"(sv|en)/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&post_format=$matches[2]&feed=$matches[3]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fi&post_format=$matches[1]&feed=$matches[2]\";s:29:\"(sv|en)/type/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&post_format=$matches[2]&embed=true\";s:21:\"type/([^/]+)/embed/?$\";s:52:\"index.php?lang=fi&post_format=$matches[1]&embed=true\";s:41:\"(sv|en)/type/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&post_format=$matches[2]&paged=$matches[3]\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fi&post_format=$matches[1]&paged=$matches[2]\";s:23:\"(sv|en)/type/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&post_format=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:41:\"index.php?lang=fi&post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:40:\"(sv|en)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fi&&feed=$matches[1]\";s:35:\"(sv|en)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?lang=$matches[1]&&feed=$matches[2]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:35:\"index.php?lang=fi&&feed=$matches[1]\";s:16:\"(sv|en)/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:8:\"embed/?$\";s:29:\"index.php?lang=fi&&embed=true\";s:28:\"(sv|en)/page/?([0-9]{1,})/?$\";s:45:\"index.php?lang=$matches[1]&&paged=$matches[2]\";s:20:\"page/?([0-9]{1,})/?$\";s:36:\"index.php?lang=fi&&paged=$matches[1]\";s:35:\"(sv|en)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?lang=$matches[1]&&page_id=8&cpage=$matches[2]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:46:\"index.php?lang=fi&&page_id=8&cpage=$matches[1]\";s:10:\"(sv|en)/?$\";s:26:\"index.php?lang=$matches[1]\";s:49:\"(sv|en)/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fi&&feed=$matches[1]&withcomments=1\";s:44:\"(sv|en)/comments/(feed|rdf|rss|rss2|atom)/?$\";s:59:\"index.php?lang=$matches[1]&&feed=$matches[2]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?lang=fi&&feed=$matches[1]&withcomments=1\";s:25:\"(sv|en)/comments/embed/?$\";s:38:\"index.php?lang=$matches[1]&&embed=true\";s:17:\"comments/embed/?$\";s:29:\"index.php?lang=fi&&embed=true\";s:52:\"(sv|en)/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fi&s=$matches[1]&feed=$matches[2]\";s:47:\"(sv|en)/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:57:\"index.php?lang=$matches[1]&s=$matches[2]&feed=$matches[3]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?lang=fi&s=$matches[1]&feed=$matches[2]\";s:28:\"(sv|en)/search/(.+)/embed/?$\";s:51:\"index.php?lang=$matches[1]&s=$matches[2]&embed=true\";s:20:\"search/(.+)/embed/?$\";s:42:\"index.php?lang=fi&s=$matches[1]&embed=true\";s:40:\"(sv|en)/search/(.+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?lang=$matches[1]&s=$matches[2]&paged=$matches[3]\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?lang=fi&s=$matches[1]&paged=$matches[2]\";s:22:\"(sv|en)/search/(.+)/?$\";s:40:\"index.php?lang=$matches[1]&s=$matches[2]\";s:14:\"search/(.+)/?$\";s:31:\"index.php?lang=fi&s=$matches[1]\";s:55:\"(sv|en)/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fi&author_name=$matches[1]&feed=$matches[2]\";s:50:\"(sv|en)/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:67:\"index.php?lang=$matches[1]&author_name=$matches[2]&feed=$matches[3]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:58:\"index.php?lang=fi&author_name=$matches[1]&feed=$matches[2]\";s:31:\"(sv|en)/author/([^/]+)/embed/?$\";s:61:\"index.php?lang=$matches[1]&author_name=$matches[2]&embed=true\";s:23:\"author/([^/]+)/embed/?$\";s:52:\"index.php?lang=fi&author_name=$matches[1]&embed=true\";s:43:\"(sv|en)/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?lang=$matches[1]&author_name=$matches[2]&paged=$matches[3]\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:59:\"index.php?lang=fi&author_name=$matches[1]&paged=$matches[2]\";s:25:\"(sv|en)/author/([^/]+)/?$\";s:50:\"index.php?lang=$matches[1]&author_name=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:41:\"index.php?lang=fi&author_name=$matches[1]\";s:77:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=fi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:72:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:88:\"index.php?lang=fi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:53:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:91:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&embed=true\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:82:\"index.php?lang=fi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:65:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]&paged=$matches[5]\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:89:\"index.php?lang=fi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:47:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&day=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:71:\"index.php?lang=fi&year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:64:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:59:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&feed=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:40:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:75:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&embed=true\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:52:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&paged=$matches[4]\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:34:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:51:\"(sv|en)/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:46:\"(sv|en)/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?lang=$matches[1]&year=$matches[2]&feed=$matches[3]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:27:\"(sv|en)/([0-9]{4})/embed/?$\";s:54:\"index.php?lang=$matches[1]&year=$matches[2]&embed=true\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:39:\"(sv|en)/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&paged=$matches[3]\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:21:\"(sv|en)/([0-9]{4})/?$\";s:43:\"index.php?lang=$matches[1]&year=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:55:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:85:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:77:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:61:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:53:\"[0-9]{4}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:92:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&embed=true\";s:40:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/embed/?$\";s:75:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&embed=true\";s:72:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:67:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&feed=$matches[4]\";s:60:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:99:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:52:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&paged=$matches[4]\";s:67:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:99:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:59:\"([0-9]{4})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&cpage=$matches[4]\";s:56:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:98:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&name=$matches[4]&page=$matches[5]\";s:48:\"([0-9]{4})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&name=$matches[3]&page=$matches[4]\";s:44:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:36:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:74:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:66:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:61:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"(sv|en)/[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:42:\"[0-9]{4}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:59:\"(sv|en)/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:82:\"index.php?lang=$matches[1]&year=$matches[2]&monthnum=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:46:\"(sv|en)/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:61:\"index.php?lang=$matches[1]&year=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:35:\"(sv|en)/.?.+?/attachment/([^/]+)/?$\";s:49:\"index.php?lang=$matches[1]&attachment=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:65:\"(sv|en)/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"(sv|en)/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:66:\"index.php?lang=$matches[1]&attachment=$matches[2]&feed=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"(sv|en)/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?lang=$matches[1]&attachment=$matches[2]&cpage=$matches[3]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"(sv|en)/.?.+?/attachment/([^/]+)/embed/?$\";s:60:\"index.php?lang=$matches[1]&attachment=$matches[2]&embed=true\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"(sv|en)/(.?.+?)/embed/?$\";s:58:\"index.php?lang=$matches[1]&pagename=$matches[2]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:48:\"(sv|en)/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:43:\"(sv|en)/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&feed=$matches[3]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:36:\"(sv|en)/(.?.+?)/page/?([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&paged=$matches[3]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:43:\"(sv|en)/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?lang=$matches[1]&pagename=$matches[2]&cpage=$matches[3]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:32:\"(sv|en)/(.?.+?)(?:/([0-9]+))?/?$\";s:64:\"index.php?lang=$matches[1]&pagename=$matches[2]&page=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,4,'_pll_strings_translations','a:12:{i:0;a:2:{i:0;s:28:\"Linux expert at your service\";i:1;s:34:\"Linux asiantuntija palveluksessasi\";}i:1;a:2:{i:0;s:9:\"Read more\";i:1;s:11:\"Lue lisää\";}i:2;a:2:{i:0;s:9:\"Linuxtuki\";i:1;s:10:\"Linux-tuki\";}i:3;a:2:{i:0;s:34:\"Linux asiantuntija palveluksessasi\";i:1;s:34:\"Linux asiantuntija palveluksessasi\";}i:4;a:2:{i:0;s:5:\"d.m.Y\";i:1;s:5:\"d.m.Y\";}i:5;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}i:6;a:2:{i:0;s:11:\"nav tagline\";i:1;s:53:\"Linux järjestelmien<br>asiantuntija- ja tukipalvelut\";}i:7;a:2:{i:0;s:19:\"Contact information\";i:1;s:205:\"Suomen Linux-tuen omistaa Seravo Oy | Rautatienkatu 21 B, 33100 Tampere | Y-tunnus 2392019-2<br><a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a> | <a href=\"tel:+358447770020\">044 777 0020</a>\";}i:8;a:2:{i:0;s:16:\"Linux trademarks\";i:1;s:163:\"Linux™ on Linus Torvaldsin rekisteröimä tavaramerkki. Mainitut tuotemerkit ovat suojattuja, emmekä ole niiden virallinen edustaja ellei niin erikseen mainita.\";}i:9;a:2:{i:0;s:15:\"404 error title\";i:1;s:26:\"404 virhe: Sivua ei löydy\";}i:10;a:2:{i:0;s:17:\"404 error message\";i:1;s:100:\"Hakemaasi sivua ei löytynyt. Voit käyttää yläosan navigaatiota päästäksesi oikealle sivulle.\";}i:11;a:2:{i:0;s:10:\"Linux-tuki\";i:1;s:10:\"Linux-tuki\";}}');
INSERT INTO `wp_postmeta` VALUES (3,5,'_pll_strings_translations','a:12:{i:0;a:2:{i:0;s:28:\"Linux expert at your service\";i:1;s:29:\"Linux expert till din tjänst\";}i:1;a:2:{i:0;s:9:\"Read more\";i:1;s:8:\"Läs mer\";}i:2;a:2:{i:0;s:11:\"nav tagline\";i:1;s:46:\"Drift- och stödtjänster<br>för Linux-system\";}i:3;a:2:{i:0;s:19:\"Contact information\";i:1;s:216:\"Finlands Linux-stöd är en del av Seravo Oy | Rautatienkatu 21 B, 33100 Tampere | FO-nummer FI23920192<br><a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a> | <a href=\"tel:+358447770020\">044 777 0020</a>\";}i:4;a:2:{i:0;s:16:\"Linux trademarks\";i:1;s:158:\"Linux™ är ett registrerat varumärke av Linus Torvalds. Alla produktnamn som nämns är skyddade varumärken och vi är inte deras officiella representant.\";}i:5;a:2:{i:0;s:9:\"Linuxtuki\";i:1;s:10:\"Linux-tuki\";}i:6;a:2:{i:0;s:34:\"Linux asiantuntija palveluksessasi\";i:1;s:29:\"Linux-expert till din tjänst\";}i:7;a:2:{i:0;s:5:\"d.m.Y\";i:1;s:5:\"d.m.Y\";}i:8;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}i:9;a:2:{i:0;s:15:\"404 error title\";i:1;s:29:\"404 error: Page was not found\";}i:10;a:2:{i:0;s:17:\"404 error message\";i:1;s:98:\"We could not find the page you were looking for. Please use navigation to get in the correct page.\";}i:11;a:2:{i:0;s:10:\"Linux-tuki\";i:1;s:10:\"Linux-tuki\";}}');
INSERT INTO `wp_postmeta` VALUES (4,6,'_pll_strings_translations','a:12:{i:0;a:2:{i:0;s:28:\"Linux expert at your service\";i:1;s:28:\"Linux expert at your service\";}i:1;a:2:{i:0;s:9:\"Read more\";i:1;s:9:\"Read more\";}i:2;a:2:{i:0;s:11:\"nav tagline\";i:1;s:52:\"Linux systems<br>administration and support services\";}i:3;a:2:{i:0;s:19:\"Contact information\";i:1;s:210:\"Linux Support Finland is a part of Seravo Oy | Rautatienkatu 21 B, 33100 Tampere | VATID 23920192<br><a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a> | <a href=\"tel:+358447770020\">044 777 0020</a>\";}i:4;a:2:{i:0;s:16:\"Linux trademarks\";i:1;s:155:\"Linux™ is a registered trademark of Linus Torvalds. All product names mentioned are protected by trademarks and we are not their official representative.\";}i:5;a:2:{i:0;s:9:\"Linuxtuki\";i:1;s:10:\"Linux-tuki\";}i:6;a:2:{i:0;s:34:\"Linux asiantuntija palveluksessasi\";i:1;s:28:\"Linux expert at your service\";}i:7;a:2:{i:0;s:5:\"d.m.Y\";i:1;s:5:\"d.m.Y\";}i:8;a:2:{i:0;s:5:\"g:i a\";i:1;s:5:\"g:i a\";}i:9;a:2:{i:0;s:15:\"404 error title\";i:1;s:29:\"404 error: Page was not found\";}i:10;a:2:{i:0;s:17:\"404 error message\";i:1;s:98:\"We could not find the page you were looking for. Please use navigation to get in the correct page.\";}i:11;a:2:{i:0;s:10:\"Linux-tuki\";i:1;s:10:\"Linux-tuki\";}}');
INSERT INTO `wp_postmeta` VALUES (18,16,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (21,19,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (24,23,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (27,25,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (30,28,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (33,30,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (36,32,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (39,34,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (40,36,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,36,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,36,'_menu_item_object_id','23');
INSERT INTO `wp_postmeta` VALUES (43,36,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,36,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,36,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,36,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,36,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (49,37,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,37,'_menu_item_menu_item_parent','36');
INSERT INTO `wp_postmeta` VALUES (51,37,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (52,37,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,37,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,37,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,37,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,37,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,38,'_menu_item_menu_item_parent','36');
INSERT INTO `wp_postmeta` VALUES (60,38,'_menu_item_object_id','32');
INSERT INTO `wp_postmeta` VALUES (61,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (67,39,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,39,'_menu_item_menu_item_parent','36');
INSERT INTO `wp_postmeta` VALUES (69,39,'_menu_item_object_id','30');
INSERT INTO `wp_postmeta` VALUES (70,39,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,39,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,39,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,39,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,39,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (76,40,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (77,40,'_menu_item_menu_item_parent','36');
INSERT INTO `wp_postmeta` VALUES (78,40,'_menu_item_object_id','28');
INSERT INTO `wp_postmeta` VALUES (79,40,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (80,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (81,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (82,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (83,40,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (85,41,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (86,41,'_menu_item_menu_item_parent','36');
INSERT INTO `wp_postmeta` VALUES (87,41,'_menu_item_object_id','25');
INSERT INTO `wp_postmeta` VALUES (88,41,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (89,41,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (90,41,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (91,41,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (92,41,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (94,42,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (95,42,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,42,'_menu_item_object_id','16');
INSERT INTO `wp_postmeta` VALUES (97,42,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (98,42,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,42,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,42,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,42,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (103,43,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (104,43,'_menu_item_menu_item_parent','42');
INSERT INTO `wp_postmeta` VALUES (105,43,'_menu_item_object_id','19');
INSERT INTO `wp_postmeta` VALUES (106,43,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (107,43,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (108,43,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (109,43,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (110,43,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (112,44,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (113,44,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (114,44,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (115,44,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (116,44,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (117,44,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (118,44,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (119,44,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (121,45,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (122,45,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (123,45,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (124,45,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (125,45,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (126,45,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (127,45,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (128,45,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,8,'_wp_page_template','custom-templates/home-template.php');
INSERT INTO `wp_postmeta` VALUES (131,46,'_wp_attached_file','android.png');
INSERT INTO `wp_postmeta` VALUES (132,46,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:65;s:6:\"height\";i:60;s:4:\"file\";s:11:\"android.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (133,47,'_wp_attached_file','scientific.png');
INSERT INTO `wp_postmeta` VALUES (134,47,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:14:\"scientific.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (135,48,'_wp_attached_file','centos.png');
INSERT INTO `wp_postmeta` VALUES (136,48,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:64;s:6:\"height\";i:60;s:4:\"file\";s:10:\"centos.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (137,49,'_wp_attached_file','fedora.png');
INSERT INTO `wp_postmeta` VALUES (138,49,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:10:\"fedora.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (139,50,'_wp_attached_file','debian.png');
INSERT INTO `wp_postmeta` VALUES (140,50,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:49;s:6:\"height\";i:60;s:4:\"file\";s:10:\"debian.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (141,51,'_wp_attached_file','ubuntu.png');
INSERT INTO `wp_postmeta` VALUES (142,51,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:59;s:6:\"height\";i:60;s:4:\"file\";s:10:\"ubuntu.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (143,52,'_wp_attached_file','mint.png');
INSERT INTO `wp_postmeta` VALUES (144,52,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:60;s:6:\"height\";i:60;s:4:\"file\";s:8:\"mint.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (145,53,'_wp_attached_file','suse.png');
INSERT INTO `wp_postmeta` VALUES (146,53,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:90;s:6:\"height\";i:54;s:4:\"file\";s:8:\"suse.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (147,54,'_wp_attached_file','yritysasiakkaat.jpg');
INSERT INTO `wp_postmeta` VALUES (148,54,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:366;s:6:\"height\";i:255;s:4:\"file\";s:19:\"yritysasiakkaat.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"yritysasiakkaat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"yritysasiakkaat-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:27:\"yritysasiakkaat-350x250.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (149,55,'_wp_attached_file','henkiloasiakkaat.jpg');
INSERT INTO `wp_postmeta` VALUES (150,55,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:366;s:6:\"height\";i:255;s:4:\"file\";s:20:\"henkiloasiakkaat.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"henkiloasiakkaat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"henkiloasiakkaat-300x209.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:209;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:28:\"henkiloasiakkaat-350x250.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (151,8,'_linuxtuki_left_box_title','Henkilöasiakkaille');
INSERT INTO `wp_postmeta` VALUES (152,8,'_linuxtuki_left_box_image_id','55');
INSERT INTO `wp_postmeta` VALUES (153,8,'_linuxtuki_left_box_image','/wp-content/uploads/henkiloasiakkaat.jpg');
INSERT INTO `wp_postmeta` VALUES (154,8,'_linuxtuki_right_box_title','Yritys- ja yhteisöasiakkaille');
INSERT INTO `wp_postmeta` VALUES (155,8,'_linuxtuki_right_box_image_id','54');
INSERT INTO `wp_postmeta` VALUES (156,8,'_linuxtuki_right_box_image','/wp-content/uploads/yritysasiakkaat.jpg');
INSERT INTO `wp_postmeta` VALUES (157,8,'_linuxtuki_logos','a:8:{i:0;a:2:{s:13:\"logo_image_id\";i:53;s:10:\"logo_image\";s:28:\"/wp-content/uploads/suse.png\";}i:1;a:2:{s:13:\"logo_image_id\";i:52;s:10:\"logo_image\";s:28:\"/wp-content/uploads/mint.png\";}i:2;a:2:{s:13:\"logo_image_id\";i:51;s:10:\"logo_image\";s:30:\"/wp-content/uploads/ubuntu.png\";}i:3;a:2:{s:13:\"logo_image_id\";i:50;s:10:\"logo_image\";s:30:\"/wp-content/uploads/debian.png\";}i:4;a:2:{s:13:\"logo_image_id\";i:49;s:10:\"logo_image\";s:30:\"/wp-content/uploads/fedora.png\";}i:5;a:2:{s:13:\"logo_image_id\";i:48;s:10:\"logo_image\";s:30:\"/wp-content/uploads/centos.png\";}i:6;a:2:{s:13:\"logo_image_id\";i:47;s:10:\"logo_image\";s:34:\"/wp-content/uploads/scientific.png\";}i:7;a:2:{s:13:\"logo_image_id\";i:46;s:10:\"logo_image\";s:31:\"/wp-content/uploads/android.png\";}}');
INSERT INTO `wp_postmeta` VALUES (158,57,'_wp_attached_file','kuplat.jpg');
INSERT INTO `wp_postmeta` VALUES (159,57,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1417;s:6:\"height\";i:450;s:4:\"file\";s:10:\"kuplat.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"kuplat-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"kuplat-300x95.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:95;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"kuplat-768x244.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:244;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"kuplat-1024x325.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:325;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:19:\"kuplat-1000x400.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:18:\"kuplat-350x250.jpg\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (160,8,'_linuxtuki_left_box_link','/henkiloasiakkaat');
INSERT INTO `wp_postmeta` VALUES (161,8,'_linuxtuki_right_box_link','/yritys-ja-yhteisoasiakkaat');
INSERT INTO `wp_postmeta` VALUES (162,14,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (163,14,'_linuxtuki_downloads_title','Lataa linux-tuki.fi:n etäyhteysohjelma');
INSERT INTO `wp_postmeta` VALUES (164,14,'_linuxtuki_downloads_text','Valitse asennusohjelma Linux-jakeluversiosi mukaan.');
INSERT INTO `wp_postmeta` VALUES (165,14,'_linuxtuki_downloads','a:5:{i:0;a:2:{s:13:\"download_text\";s:26:\"Ubuntu 14.04+ ja Debian 8+\";s:12:\"download_url\";s:54:\"https://linux-tuki.local/repo/linux-tuki-etayhteys.deb\";}i:1;a:2:{s:13:\"download_text\";s:13:\"OpenSUSE 131+\";s:12:\"download_url\";s:63:\"https://linux-tuki.local/repo/linux-tuki-etayhteys-opensuse.rpm\";}i:2;a:2:{s:13:\"download_text\";s:8:\"SUSE 12+\";s:12:\"download_url\";s:81:\"http://software.opensuse.org/ymp/home:ottokek/SLE_11_SP2/linux-tuki-etayhteys.ymp\";}i:3;a:2:{s:13:\"download_text\";s:20:\"CentOS 6+ ja RHEL 6+\";s:12:\"download_url\";s:61:\"https://linux-tuki.local/repo/linux-tuki-etayhteys-redhat.rpm\";}i:4;a:2:{s:13:\"download_text\";s:10:\"Fedora 20+\";s:12:\"download_url\";s:61:\"https://linux-tuki.local/repo/linux-tuki-etayhteys-fedora.rpm\";}}');
INSERT INTO `wp_postmeta` VALUES (168,69,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (169,69,'_oembed_2a08b50d523a649d97a7600f2babd9f4','<iframe width=\"640\" height=\"360\" src=\"https://www.youtube.com/embed/yVpbFMhOAwE?feature=oembed\" frameborder=\"0\" allowfullscreen></iframe>');
INSERT INTO `wp_postmeta` VALUES (170,69,'_oembed_time_2a08b50d523a649d97a7600f2babd9f4','1507716568');
INSERT INTO `wp_postmeta` VALUES (171,72,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (172,72,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (173,72,'_menu_item_object_id','69');
INSERT INTO `wp_postmeta` VALUES (174,72,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (175,72,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (176,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (177,72,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (178,72,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (182,78,'_wp_attached_file','etayhteys2.png');
INSERT INTO `wp_postmeta` VALUES (183,78,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:14:\"etayhteys2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"etayhteys2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"etayhteys2-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"etayhteys2-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"etayhteys2-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:23:\"etayhteys2-1000x400.png\";s:5:\"width\";i:1000;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:22:\"etayhteys2-350x250.png\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (184,79,'_wp_attached_file','etayhteys1.png');
INSERT INTO `wp_postmeta` VALUES (185,79,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:14:\"etayhteys1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"etayhteys1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"etayhteys1-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"etayhteys1-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"etayhteys1-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:23:\"etayhteys1-1000x400.png\";s:5:\"width\";i:1000;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:22:\"etayhteys1-350x250.png\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (186,82,'_wp_attached_file','etayhteys3.png');
INSERT INTO `wp_postmeta` VALUES (187,82,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:768;s:4:\"file\";s:14:\"etayhteys3.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"etayhteys3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"etayhteys3-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"etayhteys3-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"etayhteys3-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"hero_image\";a:4:{s:4:\"file\";s:23:\"etayhteys3-1000x400.png\";s:5:\"width\";i:1000;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"liftup_image\";a:4:{s:4:\"file\";s:22:\"etayhteys3-350x250.png\";s:5:\"width\";i:350;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (188,12,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (189,10,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (190,88,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (191,88,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (192,88,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (193,88,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (194,88,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (195,88,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (196,88,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (197,88,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (199,89,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (200,89,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (201,89,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (202,89,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (203,89,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (204,89,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (205,89,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (206,89,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (209,104,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (212,107,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (215,110,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (221,114,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (226,116,'_wp_old_slug','kuvankaappauksen-ottaminen');
INSERT INTO `wp_postmeta` VALUES (229,118,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (235,124,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (238,126,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (241,128,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (250,137,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (251,116,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (252,116,'_wp_trash_meta_time','1508273481');
INSERT INTO `wp_postmeta` VALUES (253,116,'_wp_desired_post_slug','ohje-kuvankaappaus');
INSERT INTO `wp_postmeta` VALUES (256,139,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (257,112,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (258,112,'_wp_trash_meta_time','1508273521');
INSERT INTO `wp_postmeta` VALUES (259,112,'_wp_desired_post_slug','kotikoneen-tietoturva');
INSERT INTO `wp_postmeta` VALUES (261,134,'_wp_old_slug','kommentteja-tietoviikon-artikkeliin-linux-on-turvallinen-ja-muita-myytteja');
INSERT INTO `wp_postmeta` VALUES (266,142,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (269,144,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (273,148,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (4,1,'2017-10-08 13:51:40','2017-10-08 10:51:40','','polylang_mo_2','','private','closed','closed','','polylang_mo_2','','','2017-10-08 13:51:40','2017-10-08 10:51:40','',0,'https://linux-tuki.fi/?post_type=polylang_mo&p=4',0,'polylang_mo','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2017-10-08 13:51:54','2017-10-08 10:51:54','','polylang_mo_5','','private','closed','closed','','polylang_mo_5','','','2017-10-08 13:51:54','2017-10-08 10:51:54','',0,'https://linux-tuki.fi/?post_type=polylang_mo&p=5',0,'polylang_mo','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2017-10-08 13:52:26','2017-10-08 10:52:26','','polylang_mo_9','','private','closed','closed','','polylang_mo_9','','','2017-10-08 13:52:26','2017-10-08 10:52:26','',0,'https://linux-tuki.fi/?post_type=polylang_mo&p=6',0,'polylang_mo','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2017-10-08 14:09:21','2017-10-08 11:09:21','','Etusivu','','publish','closed','closed','','etusivu','','','2017-10-11 20:02:38','2017-10-11 17:02:38','',0,'https://linux-tuki.fi/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2017-10-08 14:09:33','2017-10-08 11:09:33','<h2>Finlands Linux-stöd</h2>\r\nLinux-tuki.fi har fungerat sedan år 2005 och ägs av <a href=\"http://seravo.fi/\">Seravo Oy</a>. Vi erbjuder vår Linux-expertis till både privatpersoner och företagskunder. I vår personal ingår personer som är nämda i Linuxs credits-fil sedan 1992 och våra mest välkända kunder är bl.a. Helsingfors Universitet, Finska utbildningstyrelsen, Finska justitieförvaltningens datateknikcentral samt Finska arbetshälsoinstitutet.\r\n\r\nDu kan kontakta oss på svenska via:\r\n<ul>\r\n 	<li>email: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a></li>\r\n 	<li>telefon: <a href=\"tel:+358447770020\">044 777 0020</a></li>\r\n</ul>','Framsida','','publish','closed','closed','','fram-sida','','','2017-10-18 00:03:57','2017-10-17 21:03:57','',0,'https://linux-tuki.fi/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2017-10-08 14:09:40','2017-10-08 11:09:40','<h2>Linux Support Finland</h2>\r\n<strong>So you\'re running Linux. Do you have a Finn on board?</strong>\r\n\r\nLinux-tuki.fi has operated since 2005 and is owned by <a href=\"http://seravo.fi/\">Seravo Oy</a>. We offer our Linux know-how to both private individuals and corporate customers. A member of our staff has been mentioned in the Linux credits file since 1992. Among our most well known customers are the University of Helsinki, The Finnish Board of Education, The Ministry of Justice and the Finnish institute of occupational health.\r\n\r\nYou may contact us in English by:\r\n<ul>\r\n 	<li>email: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a></li>\r\n 	<li>phone: <a href=\"tel:+358447770020\">+358 44 777 0020</a></li>\r\n</ul>','Front page','','publish','closed','closed','','front-page','','','2017-10-11 20:02:39','2017-10-11 17:02:39','',0,'https://linux-tuki.fi/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2017-10-08 14:15:01','2017-10-08 11:15:01','<h2>Tukea nopeasti etäyhteydellä</h2>\r\nJotta tukipalvelumme käyttö olisi mahdollisimman helppoa, olemme tehneet helposti asennettavan <a href=\"https://linux-tuki.local/repo/linux-tuki-etayhteys.deb\">etäyhteysohjelman</a>, jolla asiakas voi avata turvallisen ja varmatoimisen etäyhteyden tukihenkilöä varten.\r\n\r\nEtäyhteysohjelman avulla tukihenkilö voi tehdä tarvittavat toimenpiteet verkon yli siirtymättä asiakkaan luokse. Sen käyttö on myös turvallista, sillä asiakas näkee näytöltä jatkuvasti mitä tukihenkilö tekee hänen koneellaan.\r\n\r\n<strong>HUOM! Etäyhteyden avaamisesta ilman sovittua etäyhteysaikaa ei ole hyötyä. Avaa etäyhteys vasta kun tukihenkilö on valmiina auttamaan sinua ja pyytää etäyhteyden avausta.</strong>\r\n<h2>Asentaminen</h2>\r\nEtäyhteysohjelma kaikissa yleisesti käytössä olevissa Linux-jakeluissa. Asennusohjelma kertoo kun asennus onnistui. Etäyhteys ei aukea automaattisesti, vaan ohjelma täytyy käynnistää valitsemalla valikosta <code>Sovellukset &gt; Internet &gt; Linux-tuki.fi-etäyhteys</code> tai hakusanalla <code>etäyhteys</code>.\r\n\r\nMikäli Ubuntu antaa virheilmoituksen riippuvuuden <em>x11vnc</em> puuttumisesta, pitää <a href=\"apt:x11vnc?section=universe\">universe-lähde aktivoida</a>.\r\n\r\nMikäli RHEL/CentOS antaa virheilmoituksen riippuvuuden <em>x11vnc</em> puuttumisesta, pitää <a href=\"http://repoforge.org/use/\">RepoForge</a> asentaa ensin.\r\n<h2>Linux-tuki.fi:n etäyhteysohjelman etuja</h2>\r\n<ul>\r\n 	<li>erittäin helppokäyttöinen</li>\r\n 	<li>käyttäjän ei tarvitse välittää IP-osoitteista tai palomuureista</li>\r\n 	<li>etäyhteys on salattu päästä päähän</li>\r\n 	<li>asiakas näkee ruudullaan jatkuvasti mitä tukihenkilö tekee</li>\r\n 	<li>asiakkaan ei tarvitse kertoa mitään salasanoja tukihenkilölle, koska asiakas voi itse syöttää ne omalle koneelleen suoraan</li>\r\n 	<li>etäyhteysohjelman sulkeminen katkaisee etäyhteyden varmuudella, mitään etäyhteyspalveluja ei voi jäädä vahingossa auki</li>\r\n 	<li>ohjelma on avointa lähdekoodia, sen toiminta on läpinäkyvää</li>\r\n 	<li><strong>Etäyhteyttä hyödyntämällä voi säästää paitsi matkakustannuksia myös huomattavasti aikaa: vika voidaan selvittää ja hoitaa yhdellä puhelinsoitolla ja muutaman minuutin etäyhteydellä.</strong></li>\r\n</ul>\r\n<h3>Esimerkki: Etäyhteysohjelma Ubuntu 12.04-versioissa</h3>\r\n<a href=\"/wp-content/uploads/etayhteys1.png\"><img class=\"alignnone size-full wp-image-79\" src=\"/wp-content/uploads/etayhteys1.png\" alt=\"\" width=\"1024\" height=\"768\" /></a>\r\n\r\n<a href=\"/wp-content/uploads/etayhteys2.png\"><img class=\"alignnone size-full wp-image-78\" src=\"/wp-content/uploads/etayhteys2.png\" alt=\"\" width=\"1024\" height=\"768\" /></a>\r\n\r\n<a href=\"/wp-content/uploads/etayhteys2.png\"><img class=\"alignnone size-full wp-image-78\" src=\"/wp-content/uploads/etayhteys2.png\" alt=\"\" width=\"1024\" height=\"768\" /></a>\r\n<h2>Vaihtoehtoinen etäyhteys Gnome-työympäristössä</h2>\r\nJos Linux-tuki.fi:n oma etäyhteysohjelma ei toimi Linux-jakelussasi, kokeile Gnomen omaa etäyhteysohjelmaa. Avaa etäyhteys valitsemalla yläpalkista <code>Järjestelmä › Asetukset › Etätyöpöytä</code> ja avautuvasta ikkunasta valitse kohta <code>Salli muiden käyttäjien hallita työpöytääsi</code>. Ilmoita tukihenkilölle tietokoneesi IP-osoite (88.193.162.54).\r\n<h2>Vaihtoehtoinen etäyhteys KDE-työympäristössä</h2>\r\nAvaa etäyhteys valitsemalla alapalkista <code>K › Internet › Krfb (työpöydän jako)</code>. Valitse ohjelmasta <code>Luo henkilökohtainen pyyntö</code>. Voimme avata yhteyden, kun kerrot meille koneesi IP-osoitteen (88.193.162.54) ja salasanan. Yhteyden ollessa auki näet koko ajan mitä tukihenkilö tekee koneellasi. Molemmilla käyttäjillä on yhtäaikainen hallinta hiirestä ja näppäimistöstä.\r\n\r\nKrfb:n kaikki versiot eivät tue salattua yhteyttä, joten tarkista asia ennen kun käsittelet luottamuksellista tietoa yhteyden kautta!\r\n<h2>Vaihtoehtoinen etäyhteys SSH:lla</h2>\r\nPelkästään tekstikonsolitilassa toimivan etäyhteyden saa aikaan <abbr title=\"Secure SHell\">SSH</abbr>:lla. Esimerkiksi Ubuntussa SSH-palvelimen saa asennettua komennolla <code>sudo apt-get install ssh openssh-server</code>. Ilmoita tukihenkilölle koneesi IP-osoite sekä käyttäjätunnus ja salasana.','Etäyhteys','','publish','closed','closed','','etayhteys','','','2017-10-17 20:31:06','2017-10-17 17:31:06','',0,'https://linux-tuki.fi/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2017-10-09 20:17:48','2017-10-09 17:17:48','<h2>Linux kodissasi</h2>\r\nTahtoisitko ottaa Linuxin tai jonkun avoimen lähdekoodin ohjelman käyttöön, mutta tarvitset siihen apua?\r\n\r\nTarjoamme kotikäyttäjille samoja korkeatasoisia tukipalveluita Linuxiin sekä muihin vapaisiin ja avoimen lähdekoodin ohjelmiin liittyen kuin yrityksillekin:\r\n<ul>\r\n 	<li>Linuxin tai yksittäisten ohjelmien asentaminen ja käytön opastus</li>\r\n 	<li>Yhteistoiminta Windows- ja Mac-ympäristöjen kanssa</li>\r\n 	<li>Tulostimien, skannereiden ja muiden oheislaitteiden asennus</li>\r\n 	<li>Takkuilevien nettiyhteyksien selvittäminen</li>\r\n 	<li>Avustamme laite- ja ohjelmistohankinnoissa</li>\r\n 	<li>Varmistamme tietoturvan</li>\r\n</ul>\r\nAsiantuntemuksemme kattaa käytännössä kaikki Linux-jakelut (esim. Ubuntu, Debian, SuSE, Red Hat, MeeGo, Android) ja yleisimmät avoimen lähdekoodin ohjelmat (esim. Firefox, Thunderbird, LibreOffice, VLC ja Gimp).\r\n<h2>Hinnastomme</h2>\r\n<dl>\r\n 	<dt>Kotikäynti 95 € / tunti</dt>\r\n 	<dd>Minimiveloitus kaksi tuntia.</dd>\r\n 	<dt>Etätuki 50 € / ½ tuntia</dt>\r\n 	<dd>Helpointa asiakkaalle: avaa <a href=\"https://linux-tuki.local/etayhteys/\">etäyhteys</a> ja näytä meille mikä on vikana. Näet ruudultasi, kuinka korjaamme ongelmasi. Minimiveloitus vain puoli tuntia.</dd>\r\n</dl>\r\nHinnat sisältävät arvonlisäveron 24 %.\r\n\r\n<em>Muista <a href=\"https://linux-tuki.local/henkiloasiakkaille/kotitalousvahennys/\">kotitalousvähennysoikeus</a>!</em>\r\n<h2>Ota yhteyttä!</h2>\r\nAnna asiantuntijan auttaa sinua ja ota yhteyttä\r\n<ul>\r\n 	<li>sähköpostitse: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a></li>\r\n 	<li>puhelimitse: <a href=\"tel:+358447770020\">044 777 0020</a></li>\r\n</ul>\r\nPyydämme yhteydenottoa ensisijaisesti sähköpostitse. Puhelimitse emme useimmiten voi auttaa heti, vaan teemme ajanvarauksen etäyhteyttä varten.\r\n\r\nMuista sähköpostiviestissäsi kertoa laskutustietosi, eli nimesi ja osoitteesi.','Henkilöasiakkaat','','publish','closed','closed','','henkiloasiakkaat','','','2017-10-12 09:25:53','2017-10-12 06:25:53','',0,'https://linux-tuki.fi/?page_id=16',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2017-10-09 20:20:28','2017-10-09 17:20:28','<h2>Kotitalousvähennys</h2>\r\nVuodesta 2009 alkaen kotitalousvähennyksen soveltamisala on laajennettu tieto- ja viestintätekniikkaan liittyvien laitteiden asennus-, kunnossapito- ja opastustyöhön, joita Linux-tukipalvelut myös ovat.\r\n\r\nLinux-tukipalvelun käyttö on näin ollen huomattavasti houkuttelevampaa kotitaloudelle, koska henkilöasiakas voi vähentää jopa 60% tukipalvelumaksuista verotuksessaan.\r\n\r\nAnnamme kaikille asiakkaillemme esitäytetyn kotitalousvähennyslomakkeen, jotta vähennyksen hakeminen vuotuisen veroilmoituksen yhteydessä olisi mahdollisimman helppoa. Tukihenkilömme antavat myös tarvittaessa lisätietoa kotitalousvähennyksestä.\r\n<h2>Kotitalousvähennyksen ehdot</h2>\r\n<em>Lähteenä käytetty <a href=\"http://www.vero.fi/\">Verohallinnon verkkosivuja</a>.</em>\r\n\r\nVerovelvollinen saa vähentää ennakkoperintärekisteriin merkitylle yritykselle maksamastaan arvonlisäverollisesta työkorvauksesta 60% aina 3000 euroon asti per vuosi. Verottaja vähentää summasta 100 euron omavastuuosuuden.\r\n\r\nVähennykseen oikeuttaa työ, joka tehdään vähennystä vaativan verovelvollisen tai hänen laissa mainittujen sukulaisten käyttämässä asunnossa tai vapaa-ajan asunnossa. Muualla tehty työ ei oikeuta vähennykseen.\r\n\r\nKotitalousvähennyksen saa vain teetetyn työn osuudesta. Vähennystä ei saa työhön liittyvistä matkakuluista tai tarvikkeista.\r\n\r\nKotitalousvähennys tehdään ensisijaisesti valtion tuloverosta. Vähennys tehdään ansiotuloista ja pääomatuloista suoritettavista veroista verojen määrien suhteessa. Ansiotuloista menevästä verosta vähennys tehdään muiden vähennysten jälkeen ennen alijäämähyvitystä. Siltä osin kuin vähennys ylittää valtion tuloveron määrän, ylittävä osa vähennetään kunnallisverosta, vakuutetun sairausvakuutuksen sairaanhoitomaksusta ja kirkollisverosta näiden verojen suhteessa. Sairausvakuutuksen päivärahamaksusta vähennystä ei voi tehdä.','Kotitalousvähennys','','publish','closed','closed','','kotitalousvahennys','','','2017-10-11 20:02:39','2017-10-11 17:02:39','',16,'https://linux-tuki.fi/?page_id=19',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2017-10-09 20:23:16','2017-10-09 17:23:16','<h2>Suomalaiset Linux-osaajat palveluksessasi</h2>\r\nTarjoamme tuki- ja asiantuntijapalveluita kaikenkokoisille yrityksille ja organisaatioille, jotka käyttävät Linux-pohjaisia järjestelmiä tai muita avoimen lähdekoodin ohjelmistoja.\r\n\r\nOta yhteyttä, niin kerromme miten voimme auttaa juuri Teitä!\r\n<ul>\r\n 	<li>Sähköposti: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a></li>\r\n 	<li>Puhelin: <a href=\"tel:+358447770020\">044 777 0020</a></li>\r\n</ul>\r\n<h2>Asiantuntemuksemme</h2>\r\nMonipuolisen henkilöstön ja laajan kumppaniverkoston avulla pystymme tekemään lähes mitä tahansa Linuxiin liittyvää:\r\n<ul>\r\n 	<li>avoimen lähdekoodin ohjelmistojen asennus, ylläpito ja kehitys</li>\r\n 	<li>räätälöidyt työasemaympäristöt, nettikioskit ja multimediakeskukset</li>\r\n 	<li>informaationäyttöjärjestelmät, älykortit ja muut sulautetut järjestelmät</li>\r\n 	<li>Linux-laiteajuriohjelmointi</li>\r\n 	<li>laajat verkkopalvelut ja julkaisujärjestelmät</li>\r\n 	<li>tietokannat ja tiedostojärjestelmät</li>\r\n 	<li>klusterit ja kuormanjakojärjestelmät</li>\r\n 	<li>renderöintifarmit sekä videon-, kuvan- ja äänenkäsittelyjärjestelmät</li>\r\n 	<li>integraatio Windows- tai Mac-ympäristöihin sekä migraatiot Linuxiin</li>\r\n 	<li>konsultointi laitehankinnoissa ja järjestelmäkilpailutuksissa</li>\r\n 	<li>asiakkaiden tarpeiden kartoitus ja ohjelmistovalinnat</li>\r\n 	<li>laatu- ja tietoturva-auditoinnit</li>\r\n 	<li>käyttöoppaiden kirjoittaminen, ohjelmien lokalisointi ja käyttäjäkoulutukset</li>\r\n</ul>\r\nAsiakkaamme voivat luottaa siihen, että varmistamme avoimen lähdekoodin käytöstä tulevat edut, sekä lyhyellä että pitkällä aikavälillä.\r\n\r\nPitkän tähtäimen etua lisää aktiivinen osallistumisemme avoimen lähdekoodin kehittäjäyhteisöihin. Henkilöstöämme on mainittu muun muassa Linuxin credits-tiedostossa vuodesta 1992 lähtien.\r\n<h2>Asiakkaitamme</h2>\r\nSuomen Linux-tuki on toiminut vuodesta 2005 ja palvelua ovat käyttäneet sadat asiakkaat, joista tunnetuimpia ovat:\r\n<ul>\r\n 	<li>Helsingin yliopisto</li>\r\n 	<li>Oikeushallinnon tietotekniikkakeskus</li>\r\n 	<li>Opetushallitus</li>\r\n 	<li>Työterveyslaitos</li>\r\n 	<li>Pohjola-Norden ry</li>\r\n 	<li>YLE</li>\r\n</ul>\r\n<h2>Seravo Oy</h2>\r\nVuodesta 2011 alkaen Suomen Linux-tuki on ollut osa <a href=\"https://seravo.fi/\">Seravo Oy:tä</a>, joka on ohjelmointiin ja ohjelmistokonsultointiin erikoistunut yhtiö. Ota Linux-asioissa yhteyttä suoraan Linux-tukipalveluumme:\r\n<ul>\r\n 	<li>sähköpostitse: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a></li>\r\n 	<li>puhelimitse: <a href=\"tel:+358447770020\">044 777 0020</a></li>\r\n</ul>','Yritys- ja yhteisöasiakkaat','','publish','closed','closed','','yritysasiakkaat','','','2017-10-18 00:10:04','2017-10-17 21:10:04','',0,'https://linux-tuki.fi/?page_id=23',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2017-10-09 20:26:10','2017-10-09 17:26:10','<h2>Ota avoin koodi käyttöön</h2>\r\nNykyisin Linuxin ja avoimen lähdekoodin periaatteet ovat yleisesti tunnettuja. Avoimessa lähdekoodissa on paljon potentiaalia. Autamme asiakkaitamme ottamaan tämän potentiaalin käyttöön.\r\n\r\nLinuxia käytetään nykyisin mitä erilaisimmissa laitteissa ja käyttötarkoituksissa. Linux toimii älypuhelimessa ja supertietokoneessa, sillä voi ajaa palvelinohjelmia tai toimistosovellutuksia. Avoin Linux on myös kustannustehokas ja turvallinen vaihtoehto.\r\n\r\nMeidän asiantuntemuksemme avulla Linuxin käyttöönotto sujuu sulavasti. Saatte hyödynnettyä kaiken potentiaalin sekä kustannussäästöissä että toiminnan tehostamisessa.\r\n\r\nKonsulttimme kartoittavat nykytilanteenne, suunnittelevat kokonaisarkkitehtuurin, avustavat hankinnoissa ja kilpailutuksissa sekä varmistavat, että käyttöönotto lopulta tuottaa parhaan mahdollisen hyödyn.\r\n\r\n<a href=\"https://linux-tuki.local/yritys-ja-yhteisoasiakkaat/yhteystiedot/\">Ota yhteyttä</a>, niin kerromme lisää.','Käyttöönotto','','publish','closed','closed','','kayttoonotto','','','2017-10-12 09:27:11','2017-10-12 06:27:11','',23,'https://linux-tuki.fi/?page_id=25',0,'page','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2017-10-09 20:27:40','2017-10-09 17:27:40','<h2>Ohjelma asiakkaan tarpeiden mukaan</h2>\r\nLinuxin ja muiden avoimen lähdekoodin ohjelmistojen suurin etu on mahdollisuus räätälöidä niitä asiakkaan tarpeisiin sopivaksi. Ohjelma sopeutetaan asiakkaan tarpeisiin eikä asiakasta tietokoneohjelmaan.\r\n\r\nOhjelmointiosaamisemme ja teknologiakentän tuntemuksemme avulla pystymme toteuttamaan ohjelmistoprojektien kaikki vaiheet suunnittelusta käyttöönottoon.\r\n\r\nOlemme aktiivisia erilaisissa avoimen lähdekoodin kehitysyhteisöissä, joten pystymme myös tehokkaasti järjestämään asiakkaan ohjelmistokehityksen ympärille yhteistyötä. Tämä yhteistyö merkitsee myös jatkuvuutta ohjelmistokehityksessä asiakkaan hyödyksi.\r\n\r\nOhjelmien käytön helpottamiseksi tarjoamme myös ohjelmistojen kotoistamista suomeksi sekä selkeiden käyttöoppaiden kirjoittamista asiakasorganisaatioiden tarpeisiin.\r\n\r\n<a href=\"https://linux-tuki.local/yritys-ja-yhteisoasiakkaat/yhteystiedot/\">Ota yhteyttä</a> niin kerromme lisää.','Kehitys','','publish','closed','closed','','kehitys','','','2017-10-12 09:27:39','2017-10-12 06:27:39','',23,'https://linux-tuki.fi/?page_id=28',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2017-10-09 20:28:23','2017-10-09 17:28:23','<h2>Koulutus helpottaa käyttöä</h2>\r\nOlemme järjestäneet lukuisia Linuxia ja avoimen lähdekoodin ohjelmia käsitteleviä koulutuksia niin peruskäyttäjille, ylläpitäjille, IT-opettajille kuin tietoturvatutkijoillekin. Koulutuksessa voidaan käsitellä tietyn ohjelman peruskäyttöä tai syvällisempää kokonaisuutta. Kurssit voidaan järjestää joko meidän tai asiakkaan tiloissa.\r\n\r\nJärjestämme koulutukset yhteistyössä <a href=\"http://opentrainers.fi/\">Open Trainers Oy:n</a> kanssa.\r\n<h2>Esimerkkejä pitämistämme koulutuksista</h2>\r\n<ul>\r\n 	<li>8 x 2h: Linux-peruskurssi Windows-käyttäjille</li>\r\n 	<li>1 päivä: Linux-työasemien liittäminen Windows-verkkoon (AD-integraatio)</li>\r\n 	<li>1 päivä: Linux-webpalvelimen asennus (ns. LAMP-kurssi)</li>\r\n 	<li>1 päivä: Linux Terminal Server -ympäristön pystytys (ns. LTSP-kurssi)</li>\r\n 	<li>1 päivä: Linuxin salausjärjestelmät</li>\r\n</ul>\r\nKoulutuksiin sisältyy myös oppimateriaalit (asennuslevyt ja ohjeet).\r\n\r\n<a href=\"https://linux-tuki.local/yhteystiedot\">Ota yhteyttä</a> ja kysy organisaatiosi tarpeiden mukaista koulutusta.\r\n<h1>Oppaat käyttäjän tueksi</h1>\r\nOlemme myös tehneet erilaisia Linuxiin ja avoimeen lähdekoodiin liittyviä käyttöoppaita, joista voidaan tehdä uusia versioita organisaationne tarpeisiin. Voimme myös kirjoittaa tarpeitanne ja toimintatapojanne vastaavan uuden käyttöoppaan.\r\n\r\nTekemiämme julkisia oppaita löytyy mm. <a href=\"http://fi.flossmanuals.net/\">Suomen FLOSSManuals</a> ja <a href=\"http://linux.fi/wiki/\">Linux.fi</a> -sivustoilta.\r\n\r\n<a href=\"https://linux-tuki.local/yritys-ja-yhteisoasiakkaat/yhteystiedot/\">Ota yhteyttä</a>, niin kerromme lisää.','Koulutus','','publish','closed','closed','','koulutus','','','2017-10-12 09:28:27','2017-10-12 06:28:27','',23,'https://linux-tuki.fi/?page_id=30',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2017-10-09 20:33:00','2017-10-09 17:33:00','<h2>Hinnat (ALV 0 %)</h2>\r\n<strong>Asiantuntijapalvelu 95 €/h</strong>\r\n<ul>\r\n 	<li>Tukipalvelut sähköpostitse, etäyhteydellä tai asiakkaan luona. Asennukset, vianselvitys, ylläpito ja ohjelmointityöt.</li>\r\n</ul>\r\n<strong>Erityisasiantuntijapalvelu 140 €/h</strong>\r\n<ul>\r\n 	<li>Konsultointi, suunnittelu, vaativat vianselvitykset ja erityiset ohjelmointityöt. Erityisasiantuntijoillamme on yli 10 vuoden kokemus vaativista Linux-ympäristöistä ja ohjelmistoihin (\"upstream\") tehtyjä korjauksia jotka ovat maailmanlaajuisessa käytössä.</li>\r\n</ul>\r\nKoulutukset ja auditoinnit hinnoitellaan tapauskohtaisesti.\r\n\r\nHintoihin lisätään arvonlisävero 24 %. Veloitus lasketaan jokaisen alkavan tunnin mukaan.\r\n<h2>Kiiretyölisä</h2>\r\nTavanomaisesti palvelemme asiakasta 1-2 päivän sisällä tilauksesta. Jos asiakas haluaa, että kiireellisen ongelman selvittäminen aloitetaan heti tai viimeistään neljän tunnin (4h) sisällä yhteydenotosta, tarjoamme sitä 50 % lisämaksusta. Jos kiireellinen työ tapahtuu yöaikaan (klo 21-07), viikonloppuna tai muuna pyhäpäivänä, lisätään normaaliin tuntihintaan 100 %:n kiiretyömaksu.\r\n<h2>Sopimusasiakkaat</h2>\r\nTarjoamme myös ylläpitosopimuksia, joissa voi olla muita erikseen sovittuja vasteaikoja ja hintoja.\r\n\r\nTukipalvelua kannattaa hankkia sopimuspohjaisesti mikäli olettaa tarvitsevansa jatkuvasti Linux-tukea.\r\n\r\nJokaiselle sopimusasiakkaalle nimetään oma Linux-asiantuntija vastuuhenkilöksi. Hän perehtyy asiakkaan järjestelmiin ja tarpeisiin, mikä takaa että asiakas saa ongelmatilanteissa apua nopeasti ja helposti.\r\n\r\n<a href=\"https://linux-tuki.local/yritys-ja-yhteisoasiakkaat/yhteystiedot/\">Ota yhteyttä!</a>','Hinnasto','','publish','closed','closed','','hinnasto','','','2017-10-17 23:30:49','2017-10-17 20:30:49','',23,'https://linux-tuki.fi/?page_id=32',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2017-10-09 21:27:43','2017-10-09 18:27:43','<h2>Yhteystiedot</h2>\r\n<strong>Sähköposti</strong>\r\nlinux-tuki@seravo.fi\r\n\r\n<strong>Puhelin</strong>\r\n044 777 0020\r\n\r\n<strong>Osoite</strong>\r\nSeravo Oy\r\nRautatienkatu 21 B\r\n33100 Tampere\r\n\r\n<strong>Y-tunnus</strong>\r\n2392019-2','Yhteystiedot','','publish','closed','closed','','yhteystiedot','','','2017-10-11 20:02:39','2017-10-11 17:02:39','',23,'https://linux-tuki.fi/?page_id=34',0,'page','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','36','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',0,'https://linux-tuki.fi/?p=36',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','37','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',23,'https://linux-tuki.fi/?p=37',11,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','38','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',23,'https://linux-tuki.fi/?p=38',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','39','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',23,'https://linux-tuki.fi/?p=39',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','40','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',23,'https://linux-tuki.fi/?p=40',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','41','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',23,'https://linux-tuki.fi/?p=41',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','42','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',0,'https://linux-tuki.fi/?p=42',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','43','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',16,'https://linux-tuki.fi/?p=43',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','44','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',0,'https://linux-tuki.fi/?p=44',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2017-10-09 21:29:14','2017-10-09 18:29:14',' ','','','publish','closed','closed','','45','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',0,'https://linux-tuki.fi/?p=45',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2017-10-10 18:56:29','2017-10-10 15:56:29','','android','','inherit','closed','closed','','android','','','2017-10-10 18:56:29','2017-10-10 15:56:29','',0,'/wp-content/uploads/android.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (47,1,'2017-10-10 18:56:30','2017-10-10 15:56:30','','scientific','','inherit','closed','closed','','scientific','','','2017-10-10 18:56:30','2017-10-10 15:56:30','',0,'/wp-content/uploads/scientific.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (48,1,'2017-10-10 18:56:31','2017-10-10 15:56:31','','centos','','inherit','closed','closed','','centos','','','2017-10-10 18:56:31','2017-10-10 15:56:31','',0,'/wp-content/uploads/centos.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (49,1,'2017-10-10 18:56:31','2017-10-10 15:56:31','','fedora','','inherit','closed','closed','','fedora','','','2017-10-10 18:56:31','2017-10-10 15:56:31','',0,'/wp-content/uploads/fedora.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (50,1,'2017-10-10 18:56:32','2017-10-10 15:56:32','','debian','','inherit','closed','closed','','debian','','','2017-10-10 18:56:32','2017-10-10 15:56:32','',0,'/wp-content/uploads/debian.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (51,1,'2017-10-10 18:56:32','2017-10-10 15:56:32','','ubuntu','','inherit','closed','closed','','ubuntu','','','2017-10-10 18:56:32','2017-10-10 15:56:32','',0,'/wp-content/uploads/ubuntu.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (52,1,'2017-10-10 18:56:33','2017-10-10 15:56:33','','mint','','inherit','closed','closed','','mint','','','2017-10-10 18:56:33','2017-10-10 15:56:33','',0,'/wp-content/uploads/mint.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (53,1,'2017-10-10 18:56:33','2017-10-10 15:56:33','','suse','','inherit','closed','closed','','suse','','','2017-10-10 18:56:33','2017-10-10 15:56:33','',0,'/wp-content/uploads/suse.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (54,1,'2017-10-10 18:57:53','2017-10-10 15:57:53','','yritysasiakkaat','','inherit','closed','closed','','yritysasiakkaat','','','2017-10-10 18:57:53','2017-10-10 15:57:53','',8,'/wp-content/uploads/yritysasiakkaat.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (55,1,'2017-10-10 18:57:53','2017-10-10 15:57:53','','henkiloasiakkaat','','inherit','closed','closed','','henkiloasiakkaat-2','','','2017-10-10 18:57:53','2017-10-10 15:57:53','',8,'/wp-content/uploads/henkiloasiakkaat.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (57,1,'2017-10-10 19:04:50','2017-10-10 16:04:50','','kuplat','','inherit','closed','closed','','kuplat','','','2017-10-10 19:04:50','2017-10-10 16:04:50','',0,'/wp-content/uploads/kuplat.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (69,1,'2017-10-11 13:08:58','2017-10-11 10:08:58','<h1>Miksi Linux ja avoin lähdekoodi?</h1>\r\nMaailmassa on 200 000 vapaata ja avoimen lähdekoodin ohjelmistoa (VALO). Kaikissa toimituksissamme <strong>autamme asiakkaitamme hyödyntämään tätä maailman suurinta innovaatioalustaa</strong>. Valmiiden, julkisesti testattujen ja auditoitujen komponenttien hyödyntämisen takia pystymme tarjoamaan laadukkaita tietojärjestelmiä nopeilla toimitusajoilla ja pienillä kokonaiskustannuksilla.\r\n<h3>Miten VALO toimii?</h3>\r\nOheinen video Linuxin kehityksestä kuvaa miten vapaiden ja avoimen lähdekoodin ohjelmistoja kehitetään.\r\n\r\n[rve src=\"https://www.youtube.com/embed/yVpbFMhOAwE\" ratio=\"4by3\"]\r\n<h3>Miksi valita VALO?</h3>\r\nKoska avoimia ohjelmia on olemassa satoja tuhansia, on syitä yksittäisten ohjelmien käyttöön myös lukuisia. Vertailtaessa kahta ohjelmaa, joista toinen on avoin ja toinen suljettu, päädytään avoimen valintaan yleensä seuraavista syistä:\r\n<ul>\r\n 	<li><strong>Ei lisenssimaksuja</strong>, koska avoimia ohjelmia saa kopioida ja levittää ilmaiseksi.</li>\r\n 	<li><strong>Edullisemmat kokonaiskustannukset</strong>, sillä millään yrityksellä ei ole yksinoikeutta myydä tukipalveluita jollekin ohjelmalle. Esimerkiksi Seravo tarjoaa avoimen lähdekoodin ohjelmia käyttäville yrityksille tukipalveluita ja jos asiakas niin haluaa, voimme tehdä räätälöidyn version mistä tahansa ohjelmasta sen alkuperäisen kehittäjän estämättä. Toki jos uusi versio on parempi, ottaa alkuperäinen kehittäjä useimmiten parannellun koodin osaksi pääversiota ja kaikki pääsevät hyötymään Seravon työstä.</li>\r\n 	<li><strong>Kehitystä ohjaa käyttäjien tarpeet</strong>, eikä ohjelmiin tule esim. mainoksia tai käyttäjien yksityisyyttä heikentäviä ominaisuuksia. Ohjelmiston tekijöiden on vaikeaa tehdä ohjelmasta versiota, joka on käyttäjien mielestä huonompi, koska vanhojen versioiden käyttöä ei voi estää. Aina on myös olemassa mahdollisuus, että joku käyttäjistä muuttuu kehittäjäksi ja tekee ohjelmasta huonoista ominaisuuksista putsattuja versioita.</li>\r\n 	<li><strong>Avoimen ohjelman käyttäjät ovat vapaita</strong>, kun taas suljetun ohjelman käyttäjät ovat ohjelmiston kehittäjän mielivallan armoilla. Avoimen lähdekoodin lisenssiehtojen takia avoin lähdekoodi on tietotekniikassa kuin demokratia yhteiskunnassa. Ne jotka ovat päässeet maistamaan ohjelmistojen vapautta eivät halua siitä luopua.</li>\r\n 	<li><strong>Linux on immuuni viruksille.</strong> Linuxissa ja muissa avoimen lähdekoodin ohjelmistoissa on olennaisesti vähemmän tietoturva-aukkoja kuin esimerkiksi Windowsissa ja muissa suosituissa suljetuissa ohjelmissa kuten Adoble Readerissa, Flashissa ja Oracle Javassa. Linuxistakin löytyy silloin tällöin tietoturva-aukkoja, mutta esimerkiksi viruksia ei ole ollut koskaan, koska Linuxin tietoturvamekanismit ovat niin hyvät.</li>\r\n 	<li><strong>Avoimuus lisää turvallisuutta.</strong> Kun lähdekoodi on avointa, on siihen lähes mahdotonta piilottaa esimerkiksi vakoilun mahdollistavia takaportteja. Kun lähdekoodi on julkista, on todennäköisempää että sitä tutkitaan ja mahdolliset tietoturva-aukot tulee havaittua, raportoitua ja korjattua nopeammin kuin suljetuissa ohjelmissa, joissa liiketoimintalogiikka yleensä kannustaa piilottelemaan ja vähättelemään tietoturvaongelmia.</li>\r\n 	<li><strong>Avoimuus lisää laatua.</strong> Avoimuus mahdollistaa kulttuurin jossa kuka tahansa voi tutkia ohjelmaa, korjata vikoja ja ehdottaa uusia ominaisuuksia joko ideoina tai valmiina koodina. Avoimuus ei takaa laatua, mutta edistää sitä merkittävästi aivan kuten yhteiskunnassa hallinnon läpinäkyvyys olennaisesti vähentää hallinnon epäkohtia. <a href=\"https://en.wikipedia.org/wiki/Linus\'s_Law\">Kuten Linus Torvalds on sanonut, “Given enough eyeballs all bugs are shallow”.</a></li>\r\n 	<li><strong>VALO takaa jatkuvan ohjelmistojen evoluution</strong> joka tekee ohjelmista yhä päivä päivältä yhä parempia. Mitkään lisenssimaksut eivät estä käyttäjiä päivittämästä aina uusimpaan versioon. Kehittäjien keskuudessa puolestaan kaikki uusi koodi ja ohjelmakirjastot ovat kaikkien käytettävissä eikä pyörää keksitä uudestaan ja uudestaan, vaan kaikki kehityspanos vie maailmaa eteenpäin.</li>\r\n</ul>\r\nLisätietoa vapaan ja avoimen lähdekoodin ohjelmistoista löytyy suomeksi osoitteesta <a href=\"https://coss.fi/\">COSS.fi</a>.\r\n<h3>Seravo ja VALO</h3>\r\nSeravolla on vahvan <a href=\"https://seravo.fi/linux-tuki\">Linux-osaamisen</a> lisäksi myös osaamista VALO:n hyödyntämisestä Windows-ympäristössä, mistä esimerkkinä Seravon tukema markkinointiprojekti <a href=\"http://valo-cd.fi/\">VALO-CD</a>, joka on kokoelma parhaita vapaita ohjelmia Windowsille.\r\n\r\nHenkilökuntaamme lukeutuu myös mm. <a href=\"https://fsfe.org/\">Euroopan vapaiden ohjelmistojen säätiön</a> Suomen koordinaattori ja olemme toteuttaneet mm. <a href=\"http://coss.fi/\">COSS.fi:n</a> eli Suomen avointen tietojärjestelmien keskuksen sivuston.\r\n\r\nHenkilöstömme on osallistunut myös useisiin <strong>avoimen datan</strong> hankkeisiin ja olemme olleet mukana niin Helsingin Sanomien HS Open -tapahtumissa kuin Apps4Finland kisassakin. Avoin data ja avoin lähdekoodi liittyvät vahvasti toisiinsa, koska molemmat perustuvat siihen perusoivallukseen, että näissä tilanteissa <strong>jakaminen ei vähennä, vaan nostaa arvoa</strong>.\r\n<h3>Asiantuntijapalvelut</h3>\r\n<a href=\"https://seravo.fi/asiantuntijapalvelut\">Asiantuntijapalveluiden</a> puitteissa kehitämme ja ylläpidämme asiakkaiden Linux-pohjaisia tietojärjestelmiä. Teemme sekä yksittäisiä toimeksiantoja että jatkuvia kuukausimaksullisia ylläpitosopimuksia.\r\n<ul>\r\n 	<li><a title=\"Linux-tukipalvelu ja konsultointi\" href=\"https://seravo.fi/linux-tuki\">Linux-tukipalvelut ja konsultointi</a></li>\r\n 	<li><a title=\"Huolenpito ja ylläpitopalvelut\" href=\"https://seravo.fi/yllapitopalvelut\">Huolenpito ja ylläpitopalvelut</a></li>\r\n 	<li><a title=\"Suunnittelu ja kehitys\" href=\"https://seravo.fi/kehityspalvelut\">Suunnittelu ja kehitys</a></li>\r\n</ul>\r\n<h3>Verkkopalvelut</h3>\r\n<a href=\"https://seravo.fi/verkkopalvelut\">Verkkopalvelumme</a> perustuvat parhaisiin avoimen lähdekoodin ohjelmistoihin ja ne on valmiiksi miettittyjä ja keskitetysti ylläpidettyjä ratkaisuja, joita asiakkaidemme on helppoa ja edullista ottaa käyttöön tyypillisiin tarpeisiin, kuten verkkosivujen tai verkkokauppojen toteuttamiseen.\r\n<ul>\r\n 	<li><a title=\"Verkkosivut ja verkkonäkyvyys\" href=\"https://seravo.fi/verkkosivut\">Verkkosivut ja verkkonäkyvyys</a></li>\r\n 	<li><a title=\"Verkkokauppajärjestelmät\" href=\"https://seravo.fi/verkkokauppa\">Verkkokauppajärjestelmät</a></li>\r\n 	<li><a title=\"Räätälöidyt verkkopalvelut\" href=\"https://seravo.fi/html5-nyt\">Räätälöidyt verkkopalvelut</a></li>\r\n 	<li><a title=\"Palvelinkoneet ja virtualisointi\" href=\"https://seravo.fi/virtualisointi\">Palvelinkoneet ja virtualisointi</a></li>\r\n</ul>\r\n<h3>Kaikki voivat hyötyä avoimista ohjelmistoista</h3>\r\n<a title=\"Yhteydenotto\" href=\"https://seravo.fi/yhteydenotto\">Ota yhteyttä</a>, niin kerromme miten voimme auttaa teidänkin organisaatiotanne hyödyntämään avoimen lähdekoodin ohjelmia.','Miksi Linux ja avoin lähdekoodi?','','publish','closed','closed','','miksi-linux-ja-avoin-lahdekoodi','','','2017-10-17 20:35:16','2017-10-17 17:35:16','',0,'https://linux-tuki.fi/?page_id=69',0,'page','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2017-10-11 13:09:54','2017-10-11 10:09:54',' ','','','publish','closed','closed','','72','','','2017-10-11 13:50:14','2017-10-11 10:50:14','',0,'https://linux-tuki.fi/?p=72',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2017-10-11 13:23:21','2017-10-11 10:23:21','','etayhteys2','','inherit','closed','closed','','etayhteys2','','','2017-10-11 13:23:21','2017-10-11 10:23:21','',14,'/wp-content/uploads/etayhteys2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (79,1,'2017-10-11 13:23:28','2017-10-11 10:23:28','','etayhteys1','','inherit','closed','closed','','etayhteys1','','','2017-10-11 13:23:28','2017-10-11 10:23:28','',14,'/wp-content/uploads/etayhteys1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (82,1,'2017-10-11 13:25:07','2017-10-11 10:25:07','','etayhteys3','','inherit','closed','closed','','etayhteys3','','','2017-10-11 13:25:07','2017-10-11 10:25:07','',0,'/wp-content/uploads/etayhteys3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (88,1,'2017-10-11 13:50:04','2017-10-11 10:50:04',' ','','','publish','closed','closed','','88','','','2017-10-11 13:50:04','2017-10-11 10:50:04','',0,'https://linux-tuki.fi/?p=88',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2017-10-11 13:50:32','2017-10-11 10:50:32',' ','','','publish','closed','closed','','89','','','2017-10-11 13:50:32','2017-10-11 10:50:32','',0,'https://linux-tuki.fi/?p=89',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2017-10-17 22:44:19','2017-10-17 19:44:19','<h1>Oletko monipuolinen Linux-osaaja? Pidätkö asiakaspalvelutyöstä?</h1>\r\n<blockquote>Tarjoamme kokopäiväistä tai osa-aikaisista työtä sekä monipuolisten tehtävien parissa. Etsimme henkilöitä erityisesti pääkaupunkiseudulta ja Pirkanmaalta.</blockquote>\r\nEdellytämme hakijoilta laajaa kokemusta avoimen lähdekoodin ohjelmistoista, ongelmanratkaisukykyä ja omatoimisuutta. Linux-osaaminen on kyettävä osoittamaan esimerkiksi Linux Professional Instituten sertifioinnilla, avoimen lähdekoodin projektiin osallistumisella tai vastaavalla. Yliopisto/korkeakoulututkinto tai yliopisto/korkeakoulututkintoon johtava opiskelu katsotaan eduksi, mutta sillä yksinään ei voi osoittaa Linux-asiantuntemusta.\r\n\r\nOlemme kiinnostuneet myös yksittäisten osa-alueiden syvällisistä osaajista, jotka haluavat suorittaa satunnaisia toimeksiantoja asiakkaiden tarpeiden mukaan.\r\n\r\nJos olet kiinnostunut, lähetä vapaamuotoinen hakemus osoitteeseen <em>rekry ät seravo.fi</em>. Kerro hakemuksessasi teknisen osaamisen lisäksi asiakaspalvelukokemuksestasi sekä perustiedot elämäntilanteestasi.\r\n\r\nKaikkiin työsuhteisiin sisältyy neljän kuukauden koeaika sekä koulutus, jonka aikana varmistamme että Linux-asiantuntija/tukihenkilö täyttää laatuvaatimuksemme. Palkkaus, työaika ja muut edut ovat neuvoteltavissa.','Linux-asiantuntijoilla on kysyntää','','publish','closed','closed','','rekrytointi','','','2017-10-17 22:45:07','2017-10-17 19:45:07','',0,'https://linux-tuki.fi/?page_id=104',0,'page','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2017-10-17 23:20:06','2017-10-17 20:20:06','Linux-käyttäjän täytyy tietokoneita ja niiden oheislaitteita ostaessaan erityisesti <strong>kiinnittää huomioita siihen, että ostettava tuote on Linux-yhteensopiva</strong>, eli että sille on saatavilla Linux-laiteajuri.\r\n\r\nTuotteita ostaessa peruskäyttäjä pääse helpoimmalla mikäli tietotekniikkakaupassa myyjä osaa tarkistaa tuotteen Linux-yhteensopivuuden. Parhaimmassa tapauksessa Linux-yhteensopivuus ilmoitetaan selkeästi tuoteselosteessa. Muutoin yhteensopivuus on tarkistetava internetissä olevista Linux-tietokannoista tai yksinkertaisesti kokeilemalla. Useimmat liikkeet suostuvat siihen, että demo-koneessa saa asiakas kokeilla Linux live-cd:tä laitteiston toimivuuden testaamiseksi.\r\n<h3>Linux-ystävälliset liikkeet Suomessa</h3>\r\n<dl>\r\n 	<dt><a href=\"http://www.linuxkauppa.fi/\">Linuxkauppa.fi</a></dt>\r\n 	<dd>Kauppa takaa kaikkien tuotteiden Linux-yhteensopivuuden.</dd>\r\n 	<dt><a href=\"http://www.tietokonekauppa.fi/\">Tietokonekauppa.fi</a></dt>\r\n 	<dd>Hinnastossa muutama tietokonepaketti, joiden mukana tulee Ubuntu Linux valmiiksi asennettuna.</dd>\r\n 	<dt><a href=\"http://www.verkkokauppa.com/\">Verkkokauppa.com</a></dt>\r\n 	<dd>Verkkokaupan laajasta valikoimasta löytyy paljon Linuxissa toimivia laitteita, ja tuoteselosteissa on usein maininta Linux-yhteensopivuudesta. Verkkokauppa.com ilmoittaa myös myymiensä musiikkisoitinten Ogg Vorbis -tuesta. Myymälän hyllyssä Linux-lehtiä.</dd>\r\n 	<dt><a href=\"http://www.bookplus.fi/\">Bookplus.fi</a></dt>\r\n 	<dd>Nettikirjakauppa, jonka valikoimista löytyy runsaasti Linux-aiheisia kirjoja.</dd>\r\n 	<dt><a href=\"http://www.kierratyskeskus.fi/\">Pääkaupunkiseudun Kierrätyskeskus</a></dt>\r\n 	<dd>Myy käytettyjä tietokoneita, joissa on Linux valmiiksi asennettu.</dd>\r\n</dl>\r\nLisätietoja Suomessa myytävistä kannettavista tietokoneista, joita voi ostaa ilman Windows-käyttöjärjestelmää, löytyy <a href=\"http://linux.fi/index.php/\">Linux.fi:n wikistä</a>.\r\n<h3>Linux-ystävälliset ulkomaiset verkkokaupat</h3>\r\n<dl>\r\n 	<dt><a href=\"http://www.ggsdata.se/\">GGS Data</a></dt>\r\n 	<dd>Ruotsalainen esiasennettujen Ubuntu Linux -tietokoneiden tarjoaja.</dd>\r\n 	<dt><a href=\"http://system76.com/\">System 76</a></dt>\r\n 	<dd>Amerikkalainen esiasennettujen Ubuntu Linux -tietokoneiden tarjoaja.</dd>\r\n 	<dt><a href=\"http://www.emperorlinux.com/\">EmperorLinux.com</a></dt>\r\n 	<dd>Amerikkalainen yritys, joka myy laadukkaita kannettavia useimilla Linux-jakeluilla esiasennettuna.</dd>\r\n 	<dt><a href=\"http://www.tulli.fi/fi/yksityisille/netista_ostaminen/index.jsp\">Tullin ohjeet internet-ostoksia varten.</a></dt>\r\n 	<dt><a href=\"http://www.gamecollectors.info/pelikonsoli-ulkomailta/\">Ohjeita sähkölaitteen tilaamiseksi ulkomailta.</a></dt>\r\n</dl>\r\n<h3>Linux-laitevalmistajat</h3>\r\nEräät valmistajat huomioivat Linux-käyttäjät jo tuotteidensa suunnitteluvaiheessa, joten heidän tuotteitaan voi ostaa turvallisin mielin. Suosittelemme seuraavia tietotekniikkavalmistajia:\r\n<dl>\r\n 	<dt><a href=\"http://www.ibm.fi/\">IBM</a></dt>\r\n 	<dd>IBM on tukenut Linuxia jo pitkään ja nykyisin merkittävä osa IBM:n liiketoiminnasta liittyy Linux-ratkaisuihin.</dd>\r\n 	<dt><a href=\"http://www.hp.fi/\">Hewlett-Packard</a></dt>\r\n 	<dd>HP on osallistunut näkyvästi <a href=\"http://www.hp.fi/linuxforum/\">Linux-kehitykseen</a> ja myy myös itse <a href=\"http://linux.hp.com/\">Linux-osaamistaan</a>. HP:n laitteilla on yleensä hyvä Linux-yhteensopivuus.</dd>\r\n 	<dt><a href=\"http://www.dell.fi/\">Dell</a></dt>\r\n 	<dd>Myös Dell kuuluisa <a href=\"http://www.dell.com/linux/\">Linux-tuotteistaan</a>.</dd>\r\n 	<dt><a href=\"http://www.lenovo.com/fi/en/\">Lenovo</a></dt>\r\n 	<dd>Lenovo on ilmoittanut aloittavansa ThinkPad-kannettavien myynnin esiasennetulla SUSE-järjestelmällä.</dd>\r\n</dl>\r\n<h3>Linux-yhteensopivuuden selvittäminen itse</h3>\r\nMikäli kauppiaalta tai valmistajalta ei löydy tietoa laitteen Linux-yhteensopivuudesta, tietoa voi yrittää hankkia Internetistä. Verkosta löytyy paljon laitetietokantoja ja muita tietolähteitä joista Linux-toimivuutta voi tutkia. Jos laitteen toimivuudesta ei löydy raporttia mistään, ei se kuitenkaan välttämättä tarkoita etteikö laite voisi toimia Linuxissa. Parhaiten asia selviaa kokeilemalla laitetta käytännössä, mikäli kaupan ehdot sallivat sen.\r\n\r\nAloita näistä:\r\n<ul>\r\n 	<li><a href=\"https://wiki.ubuntu.com/HardwareSupport\">Ubuntu wiki: HardwareSupport</a></li>\r\n 	<li><a href=\"http://bugzilla.redhat.com/hwcert/\">Red Hat Hardware Catalog</a></li>\r\n 	<li><a href=\"http://www.mandriva.com/hardware\">Mandriva compatible hardware database</a></li>\r\n 	<li><a href=\"http://hardwaredb.suse.de/\">SUSE hardware compatibility list</a></li>\r\n 	<li><a href=\"http://linux.fi/index.php/Suositeltavat_rautaratkaisut\">Suositeltavat rautaratkaisut</a> (Linux.fi wiki)</li>\r\n 	<li><a href=\"http://www.google.fi/linux\">Googlen Linux-haku</a> (anna hakusanaksi merkki ja malli)</li>\r\n</ul>\r\nMuita tietolähteitä:\r\n<ul>\r\n 	<li><a href=\"http://www.openprinting.org/printers/\">OpenPrinting.org</a></li>\r\n 	<li><a href=\"http://www.linuxhardware.org/\">LinuxHardware.org</a></li>\r\n 	<li><a href=\"http://www.tuxmobil.org/\">TuxMobil</a></li>\r\n 	<li><a href=\"http://www.linux-on-laptops.com/\">Linux on Laptops</a></li>\r\n 	<li><a href=\"http://www.linux-drivers.org/\">Linux-drivers.org</a></li>\r\n 	<li><a href=\"http://www.qbik.ch/usb/devices/\">USB device database</a></li>\r\n</ul>','Linux-yhteensopivien tuotteiden ostaminen','','publish','closed','closed','','ostaminen','','','2017-10-17 23:42:11','2017-10-17 20:42:11','',128,'https://linux-tuki.fi/?page_id=107',0,'page','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2017-10-17 23:22:25','2017-10-17 20:22:25','<h3>8.3.2011 Suomen Linux-tuki Seravo Oy:lle</h3>\r\nSuomen Linux-tuki on 8.3.2011 alkaen osa <a href=\"http://seravo.fi/\">Seravo Oy</a>:tä. Kaikki Suomen Linux-tuen tämänhetkiset sopimukset, velvoitteet, asiakkaat, henkilöstö ja omaisuus siirtyvät Seravo Oy:lle. Siirto ei aiheuta toimenpiteitä asiakkaille. Voimassa olevien tukipalvelusopimusten hinnat ja nimetyt tukihenkilöt säilyvät ennallaan.\r\n\r\nMuutos on osa uudelleenjärjestelyä, jonka ansiosta voimme jatkossa tarjota entistä parempia ylläpito- ja tukipalveluita.\r\n<h3>25.1.2010 Resurssit kasvaneet</h3>\r\nLinux-tuelle vuosi 2009 oli voimakasta kasvua ja uusien resurssien avulla pystymme palvelemaan entistä paremmin asiakkaitamme erityisesti Pirkanmaalla ja pääkaupunkiseudulla.\r\n<h3>17.8.2010 Linux-tuki rekrytoi</h3>\r\nEmme tällä hetkellä kykene palvelemaan kaikkia potentiaalisia asiakkaitamme, joten mikäli olet Linux-asiantuntija ja haluat uuden koko- tai osa-aikaisen työn, <a href=\"https://linux-tuki.local/rekrytointi\">lähetä työhakemus</a>.\r\n<h3>21.1.2009 Kotitalousvähennystä Linux-tuesta</h3>\r\nVuodesta 2009 alkaen kotitalousvähennyksen soveltamisala on laajennettu tieto- ja viestintätekniikkaan liittyvien laitteiden asennus-, kunnossapito- ja opastustyöhön, joita Linux-tukipalvelut myös ovat. Henkilöasiakas voi vähentää jopa 60 % tukipalvelumaksuista verotuksessaan.\r\n\r\nLinux-tuen laskutusjärjestelmää on päivitetty siten, että asiakkaat saavat laskutuksen yhteydessä esitäytetyn kotitalousvähennyslomakkeen. Tukihenkilömme antavat myös <a href=\"https://linux-tuki.local/kotitalousvahennys\">lisätietoa kotitalousvähennyksestä</a>.\r\n<h3>2.9.2008 Avopaikka Kauppalehdessä</h3>\r\nCOSS eli Suomen avoimen lähdekoodin edistämiskeskus julkaisi Avopaikka-liitteen, joka jaettiin Kauppalehden mukana 2.9.2008. Liitteen voi lukea myös <a href=\"http://www.coss.fi/web/coss/avopaikka\">COSS:n sivuilta</a>.\r\n<h3>26.6.2008 Vastine Tietoviikon artikkeliin Linuxista</h3>\r\nKirjoitimme vastineen Tietoviikko-lehdessä 13.6.2008 olleeseen Linuxia käsitelleeseen artikkeliin. Lue <a href=\"https://linux-tuki.local/linux-myytit\">Kommentteja Tietoviikon artikkeliin \"Linux on turvallinen ja muita myyttejä\"</a>.\r\n<h3>16.5.2008 LEHDISTÖTIEDOTE: Esiasennettujen Linux-kannettavien myynti alkanut</h3>\r\n<strong>HELSINKI (julkaisuvapaa)</strong> - Esiasennettujen Linux-kannettavien myynti on alkanut Suomen Linux-tuen ja Tietovirta Oy:n yhteistyönä. Kannettavissa on esiasennettuna Ubuntu 8.04 LTS -käyttöjärjestelmä. Niihin voi helposti asentaa myös minkä tahansa muun Linux-jakelun, koska laitteisto on Linux-yhteensopiva. \"Tällä hetkellä Linux-käyttäjän on lähes mahdotonta ostaa Suomesta edullista kannettavaa tietokonetta, jossa ei olisi heille tarpeetonta Windowsia valmiiksi asennettuna. Me korjaamme asian tuomalla markkinoille Linux-kannettavia, joissa ei ole pakollista Windows-lisenssiä.\" kertoo Otto Kekäläinen Suomen Linux-tuesta. \"Ostaessaan Linux-tuen kannettavan Linux-käyttäjä voi olla varma, ettei hän maksa ns. Windows-veroa vastoin tahtoaan.\" Myynti tapahtuu Tietovirta Oy:n verkkokaupan <a href=\"http://www.linuxkauppa.fi/\">linuxkauppa.fi:n</a> kautta.\r\n\r\nLinuxin käyttöönoton esteenä on monen mielestä ollut sen vaikeakäyttöisyys. Tähän mennessä Linux on jäänyt enimmäkseen tietokoneammattilaisten käyttöjärjestelmäksi. Linuxin käyttö itsessään ei ole vaikeaa. Ongelmat johtuvat usein siitä, että Linux asennetaan tietokoneeseen, jonka valmistaja on suunnitellut sen vain Windows-käyttöä varten. Nyt myyntiin tulleet Linux-tietokoneet on etukäteen valittu ja testattu Linux-yhteensopiviksi, joten ongelmia ei ole. Käyttäjän ei tarvitse tehdä muuta kuin laittaa virta päälle ja aloittaa tietokoneen käyttäminen. \"Tämä on helpoin tie Linuxiin\" vakuuttaa Kekäläinen. <a href=\"http://www.linuxkauppa.fi/\">Linuxkauppa.fi:n</a> tuotevalikoimassa on myös tulostimia sekä muita oheislaitteita, jotka ovat varmasti Linux-yhteensopivia. Mikäli asiakas tarvitsee tukipalveluita, on niitä tarjolla <a href=\"https://linux-tuki.local/\">Linux-tuki.fi:ssä</a>.\r\n<h4>Lisätietoja</h4>\r\nLinux on suomalaisen Linus Torvaldsin vuonna 1991 aloittama avoimeen lähdekoodiin perustuva käyttöjärjestelmän ydin, joka yhdistyttyään muiden avoimen lähdekoodin hankkeiden kanssa on kasvanut nopeimmin kehittyväksi käyttöjärjestelmäksi. <a href=\"http://www.linux.fi/\">www.linux.fi</a>\r\n\r\nVapaat ja avoimen lähdekoodin ohjelmistot (VALO) tarjoavat sellaisia etuja kuten räätälöitävyys ja riippumattomuus yksittäisistä ohjelmistoyrityksistä tai lisensseistä. Avoimen lähdekoodiin käyttöä liiketoiminnassa edistää Suomessa Center for Open Source Software. <a href=\"http://www.coss.fi/\">www.coss.fi</a>\r\n\r\nSuomen Linux-tuki on vuonna 2005 perustettu palvelu, joka tarjoaa Linuxiin liittyviä tuki- ja asiantuntijapalveluita ja sen tarkoituksena on edistää Linuxin yleistymistä Suomessa.\r\n<h4>Lataa painokelpoiset kuvat</h4>\r\n<ul>\r\n 	<li><a href=\"https://linux-tuki.local/esiasennetut/lt-ifl91-closed.jpg\">lt-ifl91-closed.jpg</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/esiasennetut/lt-ifl91-open.jpg\">lt-ifl91-open.jpg</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/esiasennetut/lt-ifl91-desktop.png\">lt-ifl91-desktop.png</a></li>\r\n</ul>\r\n<h3>31.1.2008 Uusi painos Ubuntu-pikaoppaasta</h3>\r\nJulkaisimme toisen päivitetyn painoksen Ubuntu-pikaoppaasta. Voit ladata sen ilmaiseksi ja tulostaa itse tai tilata meiltä painetun teoksen. Lisätiedot <a href=\"https://linux-tuki.local/linux-cd\">tilaussivulla</a>.\r\n<h3>15.12.2007 Viralliset Ubuntu-levyt myynnissä</h3>\r\nAloitimme tuoreimpien virallisten Ubuntu-levyjen myynnin. Tilaa Ubuntu, Kubuntu, Edubuntu tai Ubuntu Server Edition meiltä nopealla toimitusajalla. Valikoimassa myös DVD-levyt! Lisätiedot <a href=\"https://linux-tuki.local/linux-cd\">tilaussivulla</a>.\r\n<h3>2.10.2007 Avopaikka Kauppalehdessä</h3>\r\nCOSS eli Suomen avoimen lähdekoodin edistämiskeskus julkaisi Avopaikka-liitteen, joka jaettiin Kauppalehden mukana 2.10.2007. Liitteen voi lukea myös <a href=\"http://www.coss.fi/web/coss/avopaikka\">COSS:n sivuilta</a>.\r\n<h3>21.4.2007 Ubuntu pikaopas julkaistu</h3>\r\nOlemme julkaisseet aloittelijalle suunnatun <cite>Ubuntu Linux – käyttäjän pikaoppaan</cite>. Voit tilata pikaoppaan tai Ubuntu-CD:n <a href=\"https://linux-tuki.local/linux-cd\">tilaussivulta</a>.\r\n<h3>19.4.2007 Ubuntu Linux 7.04 julkaistu</h3>\r\nTule mukaan <a href=\"http://www.ubuntu.fi/feisty-julkaisutapahtuma\">julkaisutapahtumaan</a> Helsingissä lauantaina 21.4.\r\n<h3>8.1.2006 Harkitsetko Windows XP:n päivittämistä?</h3>\r\nTiesitkö, että useimmat Windows Vistan \"uusista\" ominaisuuksista on ollut saatavilla jo pitkään Linux- ja Mac-käyttäjille?\r\n\r\nJos olet valmis oppimaan vistan verran uutta, ja haluat käyttää Linuxia, tilaa meiltä henkilökohtainen <a href=\"https://linux-tuki.local/asennus\">asennuspalvelu</a> ja alkutaival Linuxin käytöönotossa sujuu helposti.\r\n<h3>29.10.2006 Linux-tuki rekrytoi</h3>\r\nHaluatko työskennellä Linuxin käytön edistämisen puolesta ja samalla tienata rahaa? Lisätietoja <a href=\"https://linux-tuki.local/rekrytointi\">rekrytointi-sivulta</a>.\r\n<h3>4.9.2006 Linux 15-vuotta seminaari Helsingin yliopistolla</h3>\r\nHelsingin yliopistolla vietettiin Linuxin 15-vuotissynttäreitä. Juhlapuhujina oli muun muoassa John Maddog Hall, jonka esitys avoimen lähdekoodin hyödyistä valtionhallinnossa oli erityisen hyvä.\r\n\r\nKoko seminaari videoitiin, ja sen voi katsottavissa <a href=\"http://video.helsinki.fi/Arkisto/tallenne.php?ID=19415\">Helsingin yliopiston sivuilta</a>. Sekä Linux-tuki että Sange mainittiin Timo Jyrinkin esitelmässä <cite>Uusi kehittäjäsukupolvi Suomessa</cite>.\r\n<h3>24.5.2006 Linux-tuki hyväksytty Ubuntun yhteistyökumppaniksi</h3>\r\n<img class=\"right\" src=\"https://linux-tuki.local/pict/partner_logo_affiliate_x164.png\" alt=\"Ubuntu Affiliate Partner logo\" /> <a href=\"http://www.canonical.com/\">Canonical Ltd.</a> on myöntänyt Linux-tukipalvelusta vastaavalle Osuuskunta Sangelle <a href=\"http://www.ubuntu.com/partners/find\">Ubutu Affiliate Partnership</a> -statuksen. Näinollen edustamme nyt virallisesti Ubuntua ja voimme tarjota entistä laajemmin Ubuntu Linuxiin liittyviä asiantuntijapalveluita. Tulemme myös osallistumaan Ubuntu Linuxin kehittämiseen entistä enemmän.\r\n<h3>1.4.2006 Linux-tuki rekrytoi</h3>\r\nLinux-tuki tarvitsee lisää tukihenkilöitä. Lähetä meille vapaamuotoinen hakemus, josta käy ilmi sekä tekniset tietosi että asiakaspalvelutaitosi. Lisätietoja <a href=\"https://linux-tuki.local/rekrytointi\">rekrytointi-sivulta</a>.\r\n<h3>23.1.2006 Linux-tukipalvelu herättänyt laajaa mielenkiintoa Suomessa</h3>\r\nVuoden 2005 lopussa lanseerattu valtakunnallinen Linux-tukipalvelu on herättänyt laajaa mielenkiintoa Suomessa. Linux-tukipalvelustamme on ollut maininta mm. seuraavissa medioissa:\r\n<ul>\r\n 	<li><a href=\"http://www.tietokone.fi/\">Tietokone-lehti</a> (haastattelu)</li>\r\n 	<li><a href=\"http://www.digitoday.fi/\">Digitoday</a></li>\r\n 	<li><a href=\"http://www.it-viikko.fi/\">IT-viikko</a></li>\r\n 	<li><a href=\"http://www.tietoviikko.fi/\">Tietoviikko</a></li>\r\n 	<li><a href=\"http://www.tietoyhteiskunta.fi/\">tietoyhteiskunta.fi-portaali</a></li>\r\n 	<li><a href=\"http://www.uusitoimisto.net/\">UusiToimisto</a></li>\r\n 	<li>Motiivi-lehti</li>\r\n 	<li><a href=\"http://tonnikala.net/\">Tonnikala.net</a></li>\r\n 	<li><a href=\"http://linuxonly.info/\">LinuxOnly.info</a></li>\r\n 	<li><a href=\"http://www.raja-antura.org/\">Raja-antura</a></li>\r\n 	<li><a href=\"http://www.elisa.net/\">elisa.net-portaali</a></li>\r\n 	<li><a href=\"http://www.neukkula.com/radio/\">Radio Neukkula</a> (haastattelu podcastissa)</li>\r\n</ul>\r\nTukihenkilöverkostomme on kasvanut 25:een henkilöön, joiden asiantuntemus kattaa suosituimmat avoimen lähdekoodin ohjelmistot ja maantieteellinen edustavuus suurimman osan Suomea pohjoisimpia osia lukuunottamatta.\r\n\r\nLinux-tukipalvelusta kiinnostuneita ovat monet hyvin erilaiset asiakkaat, mutta tyypillinen asiakas on ollut Ubuntu Linuxia (tai Kubuntua) käyttävä pienyrittäjä, joka on tarvinnut alle kahden tunnin apua.\r\n<h3>23.11.2005 LEHDISTÖTIEDOTE: Linux-tuki.fi avattu</h3>\r\n<strong>HELSINKI (julkaisuvapaa)</strong> - Linux-käyttöjärjestelmän yleistymisen esteenä on pidetty kaupallisten tukipalveluiden puutetta. Valtakunnallinen Linux-tuki.fi on nyt perustettu vastaamaan tähän kysyntään.\r\n\r\nLinux-tuki.fi auttaa kaikkia Linux-käyttäjiä, sekä yksityishenkilöitä että yrityksiä. Tukihenkilöitä on kaikissa suurimmissa kaupungeissa. Palvelun tukihenkilöverkosto takaa että apua saa kaikkiin yleisimpiin Linux-ohjelmien käyttöön.\r\n\r\nTukihenkilölle voi tuoda tietokoneensa tai tukihenkilö voi tulla asiakkaan luo. Osa toimenpiteistä voidaan tehdä etäyhteyden kautta, minkä ansiosta palvelu on sekä nopea että edullinen.\r\n\r\nTukipalveluun saa yhteyden\r\n• web-osoitteesta: linux-tuki.fi\r\n• sähköpostiosoitteesta: apua@linux-tuki.fi\r\n• puhelinnumerosta 09-85621799.\r\n\r\nOsa tukipalvelun tuotosta käytetään avoimen lähdekoodin ohjelmien kehittämiseen ja suomentamiseen siten, että siitä on hyötyä asiakaskunnalle.\r\n\r\nTarvittaessa asiakas saa koulutusta ja vinkkejä tiedonkäsittelyn tehostamiseen. Linux-tukipalvelu voi myös suorittaa Linuxin ja ohjelmien asennuksen jolloin asiakas saa käyttövalmiin järjestelmän käyttöönsä.\r\n\r\nPalvelusta vastaa avoimen lähdekoodin asiantuntijayritys Osuuskunta Sange.\r\n<h4>Lisätietoja</h4>\r\n<strong>Sange</strong> on vuonna 2000 perustettu yritys, jonka päätoiminta-alat ovat Internet-palvelut, räätälöidyt ATK-ratkaisut sekä tietotekniikka-alan konsultointi. <a href=\"http://www.sange.fi/\">www.sange.fi</a>\r\n\r\n<strong>Linux</strong> on suomalaisen Linus Torvaldsin vuonna 1991 aloittama avoimeen lähdekoodiin perustuva ohjelmistohanke, joka yhdistyttyään muiden avoimen lähdekoodin hankkeiden kanssa on kasvanut nopeimmin kehittyväksi käyttöjärjestelmäksi, jota tukevat tietotekniikan suuryhtiöt kuten Nokia, IBM ja Novell. <a href=\"http://linux.sange.fi/\">linux.sange.fi</a>\r\n\r\n<strong>Avoimen lähdekoodin</strong> ohjelmistot tarjoavat sellaisia etuja kuten räätälöitävyys ja riippumattomuus yksittäisistä ohjelmistoyrityksistä tai lisensseistä. Avoimen lähdekoodiin käyttöä liiketoiminnassa edistää Suomessa Center for Open Source Software. <a href=\"http://www.coss.fi/\">www.coss.fi</a>','Tiedotteet','','publish','closed','closed','','tiedotteet','','','2017-10-17 23:22:25','2017-10-17 20:22:25','',0,'https://linux-tuki.fi/?page_id=110',0,'page','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2017-10-17 23:22:56','2017-10-17 20:22:56','Yksi syy Linuxin suosioon erityisesti ammattilaiskäytössä on sen korkea tietoturvan taso. Mikään järjestelmä ei kuitenkaan ole täysin aukoton, joten Linux-käyttäjänkin täytyy ymmärtää tietoturvan perusasiat.\r\n<h3>Rajoitetut käyttäjäoikeudet</h3>\r\n<strong>Älä käytä Linux-järjestelmääsi root-tunnuksella.</strong> Kyseinen tunnus on ainoastaan ylläpitotoimenpiteitä varten. Päivittäinen tietokonetyöskentely tulee tapahtua normaalikäyttäjänä jonka oikeudet on rajattu normaalikäyttöön sopivaksi. Normaalikäyttäjänäkin on helppo suorittaa halutessaa ylläpitotoimenpiteitä esimerkisi <code>sudo</code>-komennolla. Tämä on normaali käytäntö Ubuntussa.\r\n\r\nKäyttöoikeuksien oikeaoppinen hallinta on Linux-järjestelmien tietoturvan perusta.\r\n<h3>Käyttöjärjestelmän päivittäminen</h3>\r\nJopa normaalin kotikäyttäjän Linux-järjestelmässä on tuhansia ohjelmia joiden tekemiseksi on kirjoitettu miljoonia rivejä lähdekoodia. Inhimillinen tekijä huomioon ottaen on todennäköistä, että näin suuressa ohjelmamäärässä jossakin ohjelmassa on sellainen tahaton virhe, jota hyödyntämällä järjestelmään voi tehtä tietomurron.\r\n\r\nKoska Linux perustuu avoimeen lähdekoodiin jota kaikki voivat lukea vapaasti, löydetään virheet kuitenkin yleensä nopeasti ja niille myöskin julkaistaan <em>tietoturvapäivitykset</em> nopeasti. Tietoturvapäivitykset ovat ohjelmien erikoispäivityksiä siinä mielessä, että ne ainoastaan paikkaavat tietoturvareiän eivätkä siis pakota käyttäjää päivittämään ohjelmaa uusimpaan versioon. Linux-järjestelmän voi halutessaan asettaa hakemaan ja asentamaan kaikki tietoturvapäivitykset automaattisesti käyttäjää häiritsemättä.\r\n\r\nErityisesti Debian-pohjaisten Linux-jakeluiden (kuten Ubuntun) suosio perustu pitkälti Debianin mainioon ohjelmapakettihallintaan joka mahdollistaa mm. koko järjestelmän erittäin helpon päivittämisen. Ubuntussa on mahdollista yhdellä ainoalla komennolla päivittää <em>kaikki</em>tietokoneessa olevat ohjelmat uusimpaan versioon.\r\n\r\nVihamielinen tietokonemurtautuja (eng. cracker) voi myös yrittää ujuttaa oman haittaohjelmansa järjestelmään naamioimalla sen tietoturvapäivitykseksi. Ubuntussa on mahdollista allekirjoittaa kaikki ohjelmapaketit sähköisesti, mikä varmistaa että päivitykset todellakin tulevat virallisesta lähteestään.\r\n<h3>Virustorjunta</h3>\r\nWindowsille on olemassa arviolta 100 000 virusta. Unixiin perustuville MacOS X:lle ja Linuxille viruksia on 0 kappaletta.\r\n\r\nEi ole täysin mahdotonta että Linuxillekin tulisi jonain päivänä viruksia, mutta ainakaan toistaiseksi Linuxiin ei todellakaan tarvitse virustorjuntaohjelmistoa, sillä virustorjuntaohjelmisto itsessäänkin on tietoturvariski (krakkeri kun voi naamioida haittaohjelman virusohjelman päivitykseksi).\r\n<h3>Palomuuri</h3>\r\nLinux-ytimeen on sisäänrakennettu tehokas palomuuri. Kotikäyttäjille suunnatuissa Linux-jakeluissa palomuuriasetukset ovat useimmiten valmiiksi kotikäyttöön sopivat.\r\n\r\nPalomuuriakin tärkeämpää on se, että tietokoneessa ei ole käynnissä mitään palvelinohjelmia joihin ulkopuolinen voisi ottaa yhteyttä Internetistä käsin. Älä siis asenna Linux-järjestelmääsi www-palvelimia, tietokantapalvelimia, tiedostopalvelimia, etäkäyttöpalvelimia tai vastaavia ellet tiedä mitä teet!\r\n<h3>Lisätietoja</h3>\r\nLisätietoja Linuxin tietoturvasta löydät <a href=\"http://www.linux.fi/\">Linux.fi:n Wikistä</a>. Myös <a href=\"http://www.tietoturvaopas.fi/\">Tietoturvaopas.fi</a> on hyödyllinen.\r\n\r\nLisätietoja <a href=\"http://linux.sange.fi/\">linux.sange.fi</a>:n sivulla <a href=\"http://linux.sange.fi/turvallisuus\">avoimen lähdekoodin turvallisuus</a>.\r\n<h3>Varmuuskopiointi</h3>\r\nAinoa varma tapa suojata arvokkaat tiedot onnettomuutta, käyttäjän omaa vahinkoa tai ulkopuolista uhkaa vastaan on varmuuskopioida tiedot. Linuxille on olemassa useita varmuuskopiointiohjelmistoja, mutta myös yksinkertaisilla perustyökaluilla voi laittaa tietonsa turvaan ja tarkistaa varmuuskopioiden niiden eheys.\r\n\r\nEsimerkiksi tiedot voi arkistoida pakattuun muotoon komennolla <code>tar czvpf <em>pakattu-arkistotiedosto</em>-`date +%Y-%m-%d`.tgz<em>/arkistoitava-hakemisto/</em></code>. Arkistosta kannattaa tallentaa myös md5-tarkiste komennolla <code>md5sum <em>tiedostonimi</em> &gt; <em>tiedostonimi</em>.md5sum</code>. Tiedoston md5-tarkiste muuttuu mikäli yksikin tavu muuttuu. Vanhaa ja nykyistä md5-tarkistetta vertailemalla tietää siis onko tiedosto ehjä. Varmuuskopio kannattaa säilyttää fyysisesti erillisessä paikassa.','Kotikoneen tietoturva','','trash','closed','closed','','kotikoneen-tietoturva__trashed','','','2017-10-17 23:52:01','2017-10-17 20:52:01','',0,'https://linux-tuki.fi/?p=112',0,'post','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2017-10-17 23:25:04','2017-10-17 20:25:04','<blockquote><strong>Asennuspaketti yksityishenkilöille:</strong> Asennamme tietokoneellesi uusimman <a href=\"http://www.ubuntu.fi/\">Ubuntu Linux</a> -version kaikilla päivityksillä ja lisäosilla. Ubuntu Linux voidaan asentaa myös rinnakkain Windows-järjestelmän kanssa samaan tietokoneeseen.</blockquote>\r\n<div class=\"laatikko\">\r\n<h2>Hinta 129 €</h2>\r\nUbuntu Linuxin räätälöity asennus ja käyttöönotto-opastus.\r\n\r\nSisältää enintään kaksi tuntia henkilökohtaista palvelua.\r\n\r\n</div>\r\nTarkistamme Linuxin toimivuuden laitteidesi kanssa ja asennamme ne laitteet, joille löytyy hyvät Linux-ajurit.\r\n\r\nTähän räätälöityyn asennukseen saat myös haluamasi ohjelmat oikeilla asetuksilla. Asennuksen ohella opetamme järjestelmän peruskäytön ja mikäli myöhemmin ilmenee ongelmia, toimii asentaja henkilökohtaisena tukihenkilönäsi.\r\n<h3>Asennuspaketin edut:</h3>\r\n<ul>\r\n 	<li>Uusin <a href=\"http://ubuntu.sange.fi/\">Ubuntu Linux</a> asennettuna tietokoneellesi</li>\r\n 	<li>Laaja ohjelmavalikoima: toimisto-ohjelmat, sähköposti, kuvankäsittely, mediasoitin, pelejä...</li>\r\n 	<li>asennuksen räätälöinti juuri sinulle sopivaksi</li>\r\n 	<li>tarvittaessa Linuxin käyttö mahdollista myös Windowsin rinnalla</li>\r\n 	<li>palveluun kuuluu käyttöönotto-opastus ja tietoturvakoulutus</li>\r\n 	<li>nimetty tukihenkilö jatkoa varten</li>\r\n</ul>\r\nTilaus ja lisäkyselyt: <a href=\"mailto:linux-tuki@seravo.fi\">linux-tuki@seravo.fi</a>\r\n\r\nAsennuksen suorittanut henkilö on myös asiakkaan nimetty tukihenkilö, joka palvelee asiakasta jatkossa käytettäessä Linux-tuen palveluita.\r\n\r\n<cite>Emme takaa että laitteistosi toimii Linuxin kanssa, sillä kaikki laitevalmistajat eivät mahdollista Linux-ajureita laitteilleen!</cite> Päivitysten ja muiden lisäosien asentamiseksi vaaditaan laajakaistainen Internet-yhteys.\r\n<h2>Asennuspalvelu</h2>\r\nTarjoamme myös räätälöityjä asennuspalveluita (mm. OEM-asennukset) tietotekniikka-alan kauppiaille ja muille yrityksille ja yhteisöille.','Asennuspaketti — helpoin tie Linuxiin','','publish','closed','closed','','asennus','','','2017-10-17 23:45:37','2017-10-17 20:45:37','',0,'https://linux-tuki.fi/?page_id=114',0,'page','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2017-10-17 23:25:40','2017-10-17 20:25:40','Kuvankaappaus on kuva tietokoneen näkymästä. Kuvankaappaus ongelmastasi kertoo meille enemmän kuin tuhat sanaa.\r\n<h3>Gnome-työympäristössä</h3>\r\n<a href=\"https://linux-tuki.local/pict/gnome_kuvankaappaus.png\"><img class=\"right\" src=\"https://linux-tuki.local/pict/gnome_kuvankaappaus_pieni.png\" alt=\"Gnome kuvankaappaus\" /></a> Avaa kuvankaappausohjelma painamalla näppäimistön painiketta <kbd>Print Screen</kbd> (voi olla myös lyhennetty, esim <kbd>Prt Sc</kbd>). Vaihtoehtoisesti voit myös painaa <kbd>Alt+F2</kbd> ja ajaa suoritusikkunasta komennon <code>gnome-screenshot</code>. Ohjelma ottaa heti kuvankaappauksen, ja auki tulevasta ikkunasta voi määritellä tallennettavan kuvan tiedostonimen ja kansion. Ohjelma ehdottaa yleensä tiedostonimeksi <em>Kuvankaappaus.png</em>ja kansioksi työpöytää, minkä sinäkin voit valita. Avaa seuraavaksi sähköposti ja lähetä kuva liitetiedostona meille.\r\n<h3>KDE-työympäristössä</h3>\r\nAvaa kuvankaappausohjelma valitsemalla alapalkista <code>K › Grafiikka › Ksnapshot</code>. Aseta <code>Kaappaustila: kokoruutu</code> ja <code>Kuvankaappauksen viive: 5s</code>. Painettuasi <code>Uusi kuvankaappaus</code> sinulla on viis sekuntia aikaa saada virhetilanne näkymään ruudulla jotta siitä tulisi kuvankaappaus.\r\n\r\nSaatuasi onnistuneen kuvan tallenna se valitsemalla <code>Tallenna nimellä</code>. Lähetä meille lopulta kuva sähköpostiviestin liitetiedostona.\r\n<h3>Muu graafinen ympäristö</h3>\r\nTyöympäristöstä riippumatta voi graafisen näkymän kaapata myös ajamalla tekstikonsolissa komennon <code>xwd -root | xwdtopnm | pnmtopng &gt; kuvankaappaus.png</code>. Kuvan otettaessa kuuluu merkkiääni jonka jälkeen ohjelma käsittelee kuvaa hetken aikaa. Lopullinen tulos on <em>kuvankaappaus.png</em> jonka voit lähettää meille sähköpostitse.','Kuvankaappauksen ottaminen','','trash','closed','closed','','ohje-kuvankaappaus__trashed','','','2017-10-17 23:51:21','2017-10-17 20:51:21','',0,'https://linux-tuki.fi/?p=116',0,'post','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2017-10-17 23:28:20','2017-10-17 20:28:20','Kesästä 2006 lähtien parhaan suomenkielisen oikoluvun tarjoaa <a href=\"http://voikko.sourceforge.net/\">Voikko</a>, joka on täysin vapaa suomenkielinen oikolukuohjelma.\r\n<h3>Voikko-oikoluvun asentaminen</h3>\r\nVoikon omilla sivuilla on nykyisin hyvät <a href=\"http://www.lemi.fi/voikko/asennus-deb.html\">suomenkieliset ohjeet sen asentamiseen</a>.','Suomenkielinen oikoluku','','publish','closed','closed','','suomenkielinen-oikoluku','','','2017-10-17 23:41:59','2017-10-17 20:41:59','',128,'https://linux-tuki.fi/?page_id=118',0,'page','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2017-10-17 23:31:34','2017-10-17 20:31:34','Suomessa oli pitkään tilanne, että kannettavia tietokoneita ei ole voinut ostaa ilman Windows-lisenssiä, tai se oli erittäin vaikeaa (ks. <a href=\"http://linux.fi/wiki/Linux-kannettavat\">linux.fi:n artikkeli</a>). Melkein jokaisessa tietokoneessa oli valmiina vain Windows-käyttöjärjestelmä, mikä teki normaalikäyttäjälle Linuxin käyttöönoton turhan hankalaksi. Mielestämme esiasennettujen Linux-tietokoneiden saatavuus on edellytys Microsoftin monopoliaseman murtamiseksi. Siksi teimme sen mitä oli pitkään odotettu: toimme markkinoille helppoja ja laadukkaita Linux-tietokoneita.\r\n\r\nJulkaisimme Linux-kannettavamme 16.5.2008 ja ne myytiin loppuun reilussa kahdessa viikossa eikä uusia saatu, kun tehdas yllättäen lopetti runkojen toimittamisen Eurooppaan. Myöhemmin lopetimme kaiken oman suoran myynnin ja aloitimme yhteistyön <a href=\"http://www.linuxkauppa.fi/\">Linuxkauppa.fi:n</a> kanssa.\r\n\r\n<strong>Myymämme kannattavan tiedot on jätetty esille referenssimielessä. Kyseistä mallia ei ole enää saatavilla.</strong>\r\n\r\nKun haluat esiasennettuja Linux-kannettavia tai muita varmasti Linux-yhteensopivia tuotteita, tutustu <a href=\"http://www.linuxkauppa.fi/\">Linuxkauppa.fi:n</a> valikoimiin.\r\n<h3>Linux-kannettava IFL91</h3>\r\n<img class=\"right\" src=\"https://linux-tuki.local/pict/lt-ifl91-closed-thumb.jpg\" alt=\"Linux-tuki.fi IFL91\" /> <img class=\"right\" src=\"https://linux-tuki.local/pict/lt-ifl91-open-thumb.jpg\" alt=\"Linux-tuki.fi IFL91\" /> Vuosien tutkimustyön jälkeen löysimme vihdoin kannettavan tietokoneen, jonka Linux-yhteensopivuus on erinomainen jonka valmistaja suostuu myymään sen ilman Windows-lisenssiä. Compalin IFL91-malli Intelin Core<sup>2</sup>-prosessoreilla ja Hitachin nopeilla kiintolevyillä on suorastaan Linux-käyttäjän unelma – sekä suorituskyvyn että hinnan suhteen.\r\n<ul>\r\n 	<li><a href=\"https://linux-tuki.local/esiasennetut/esite-IFL91.pdf\">IFL91-mallin esite</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/esiasennetut/lehdistotiedote-ifl91.pdf\">IFL91-mallin julkaisun lehdistötiedote</a></li>\r\n</ul>\r\n<h3>OEM-asennus</h3>\r\n<img class=\"right\" src=\"https://linux-tuki.local/pict/lt-ifl91-desktop-thumb.png\" alt=\"Linux-tuki.fi IFL91\" /> Tuottamamme kannettavat sisältävät Ubuntun OEM-asennuksen (ks. <a href=\"https://help.ubuntu.com/community/Ubuntu_OEM_Installer_Overview\">Ubuntu.com</a>). Ubuntun perusasennuksen lisäksi olemme asettaneet työpöydälle Linux-tuen taustakuvan, sinisen teeman ja Firefox-selaimeen suomalaiselle käyttäjälle sopivat kirjainmerkit. Olemme tehneet myös muita pieniä parannuksia mahdollisimman hyvä käyttökokemuksen aikaansaamiseksi asiakkaillemme: paremmat fontit, parempi multimedia-tuki, valikosta <code>Sovellukset &gt; Internet</code> löytyy etäyhteyssovellus Linux-tuen palveluiden helppoon käyttöön jne.\r\n<h3>Asiantuntemusta laitevalmistajille</h3>\r\nSuunnitteleeko yrityksenne Linux-OEM-asennusjärjestelmän kehittämistä tai muuta Linux-laitteiden markkinoille tuomista? Ottakaa meihin yhteyttä ja hyödyntäkää kokemustamme ja asiantuntemustamme, niin säästätte tuotteiden kehityskustannukssa ja varmistatte laadukkaan lopputuloksen.','Linux-kannettavat','','publish','closed','closed','','linux-kannettavat','','','2017-10-17 23:49:47','2017-10-17 20:49:47','',0,'https://linux-tuki.fi/?page_id=124',0,'page','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2017-10-17 23:32:21','2017-10-17 20:32:21','Olemme järjestäneet lukuisia Linuxia ja avoimen lähdekoodin ohjelmia käsitteleviä koulutuksia niin peruskäyttäjille, ylläpitäjille, IT-opettajille kuin tietoturvatutkijoillekin. Koulutuksessa voidaan käsitellä tietyn ohjelman peruskäyttöä tai syvällisempää kokonaisuutta. Kurssit voidaan järjestää joko meidän tai asiakkaan tiloissa.\r\n\r\nJärjestämme koulutukset yhteistyössä <a href=\"http://opentrainers.fi/\">Open Trainers Oy:n</a> kanssa.\r\n<h2>Esimerkkejä pitämistämme koulutuksista</h2>\r\n<ul>\r\n 	<li>8 x 2h: Linux-peruskurssi Windows-käyttäjille</li>\r\n 	<li>1 päivä: Linux-työasemien liittäminen Windows-verkkoon (AD-integraatio)</li>\r\n 	<li>1 päivä: Linux-webpalvelimen asennus (ns. LAMP-kurssi)</li>\r\n 	<li>1 päivä: Linux Terminal Server -ympäristön pystytys (ns. LTSP-kurssi)</li>\r\n 	<li>1 päivä: Linuxin salausjärjestelmät</li>\r\n</ul>\r\nKoulutuksiin sisältyy myös oppimateriaalit (asennuslevyt ja ohjeet).\r\n\r\nOta yhteyttä ja kysy organisaatiosi tarpeiden mukaista koulutusta.\r\n<h1>Oppaat käyttäjän tueksi</h1>\r\nOlemme myös tehneet erilaisia Linuxiin ja avoimeen lähdekoodiin liittyviä käyttöoppaita, joista voidaan tehdä uusia versioita organisaationne tarpeisiin. Voimme myös kirjoittaa tarpeitanne ja toimintatapojanne vastaavan uuden käyttöoppaan.\r\n\r\nTekemiämme julkisia oppaita löytyy mm. <a href=\"http://fi.flossmanuals.net/\">Suomen FLOSSManuals</a> ja <a href=\"http://linux.fi/wiki/\">Linux.fi</a> -sivustoilta.\r\n\r\nOta yhteyttä, niin kerromme lisää.','Koulutus helpottaa käyttöä','','publish','closed','closed','','koulutus','','','2017-10-17 23:46:32','2017-10-17 20:46:32','',0,'https://linux-tuki.fi/?page_id=126',0,'page','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2017-10-17 23:33:19','2017-10-17 20:33:19','<h3>Tukipalvelun käyttöön liittyviä ohjeita</h3>\r\n<ul>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_kysyminen\">Ohjeita kysymyksen/tukipyynnön laatimiseksi jotta siihen olisi helppo vastata</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_kuvankaappaus\">Kuvankaappauksen ottaminen ongelmastasi</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_etayhteys\">Etäyhteyden avaaminen</a></li>\r\n</ul>\r\n<h3>Tukipalvelulta usein kysyttyjä kysymyksiä</h3>\r\n<ul>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_tietoturva\">Kotikäyttäjän tietoturvaopas</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_ostaminen\">Linuxissa hyvin toimivien laitteiden ostaminen</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_suomenkielinen_linux\">Suomennettujen ohjelmien asentaminen Linuxiin</a></li>\r\n 	<li><a href=\"https://linux-tuki.local/ohje_suomenkielinen_oikoluku\">Suomenkielisen oikoluvun asentaminen</a></li>\r\n</ul>','Ohjeet asiakkaille','','publish','closed','closed','','ohje','','','2017-10-17 23:40:11','2017-10-17 20:40:11','',0,'https://linux-tuki.fi/?page_id=128',0,'page','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2008-06-13 15:47:18','2008-06-13 12:47:18','Tietoviikko julkaisi 13.6.2008 artikkelin, jossa puitiin Linuxiin ja avoimen lähdekoodin ohjelmistoihin liittyviä uskomuksia. Artikkeli oli hyvin pinnallinen ja osittain viihteellinen, joten päätin kirjoittaa omat vastaukseni 12 myyttiin Linux-asiantuntijan näkökulmasta. Kun myyttejä puidaan, niin luulisi lukijoiden haluavan myös kunnon faktoja asioiden todellisesta tilasta?\r\n\r\nEnsinnäkin, kahden eri käyttöjärjestelmän vertaaminen keskenään ilman selkeää näkökulmaa käyttötarkoituksesta on erittäin hankalaa. Sekä Windowsista että Linuxista on olemassa useita eri versioita eri käyttötarkoituksiin, joten keskityn tässä käymään asiota läpi työpöytäkäyttäjän näkökulmasta. Windowsista on esimerkiksi laajassa käytössä mm. XP ja Vista, jotka eroavat merkittävästi toisistaan. Linux-puolella käyttäjän kokemukseen vaikuttaa suuresti valittu työpöytäympäristö, kuten helppokäyttöisyyteen ja selkeyteen panostava Gnome tai enemmän graafisia säätömahdollisuuksia tarjoava KDE. Lisäksi käyttöjärjestelmää verrattaessa pitää huomioida, mikä on nimenomaan käyttöjärjestelmän ominaisuus ettei vertailu kohdistu käyttöjärjestelmästä riippumattomiin varusohjelmiin. Järkevimmän vertailun saisi, jos vertaisi esimerkiksi uusimman Windows Vistan ja Ubuntu LTS-version tyypillistä työasema-asennusta.\r\n\r\nTietoviikon julkaisema puolueellinen vertailu muistuttaa Microsoftin \"Get the facts\"-mainoskampanjaa, joka on mm. Iso-Britanniassa saanut markkinointia valvovalta taholta huomautuksen kohtuuttomasta vääristelystä <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[viite 1, ks. sivun loppu]</a>. Poikkeuksellisen puolueettoman vertailun voi lukea esimerkiksi englanninkielisestä Wikipediasta <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[2]</a>. Microsoftin kilpailijat, kuten Red Hat ja Novell, ovat myös tehneet omat vastakampanjansa, jossa he esittävät Microsoftin väitteet kaatavia, hyvin perusteluja argumentteja <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[3,4,5]</a>. Myös IBM:n ja HP:n sivuilta löytyy runsaasti yritysnäkökulmasta kirjoitettua tietoa Linuxin teknisistä ja taloudellisista hyödyistä. Tämä ei kuitenkaan tarkoita, että Linux sopisi välttämättä kaikille. Kyllä Windowsilla on edelleen asemansa koti- ja pelikäytössä.\r\n\r\nAlla omat kommenttini myytteihin Linux-asiantuntijan näkökulmasta.\r\n<h3>1. Linux on turvallisempi kuin Windows</h3>\r\nMikään käyttöjärjestelmä ei ole aukoton, koska ohjelmakoodi on ihmisen kirjoittamaa ja ihminen on erehtyväinen. Unix-järjestelmät (joihin Linux kuuluu) ovat kuitenkin alusta alkaen kehitetty tietoverkkoon kytkettyä monikäyttäjän ympäristöä ajatellen, ja siksi se on rakenteellisesti paljon turvallisempi kuin Windows. Windowsista on vasta muutama vuosi sitten tehty monikäyttäjäversio ja esimerkiksi vasta Vistassa otettiin käyttöön Unix-maalimasta kopioitu sudo-tekniikka, joka kysyy käyttäjältä erikseen lupaa ylläpitotoimenpiteiden tekoon.\r\n\r\nUnixmainen Vista on toki jo tyydyttävällä tasolla tietoturvan suhteen, mutta edelleen Windowsista löytyvät reiät ovat useammin vakavampia kuin Linuxissa ja Microsoft julkaisee korjauspäivityksiä hitaammin. Linuxissa toimii avoimen lähdekoodin ansiosta \"Liinuksen laki\", eli mitä useampi ihminen näkee koodin, sitä suurempi osa vioista löytyy (ennen kuin niistä on haittaa). Linux-jakeluissa on yleensä erittäin tehokas ohjelmapakettien hallinta, jolla voi tehdä automaattiset tietoturvapäivitykset kaikkiin asennettuihin ohjelmiin, kun taas Windows Update päivittää vain Microsoftin ohjelmat. Linuxissa voi käyttää myös AppArmoria tai USA:n signaalitiedustelupalvelu NSA:n kehittämää SE-Linux-laajennusta, jotka huolehtivat, etteivät asennetut ohjelmat tee mitään muuta kuin mitä niiden on etukäteen sallittu tehdä, mikä vähentää tietoturva-aukkojen hyödyntämismahdollisuuksia oleellisesti.\r\n\r\nKoska tietoturva on niin laaja alue, kannattaa lukea vuonna 2004 tehty perusteellinen selvitys Linuxin ja Windowsin/Microsoftin tietoturvan eroista <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[6]</a>. Perusasiat tietoturvassa eivät muutu, ja siksi muutaman vuoden vanha selvitys on edelleen täyttä asiaa. Yksinkertaistettuna voidaan kuitenkin sanoa, että mitä tekniikan toimintaan tulee, on Linux selkeästi turvallisempi eikä turvallisuusmekanismit rajoita käyttökokemusta. Sekä Windowsissa että Linuxissa pitää toki edelleen kouluttaa käyttäjiä ajattelemaan myös tietoturvaa, mutta Linuxissa pärjää paljon pienemmällä käyttäjien kouluttamisella.\r\n<h3>2. Avoimissa ohjemissa on parempaa koodia kuin suljetuissa</h3>\r\nAvoimuus mahdollistaa eräänlaisen \"ohjelmistoevoluution\", jossa paras koodi jää eloon. Suljetussa ohjelmistoliiketoiminnassa markkinointi ja lisenssihinnat vääristävät tilannetta, ja yleensä parhaiten markkinoitu koodi \"jää eloon\", mikä ei usein olekaan lainkaan laadukkain koodi. Ohjelmistotalojen sisällä tehdyt koodin \"oikoluvut\" tapahtuvat usein paineen alaisena juuri ennen tuotteen julkaisua, eikä niihin osallistu kuin rajattu joukko ihmisiä. Jos ongelmia löytyy, yrityksen intressissä on enemmänkin niiden piilottelu ja korjausjulkaisujen tekeminen vasta jälkikäteen. Tällaista painetta ei ole avoimessa koodissa, eikä yleensä kukaan halua ottaa riskiä, että julkaisee avoimesti ala-arvoista koodia.\r\n\r\nAvoimen lähdekoodin ohjelmistoja tehdään palveluperusteisella bisnesmallilla, eikä ohjelmistokopioita/lisenssejä myymällä. Palveluperusteisessa bisnesmallissa asiakas maksaa aina todellisesta työstä ja toimittaja räätälöi ohjelmiston asiakaskohtaisesti siten, että ohjelmisto sopeutuu asiakkaan tarpeisiin eikä toisin päin.\r\n<h3>3. Linuxin ja avoimen koodin ohjelmat tulevat halvemmaksi kuin suljetun koodin</h3>\r\nAvoimuus on aina asiakkaan etu. Suljetun koodin ohjelmiston käyttö johtaa helposti riippuvuussuhteeseen ohjelmistotoimittajasta, jolloin riippuu ainoastaan ohjelmistotoimittajan ahneudesta, että kuinka paljon asiakkaalta lypsetään rahaa. Avoimia ohjelmistoja käyttäessä asiakas voi helpommin vaihtaa ohjelmistotoimittajaa osalle tai jopa koko järjestelmälle.\r\n<h3>4. Avoimen koodin järjestelmissä vastuunkantajaa ei voida nimetä</h3>\r\nOli bisnesmalli mikä tahansa, riippuu vastuun kantaminen aina tilaajan ja tuottajan välisestä sopimuksesta. Paljonko Microsoft on maksanut yrityksellesi korvauksia siitä, että jokin ohjelma on kaatuillut tai että Windowsiin on tullut virus? Kuten Microsoftin edustaja TiVi:ssä itse sanoi, asiakas on viime kädessä itse vastuussa. Monopoliasemassa oleva yritys sanelee ehdot, ja harvalla kilpailevalla yrityksellä on varaa tarjota parempia ehtoja. Voin avoimella koodilla voidaan rikkoa Microsoftin monopoli.\r\n\r\nJos ohjelma tekee jotakin rikollista, astuu rikosoikeudellinen vastuun kantaminen kuvaan, eikä sekään riipu siitä, onko koodi avoin vai suljettu.Silloin poliisi tutkii, kuka haittakoodin on ohjelmistoon upottanut. Avoimessa ohjelmistoprojektissa selvittäminen onnistuu helposti kiitos avoimen versionhallintajärjestelmän.\r\n<h3>5. Avoimen lähdekoodin lisenssiasioita/-sopimuksia ei ymmärrä erkkikään</h3>\r\nAvoimen lähdekoodin lisenssit ja ylipäänsä avoin kulttuuri eroaa merkittävästi suljetusta, joten siihen tutustuminen vaatii aikansa. Avoimia lisenssejä on toki useita, mutta ei niin paljon kuin suljetuissa ohjelmistoissa, joissa jokaisella valmistajalla on omansa. Yleisimmät avoimet lisenssit ovat GPL, LPGL sekä MIT:n ja BSD:n omat lisenssit. Näiden neljän lisenssin tuntemuksella pärjää pitkälle, ja itse asiassa ne ovat hyvin samankaltaisia. Suomessa on ainakin kaksi lakitoimistoa, jotka tuntevat avoimiin lisensseihin liittyvät asiat, joten sitäkin osaamista Suomesta löytyy. Kansainvälinen avointen lisenssien standardointityö <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[7]</a> tulee jatkossa vähentämään eri lisenssien määrää.\r\n<h3>6. Linux ei sovi vaikeakäyttöisyyden takia työasemiin</h3>\r\nTästä aiheesta en löytänyt kunnollista tutkimusta, mutta oma kokemukseni on se, että Linux on ollut työpöytäkäyttöön soveltuva jo vuodesta 2002 asti. Esimerkiksi Suomen Linux-tuen asiakkaista suurin osa käyttää Linuxissa työasemakäytössä, ja heidän kokemuksista huomaa, että nykyaikainen työasemakäyttöön tarkoitettu Linux-jakelu (esim Ubuntu) on jopa helpompi käyttää kuin Windows. Ubuntu-työaseman käyttö on helpompaa kuin Windowsin käyttö, koska ei tarvitse jatkuvasti pelätä viruksia tms tietoturvaongelmia ja koko järjestelmä toimii yhdenmukaisesti, joten ei tarvitse jokaista ohjelmaa käyttäessä opetella uusia asioita. Kokemusteni mukaan on Windows XP:stä on helpompi siirtyä Ubuntun käyttäjäksi kuin Vistan käyttäjäksi.\r\n<h3>7. Linux-osaajia ei ole Suomessa tarpeeksi ja/tai he ovat kalliita (suhteutettuna osaajapulaan)</h3>\r\nLinuxin \"keksijä\", Linus Torvalds on suomalainen, mutta hän ja monet muut todelliset tietotekniikkanerot menevät usein ulkomaille töihin yrityksiin, joissa on tarjolla haastavampia ja mielenkiintoisempia tehtäviä. Microsoft teki aikoinaan 1990-luvun alussa lahjoituksen Helsingin kaupungille, jonka ansiosta kaikkiin kouluihin saatiin \"ilmainen\" Windows-lisenssi. Nykyisin Suomelle \"ilmaiseksi\" annetulla Live@edu-palvelulla yritetään kasvattaa lapsista Microsoft Exchange -käyttäjiä. Ei siis mikään ihme, että tämä myytti on totta: lisää Linux-osaajia tarvitaan. Onneksi yliopistoissa sentään suurin osa oikeasta tietotekniikan opetuksesta perustuu Unix-käyttöjärjestelmiin. Hinta taas vähän riippuu - ainakin oma hintani 90 euroa/tunti on (Windows-alan) keskiarvoon verrattuna edullista.\r\n<h3>8. Organisaation tekninen väki vastustaa avoimen koodin järjestelmiä eniten</h3>\r\nMicrosoftin tuotteissa on pyritty tahalleen maksimoimaan monimutkaisuutta asiakkaan riippuvuussuhteen syventämiseksi. Tekninen väki ei jaksa opetella jatkuvasti uutta, varsinkaan jos se on yhtä hankalaa kuin mihin Microsoft-maailmassa on totuttu. Siksi avoimen lähdekoodin ohjelmistojen läpimurto riippuu pitkälti miten niiden helppokäyttöisyys ja tuotteistus edistyy. Muutan ohjelmat jäävät vain pienen eliitin käyttöön. Toisaalta löytyy myös teknistä väkeä, jolla on Unix-osaamista ja heille Linuxin opettelu käy helposti. Jos Linux-maalimaan pääsee sisään, niin sitten kaikki muuttuu paljon helpommaksi, koska avoimuus takaa, että mikään ei ole ainakaan keinotekoisesti tehty hankalaksi ja järjestelmien toiminta on erittäin läpinäkyvää.\r\n<h3>9. Linuxiin ei saa toimialakohtaisia sovelluksia</h3>\r\nMicrosoftin monopoliaseman ylläpitoa edistää se, että varusohjelmien toimittajat on saatu tekemään ohjelmistonsa käyttäen Windowsiin sidottuja tekniikoita, jolloin sovelluksen siirtäminen Linuxiin on hankalaa - mutta ei mahdotonta. Nyt kun sovelluksia joutuu kuitenkin ohjelmoimaan uudestaan Vistaan sopivaksi, kannattaisi ne saman tien ohjelmoida käyttöjärjestelmästä riippumattomilla avoimilla tekniikoilla.\r\n<h3>10. Avoimen koodin järjestelmät ovat Suomessa yhtä kuin Linux koululuokissa ja OpenOffice oikeusministeriössä</h3>\r\nNämä hankkeet ovat saaneet runsaasti julkisuutta, mutta ne eivät todellakaan ole ainoita. Lisätietoa avoimesta lähdekoodista Suomessa antaa mm. COSS. <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[8]</a>\r\n<h3>11. Erilaisia Linux-jakelupaketteja on liikaa</h3>\r\nDistrowatchin mukaan Linux-jakeluita on 570 <a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[9]</a>. Mutta mitä haittaa siitä on? Ei niitä kaikkia tarvitse käyttää, osata tai edes tietää. Onhan lähimmässä ruokakaupassakin tuhansia artikkeleita, eikä kukaan yleensä esitä toivetta, että esim. jäätelöaltaassa pitäisi olla vain yksi jäätelö valinnan helpottamiseksi. Jos olet kiinnostunut Linuxista etkä tiedä mistä aloittaa, niin maistele. Toisin kuin jäätelöä, Linux-jakeluita voi ladata ilmaiseksi netistä. Suosituin Linux-jakelu tällä hetkellä on Ubuntu, joten se on useimmille varma valinta. Linux-jakeluissa on kuitenkin pitkälti samat ohjelmistot ja ne on suunniteltu olemaan keskenään mahdollisimman yhteensopivia, joten jakelusta toiseen vaihtaminen ei ole yhtä hankalaa kuin Windows-versiosta toiseen vaihtaminen.\r\n<h3>12. Linux-väki voi pukeutua rennommin kuin muut</h3>\r\nAvoimuus, rehellisyys ja rentous näyttävät kulkevan yhdessä. Ja mihin sitä hienoa pukua tarvitsee, kun tietää että voi päteä osaamisellaan ihan riittävästi..\r\n<h3>Linuxin ja Windowsin eroista</h3>\r\nWikipedian artikkelin<a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[2]</a> lisäksi Windows-käyttäjän kannattaisi ehkä lukea Dominic Humphriesin kirjoittaman artikkelin<a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[10]</a> (tai sen suomennoksen<a href=\"https://linux-tuki.local/linux-myytit#viitteet\">[11]</a>) jossa on listattu yleisimmät ongelmat, joihin Windows-käyttäjä törmää luullessaan, että Linuxin tarkoituksena on tulla Windowsiksi Windowsin tilalle.\r\n<h3><a name=\"viitteet\"></a>Lähteet</h3>\r\n<ul>\r\n 	<li>[1] <a href=\"http://news.bbc.co.uk/1/hi/technology/3600724.stm\">http://news.bbc.co.uk/1/hi/technology/3600724.stm</a></li>\r\n 	<li>[2] <a href=\"http://en.wikipedia.org/wiki/Comparison_of_Windows_and_Linux\">http://en.wikipedia.org/wiki/Comparison_of_Windows_and_Linux</a></li>\r\n 	<li>[3] <a href=\"http://www.levanta.com/linuxstudy/\">http://www.levanta.com/linuxstudy/</a></li>\r\n 	<li>[4] <a href=\"http://www.novell.com/linux/\">http://www.novell.com/linux/</a></li>\r\n 	<li>[5] <a href=\"http://truthhappens.redhatmagazine.com/\">http://truthhappens.redhatmagazine.com/</a></li>\r\n 	<li>[6] <a href=\"http://www.theregister.co.uk/security/security_report_windows_vs_linux/\">http://www.theregister.co.uk/security/security_report_windows_vs_linux/</a></li>\r\n 	<li>[7] <a href=\"http://www.opensource.org/\">http://www.opensource.org/</a></li>\r\n 	<li>[8] <a href=\"http://www.coss.fi/\">http://www.coss.fi/</a></li>\r\n 	<li>[9] <a href=\"http://distrowatch.com/weekly.php?issue=20080616\">http://distrowatch.com/weekly.php?issue=20080616</a></li>\r\n 	<li>[10] <a href=\"http://linux.oneandoneis2.org/LNW.htm\">http://linux.oneandoneis2.org/LNW.htm</a></li>\r\n 	<li>[11] <a href=\"http://webd.savonia-amk.fi/www/kt22440/LNW/linux_eioo_windows.html\">http://webd.savonia-amk.fi/www/kt22440/LNW/linux_eioo_windows.html</a></li>\r\n</ul>\r\n<h4>Tietoviikon alkuperäinen artikkeli</h4>\r\n<cite>ks. TIVI 13.6.2008 s. 12-13</cite>\r\n\r\nTietoviikon artikkelin oli kirjoittanut toimittaja Jaana Ahlblad ja siinä oli asiantuntijoiksi valittu:\r\n<ul>\r\n 	<li>Microsoftin teknologiajohtaja Antti Larsio</li>\r\n 	<li>tietokirjailija Petteri Järvinen</li>\r\n 	<li>Tampereen kaupungin tietohallintojohtaja Teppo Sulonen</li>\r\n</ul>\r\nToivottavasti toimittaja löytää seuraavaa Linux-artikkeliaan varten myös Linux-asiantuntijan..','Kommentteja Tietoviikon artikkeliin \"Linux on turvallinen ja muita myyttejä\"','','publish','closed','closed','','linux-myytit','','','2017-10-17 23:56:16','2017-10-17 20:56:16','',0,'https://linux-tuki.fi/?p=134',0,'post','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2017-10-17 23:51:06','2017-10-17 20:51:06','Kuvankaappaus on kuva tietokoneen näkymästä. Kuvankaappaus ongelmastasi kertoo meille enemmän kuin tuhat sanaa.\r\n<h3>Gnome-työympäristössä</h3>\r\n<a href=\"https://linux-tuki.local/pict/gnome_kuvankaappaus.png\"><img class=\"right\" src=\"https://linux-tuki.local/pict/gnome_kuvankaappaus_pieni.png\" alt=\"Gnome kuvankaappaus\" /></a> Avaa kuvankaappausohjelma painamalla näppäimistön painiketta <kbd>Print Screen</kbd> (voi olla myös lyhennetty, esim <kbd>Prt Sc</kbd>). Vaihtoehtoisesti voit myös painaa <kbd>Alt+F2</kbd> ja ajaa suoritusikkunasta komennon <code>gnome-screenshot</code>. Ohjelma ottaa heti kuvankaappauksen, ja auki tulevasta ikkunasta voi määritellä tallennettavan kuvan tiedostonimen ja kansion. Ohjelma ehdottaa yleensä tiedostonimeksi <em>Kuvankaappaus.png</em>ja kansioksi työpöytää, minkä sinäkin voit valita. Avaa seuraavaksi sähköposti ja lähetä kuva liitetiedostona meille.\r\n<h3>KDE-työympäristössä</h3>\r\nAvaa kuvankaappausohjelma valitsemalla alapalkista <code>K › Grafiikka › Ksnapshot</code>. Aseta <code>Kaappaustila: kokoruutu</code> ja <code>Kuvankaappauksen viive: 5s</code>. Painettuasi <code>Uusi kuvankaappaus</code> sinulla on viis sekuntia aikaa saada virhetilanne näkymään ruudulla jotta siitä tulisi kuvankaappaus.\r\n\r\nSaatuasi onnistuneen kuvan tallenna se valitsemalla <code>Tallenna nimellä</code>. Lähetä meille lopulta kuva sähköpostiviestin liitetiedostona.\r\n<h3>Muu graafinen ympäristö</h3>\r\nTyöympäristöstä riippumatta voi graafisen näkymän kaapata myös ajamalla tekstikonsolissa komennon <code>xwd -root | xwdtopnm | pnmtopng &gt; kuvankaappaus.png</code>. Kuvan otettaessa kuuluu merkkiääni jonka jälkeen ohjelma käsittelee kuvaa hetken aikaa. Lopullinen tulos on <em>kuvankaappaus.png</em> jonka voit lähettää meille sähköpostitse.','Kuvankaappauksen ottaminen','','publish','closed','closed','','kuvankaappaus','','','2017-10-17 23:51:15','2017-10-17 20:51:15','',128,'https://linux-tuki.fi/?page_id=137',0,'page','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2017-10-17 23:51:50','2017-10-17 20:51:50','Yksi syy Linuxin suosioon erityisesti ammattilaiskäytössä on sen korkea tietoturvan taso. Mikään järjestelmä ei kuitenkaan ole täysin aukoton, joten Linux-käyttäjänkin täytyy ymmärtää tietoturvan perusasiat.\r\n<h3>Rajoitetut käyttäjäoikeudet</h3>\r\n<strong>Älä käytä Linux-järjestelmääsi root-tunnuksella.</strong> Kyseinen tunnus on ainoastaan ylläpitotoimenpiteitä varten. Päivittäinen tietokonetyöskentely tulee tapahtua normaalikäyttäjänä jonka oikeudet on rajattu normaalikäyttöön sopivaksi. Normaalikäyttäjänäkin on helppo suorittaa halutessaa ylläpitotoimenpiteitä esimerkisi <code>sudo</code>-komennolla. Tämä on normaali käytäntö Ubuntussa.\r\n\r\nKäyttöoikeuksien oikeaoppinen hallinta on Linux-järjestelmien tietoturvan perusta.\r\n<h3>Käyttöjärjestelmän päivittäminen</h3>\r\nJopa normaalin kotikäyttäjän Linux-järjestelmässä on tuhansia ohjelmia joiden tekemiseksi on kirjoitettu miljoonia rivejä lähdekoodia. Inhimillinen tekijä huomioon ottaen on todennäköistä, että näin suuressa ohjelmamäärässä jossakin ohjelmassa on sellainen tahaton virhe, jota hyödyntämällä järjestelmään voi tehtä tietomurron.\r\n\r\nKoska Linux perustuu avoimeen lähdekoodiin jota kaikki voivat lukea vapaasti, löydetään virheet kuitenkin yleensä nopeasti ja niille myöskin julkaistaan <em>tietoturvapäivitykset</em> nopeasti. Tietoturvapäivitykset ovat ohjelmien erikoispäivityksiä siinä mielessä, että ne ainoastaan paikkaavat tietoturvareiän eivätkä siis pakota käyttäjää päivittämään ohjelmaa uusimpaan versioon. Linux-järjestelmän voi halutessaan asettaa hakemaan ja asentamaan kaikki tietoturvapäivitykset automaattisesti käyttäjää häiritsemättä.\r\n\r\nErityisesti Debian-pohjaisten Linux-jakeluiden (kuten Ubuntun) suosio perustu pitkälti Debianin mainioon ohjelmapakettihallintaan joka mahdollistaa mm. koko järjestelmän erittäin helpon päivittämisen. Ubuntussa on mahdollista yhdellä ainoalla komennolla päivittää <em>kaikki</em>tietokoneessa olevat ohjelmat uusimpaan versioon.\r\n\r\nVihamielinen tietokonemurtautuja (eng. cracker) voi myös yrittää ujuttaa oman haittaohjelmansa järjestelmään naamioimalla sen tietoturvapäivitykseksi. Ubuntussa on mahdollista allekirjoittaa kaikki ohjelmapaketit sähköisesti, mikä varmistaa että päivitykset todellakin tulevat virallisesta lähteestään.\r\n<h3>Virustorjunta</h3>\r\nWindowsille on olemassa arviolta 100 000 virusta. Unixiin perustuville MacOS X:lle ja Linuxille viruksia on 0 kappaletta.\r\n\r\nEi ole täysin mahdotonta että Linuxillekin tulisi jonain päivänä viruksia, mutta ainakaan toistaiseksi Linuxiin ei todellakaan tarvitse virustorjuntaohjelmistoa, sillä virustorjuntaohjelmisto itsessäänkin on tietoturvariski (krakkeri kun voi naamioida haittaohjelman virusohjelman päivitykseksi).\r\n<h3>Palomuuri</h3>\r\nLinux-ytimeen on sisäänrakennettu tehokas palomuuri. Kotikäyttäjille suunnatuissa Linux-jakeluissa palomuuriasetukset ovat useimmiten valmiiksi kotikäyttöön sopivat.\r\n\r\nPalomuuriakin tärkeämpää on se, että tietokoneessa ei ole käynnissä mitään palvelinohjelmia joihin ulkopuolinen voisi ottaa yhteyttä Internetistä käsin. Älä siis asenna Linux-järjestelmääsi www-palvelimia, tietokantapalvelimia, tiedostopalvelimia, etäkäyttöpalvelimia tai vastaavia ellet tiedä mitä teet!\r\n<h3>Lisätietoja</h3>\r\nLisätietoja Linuxin tietoturvasta löydät <a href=\"http://www.linux.fi/\">Linux.fi:n Wikistä</a>. Myös <a href=\"http://www.tietoturvaopas.fi/\">Tietoturvaopas.fi</a> on hyödyllinen.\r\n\r\nLisätietoja <a href=\"http://linux.sange.fi/\">linux.sange.fi</a>:n sivulla <a href=\"http://linux.sange.fi/turvallisuus\">avoimen lähdekoodin turvallisuus</a>.\r\n<h3>Varmuuskopiointi</h3>\r\nAinoa varma tapa suojata arvokkaat tiedot onnettomuutta, käyttäjän omaa vahinkoa tai ulkopuolista uhkaa vastaan on varmuuskopioida tiedot. Linuxille on olemassa useita varmuuskopiointiohjelmistoja, mutta myös yksinkertaisilla perustyökaluilla voi laittaa tietonsa turvaan ja tarkistaa varmuuskopioiden niiden eheys.\r\n\r\nEsimerkiksi tiedot voi arkistoida pakattuun muotoon komennolla <code>tar czvpf <em>pakattu-arkistotiedosto</em>-`date +%Y-%m-%d`.tgz<em>/arkistoitava-hakemisto/</em></code>. Arkistosta kannattaa tallentaa myös md5-tarkiste komennolla <code>md5sum <em>tiedostonimi</em> &gt; <em>tiedostonimi</em>.md5sum</code>. Tiedoston md5-tarkiste muuttuu mikäli yksikin tavu muuttuu. Vanhaa ja nykyistä md5-tarkistetta vertailemalla tietää siis onko tiedosto ehjä. Varmuuskopio kannattaa säilyttää fyysisesti erillisessä paikassa.','Kotikoneen tietoturva','','publish','closed','closed','','tietoturva','','','2017-10-17 23:51:57','2017-10-17 20:51:57','',128,'https://linux-tuki.fi/?page_id=139',0,'page','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2017-10-17 23:59:22','2017-10-17 20:59:22','\r\n<p>Mitä paremman tukipyynnön esität, sitä nopeammin pystymme palvelemaan sinua.</p>\r\n\r\n<p>Hyvän tukipyynnön avulla pystymme nopeasti rajaamaan ongelman lähteen, yhdistämään asiakkaan sopivalle tukihenkilölle ja lopulta hoitamaan asian.</p>\r\n\r\n<p>Hyvässä tukipyynnössä on yleensä paljon tietoa, jopa enemmän kuin ongelman selvittäminen vaatisi. Tässä lueteltuna tukipyynnön vähimmäisvaatimukset:</p>\r\n<ul>\r\n<li>Pyri kuvailemaan mitä tarkalleen teit juuri ennen kun ongelma ilmestyi. Kuvauksen tulisi mielellään olla niin tarkka, että jos tukihenkilö olisi koneesi ääressä, pystyisi hän toistamaan ongelman.</li>\r\n<li>Jos ongelmaan liittyy virheilmoitus, kerro se meille sanasta sanaan. Voit lähettää meille myös esimerkiksi <?php $tp->crosslink(\'ohje_kuvankaappaus\', \'kuvankaappauksen\'); ?> ongelmasta.</li>\r\n<li>Kerro aina myös mitä Linux-jakelua käytät sekä muut olennaiset perustiedot.</li>\r\n</ul>\r\n\r\n<h3>Esimerkkejä</h3>\r\n\r\n<h4>Esimerkki vaikeasti ratkaistavasta tukipyynnöstä:</h4>\r\n<p>Hei! Minulle on lähetetty digi-kuva, jota en saa koneesta esiin. \r\nMissä on virhe ja mitä pitää asialle tehdä. Terveisin, kiireinen asiakas.</p>\r\n\r\n<h4>Esimerkki hyvästä tukipyynnöstä:</h4>\r\n<p>Hei! Luin sähköpostiani KMail-ohjelmalla, ja minulle oli tullut viesti jossa oli liitetiedostona digikuva.zip-niminen tiedosto. Napsautin liitteen ikonia ja esiin tuli ikkuna jossa luki \"Connection timed out.\" ja OK-painike. Mitä minun pitää tehdä jotta saan kuvat näkyviin? Järjestelmäni on Ubuntu Linux versio 11.04 ja käytän Welho-laajakaistapalvelun sähköpostia. Terveisin, kiireinen asiakas</p>','Ohjeita hyvän tukipyynnön tekemiseksi','','publish','closed','closed','','kysyminen','','','2017-10-17 23:59:22','2017-10-17 20:59:22','',128,'https://linux-tuki.fi/?page_id=142',0,'page','',0);
INSERT INTO `wp_posts` VALUES (144,1,'2017-10-18 00:00:23','2017-10-17 21:00:23','<p>Useimmat laajassa käytössä olevat avoimen lähdekoodin ohjelmat ovat suomennettu ainakin osittain. Joidenkin ohjelmien osalta suomennostyö on edennyt suljetun lähdekoodin vastaavuuksia paljon pidemmälle. Lisätietoja suomennustyöstä sekä ohjelmistojen sovittamisesta Suomen standardeihin löytyy osoitteesta  <a href=\"http://lokalisointi.org/\">lokalisointi.org</a>.</p>\r\n\r\n<h3>Suomenkielisen käyttöliittymän asentaminen</h3>\r\n<p>Nykyisissä Linux-jakeluissa suomenkielisyyden voi valita helposti jo asennusvaiheessa, joten se ei liene enää ongelma ja tällä sivulla olleet ohjeet on poistettu.</p>\r\n\r\n<p> Jotkut erikoisohjelmat saattavat tosin vaatia edelleen erillisten suomennusten asentamista. Kokeile ohjelmapakettihallinnan hakutoimintoa ja yritä löytää ohjelmapaketteja joiden kuvauksissa esiintyy sana \"finnish\". Voit asentaa vaikka kaikki tällä tavalla löytämäsi ohjelmat.</p>\r\n','Suomenkielinen Linux','','publish','closed','closed','','suomenkielinen-linux','','','2017-10-18 00:00:30','2017-10-17 21:00:30','',128,'https://linux-tuki.fi/?page_id=144',0,'page','',0);
INSERT INTO `wp_posts` VALUES (148,1,'2017-10-18 00:06:27','2017-10-17 21:06:27','<h1>Ylläpidämme ja tuemme käyttöä</h1>\r\nOhjelma ei asennu oikein? Palvelimen kanssa on ongelmia? Me ratkaisemme ongelmanne.\r\n\r\nTarjoamme avoimen lähdekoodin ohjelmien tukipalveluita sekä tavallisille loppukäyttäjille että erilaisille yrityksille ja organisaatioille.\r\n\r\nTarjoamme ylläpitoa sekä tuntiveloituksella että ylläpitosopimuksella, jossa on palveluvastetakuu. Ylläpitosopimukseen kuuluu myös nimetyt ylläpitäjät ja varahenkilöjärjestelyt, etävalvonta ja kaikki muu, mikä takaa että asiakkaan ei tarvitse murehtia ylläpidosta, vaan voi keskittyä omaan ydintoimintaansa.\r\n\r\nYlläpidämme kaikenlaisia Linux-pohjaisia järjestelmiä, sekä mobiililaitetta, työasemia että palvelimia.\r\n\r\nMeillä on myös oma palvelinkeskus, johon voidaan siirtää asiakkaan järjestelmiä, jolloin asiakkaan ei tarvitse huolehtia edes laitteistotiloista.\r\n\r\nTavanomaisista ylläpitopalveluista poiketen kaikki ylläpitäjämme ovat ohjelmointitaitoisia. Kykenemme ylläpitämään tietojärjestelmiä ja tarvittaessa myös parantelemaan niitä.\r\n\r\nYlläpitopalvelumme sopivat monenlaisille asiakkaille, aina loppukäyttäjän tukipalvelusta asiantuntijatason lisäkapasiteetin tarpeeseen asti.\r\n\r\n<strong>Teemme avoimen lähdekoodin ohjelmien käytöstä helppoa asiakkaillemme.</strong>\r\n\r\nOta yhteyttä, niin kerromme lisää.','Ylläpito-palvelu','','publish','closed','closed','','yllapito-palvelu','','','2017-10-18 00:06:27','2017-10-17 21:06:27','',0,'https://linux-tuki.fi/?page_id=148',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_redirection_404`
--

DROP TABLE IF EXISTS `wp_redirection_404`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_redirection_404` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `url` (`url`(191)),
  KEY `ip` (`ip`),
  KEY `referrer` (`referrer`(191))
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_redirection_404`
--

LOCK TABLES `wp_redirection_404` WRITE;
/*!40000 ALTER TABLE `wp_redirection_404` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_redirection_404` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_redirection_groups`
--

DROP TABLE IF EXISTS `wp_redirection_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_redirection_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tracking` int(11) NOT NULL DEFAULT '1',
  `module_id` int(11) unsigned NOT NULL DEFAULT '0',
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `module_id` (`module_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_redirection_groups`
--

LOCK TABLES `wp_redirection_groups` WRITE;
/*!40000 ALTER TABLE `wp_redirection_groups` DISABLE KEYS */;
INSERT INTO `wp_redirection_groups` VALUES (1,'Redirections',1,1,'enabled',0);
/*!40000 ALTER TABLE `wp_redirection_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_redirection_items`
--

DROP TABLE IF EXISTS `wp_redirection_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_redirection_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `regex` int(11) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `last_count` int(10) unsigned NOT NULL DEFAULT '0',
  `last_access` datetime NOT NULL,
  `group_id` int(11) NOT NULL DEFAULT '0',
  `status` enum('enabled','disabled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `action_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_code` int(11) unsigned NOT NULL,
  `action_data` mediumtext COLLATE utf8mb4_unicode_ci,
  `match_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`(191)),
  KEY `status` (`status`),
  KEY `regex` (`regex`),
  KEY `group_idpos` (`group_id`,`position`),
  KEY `group` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_redirection_items`
--

LOCK TABLES `wp_redirection_items` WRITE;
/*!40000 ALTER TABLE `wp_redirection_items` DISABLE KEYS */;
INSERT INTO `wp_redirection_items` VALUES (6,'/ohje_etayhteys',0,1,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/etayhteys','url','');
INSERT INTO `wp_redirection_items` VALUES (7,'ohje_([a-z]+)',1,0,12,'2017-10-18 00:19:23',1,'enabled','url',301,'ohje/$1','url','');
INSERT INTO `wp_redirection_items` VALUES (8,'/ohje/suomenkielinen_linux',0,2,1,'2017-10-18 00:00:53',1,'enabled','url',301,'/ohje/suomenkielinen-linux','url','');
INSERT INTO `wp_redirection_items` VALUES (9,'/ohje/suomenkielinen_oikoluku',0,3,1,'2017-10-18 00:10:46',1,'enabled','url',301,'/ohje/suomenkielinen-oikoluku','url','');
INSERT INTO `wp_redirection_items` VALUES (10,'/helpdesk',0,4,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/','url','');
INSERT INTO `wp_redirection_items` VALUES (11,'/konsultointi',0,5,1,'2017-10-18 00:10:13',1,'enabled','url',301,'/yritysasiakkaat/kehitys/','url','');
INSERT INTO `wp_redirection_items` VALUES (12,'/ohjeet',0,6,1,'2017-10-18 00:10:41',1,'enabled','url',301,'/ohje','url','');
INSERT INTO `wp_redirection_items` VALUES (13,'/sitemap',0,7,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/sitemap.xml','url','');
INSERT INTO `wp_redirection_items` VALUES (14,'/asiantuntijatuki',0,8,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/yritysasiakkaat','url','');
INSERT INTO `wp_redirection_items` VALUES (15,'/svenska',0,9,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/sv','url','');
INSERT INTO `wp_redirection_items` VALUES (16,'/english',0,10,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/en','url','');
INSERT INTO `wp_redirection_items` VALUES (17,'/palaute',0,11,0,'0000-00-00 00:00:00',1,'enabled','url',301,'/yritysasiakkaat/yhteystiedot/','url','');
INSERT INTO `wp_redirection_items` VALUES (18,'/hinnasto-yksityisille',0,12,1,'2017-10-18 00:14:23',1,'enabled','url',301,'/henkiloasiakkaat','url','');
INSERT INTO `wp_redirection_items` VALUES (19,'/senioripc',0,13,1,'2017-10-18 00:14:55',1,'enabled','url',301,'/henkiloasiakkaat','url','');
INSERT INTO `wp_redirection_items` VALUES (20,'/hinnasto-yrityksille',0,14,1,'2017-10-18 00:14:43',1,'enabled','url',301,'/yritysasiakkaat/hinnasto','url','');
/*!40000 ALTER TABLE `wp_redirection_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_redirection_logs`
--

DROP TABLE IF EXISTS `wp_redirection_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_redirection_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_to` mediumtext COLLATE utf8mb4_unicode_ci,
  `agent` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `referrer` mediumtext COLLATE utf8mb4_unicode_ci,
  `redirection_id` int(11) unsigned DEFAULT NULL,
  `ip` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_id` int(11) unsigned NOT NULL,
  `group_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `redirection_id` (`redirection_id`),
  KEY `ip` (`ip`),
  KEY `group_id` (`group_id`),
  KEY `module_id` (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,3,0);
INSERT INTO `wp_term_relationships` VALUES (1,4,0);
INSERT INTO `wp_term_relationships` VALUES (7,4,0);
INSERT INTO `wp_term_relationships` VALUES (7,6,0);
INSERT INTO `wp_term_relationships` VALUES (8,2,0);
INSERT INTO `wp_term_relationships` VALUES (8,13,0);
INSERT INTO `wp_term_relationships` VALUES (10,5,0);
INSERT INTO `wp_term_relationships` VALUES (10,13,0);
INSERT INTO `wp_term_relationships` VALUES (11,4,0);
INSERT INTO `wp_term_relationships` VALUES (11,10,0);
INSERT INTO `wp_term_relationships` VALUES (12,9,0);
INSERT INTO `wp_term_relationships` VALUES (12,13,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (16,2,0);
INSERT INTO `wp_term_relationships` VALUES (17,3,0);
INSERT INTO `wp_term_relationships` VALUES (17,18,0);
INSERT INTO `wp_term_relationships` VALUES (19,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (28,2,0);
INSERT INTO `wp_term_relationships` VALUES (30,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,2,0);
INSERT INTO `wp_term_relationships` VALUES (34,2,0);
INSERT INTO `wp_term_relationships` VALUES (36,14,0);
INSERT INTO `wp_term_relationships` VALUES (37,14,0);
INSERT INTO `wp_term_relationships` VALUES (38,14,0);
INSERT INTO `wp_term_relationships` VALUES (39,14,0);
INSERT INTO `wp_term_relationships` VALUES (40,14,0);
INSERT INTO `wp_term_relationships` VALUES (41,14,0);
INSERT INTO `wp_term_relationships` VALUES (42,14,0);
INSERT INTO `wp_term_relationships` VALUES (43,14,0);
INSERT INTO `wp_term_relationships` VALUES (44,14,0);
INSERT INTO `wp_term_relationships` VALUES (45,14,0);
INSERT INTO `wp_term_relationships` VALUES (69,2,0);
INSERT INTO `wp_term_relationships` VALUES (72,14,0);
INSERT INTO `wp_term_relationships` VALUES (88,15,0);
INSERT INTO `wp_term_relationships` VALUES (89,16,0);
INSERT INTO `wp_term_relationships` VALUES (90,2,0);
INSERT INTO `wp_term_relationships` VALUES (97,2,0);
INSERT INTO `wp_term_relationships` VALUES (98,2,0);
INSERT INTO `wp_term_relationships` VALUES (103,2,0);
INSERT INTO `wp_term_relationships` VALUES (104,2,0);
INSERT INTO `wp_term_relationships` VALUES (107,2,0);
INSERT INTO `wp_term_relationships` VALUES (109,2,0);
INSERT INTO `wp_term_relationships` VALUES (110,2,0);
INSERT INTO `wp_term_relationships` VALUES (112,1,0);
INSERT INTO `wp_term_relationships` VALUES (112,2,0);
INSERT INTO `wp_term_relationships` VALUES (114,2,0);
INSERT INTO `wp_term_relationships` VALUES (116,1,0);
INSERT INTO `wp_term_relationships` VALUES (116,2,0);
INSERT INTO `wp_term_relationships` VALUES (118,2,0);
INSERT INTO `wp_term_relationships` VALUES (124,2,0);
INSERT INTO `wp_term_relationships` VALUES (126,2,0);
INSERT INTO `wp_term_relationships` VALUES (128,2,0);
INSERT INTO `wp_term_relationships` VALUES (134,1,0);
INSERT INTO `wp_term_relationships` VALUES (134,2,0);
INSERT INTO `wp_term_relationships` VALUES (134,17,0);
INSERT INTO `wp_term_relationships` VALUES (137,2,0);
INSERT INTO `wp_term_relationships` VALUES (139,2,0);
INSERT INTO `wp_term_relationships` VALUES (141,2,0);
INSERT INTO `wp_term_relationships` VALUES (142,2,0);
INSERT INTO `wp_term_relationships` VALUES (144,2,0);
INSERT INTO `wp_term_relationships` VALUES (146,2,0);
INSERT INTO `wp_term_relationships` VALUES (148,2,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'language','a:3:{s:6:\"locale\";s:2:\"fi\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"fi\";}',0,25);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'term_language','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'term_translations','a:3:{s:2:\"en\";i:11;s:2:\"fi\";i:1;s:2:\"sv\";i:7;}',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'language','a:3:{s:6:\"locale\";s:5:\"sv_SE\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"se\";}',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'term_language','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'language','a:3:{s:6:\"locale\";s:5:\"en_GB\";s:3:\"rtl\";i:0;s:9:\"flag_code\";s:2:\"gb\";}',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'term_language','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'post_translations','a:3:{s:2:\"sv\";i:10;s:2:\"fi\";i:8;s:2:\"en\";i:12;}',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'nav_menu','',0,11);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'post_tag','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'term_translations','a:1:{s:2:\"fi\";i:17;}',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
INSERT INTO `wp_termmeta` VALUES (1,1,'autodescription-term-settings','a:6:{s:8:\"doctitle\";s:0:\"\";s:11:\"description\";s:0:\"\";s:7:\"noindex\";i:0;s:8:\"nofollow\";i:0;s:9:\"noarchive\";i:0;s:10:\"saved_flag\";i:1;}');
INSERT INTO `wp_termmeta` VALUES (2,7,'autodescription-term-settings','a:6:{s:8:\"doctitle\";s:0:\"\";s:11:\"description\";s:0:\"\";s:7:\"noindex\";i:0;s:8:\"nofollow\";i:0;s:9:\"noarchive\";i:0;s:10:\"saved_flag\";i:1;}');
INSERT INTO `wp_termmeta` VALUES (3,11,'autodescription-term-settings','a:6:{s:8:\"doctitle\";s:0:\"\";s:11:\"description\";s:0:\"\";s:7:\"noindex\";i:0;s:8:\"nofollow\";i:0;s:9:\"noarchive\";i:0;s:10:\"saved_flag\";i:1;}');
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Yleinen','yleinen',0);
INSERT INTO `wp_terms` VALUES (2,'Suomi','fi',0);
INSERT INTO `wp_terms` VALUES (3,'Suomi','pll_fi',0);
INSERT INTO `wp_terms` VALUES (4,'pll_59da033c04dfd','pll_59da033c04dfd',0);
INSERT INTO `wp_terms` VALUES (5,'Svenska','sv',0);
INSERT INTO `wp_terms` VALUES (6,'Svenska','pll_sv',0);
INSERT INTO `wp_terms` VALUES (7,'Allmän','allman',0);
INSERT INTO `wp_terms` VALUES (9,'English','en',0);
INSERT INTO `wp_terms` VALUES (10,'English','pll_en',0);
INSERT INTO `wp_terms` VALUES (11,'General','general',0);
INSERT INTO `wp_terms` VALUES (13,'pll_59da076db0d35','pll_59da076db0d35',0);
INSERT INTO `wp_terms` VALUES (14,'Päävalikko FIN','paavalikko-fin',0);
INSERT INTO `wp_terms` VALUES (15,'Päävalikko SWE','paavalikko-swe',0);
INSERT INTO `wp_terms` VALUES (16,'Päävalikko ENG','paavalikko-eng',0);
INSERT INTO `wp_terms` VALUES (17,'Linux','linux',0);
INSERT INTO `wp_terms` VALUES (18,'pll_59e66df31e25c','pll_59e66df31e25c',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','vagrant');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (7,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (8,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (9,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (10,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (11,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (13,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (14,1,'show_welcome_panel','0');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'vagrant','$P$Bil1qFP4Wy7za5I376kaWFnfAevb1F0','vagrant','vagrant@linux-tuki.local','','2017-10-17 21:42:30','',0,'vagrant');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-17 21:21:34
