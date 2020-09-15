-- MySQL dump 10.16  Distrib 10.2.32-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.2.32-MariaDB-1:10.2.32+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `identifier` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(120) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `widgets` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1598690837,1598690837,1,0,0,0,0,'517d3ac80577426f9a204a7b16c10ceb88817842','My dashboard','{\"61e60b0527f52e287bc8938d613d831e844a7dbe\":{\"identifier\":\"t3information\"},\"69828ea48404d1958ff831673471dcdff02a60e6\":{\"identifier\":\"t3news\"},\"5f332ad2875d001f981e2c855e1837f48be0f284\":{\"identifier\":\"docGettingStarted\"}}');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `availableWidgets` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('cdbeaf79e748e50722d9c4df235ce8fe','[DISABLED]',1,1600191658,'a:5:{s:26:\"formProtectionSessionToken\";s:64:\"058e3cda7c726a0b0c61706db7735c05b344e247b5dac40571a3e1f9ff481439\";s:27:\"core.template.flashMessages\";N;s:80:\"extbase.flashmessages.tx_extensionmanager_tools_extensionmanagerextensionmanager\";N;s:44:\"extbase.flashmessages.tx_mask_tools_maskmask\";N;s:62:\"extbase.flashmessages.tx_maskexport_tools_maskexportmaskexport\";a:1:{i:0;O:37:\"TYPO3\\CMS\\Core\\Messaging\\FlashMessage\":4:{s:17:\"\0*\0storeInSession\";b:1;s:8:\"\0*\0title\";s:59:\"Extension files of my_mask_export were written successfully\";s:10:\"\0*\0message\";s:0:\"\";s:11:\"\0*\0severity\";i:0;}}}',0);
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1598690814,1598690814,0,0,0,0,0,NULL,'wwagner',0,'$argon2i$v=19$m=65536,t=16,p=1$c21GLzRzWS9lTmd0aUlMMg$dvV0dXO7plPCPUcqn6wmZivplym1tt46ZROzixhJJvM',1,'','','',NULL,0,'',NULL,'','a:17:{s:14:\"interfaceSetup\";s:7:\"backend\";s:10:\"moduleData\";a:9:{s:28:\"dashboard/current_dashboard/\";s:40:\"517d3ac80577426f9a204a7b16c10ceb88817842\";s:6:\"web_ts\";a:6:{s:8:\"function\";s:87:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateObjectBrowserModuleFunctionController\";s:19:\"constant_editor_cat\";s:33:\"TYPO3 9 Videotraining Sitepackage\";s:15:\"ts_browser_type\";s:5:\"setup\";s:16:\"ts_browser_const\";s:1:\"0\";s:23:\"ts_browser_showComments\";s:1:\"1\";s:25:\"tsbrowser_depthKeys_setup\";a:3:{s:10:\"tt_content\";i:1;s:33:\"tt_content.mymaskexport_accordeon\";i:1;s:51:\"tt_content.mymaskexport_accordeon.templateRootPaths\";i:1;}}s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:10:\"FormEngine\";a:2:{i:0;a:4:{s:32:\"83389664fedcd68b1f6055625b9cc654\";a:4:{i:0;s:15:\"Erste Akkordeon\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"2\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:14:\"mask_accordeon\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:169:\"&edit%5Btt_content%5D%5B4%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=2&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=mask_accordeon\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:4;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"8d83d1888c7a0ce1ef776150af3d8eb9\";a:4:{i:0;s:27:\"Mein exportiertes Akkordeon\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:10;s:4:\"edit\";}}s:7:\"defVals\";a:1:{s:10:\"tt_content\";a:3:{s:6:\"colPos\";s:1:\"2\";s:16:\"sys_language_uid\";s:1:\"0\";s:5:\"CType\";s:22:\"mymaskexport_accordeon\";}}s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:178:\"&edit%5Btt_content%5D%5B10%5D=edit&defVals%5Btt_content%5D%5BcolPos%5D=2&defVals%5Btt_content%5D%5Bsys_language_uid%5D=0&defVals%5Btt_content%5D%5BCType%5D=mymaskexport_accordeon\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:10;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"37f3f7a23a142dde5d82d39b74f95c1d\";a:4:{i:0;s:22:\"Mein zweites Akkordeon\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:15;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B15%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:15;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"37f3f7a23a142dde5d82d39b74f95c1d\";}s:16:\"opendocs::recent\";a:6:{s:32:\"37f3f7a23a142dde5d82d39b74f95c1d\";a:4:{i:0;s:36:\"Mein exportiertes Akkordeon (copy 1)\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:15;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B15%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:15;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"9c43855926e54a70d4d0a190cb54db8c\";a:4:{i:0;s:278:\"<span title=\"Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Qui...\">Etiam imperdiet imperdiet orci. Etiam feugiat lore...</span>\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:11;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B11%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:11;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ffbd6ae78a9aa555f88d6295c30fb80c\";a:4:{i:0;s:27:\"Mein exportiertes Akkordeon\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:10;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:34:\"&edit%5Btt_content%5D%5B10%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:10;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"a3b9454ecc0d182884b26f9c529ddb87\";a:4:{i:0;s:15:\"Erste Akkordeon\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:4;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B4%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:4;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"86205c5935270b8ee413592ec1b62292\";a:4:{i:0;s:8:\"NEW SITE\";i:1;a:6:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:35:\"&edit%5Bsys_template%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"696addfecc296b326ff6e9f04c7ff3e1\";a:4:{i:0;s:4:\"Home\";i:1;a:6:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;s:9:\"workspace\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:10:\"web_layout\";a:2:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";}s:16:\"browse_links.php\";a:1:{s:12:\"expandFolder\";s:15:\"1:/user_upload/\";}s:9:\"file_list\";a:1:{s:13:\"displayThumbs\";s:1:\"1\";}s:9:\"clipboard\";a:5:{s:6:\"normal\";a:2:{s:2:\"el\";a:1:{s:13:\"tt_content|10\";s:1:\"1\";}s:4:\"mode\";s:4:\"copy\";}s:5:\"tab_1\";a:0:{}s:5:\"tab_2\";a:0:{}s:5:\"tab_3\";a:0:{}s:7:\"current\";s:6:\"normal\";}}s:19:\"thumbnailsByDefault\";i:1;s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:15:\"resizeTextareas\";i:1;s:25:\"resizeTextareas_MaxHeight\";i:500;s:24:\"resizeTextareas_Flexible\";i:0;s:4:\"lang\";s:0:\"\";s:19:\"firstLoginTimeStamp\";i:1598690834;s:15:\"moduleSessionID\";a:9:{s:28:\"dashboard/current_dashboard/\";s:32:\"7d80deb34baa95e72e712ba55279ade7\";s:6:\"web_ts\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:10:\"FormEngine\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:16:\"opendocs::recent\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:10:\"web_layout\";s:32:\"7d80deb34baa95e72e712ba55279ade7\";s:16:\"browse_links.php\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:9:\"file_list\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";s:9:\"clipboard\";s:32:\"cdbeaf79e748e50722d9c4df235ce8fe\";}s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:2:{s:3:\"0_0\";s:1:\"1\";s:3:\"0_1\";s:1:\"1\";}}}}s:10:\"inlineView\";s:493:\"{\"site\":{\"1\":{\"site_language\":[\"0\"]}},\"tt_content\":{\"NEW5f5344e2ac89d942620623\":{\"tt_content\":[2]},\"NEW5f60eb3b0902e528695197\":{\"tt_content\":[6],\"tx_mask_accordionelement\":[1]},\"4\":{\"tx_mask_accordionelement\":{\"3\":\"2\"},\"tt_content\":[7,9]},\"NEW5f60f100dd6a8667182671\":{\"sys_file_reference\":[1],\"tt_content\":[11],\"tx_mymaskexport_accordionelement\":[2]},\"10\":{\"tx_mymaskexport_accordionelement\":[\"1\",\"2\"]},\"15\":{\"sys_file_reference\":[3],\"tt_content\":[16],\"tx_mymaskexport_accordionelement\":[5]}}}\";s:11:\"mask_export\";a:3:{s:10:\"vendorName\";s:12:\"MyMaskExport\";s:13:\"extensionName\";s:14:\"my_mask_export\";s:8:\"elements\";s:9:\"accordeon\";}s:11:\"browseTrees\";a:1:{s:6:\"folder\";s:24:\"{\"25218\":{\"62822724\":1}}\";}}',NULL,NULL,1,'',0,NULL,1600178984,0,NULL,0,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
INSERT INTO `cache_hash` VALUES (1,'842358f402f002083bc182bc1ce1a755',2145909600,'a:3:{s:8:\"options.\";a:10:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:2:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";s:19:\"showPageIdWithTitle\";s:1:\"1\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}s:11:\"clearCache.\";a:1:{s:5:\"pages\";s:1:\"1\";}s:14:\"showDuplicate.\";a:1:{s:10:\"tt_content\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}'),(2,'6be416402ca653bb40360e841c4e8aef',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:5:{s:4:\"mod.\";a:5:{s:9:\"web_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:9:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:5:{s:7:\"common.\";a:3:{s:9:\"elements.\";a:9:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}s:10:\"accordeon.\";a:4:{s:14:\"iconIdentifier\";s:25:\"tx_mymaskexport_accordeon\";s:5:\"title\";s:123:\"LLL:EXT:my_mask_export/Resources/Private/Language/locallang_db_new_content_el.xlf:wizards.newContentElement.accordeon_title\";s:11:\"description\";s:129:\"LLL:EXT:my_mask_export/Resources/Private/Language/locallang_db_new_content_el.xlf:wizards.newContentElement.accordeon_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"mymaskexport_accordeon\";}}}s:4:\"show\";s:67:\"header,text,textpic,image,textmedia,bullets,table,uploads,accordeon\";s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";}s:5:\"menu.\";a:3:{s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";}s:8:\"special.\";a:3:{s:9:\"elements.\";a:3:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:5:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}s:12:\"saveAndClose\";s:4:\"true\";}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:17:\"html,div,shortcut\";s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";}s:6:\"forms.\";a:1:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:1:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:12:{s:5:\"1920.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";}s:5:\"1366.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1366\";s:6:\"height\";s:3:\"768\";}s:5:\"1280.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1280\";s:6:\"height\";s:4:\"1024\";}s:5:\"1024.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"768\";}s:7:\"nexus7.\";a:4:{s:5:\"label\";s:7:\"Nexus 7\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"960\";}s:8:\"nexus6p.\";a:4:{s:5:\"label\";s:8:\"Nexus 6P\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"411\";s:6:\"height\";s:3:\"731\";}s:8:\"ipadpro.\";a:4:{s:5:\"label\";s:8:\"iPad Pro\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1366\";}s:8:\"ipadair.\";a:4:{s:5:\"label\";s:8:\"iPad Air\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"768\";s:6:\"height\";s:4:\"1024\";}s:12:\"iphone7plus.\";a:4:{s:5:\"label\";s:13:\"iPhone 7 Plus\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"414\";s:6:\"height\";s:3:\"736\";}s:8:\"iphone6.\";a:4:{s:5:\"label\";s:8:\"iPhone 6\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"667\";}s:8:\"iphone5.\";a:4:{s:5:\"label\";s:8:\"iPhone 5\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"568\";}s:8:\"iphone4.\";a:4:{s:5:\"label\";s:8:\"iPhone 4\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"480\";}}}s:9:\"web_info.\";a:1:{s:17:\"fieldDefinitions.\";a:5:{s:2:\"0.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_0\";s:6:\"fields\";s:75:\"title,uid,slug,starttime,endtime,fe_group,target,url,shortcut,shortcut_mode\";}s:2:\"1.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_1\";s:6:\"fields\";s:26:\"title,uid,###ALL_TABLES###\";}s:2:\"2.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_2\";s:6:\"fields\";s:93:\"title,uid,lastUpdated,newUntil,cache_timeout,php_tree_stop,TSconfig,is_siteroot,fe_login_mode\";}s:4:\"seo.\";a:2:{s:5:\"label\";s:64:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:seo\";s:6:\"fields\";s:102:\"title,slug,seo_title,description,no_index,no_follow,canonical_link,sitemap_changefreq,sitemap_priority\";}s:13:\"social_media.\";a:2:{s:5:\"label\";s:73:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:social_media\";s:6:\"fields\";s:63:\"title,og_title,og_description,twitter_title,twitter_description\";}}}s:11:\"web_layout.\";a:2:{s:11:\"tt_content.\";a:1:{s:8:\"preview.\";a:1:{s:13:\"mymaskexport.\";a:3:{s:16:\"templateRootPath\";s:63:\"EXT:my_mask_export/Resources/Private/Backend/Templates/Content/\";s:14:\"layoutRootPath\";s:52:\"EXT:my_mask_export/Resources/Private/Backend/Layout/\";s:15:\"partialRootPath\";s:54:\"EXT:my_mask_export/Resources/Private/Backend/Partials/\";}}}s:15:\"BackendLayouts.\";a:5:{s:5:\"2col.\";a:3:{s:5:\"title\";s:9:\"2 Columns\";s:4:\"icon\";s:54:\"EXT:vt9/Resources/Public/Icons/BackendLayouts/2col.png\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"3\";s:8:\"rowCount\";s:1:\"3\";s:5:\"rows.\";a:3:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:11:\"Content Top\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"2\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:3:{s:4:\"name\";s:12:\"Content Main\";s:7:\"colspan\";s:1:\"2\";s:6:\"colPos\";s:1:\"0\";}s:2:\"2.\";a:2:{s:4:\"name\";s:7:\"Sidebar\";s:6:\"colPos\";s:1:\"1\";}}}s:2:\"3.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:14:\"Content Bottom\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"3\";}}}}}}}s:12:\"submenuleft.\";a:3:{s:5:\"title\";s:12:\"Submenu Left\";s:4:\"icon\";s:62:\"EXT:vt9/Resources/Public/Icons/BackendLayouts/submenu-left.png\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"3\";s:8:\"rowCount\";s:1:\"3\";s:5:\"rows.\";a:3:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:11:\"Content Top\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"2\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:2:{s:4:\"name\";s:12:\"Submenu Left\";s:6:\"colPos\";s:1:\"1\";}s:2:\"2.\";a:3:{s:4:\"name\";s:12:\"Content Main\";s:7:\"colspan\";s:1:\"2\";s:6:\"colPos\";s:1:\"0\";}}}s:2:\"3.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:14:\"Content Bottom\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"3\";}}}}}}}s:5:\"3col.\";a:3:{s:5:\"title\";s:9:\"3 Columns\";s:4:\"icon\";s:54:\"EXT:vt9/Resources/Public/Icons/BackendLayouts/3col.png\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"3\";s:8:\"rowCount\";s:1:\"3\";s:5:\"rows.\";a:3:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:11:\"Content Top\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"2\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:3:{s:2:\"1.\";a:2:{s:4:\"name\";s:4:\"Left\";s:6:\"colPos\";s:1:\"0\";}s:2:\"2.\";a:2:{s:4:\"name\";s:6:\"Center\";s:6:\"colPos\";s:1:\"4\";}s:2:\"3.\";a:2:{s:4:\"name\";s:5:\"Right\";s:6:\"colPos\";s:1:\"1\";}}}s:2:\"3.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:3:{s:4:\"name\";s:14:\"Content Bottom\";s:7:\"colspan\";s:1:\"3\";s:6:\"colPos\";s:1:\"3\";}}}}}}}s:5:\"1col.\";a:3:{s:5:\"title\";s:8:\"1 Column\";s:4:\"icon\";s:54:\"EXT:vt9/Resources/Public/Icons/BackendLayouts/1col.png\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"1\";s:5:\"rows.\";a:1:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:12:\"Content Main\";s:6:\"colPos\";s:1:\"0\";}}}}}}}s:11:\"1colslider.\";a:3:{s:5:\"title\";s:20:\"1 Column with Slider\";s:4:\"icon\";s:60:\"EXT:vt9/Resources/Public/Icons/BackendLayouts/1colslider.png\";s:7:\"config.\";a:1:{s:15:\"backend_layout.\";a:3:{s:8:\"colCount\";s:1:\"1\";s:8:\"rowCount\";s:1:\"2\";s:5:\"rows.\";a:2:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:27:\"Content full viewport width\";s:6:\"colPos\";s:1:\"5\";}}}s:2:\"2.\";a:1:{s:8:\"columns.\";a:1:{s:2:\"1.\";a:2:{s:4:\"name\";s:12:\"Content Main\";s:6:\"colPos\";s:1:\"0\";}}}}}}}}}}s:8:\"TCEMAIN.\";a:3:{s:18:\"translateToMessage\";s:16:\"Translate to %s:\";s:12:\"linkHandler.\";a:6:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:4:\"file\";s:9:\"scanAfter\";s:4:\"file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:6:\"folder\";s:9:\"scanAfter\";s:9:\"telephone\";}s:5:\"mail.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:78:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:3:\"url\";s:10:\"scanBefore\";s:3:\"url\";}s:10:\"telephone.\";a:4:{s:7:\"handler\";s:53:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\TelephoneLinkHandler\";s:5:\"label\";s:82:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:telephone\";s:12:\"displayAfter\";s:4:\"mail\";s:10:\"scanBefore\";s:3:\"url\";}}s:12:\"permissions.\";a:2:{s:5:\"group\";s:32:\"show,editcontent,edit,new,delete\";s:7:\"groupid\";s:1:\"1\";}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:3:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}s:14:\"header_layout.\";a:3:{s:10:\"altLabels.\";a:6:{i:0;s:23:\"h2 - Themen√ºberschrift\";i:1;s:23:\"h1 - Seiten√ºberschrift\";i:2;s:2:\"h2\";i:3;s:28:\"h3 - √úberschrift 3. Ordnung\";i:4;s:28:\"h4 - √úberschrift 4. Ordnung\";i:5;s:28:\"h5 - √úberschrift 5. Ordnung\";}s:11:\"removeItems\";s:3:\"2,5\";s:9:\"addItems.\";a:2:{i:7;s:22:\"h1 - Roter Hintergrund\";i:8;s:24:\"h2 - Gr√ºner Hintergrund\";}}s:7:\"layout.\";a:2:{s:9:\"addItems.\";a:1:{i:5;s:16:\"Responsive Video\";}s:6:\"types.\";a:1:{s:8:\"uploads.\";a:1:{s:9:\"addItems.\";a:1:{i:200;s:7:\"Galerie\";}}}}}}s:4:\"RTE.\";a:1:{s:8:\"default.\";a:1:{s:6:\"preset\";s:3:\"vt9\";}}s:16:\"tx_gridelements.\";a:1:{s:6:\"setup.\";a:2:{s:5:\"2col.\";a:4:{s:5:\"title\";s:9:\"2 Columns\";s:4:\"icon\";s:52:\"EXT:vt9/Resources/Public/Icons/Gridelements/2col.png\";s:10:\"flexformDS\";s:65:\"FILE:EXT:vt9/Configuration/TypoScript/Setup/gridelements_2col.xml\";s:7:\"config.\";a:3:{s:8:\"colCount\";s:1:\"2\";s:8:\"rowCount\";s:1:\"1\";s:5:\"rows.\";a:1:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:2:{s:2:\"1.\";a:2:{s:4:\"name\";s:4:\"Left\";s:6:\"colPos\";s:2:\"10\";}s:2:\"2.\";a:2:{s:4:\"name\";s:5:\"Right\";s:6:\"colPos\";s:2:\"20\";}}}}}}s:5:\"3col.\";a:4:{s:5:\"title\";s:9:\"3 Columns\";s:4:\"icon\";s:52:\"EXT:vt9/Resources/Public/Icons/Gridelements/3col.png\";s:10:\"flexformDS\";s:65:\"FILE:EXT:vt9/Configuration/TypoScript/Setup/gridelements_3col.xml\";s:7:\"config.\";a:3:{s:8:\"colCount\";s:1:\"3\";s:8:\"rowCount\";s:1:\"1\";s:5:\"rows.\";a:1:{s:2:\"1.\";a:1:{s:8:\"columns.\";a:3:{s:2:\"1.\";a:2:{s:4:\"name\";s:4:\"Left\";s:6:\"colPos\";s:2:\"10\";}s:2:\"2.\";a:2:{s:4:\"name\";s:6:\"Center\";s:6:\"colPos\";s:2:\"20\";}s:2:\"3.\";a:2:{s:4:\"name\";s:5:\"Right\";s:6:\"colPos\";s:2:\"30\";}}}}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"1a26e0fa30bb8184b1c379f48c3086b1\";}'),(3,'515c1d5cb7028d65c107db258a5047d7',2145909600,'a:2:{s:9:\"constants\";a:3:{s:7:\"styles.\";a:2:{s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}s:8:\"content.\";a:6:{s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:6:\"image.\";a:1:{s:11:\"lazyLoading\";s:4:\"lazy\";}s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:5:\"1200m\";s:6:\"height\";s:5:\"1200m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"1\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}}s:7:\"plugin.\";a:2:{s:7:\"tx_seo.\";a:2:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:36:\"EXT:seo/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:35:\"EXT:seo/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:34:\"EXT:seo/Resources/Private/Layouts/\";}s:9:\"settings.\";a:1:{s:11:\"xmlSitemap.\";a:1:{s:9:\"sitemaps.\";a:1:{s:6:\"pages.\";a:2:{s:16:\"excludedDoktypes\";s:25:\"3, 4, 6, 7, 199, 254, 255\";s:15:\"additionalWhere\";s:36:\"no_index = 0 AND canonical_link = \'\'\";}}}}}s:16:\"tx_mymaskexport.\";a:1:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}}s:4:\"vt9.\";a:6:{s:8:\"siteLogo\";s:46:\"EXT:vt9/Resources/Public/Images/logo-light.png\";s:9:\"siteTitle\";s:23:\"Custom Content Elements\";s:6:\"rootId\";s:1:\"1\";s:6:\"metaId\";s:2:\"28\";s:15:\"footerContentId\";s:2:\"32\";s:8:\"searchId\";s:2:\"69\";}}s:5:\"setup\";a:15:{s:7:\"config.\";a:10:{s:19:\"pageTitleProviders.\";a:2:{s:7:\"record.\";a:1:{s:8:\"provider\";s:48:\"TYPO3\\CMS\\Core\\PageTitle\\RecordPageTitleProvider\";}s:4:\"seo.\";a:2:{s:8:\"provider\";s:49:\"TYPO3\\CMS\\Seo\\PageTitle\\SeoTitlePageTitleProvider\";s:6:\"before\";s:6:\"record\";}}s:25:\"spamProtectEmailAddresses\";s:2:\"-5\";s:14:\"concatenateCss\";s:1:\"1\";s:11:\"compressCss\";s:1:\"1\";s:13:\"concatenateJs\";s:1:\"1\";s:10:\"compressJs\";s:1:\"1\";s:14:\"pageTitleFirst\";s:1:\"1\";s:18:\"pageTitleSeparator\";s:1:\"-\";s:19:\"pageTitleSeparator.\";a:1:{s:10:\"noTrimWrap\";s:5:\"| | |\";}s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:1:{s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:2:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:55:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:3:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:92:\"tt_content : image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.image\";}}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:2:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:2:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"0\";s:7:\"equals.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}s:6:\"negate\";s:1:\"1\";}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:2:{s:12:\"templateName\";s:4:\"Text\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:7:\"Textpic\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:125:\"tt_content: header [header_layout], bodytext, image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textpic\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:2:{s:5:\"field\";s:16:\"filelink_sorting\";s:10:\"direction.\";a:1:{s:5:\"field\";s:26:\"filelink_sorting_direction\";}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:3:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:3:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:10:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:12:\"tt_content.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:109:\"sys_category_record_mm ON uid = sys_category_record_mm.uid_foreign AND sys_category_record_mm.uid_local IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:41:\"tablenames=\'tt_content\' and fieldname=\'|\'\";}s:7:\"orderBy\";s:18:\"tt_content.sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:3:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:3:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:3:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:3:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:17:\"includeNotInMenu.\";a:2:{s:8:\"override\";s:1:\"1\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:2:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:7:\"orderBy\";s:7:\"sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:3:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:23:\"alternativeSortingField\";s:5:\"title\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:3:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:2:{s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"mymaskexport_accordeon\";s:13:\"FLUIDTEMPLATE\";s:23:\"mymaskexport_accordeon.\";a:5:{s:16:\"layoutRootPaths.\";a:2:{i:0;s:45:\"EXT:my_mask_export/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:46:\"EXT:my_mask_export/Resources/Private/Partials/\";i:10;s:0:\"\";}s:18:\"templateRootPaths.\";a:2:{i:0;s:55:\"EXT:my_mask_export/Resources/Private/Templates/Content/\";i:10;s:0:\"\";}s:12:\"templateName\";s:9:\"Accordeon\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:8:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:32:\"tx_mymaskexport_accordionelement\";}}s:5:\"table\";s:32:\"tx_mymaskexport_accordionelement\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:5:\"where\";s:45:\"parentid=###uid### AND deleted=0 AND hidden=0\";s:7:\"orderBy\";s:7:\"sorting\";s:8:\"markers.\";a:1:{s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:2:\"as\";s:37:\"data_tx_mymaskexport_accordionelement\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:30:\"tx_mymaskexport_elementcontent\";}}s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:5:\"where\";s:168:\"tx_mymaskexport_elementcontent_parent=###uid### AND deleted=0 AND hidden=0 AND colPos=###colPos### AND CType IN (###CType1###, ###CType2###, ###CType3###, ###CType4###)\";s:7:\"orderBy\";s:7:\"sorting\";s:8:\"markers.\";a:6:{s:7:\"colPos.\";a:1:{s:5:\"value\";s:3:\"999\";}s:7:\"CType1.\";a:1:{s:5:\"value\";s:9:\"textmedia\";}s:7:\"CType2.\";a:1:{s:5:\"value\";s:5:\"table\";}s:7:\"CType3.\";a:1:{s:5:\"value\";s:8:\"shortcut\";}s:7:\"CType4.\";a:1:{s:5:\"value\";s:4:\"list\";}s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:2:\"as\";s:35:\"data_tx_mymaskexport_elementcontent\";}}}}}s:17:\"gridelements_pi1.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:6:\"setup.\";a:2:{s:5:\"2col.\";a:2:{s:8:\"columns.\";a:2:{s:3:\"10.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:11:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:8:\"cols-1-2\";s:4:\"TEXT\";s:9:\"cols-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}s:8:\"cols-2-1\";s:4:\"TEXT\";s:9:\"cols-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-8\">\";}s:8:\"cols-1-3\";s:4:\"TEXT\";s:9:\"cols-1-3.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:8:\"cols-3-1\";s:4:\"TEXT\";s:9:\"cols-3-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-9\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"20.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:11:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:8:\"cols-1-2\";s:4:\"TEXT\";s:9:\"cols-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-8\">\";}s:8:\"cols-2-1\";s:4:\"TEXT\";s:9:\"cols-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}s:8:\"cols-1-3\";s:4:\"TEXT\";s:9:\"cols-1-3.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-9\">\";}s:8:\"cols-3-1\";s:4:\"TEXT\";s:9:\"cols-3-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}}s:4:\"wrap\";s:24:\"<div class=\"row\">|</div>\";}s:5:\"3col.\";a:2:{s:8:\"columns.\";a:3:{s:3:\"10.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"20.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"30.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}}s:4:\"wrap\";s:24:\"<div class=\"row\">|</div>\";}}}}}s:24:\"vt9maskelements_vt9card.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:71:\"EXT:vt9/Resources/Private/Extensions/vt9maskelements/Templates/Content/\";}}s:26:\"vt9maskelements_vt9slider.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:71:\"EXT:vt9/Resources/Private/Extensions/vt9maskelements/Templates/Content/\";}}}s:4:\"lib.\";a:6:{s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:3:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";i:100;s:68:\"EXT:vt9/Resources/Private/Extensions/fluid_styled_content/Templates/\";}s:17:\"partialRootPaths.\";a:3:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";i:100;s:67:\"EXT:vt9/Resources/Private/Extensions/fluid_styled_content/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:3:{s:11:\"lazyLoading\";s:4:\"lazy\";s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:5:\"1200m\";s:6:\"height\";s:5:\"1200m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"1\";}}s:15:\"directImageLink\";s:1:\"1\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:47:\"data-rel=\"lightcase:{file:current:uid_foreign}\"\";}}}s:17:\"additionalConfig.\";a:2:{s:9:\"no-cookie\";s:1:\"1\";s:3:\"api\";s:1:\"0\";}}}}s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:89:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:14:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:4:\"pre.\";a:1:{s:8:\"stdWrap.\";a:1:{s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:2:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:2:{s:13:\"nonWrappedTag\";s:0:\"\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:0:\"\";}}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:9:\"searchbox\";s:3:\"COA\";s:10:\"searchbox.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:9:\"typolink.\";a:2:{s:9:\"parameter\";s:2:\"69\";s:10:\"returnLast\";s:3:\"url\";}s:4:\"wrap\";s:127:\"<form class=\"form-inline my-2 my-lg-0\" method=\"get\" id=\"form_kesearch_searchfield\" name=\"form_kesearch_searchfield\" action=\"|\">\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:13:\"Suche nach...\";s:4:\"wrap\";s:129:\"<input class=\"form-control mr-sm-2\" type=\"text\" id=\"ke_search_searchfield_sword\" name=\"tx_kesearch_pi1[sword]\" placeholder=\"|\" />\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:5:\"Suche\";s:4:\"wrap\";s:110:\"<button class=\"btn btn-success my-2 my-sm-0\" type=\"submit\" id=\"ke_search_searchfield_submit\">|</button></form>\";}}}s:7:\"plugin.\";a:5:{s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:3359:\"    .ce-align-left { text-align: left; }\n    .ce-align-center { text-align: center; }\n    .ce-align-right { text-align: right; }\n\n    .ce-table td, .ce-table th { vertical-align: top; }\n\n    .ce-textpic, .ce-image, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n    .ce-left .ce-gallery, .ce-column { float: left; }\n    .ce-center .ce-outer { position: relative; float: right; right: 50%; }\n    .ce-center .ce-inner { position: relative; float: right; right: -50%; }\n    .ce-right .ce-gallery { float: right; }\n\n    .ce-gallery figure { display: table; margin: 0; }\n    .ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n    .ce-gallery img { display: block; }\n    .ce-gallery iframe { border-width: 0; }\n    .ce-border img,\n    .ce-border iframe {\n        border: 2px solid #000000;\n        padding: 0px;\n    }\n\n    .ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n        margin-bottom: 10px;\n    }\n    .ce-image .ce-gallery { margin-bottom: 0; }\n    .ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n    .ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n    .ce-below .ce-gallery { margin-top: 10px; }\n\n    .ce-column { margin-right: 10px; }\n    .ce-column:last-child { margin-right: 0; }\n\n    .ce-row { margin-bottom: 10px; }\n    .ce-row:last-child { margin-bottom: 0; }\n\n    .ce-above .ce-bodytext { clear: both; }\n\n    .ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n    /* Headline */\n    .ce-headline-left { text-align: left; }\n    .ce-headline-center { text-align: center; }\n    .ce-headline-right { text-align: right; }\n\n    /* Uploads */\n    .ce-uploads { margin: 0; padding: 0; }\n    .ce-uploads li { list-style: none outside none; margin: 1em 0; }\n    .ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n    .ce-uploads span { display: block; }\n\n    /* Table */\n    .ce-table { width: 100%; max-width: 100%; }\n    .ce-table th, .ce-table td { padding: 0.5em 0.75em; vertical-align: top; }\n    .ce-table thead th { border-bottom: 2px solid #dadada; }\n    .ce-table th, .ce-table td { border-top: 1px solid #dadada; }\n    .ce-table-striped tbody tr:nth-of-type(odd) { background-color: rgba(0,0,0,.05); }\n    .ce-table-bordered th, .ce-table-bordered td { border: 1px solid #dadada; }\n\n    /* Space */\n    .frame-space-before-extra-small { margin-top: 1em; }\n    .frame-space-before-small { margin-top: 2em; }\n    .frame-space-before-medium { margin-top: 3em; }\n    .frame-space-before-large { margin-top: 4em; }\n    .frame-space-before-extra-large { margin-top: 5em; }\n    .frame-space-after-extra-small { margin-bottom: 1em; }\n    .frame-space-after-small { margin-bottom: 2em; }\n    .frame-space-after-medium { margin-bottom: 3em; }\n    .frame-space-after-large { margin-bottom: 4em; }\n    .frame-space-after-extra-large { margin-bottom: 5em; }\n\n    /* Frame */\n    .frame-ruler-before:before { content: \'\'; display: block; border-top: 1px solid rgba(0,0,0,0.25); margin-bottom: 2em; }\n    .frame-ruler-after:after { content: \'\'; display: block; border-bottom: 1px solid rgba(0,0,0,0.25); margin-top: 2em; }\n    .frame-indent { margin-left: 15%; margin-right: 15%; }\n    .frame-indent-left { margin-left: 33%; }\n    .frame-indent-right { margin-right: 33%; }\";}s:7:\"tx_seo.\";a:2:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:2:{i:0;s:46:\"EXT:seo/Resources/Private/Templates/XmlSitemap\";i:10;s:36:\"EXT:seo/Resources/Private/Templates/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:45:\"EXT:seo/Resources/Private/Partials/XmlSitemap\";i:10;s:35:\"EXT:seo/Resources/Private/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:44:\"EXT:seo/Resources/Private/Layouts/XmlSitemap\";i:10;s:34:\"EXT:seo/Resources/Private/Layouts/\";}}s:7:\"config.\";a:1:{s:11:\"xmlSitemap.\";a:1:{s:9:\"sitemaps.\";a:1:{s:6:\"pages.\";a:2:{s:8:\"provider\";s:52:\"TYPO3\\CMS\\Seo\\XmlSitemap\\PagesXmlSitemapDataProvider\";s:7:\"config.\";a:2:{s:16:\"excludedDoktypes\";s:25:\"3, 4, 6, 7, 199, 254, 255\";s:15:\"additionalWhere\";s:36:\"no_index = 0 AND canonical_link = \'\'\";}}}}}}s:15:\"tx_felogin_pi1.\";a:1:{s:12:\"_LOCAL_LANG.\";a:2:{s:3:\"de.\";a:1:{s:18:\"ll_welcome_message\";s:17:\"Mein eigener Text\";}s:8:\"default.\";a:1:{s:18:\"ll_welcome_message\";s:11:\"My own text\";}}}s:8:\"tx_form.\";a:1:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:100;s:44:\"EXT:vt9/Configuration/Form/vt9FormSetup.yaml\";}}}s:16:\"tx_kesearch_pi1.\";a:1:{s:5:\"view.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:57:\"EXT:vt9/Resources/Private/Extensions/ke_search/Templates/\";}}}}s:11:\"seo_sitemap\";s:4:\"PAGE\";s:12:\"seo_sitemap.\";a:4:{s:7:\"typeNum\";s:10:\"1533906435\";s:7:\"config.\";a:7:{s:12:\"cache_period\";s:3:\"900\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:8:\"admPanel\";s:1:\"0\";s:15:\"removeDefaultJS\";s:1:\"1\";s:16:\"removeDefaultCss\";s:1:\"1\";s:13:\"removePageCss\";s:1:\"1\";s:18:\"additionalHeaders.\";a:2:{s:3:\"10.\";a:1:{s:6:\"header\";s:42:\"Content-Type:application/xml;charset=utf-8\";}s:3:\"20.\";a:1:{s:6:\"header\";s:20:\"X-Robots-Tag:noindex\";}}}i:10;s:4:\"USER\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:51:\"TYPO3\\CMS\\Seo\\XmlSitemap\\XmlSitemapRenderer->render\";}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:8:{s:5:\"meta.\";a:1:{s:8:\"viewport\";s:53:\"width=device-width, initial-scale=1, shrink-to-fit=no\";}s:12:\"shortcutIcon\";s:42:\"EXT:vt9/Resources/Public/Icons/favicon.png\";s:11:\"includeCSS.\";a:6:{i:10;s:46:\"EXT:vt9/Resources/Public/Css/bootstrap.min.css\";s:3:\"10.\";a:1:{s:18:\"disableCompression\";s:1:\"1\";}i:20;s:48:\"EXT:vt9/Resources/Public/Css/modern-business.css\";i:30;s:62:\"EXT:vt9/Resources/Public/Css/jquery.smartmenus.bootstrap-4.css\";i:35;s:42:\"EXT:vt9/Resources/Public/Css/lightcase.css\";i:40;s:45:\"EXT:vt9/Resources/Public/Css/customstyles.css\";}s:20:\"includeJSFooterlibs.\";a:6:{i:10;s:49:\"EXT:vt9/Resources/Public/JavaScript/jquery.min.js\";i:20;s:59:\"EXT:vt9/Resources/Public/JavaScript/bootstrap.bundle.min.js\";i:30;s:60:\"EXT:vt9/Resources/Public/JavaScript/jquery.smartmenus.min.js\";i:40;s:72:\"EXT:vt9/Resources/Public/JavaScript/jquery.smartmenus.bootstrap-4.min.js\";i:50;s:48:\"EXT:vt9/Resources/Public/JavaScript/lightcase.js\";i:60;s:48:\"EXT:vt9/Resources/Public/JavaScript/vt9custom.js\";}i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:6:{s:14:\"layoutRootPath\";s:34:\"EXT:vt9/Resources/Private/Layouts/\";s:15:\"partialRootPath\";s:35:\"EXT:vt9/Resources/Private/Partials/\";s:5:\"file.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:13:{s:4:\"key.\";a:1:{s:4:\"data\";s:10:\"pagelayout\";}s:12:\"pagets__1col\";s:4:\"TEXT\";s:13:\"pagets__1col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/1col.html\";}s:18:\"pagets__1colslider\";s:4:\"TEXT\";s:19:\"pagets__1colslider.\";a:1:{s:5:\"value\";s:51:\"EXT:vt9/Resources/Private/Templates/1colslider.html\";}s:12:\"pagets__2col\";s:4:\"TEXT\";s:13:\"pagets__2col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/2col.html\";}s:12:\"pagets__3col\";s:4:\"TEXT\";s:13:\"pagets__3col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/3col.html\";}s:19:\"pagets__submenuleft\";s:4:\"TEXT\";s:20:\"pagets__submenuleft.\";a:1:{s:5:\"value\";s:53:\"EXT:vt9/Resources/Private/Templates/Submenu-left.html\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/2col.html\";}}}}s:10:\"variables.\";a:18:{s:8:\"content0\";s:7:\"CONTENT\";s:9:\"content0.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}s:8:\"content1\";s:7:\"CONTENT\";s:9:\"content1.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}}s:8:\"content2\";s:7:\"CONTENT\";s:9:\"content2.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}}s:8:\"content3\";s:7:\"CONTENT\";s:9:\"content3.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 3\";}}s:8:\"content4\";s:7:\"CONTENT\";s:9:\"content4.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 4\";}}s:8:\"content5\";s:7:\"CONTENT\";s:9:\"content5.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 5\";}}s:10:\"content100\";s:7:\"CONTENT\";s:11:\"content100.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 100\";s:9:\"pidInList\";s:2:\"32\";}}s:10:\"content110\";s:7:\"CONTENT\";s:11:\"content110.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 110\";s:9:\"pidInList\";s:2:\"32\";}}s:10:\"content120\";s:7:\"CONTENT\";s:11:\"content120.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 120\";s:9:\"pidInList\";s:2:\"32\";}}}s:9:\"settings.\";a:3:{s:8:\"siteLogo\";s:46:\"EXT:vt9/Resources/Public/Images/logo-light.png\";s:9:\"siteTitle\";s:23:\"Custom Content Elements\";s:6:\"rootId\";s:1:\"1\";}s:15:\"dataProcessing.\";a:10:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:5:{s:2:\"as\";s:8:\"mainMenu\";s:9:\"expandAll\";s:1:\"1\";s:10:\"titleField\";s:18:\"nav_title // title\";s:6:\"levels\";s:1:\"6\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:5:{s:2:\"as\";s:8:\"metaMenu\";s:10:\"titleField\";s:18:\"nav_title // title\";s:6:\"levels\";s:1:\"1\";s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:5:\"value\";s:2:\"28\";}}i:30;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"30.\";a:4:{s:2:\"as\";s:8:\"rootline\";s:10:\"titleField\";s:18:\"nav_title // title\";s:7:\"special\";s:8:\"rootline\";s:8:\"special.\";a:1:{s:5:\"range\";s:4:\"0|-1\";}}i:40;s:55:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor\";s:3:\"40.\";a:2:{s:9:\"languages\";s:4:\"auto\";s:2:\"as\";s:12:\"languageMenu\";}i:50;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"50.\";a:5:{s:2:\"as\";s:7:\"subMenu\";s:10:\"titleField\";s:18:\"nav_title // title\";s:9:\"expandAll\";s:1:\"1\";s:10:\"entryLevel\";s:2:\"-1\";s:6:\"levels\";s:1:\"2\";}}}s:14:\"bodyTagCObject\";s:4:\"TEXT\";s:15:\"bodyTagCObject.\";a:2:{s:4:\"data\";s:10:\"pagelayout\";s:4:\"wrap\";s:23:\"<body class=\"layout-|\">\";}}s:7:\"module.\";a:4:{s:8:\"tx_form.\";a:1:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:100;s:44:\"EXT:vt9/Configuration/Form/vt9FormSetup.yaml\";}}}s:9:\"tx_belog.\";a:1:{s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:20:\"tx_extensionmanager.\";a:1:{s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:18:\"additionalHeaders.\";a:1:{s:3:\"10.\";a:2:{s:6:\"header\";s:24:\"Content-Type: text/plain\";s:7:\"replace\";s:1:\"1\";}}s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:3:{i:1533906435;s:11:\"seo_sitemap\";i:0;s:4:\"page\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}}'),(4,'34b4a6dd4bf1972de584cfc78692d15a',2145909600,'a:1:{s:32:\"b8fd1cca4dce6e59ff29ed24164f4bc0\";s:19:\"[page[\"uid\"] == 69]\";}'),(5,'9bfc2025de520adbb83697d708e7e82b',1600275221,'a:0:{}'),(6,'ad327790e5c52ce9a91f964925993451',1600275221,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(7,'6dcdc0eb02d2c1bef10ee1d2a2e2e695',1600275221,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(8,'34bf6be223b1bfc34f016efd54ce9237',2145909600,'a:2:{s:9:\"constants\";a:3:{s:7:\"styles.\";a:2:{s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}s:8:\"content.\";a:6:{s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:6:\"image.\";a:1:{s:11:\"lazyLoading\";s:4:\"lazy\";}s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:5:\"1200m\";s:6:\"height\";s:5:\"1200m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"1\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}}s:7:\"plugin.\";a:2:{s:7:\"tx_seo.\";a:2:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:36:\"EXT:seo/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:35:\"EXT:seo/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:34:\"EXT:seo/Resources/Private/Layouts/\";}s:9:\"settings.\";a:1:{s:11:\"xmlSitemap.\";a:1:{s:9:\"sitemaps.\";a:1:{s:6:\"pages.\";a:2:{s:16:\"excludedDoktypes\";s:25:\"3, 4, 6, 7, 199, 254, 255\";s:15:\"additionalWhere\";s:36:\"no_index = 0 AND canonical_link = \'\'\";}}}}}s:16:\"tx_mymaskexport.\";a:1:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}}s:4:\"vt9.\";a:6:{s:8:\"siteLogo\";s:46:\"EXT:vt9/Resources/Public/Images/logo-light.png\";s:9:\"siteTitle\";s:23:\"Custom Content Elements\";s:6:\"rootId\";s:1:\"1\";s:6:\"metaId\";s:2:\"28\";s:15:\"footerContentId\";s:2:\"32\";s:8:\"searchId\";s:2:\"69\";}}s:5:\"setup\";a:15:{s:7:\"config.\";a:10:{s:19:\"pageTitleProviders.\";a:2:{s:7:\"record.\";a:1:{s:8:\"provider\";s:48:\"TYPO3\\CMS\\Core\\PageTitle\\RecordPageTitleProvider\";}s:4:\"seo.\";a:2:{s:8:\"provider\";s:49:\"TYPO3\\CMS\\Seo\\PageTitle\\SeoTitlePageTitleProvider\";s:6:\"before\";s:6:\"record\";}}s:25:\"spamProtectEmailAddresses\";s:2:\"-5\";s:14:\"concatenateCss\";s:1:\"1\";s:11:\"compressCss\";s:1:\"1\";s:13:\"concatenateJs\";s:1:\"1\";s:10:\"compressJs\";s:1:\"1\";s:14:\"pageTitleFirst\";s:1:\"1\";s:18:\"pageTitleSeparator\";s:1:\"-\";s:19:\"pageTitleSeparator.\";a:1:{s:10:\"noTrimWrap\";s:5:\"| | |\";}s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:1:{s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:2:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:55:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:3:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:92:\"tt_content : image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.image\";}}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:2:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:2:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"0\";s:7:\"equals.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}s:6:\"negate\";s:1:\"1\";}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:2:{s:12:\"templateName\";s:4:\"Text\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:7:\"Textpic\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:125:\"tt_content: header [header_layout], bodytext, image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textpic\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:2:{s:5:\"field\";s:16:\"filelink_sorting\";s:10:\"direction.\";a:1:{s:5:\"field\";s:26:\"filelink_sorting_direction\";}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:3:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:3:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:10:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:12:\"tt_content.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:109:\"sys_category_record_mm ON uid = sys_category_record_mm.uid_foreign AND sys_category_record_mm.uid_local IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:41:\"tablenames=\'tt_content\' and fieldname=\'|\'\";}s:7:\"orderBy\";s:18:\"tt_content.sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:3:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:3:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:3:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:3:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:17:\"includeNotInMenu.\";a:2:{s:8:\"override\";s:1:\"1\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:2:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:16:\"sectionIndex = 1\";s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:5:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:7:\"orderBy\";s:7:\"sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:3:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:23:\"alternativeSortingField\";s:5:\"title\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:3:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:2:{s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"mymaskexport_accordeon\";s:13:\"FLUIDTEMPLATE\";s:23:\"mymaskexport_accordeon.\";a:5:{s:16:\"layoutRootPaths.\";a:2:{i:0;s:45:\"EXT:my_mask_export/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:46:\"EXT:my_mask_export/Resources/Private/Partials/\";i:10;s:0:\"\";}s:18:\"templateRootPaths.\";a:3:{i:0;s:55:\"EXT:my_mask_export/Resources/Private/Templates/Content/\";i:10;s:0:\"\";i:100;s:62:\"EXT:vt9/Resources/Private/Extensions/my_mask_export/Templates/\";}s:12:\"templateName\";s:9:\"Accordeon\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:8:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:32:\"tx_mymaskexport_accordionelement\";}}s:5:\"table\";s:32:\"tx_mymaskexport_accordionelement\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:5:\"where\";s:45:\"parentid=###uid### AND deleted=0 AND hidden=0\";s:7:\"orderBy\";s:7:\"sorting\";s:8:\"markers.\";a:1:{s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:2:\"as\";s:37:\"data_tx_mymaskexport_accordionelement\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:7:{s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:5:\"field\";s:30:\"tx_mymaskexport_elementcontent\";}}s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"pid\";}s:5:\"where\";s:168:\"tx_mymaskexport_elementcontent_parent=###uid### AND deleted=0 AND hidden=0 AND colPos=###colPos### AND CType IN (###CType1###, ###CType2###, ###CType3###, ###CType4###)\";s:7:\"orderBy\";s:7:\"sorting\";s:8:\"markers.\";a:6:{s:7:\"colPos.\";a:1:{s:5:\"value\";s:3:\"999\";}s:7:\"CType1.\";a:1:{s:5:\"value\";s:9:\"textmedia\";}s:7:\"CType2.\";a:1:{s:5:\"value\";s:5:\"table\";}s:7:\"CType3.\";a:1:{s:5:\"value\";s:8:\"shortcut\";}s:7:\"CType4.\";a:1:{s:5:\"value\";s:4:\"list\";}s:4:\"uid.\";a:1:{s:5:\"field\";s:3:\"uid\";}}s:2:\"as\";s:35:\"data_tx_mymaskexport_elementcontent\";}}}}}s:17:\"gridelements_pi1.\";a:1:{s:3:\"20.\";a:1:{s:3:\"10.\";a:1:{s:6:\"setup.\";a:2:{s:5:\"2col.\";a:2:{s:8:\"columns.\";a:2:{s:3:\"10.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:11:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:8:\"cols-1-2\";s:4:\"TEXT\";s:9:\"cols-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}s:8:\"cols-2-1\";s:4:\"TEXT\";s:9:\"cols-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-8\">\";}s:8:\"cols-1-3\";s:4:\"TEXT\";s:9:\"cols-1-3.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:8:\"cols-3-1\";s:4:\"TEXT\";s:9:\"cols-3-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-9\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"20.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:11:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:8:\"cols-1-2\";s:4:\"TEXT\";s:9:\"cols-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-8\">\";}s:8:\"cols-2-1\";s:4:\"TEXT\";s:9:\"cols-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}s:8:\"cols-1-3\";s:4:\"TEXT\";s:9:\"cols-1-3.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-9\">\";}s:8:\"cols-3-1\";s:4:\"TEXT\";s:9:\"cols-3-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}}s:4:\"wrap\";s:24:\"<div class=\"row\">|</div>\";}s:5:\"3col.\";a:2:{s:8:\"columns.\";a:3:{s:3:\"10.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"20.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}s:3:\"30.\";a:3:{s:10:\"preCObject\";s:4:\"CASE\";s:11:\"preCObject.\";a:9:{s:4:\"key.\";a:1:{s:5:\"field\";s:19:\"flexform_columnType\";}s:10:\"cols-1-2-1\";s:4:\"TEXT\";s:11:\"cols-1-2-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-2-1-1\";s:4:\"TEXT\";s:11:\"cols-2-1-1.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-3\">\";}s:10:\"cols-1-1-2\";s:4:\"TEXT\";s:11:\"cols-1-1-2.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-6\">\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:22:\"<div class=\"col-md-4\">\";}}s:4:\"wrap\";s:7:\"|</div>\";}}s:4:\"wrap\";s:24:\"<div class=\"row\">|</div>\";}}}}}s:24:\"vt9maskelements_vt9card.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:71:\"EXT:vt9/Resources/Private/Extensions/vt9maskelements/Templates/Content/\";}}s:26:\"vt9maskelements_vt9slider.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:71:\"EXT:vt9/Resources/Private/Extensions/vt9maskelements/Templates/Content/\";}}}s:4:\"lib.\";a:6:{s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:3:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";i:100;s:68:\"EXT:vt9/Resources/Private/Extensions/fluid_styled_content/Templates/\";}s:17:\"partialRootPaths.\";a:3:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";i:100;s:67:\"EXT:vt9/Resources/Private/Extensions/fluid_styled_content/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:3:{s:11:\"lazyLoading\";s:4:\"lazy\";s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:5:\"1200m\";s:6:\"height\";s:5:\"1200m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"1\";}}s:15:\"directImageLink\";s:1:\"1\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:47:\"data-rel=\"lightcase:{file:current:uid_foreign}\"\";}}}s:17:\"additionalConfig.\";a:2:{s:9:\"no-cookie\";s:1:\"1\";s:3:\"api\";s:1:\"0\";}}}}s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}s:14:\"parseFunc_RTE.\";a:10:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:14:\"externalBlocks\";s:89:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre\";s:15:\"externalBlocks.\";a:14:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:4:\"pre.\";a:1:{s:8:\"stdWrap.\";a:1:{s:10:\"parseFunc.\";a:8:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}}}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:2:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:2:{s:13:\"nonWrappedTag\";s:0:\"\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:0:\"\";}}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}s:9:\"searchbox\";s:3:\"COA\";s:10:\"searchbox.\";a:6:{i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:9:\"typolink.\";a:2:{s:9:\"parameter\";s:2:\"69\";s:10:\"returnLast\";s:3:\"url\";}s:4:\"wrap\";s:127:\"<form class=\"form-inline my-2 my-lg-0\" method=\"get\" id=\"form_kesearch_searchfield\" name=\"form_kesearch_searchfield\" action=\"|\">\";}i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:13:\"Suche nach...\";s:4:\"wrap\";s:129:\"<input class=\"form-control mr-sm-2\" type=\"text\" id=\"ke_search_searchfield_sword\" name=\"tx_kesearch_pi1[sword]\" placeholder=\"|\" />\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:5:\"Suche\";s:4:\"wrap\";s:110:\"<button class=\"btn btn-success my-2 my-sm-0\" type=\"submit\" id=\"ke_search_searchfield_submit\">|</button></form>\";}}}s:7:\"plugin.\";a:5:{s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:3359:\"    .ce-align-left { text-align: left; }\n    .ce-align-center { text-align: center; }\n    .ce-align-right { text-align: right; }\n\n    .ce-table td, .ce-table th { vertical-align: top; }\n\n    .ce-textpic, .ce-image, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n    .ce-left .ce-gallery, .ce-column { float: left; }\n    .ce-center .ce-outer { position: relative; float: right; right: 50%; }\n    .ce-center .ce-inner { position: relative; float: right; right: -50%; }\n    .ce-right .ce-gallery { float: right; }\n\n    .ce-gallery figure { display: table; margin: 0; }\n    .ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n    .ce-gallery img { display: block; }\n    .ce-gallery iframe { border-width: 0; }\n    .ce-border img,\n    .ce-border iframe {\n        border: 2px solid #000000;\n        padding: 0px;\n    }\n\n    .ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n        margin-bottom: 10px;\n    }\n    .ce-image .ce-gallery { margin-bottom: 0; }\n    .ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n    .ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n    .ce-below .ce-gallery { margin-top: 10px; }\n\n    .ce-column { margin-right: 10px; }\n    .ce-column:last-child { margin-right: 0; }\n\n    .ce-row { margin-bottom: 10px; }\n    .ce-row:last-child { margin-bottom: 0; }\n\n    .ce-above .ce-bodytext { clear: both; }\n\n    .ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n    /* Headline */\n    .ce-headline-left { text-align: left; }\n    .ce-headline-center { text-align: center; }\n    .ce-headline-right { text-align: right; }\n\n    /* Uploads */\n    .ce-uploads { margin: 0; padding: 0; }\n    .ce-uploads li { list-style: none outside none; margin: 1em 0; }\n    .ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n    .ce-uploads span { display: block; }\n\n    /* Table */\n    .ce-table { width: 100%; max-width: 100%; }\n    .ce-table th, .ce-table td { padding: 0.5em 0.75em; vertical-align: top; }\n    .ce-table thead th { border-bottom: 2px solid #dadada; }\n    .ce-table th, .ce-table td { border-top: 1px solid #dadada; }\n    .ce-table-striped tbody tr:nth-of-type(odd) { background-color: rgba(0,0,0,.05); }\n    .ce-table-bordered th, .ce-table-bordered td { border: 1px solid #dadada; }\n\n    /* Space */\n    .frame-space-before-extra-small { margin-top: 1em; }\n    .frame-space-before-small { margin-top: 2em; }\n    .frame-space-before-medium { margin-top: 3em; }\n    .frame-space-before-large { margin-top: 4em; }\n    .frame-space-before-extra-large { margin-top: 5em; }\n    .frame-space-after-extra-small { margin-bottom: 1em; }\n    .frame-space-after-small { margin-bottom: 2em; }\n    .frame-space-after-medium { margin-bottom: 3em; }\n    .frame-space-after-large { margin-bottom: 4em; }\n    .frame-space-after-extra-large { margin-bottom: 5em; }\n\n    /* Frame */\n    .frame-ruler-before:before { content: \'\'; display: block; border-top: 1px solid rgba(0,0,0,0.25); margin-bottom: 2em; }\n    .frame-ruler-after:after { content: \'\'; display: block; border-bottom: 1px solid rgba(0,0,0,0.25); margin-top: 2em; }\n    .frame-indent { margin-left: 15%; margin-right: 15%; }\n    .frame-indent-left { margin-left: 33%; }\n    .frame-indent-right { margin-right: 33%; }\";}s:7:\"tx_seo.\";a:2:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:2:{i:0;s:46:\"EXT:seo/Resources/Private/Templates/XmlSitemap\";i:10;s:36:\"EXT:seo/Resources/Private/Templates/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:45:\"EXT:seo/Resources/Private/Partials/XmlSitemap\";i:10;s:35:\"EXT:seo/Resources/Private/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:44:\"EXT:seo/Resources/Private/Layouts/XmlSitemap\";i:10;s:34:\"EXT:seo/Resources/Private/Layouts/\";}}s:7:\"config.\";a:1:{s:11:\"xmlSitemap.\";a:1:{s:9:\"sitemaps.\";a:1:{s:6:\"pages.\";a:2:{s:8:\"provider\";s:52:\"TYPO3\\CMS\\Seo\\XmlSitemap\\PagesXmlSitemapDataProvider\";s:7:\"config.\";a:2:{s:16:\"excludedDoktypes\";s:25:\"3, 4, 6, 7, 199, 254, 255\";s:15:\"additionalWhere\";s:36:\"no_index = 0 AND canonical_link = \'\'\";}}}}}}s:15:\"tx_felogin_pi1.\";a:1:{s:12:\"_LOCAL_LANG.\";a:2:{s:3:\"de.\";a:1:{s:18:\"ll_welcome_message\";s:17:\"Mein eigener Text\";}s:8:\"default.\";a:1:{s:18:\"ll_welcome_message\";s:11:\"My own text\";}}}s:8:\"tx_form.\";a:1:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:100;s:44:\"EXT:vt9/Configuration/Form/vt9FormSetup.yaml\";}}}s:16:\"tx_kesearch_pi1.\";a:1:{s:5:\"view.\";a:1:{s:18:\"templateRootPaths.\";a:1:{i:100;s:57:\"EXT:vt9/Resources/Private/Extensions/ke_search/Templates/\";}}}}s:11:\"seo_sitemap\";s:4:\"PAGE\";s:12:\"seo_sitemap.\";a:4:{s:7:\"typeNum\";s:10:\"1533906435\";s:7:\"config.\";a:7:{s:12:\"cache_period\";s:3:\"900\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:8:\"admPanel\";s:1:\"0\";s:15:\"removeDefaultJS\";s:1:\"1\";s:16:\"removeDefaultCss\";s:1:\"1\";s:13:\"removePageCss\";s:1:\"1\";s:18:\"additionalHeaders.\";a:2:{s:3:\"10.\";a:1:{s:6:\"header\";s:42:\"Content-Type:application/xml;charset=utf-8\";}s:3:\"20.\";a:1:{s:6:\"header\";s:20:\"X-Robots-Tag:noindex\";}}}i:10;s:4:\"USER\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:51:\"TYPO3\\CMS\\Seo\\XmlSitemap\\XmlSitemapRenderer->render\";}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:8:{s:5:\"meta.\";a:1:{s:8:\"viewport\";s:53:\"width=device-width, initial-scale=1, shrink-to-fit=no\";}s:12:\"shortcutIcon\";s:42:\"EXT:vt9/Resources/Public/Icons/favicon.png\";s:11:\"includeCSS.\";a:6:{i:10;s:46:\"EXT:vt9/Resources/Public/Css/bootstrap.min.css\";s:3:\"10.\";a:1:{s:18:\"disableCompression\";s:1:\"1\";}i:20;s:48:\"EXT:vt9/Resources/Public/Css/modern-business.css\";i:30;s:62:\"EXT:vt9/Resources/Public/Css/jquery.smartmenus.bootstrap-4.css\";i:35;s:42:\"EXT:vt9/Resources/Public/Css/lightcase.css\";i:40;s:45:\"EXT:vt9/Resources/Public/Css/customstyles.css\";}s:20:\"includeJSFooterlibs.\";a:6:{i:10;s:49:\"EXT:vt9/Resources/Public/JavaScript/jquery.min.js\";i:20;s:59:\"EXT:vt9/Resources/Public/JavaScript/bootstrap.bundle.min.js\";i:30;s:60:\"EXT:vt9/Resources/Public/JavaScript/jquery.smartmenus.min.js\";i:40;s:72:\"EXT:vt9/Resources/Public/JavaScript/jquery.smartmenus.bootstrap-4.min.js\";i:50;s:48:\"EXT:vt9/Resources/Public/JavaScript/lightcase.js\";i:60;s:48:\"EXT:vt9/Resources/Public/JavaScript/vt9custom.js\";}i:10;s:13:\"FLUIDTEMPLATE\";s:3:\"10.\";a:6:{s:14:\"layoutRootPath\";s:34:\"EXT:vt9/Resources/Private/Layouts/\";s:15:\"partialRootPath\";s:35:\"EXT:vt9/Resources/Private/Partials/\";s:5:\"file.\";a:1:{s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:4:\"CASE\";s:8:\"cObject.\";a:13:{s:4:\"key.\";a:1:{s:4:\"data\";s:10:\"pagelayout\";}s:12:\"pagets__1col\";s:4:\"TEXT\";s:13:\"pagets__1col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/1col.html\";}s:18:\"pagets__1colslider\";s:4:\"TEXT\";s:19:\"pagets__1colslider.\";a:1:{s:5:\"value\";s:51:\"EXT:vt9/Resources/Private/Templates/1colslider.html\";}s:12:\"pagets__2col\";s:4:\"TEXT\";s:13:\"pagets__2col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/2col.html\";}s:12:\"pagets__3col\";s:4:\"TEXT\";s:13:\"pagets__3col.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/3col.html\";}s:19:\"pagets__submenuleft\";s:4:\"TEXT\";s:20:\"pagets__submenuleft.\";a:1:{s:5:\"value\";s:53:\"EXT:vt9/Resources/Private/Templates/Submenu-left.html\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:1:{s:5:\"value\";s:45:\"EXT:vt9/Resources/Private/Templates/2col.html\";}}}}s:10:\"variables.\";a:18:{s:8:\"content0\";s:7:\"CONTENT\";s:9:\"content0.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}s:8:\"content1\";s:7:\"CONTENT\";s:9:\"content1.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 1\";}}s:8:\"content2\";s:7:\"CONTENT\";s:9:\"content2.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 2\";}}s:8:\"content3\";s:7:\"CONTENT\";s:9:\"content3.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 3\";}}s:8:\"content4\";s:7:\"CONTENT\";s:9:\"content4.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 4\";}}s:8:\"content5\";s:7:\"CONTENT\";s:9:\"content5.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:10:\"colPos = 5\";}}s:10:\"content100\";s:7:\"CONTENT\";s:11:\"content100.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 100\";s:9:\"pidInList\";s:2:\"32\";}}s:10:\"content110\";s:7:\"CONTENT\";s:11:\"content110.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 110\";s:9:\"pidInList\";s:2:\"32\";}}s:10:\"content120\";s:7:\"CONTENT\";s:11:\"content120.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:3:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:12:\"colPos = 120\";s:9:\"pidInList\";s:2:\"32\";}}}s:9:\"settings.\";a:3:{s:8:\"siteLogo\";s:46:\"EXT:vt9/Resources/Public/Images/logo-light.png\";s:9:\"siteTitle\";s:23:\"Custom Content Elements\";s:6:\"rootId\";s:1:\"1\";}s:15:\"dataProcessing.\";a:10:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:5:{s:2:\"as\";s:8:\"mainMenu\";s:9:\"expandAll\";s:1:\"1\";s:10:\"titleField\";s:18:\"nav_title // title\";s:6:\"levels\";s:1:\"6\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}i:20;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"20.\";a:5:{s:2:\"as\";s:8:\"metaMenu\";s:10:\"titleField\";s:18:\"nav_title // title\";s:6:\"levels\";s:1:\"1\";s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:5:\"value\";s:2:\"28\";}}i:30;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"30.\";a:4:{s:2:\"as\";s:8:\"rootline\";s:10:\"titleField\";s:18:\"nav_title // title\";s:7:\"special\";s:8:\"rootline\";s:8:\"special.\";a:1:{s:5:\"range\";s:4:\"0|-1\";}}i:40;s:55:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor\";s:3:\"40.\";a:2:{s:9:\"languages\";s:4:\"auto\";s:2:\"as\";s:12:\"languageMenu\";}i:50;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"50.\";a:5:{s:2:\"as\";s:7:\"subMenu\";s:10:\"titleField\";s:18:\"nav_title // title\";s:9:\"expandAll\";s:1:\"1\";s:10:\"entryLevel\";s:2:\"-1\";s:6:\"levels\";s:1:\"2\";}}}s:14:\"bodyTagCObject\";s:4:\"TEXT\";s:15:\"bodyTagCObject.\";a:2:{s:4:\"data\";s:10:\"pagelayout\";s:4:\"wrap\";s:23:\"<body class=\"layout-|\">\";}}s:7:\"module.\";a:4:{s:8:\"tx_form.\";a:1:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:100;s:44:\"EXT:vt9/Configuration/Form/vt9FormSetup.yaml\";}}}s:9:\"tx_belog.\";a:1:{s:9:\"settings.\";a:3:{s:29:\"selectableNumberOfLogEntries.\";a:7:{i:20;s:2:\"20\";i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:21:\"selectableTimeFrames.\";a:8:{i:0;s:8:\"thisWeek\";i:1;s:8:\"lastWeek\";i:2;s:9:\"last7Days\";i:10;s:9:\"thisMonth\";i:11;s:9:\"lastMonth\";i:12;s:10:\"last31Days\";i:20;s:7:\"noLimit\";i:30;s:11:\"userDefined\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:10:\"tx_beuser.\";a:2:{s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:1:\"0\";}s:9:\"settings.\";a:1:{s:5:\"dummy\";s:3:\"foo\";}}s:20:\"tx_extensionmanager.\";a:1:{s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}}s:23:\"fluidAjaxWidgetResponse\";s:4:\"PAGE\";s:24:\"fluidAjaxWidgetResponse.\";a:4:{s:7:\"typeNum\";s:4:\"7076\";s:7:\"config.\";a:4:{s:8:\"no_cache\";s:1:\"1\";s:20:\"disableAllHeaderCode\";s:1:\"1\";s:18:\"additionalHeaders.\";a:1:{s:3:\"10.\";a:2:{s:6:\"header\";s:24:\"Content-Type: text/plain\";s:7:\"replace\";s:1:\"1\";}}s:5:\"debug\";s:1:\"0\";}i:10;s:8:\"USER_INT\";s:3:\"10.\";a:1:{s:8:\"userFunc\";s:42:\"TYPO3\\CMS\\Fluid\\Core\\Widget\\Bootstrap->run\";}}s:9:\"sitetitle\";s:0:\"\";s:6:\"types.\";a:3:{i:1533906435;s:11:\"seo_sitemap\";i:0;s:4:\"page\";i:7076;s:23:\"fluidAjaxWidgetResponse\";}}}'),(9,'9585b67364fc26d35a4ed2899cd4a57e',2145909600,'a:1:{s:32:\"b8fd1cca4dce6e59ff29ed24164f4bc0\";s:19:\"[page[\"uid\"] == 69]\";}'),(10,'96884bc0b54c02122df1620ca381b84b',1600275967,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(11,'e8daf8b460cbc30b02341938724827ee',1600275967,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(12,'29ffb25b023165b3bce8b2d8b86dd921',1600277226,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(13,'037a93476fb55bc5e6c9f8f60021b2e8',1600277226,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(14,'b29ec626a06b337d8e7685e2fe7fefab',1600277963,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(15,'eaa7297b8e6e2066d2a463db103870dd',1600277963,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(16,'a8e4b65ee4e876567cad68eb4c9f15c4',1600278059,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:14:{i:10;s:4:\"USER\";s:3:\"10.\";a:2:{s:8:\"userFunc\";s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->getDataAsJson\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:8:\"\"data\":|\";}}i:20;s:4:\"TEXT\";s:3:\"20.\";a:4:{s:5:\"field\";s:18:\"nav_title // title\";s:4:\"trim\";s:1:\"1\";s:4:\"wrap\";s:10:\",\"title\":|\";s:11:\"preUserFunc\";s:67:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor->jsonEncodeUserFunc\";}i:21;s:4:\"TEXT\";s:3:\"21.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:22;s:4:\"TEXT\";s:3:\"22.\";a:2:{s:5:\"value\";s:23:\"###TARGETPLACEHOLDER###\";s:4:\"wrap\";s:11:\",\"target\":|\";}i:30;s:4:\"TEXT\";s:3:\"30.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:40;s:4:\"TEXT\";s:3:\"40.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:50;s:4:\"TEXT\";s:3:\"50.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:11:\",\"spacer\":|\";}}}}}'),(17,'5265f1cc886e7d0fba7dc51c93dc3f54',1600278059,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:25:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}');
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cache_hash_tags` VALUES (1,'842358f402f002083bc182bc1ce1a755','UserTSconfig'),(2,'6be416402ca653bb40360e841c4e8aef','pageTSconfig'),(3,'515c1d5cb7028d65c107db258a5047d7','ident_TS_TEMPLATE'),(4,'34b4a6dd4bf1972de584cfc78692d15a','ident_TMPL_CONDITIONS_ALL'),(5,'9bfc2025de520adbb83697d708e7e82b','ident_MENUDATA'),(6,'ad327790e5c52ce9a91f964925993451','ident_MENUDATA'),(7,'6dcdc0eb02d2c1bef10ee1d2a2e2e695','ident_MENUDATA'),(8,'34bf6be223b1bfc34f016efd54ce9237','ident_TS_TEMPLATE'),(9,'9585b67364fc26d35a4ed2899cd4a57e','ident_TMPL_CONDITIONS_ALL'),(10,'96884bc0b54c02122df1620ca381b84b','ident_MENUDATA'),(11,'e8daf8b460cbc30b02341938724827ee','ident_MENUDATA'),(12,'29ffb25b023165b3bce8b2d8b86dd921','ident_MENUDATA'),(13,'037a93476fb55bc5e6c9f8f60021b2e8','ident_MENUDATA'),(14,'b29ec626a06b337d8e7685e2fe7fefab','ident_MENUDATA'),(15,'eaa7297b8e6e2066d2a463db103870dd','ident_MENUDATA'),(16,'a8e4b65ee4e876567cad68eb4c9f15c4','ident_MENUDATA'),(17,'5265f1cc886e7d0fba7dc51c93dc3f54','ident_MENUDATA');
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes`
--

DROP TABLE IF EXISTS `cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
INSERT INTO `cache_imagesizes` VALUES (1,'984bd211c85fcae5e66dd7234e9ef6153d2273d1',2145909600,'xú-åAÄ ˇ¬⁄BV©Ø©Ä¬¡ì&åoõŸ…òz}N\rÍ™ù’-}í∫Ë≈‡!0I9îâY÷@≤M‡ô\nœ√ÁÓ∑√ˆr∑|ıBS\rŒ?Ø•Ìı\ZG§Â˝\0” O'),(2,'66fdd40ceef63ad91981784a42ec822e50367d3b',2145909600,'xú-ÃAÄ D—ªpÇB°ú¶≈*,\\I‚¬xw!q7y˘&§Á¢ÖLÂ´ö<&êâ\Z9∞‚¢ÇXÔﬁ9ªÜ’bÚ)@q¬2{;˙vÚ°w€˙xh‰a≤˝πj;jüÓb~?!'),(3,'315dd7a5f76115d90488171a16d0cfd9c1815735',2145909600,'xú-åAÄ ˇ¬⁄™÷◊®¬¡$åoõŸ…®ê<Mº∏¢≠∏}L«Åxâ1%çk–ïÕ\001xÜ†È@oFßè√Øóûv◊‹G°\n2Lé?/Vœ“Á±¡˛~&ø!'),(4,'9016d0d966e89f46b6680e3fb0ba5be8fac47d4b',2145909600,'xú-Ã9¿ D—ªp0õqNC0[ë\n§QÓê“çûæ&í¶gê!—‚h‚XSípôU:çÛ≤‰`äM¿\ZîèñC	àÄ	\0Ô^≠æ_±ÊªÛ\\ù¨‹¨~nπ◊6∑Ô1  '),(5,'abe0a34ef025c9b7027ca794ed5c47d4a68b93a8',2145909600,'xú-åª\rÄ0w…Nvb¶1˘T Q v\'ëËûÓùNÂ9e”ÙlfƒDZÅ8j	ƒ^#·Í yáiW[\"cpYOﬂøZÛ›”5\n],¡‰ˆÁ-˜⁄Æyÿﬁ\nÑ î'),(6,'42ecd900aa74af5785f29ed4b0ed0022df3baf5c',2145909600,'xú-ÃKÄ E—Ω∞ÇÚ©÷≤öbA8íƒÅqÔB‚ÏÂ‰Ê	{~.l™\\’ƒ1Å\r•‰Éﬂ@5£\"°S\0IZ\\ë◊dÉ/¢Ÿ€—∑Sé|7Ì„°1¬d˚sÕÌ®}∫£¯~!'),(7,'9749f654dc0c95477bcb2134a4ed1656e10e1b7e',2145909600,'xú-åKÄ Ô¬	\n≈ı4ïˇ¬&.åww/Û&#å¸∂¨öå¶ˆ9ÅåÄ…Y4^≤ıŸ2æ–ñåáÂ\0∑@∞|=˝~JÕwO◊,t÷ãÎü∑‹kª÷`?‘ ñ'),(8,'9400a732811ccff150c3580c94c05a3fdfef5de1',2145909600,'xú-Ãª\r¿ E—]òÄ?ƒLcÉ©@Je˜ÄîÓÈËÍ!xX\rGiM	B≤\'çhL†Ω„x Dò≠¡PÙ…Ÿ˙BRÌ^≠æ_X˘ÓeÆáNnV?7ÓµÕÌ:¶˜;W!ó'),(9,'5acafdf53d7a2453b0d3a7d5d7e6a65c1185e7c7',2145909600,'xú-åAÄ ˇ¬Z°*Â5ïV·‡I∆øâ∑ÕÏdÑ=?vEÆ‚Rü¿n¢≥-4Ø*ö3Eo:≠˙mï›6\Z>vøûrÿ]µıBeúap¸y±zî6éÈ˝\0&û!'),(10,'1de807bc22242c231578eca85a16e231ebe4db94',2145909600,'xú-ÃAÄ D—ªpl°@9MSAX∏íƒÖÒÓB‚nÚÚ3¬»œ≈éMì´ô<ße#Æ®UAA%JBjSÄ£GEm§’o≥ÔßÂÓ˚òùΩ]º˝‹J?⁄X1øÍ$ 6'),(11,'ffb8e8f71d714d45774854ecdfcf5b1583826c01',2145909600,'xú-ÃAÄ D—ªp∞ÄµúÜBÆ qaºªê∏õº¸L$†ßì%UcØ*Ã©I•à[r≤oŒjSºŒà\\ˆÄ30\',,x$.´7≥oW<ÂnyÃáFﬁ.6?WigÀ-Ñ˜-9!Å'),(12,'7ee207958ad29343dcfe22c0d56cbb0eab489d54',2145909600,'xú-ÃKÄ E—Ω∞Z*hYMÂ?pâ„ﬁÖƒŸÀ…Õ6¸t&VUzU~NÕ*H\0LB‹Ùë¿â›]é÷ú‡äv6DZ=Ãæ]R“›‚òç--Üükj•éÂÑ˛˝\0H q'),(13,'940bff8319f0cf7844bafb37b7137a3d750ae386',2145909600,'xú-ÃA\n¿ D—ªxÇ$ö®Èiƒä∫ËJ°ã“ªW°ª·Òô§Vü°NMK£ôcMPCA<ßò9 !dÑíëEB±ú%‚∏{\\}øR-w?ÁzË*n3˛‹JØmnwˆx?ã÷'),(14,'38f4231cb7349033edba02db07bbf6037207a30e',2145909600,'xú-ÃKÄ E—Ω∞¿\nRWSh˘A‚¿∏w!qˆrrÛ7|:™JΩ™sNç*qä:&#^2Ñ¿∆êÑ›ŒIìDgs:¨ﬁÃæ]T‰n<ÊCCãÕœUZ©c9ÿÛ˝\0Q+!≥'),(15,'84186741a42f5669d65df789c156b80e0192bdab',2145909600,'xú-ÃAÉ0D—ª‰v‹BlNc¬Ñd¡*H,PÔﬁPu7“˚\Z7±ª€ÀBı^√2&YHR†‰5#F•9o†\"Ï\\t÷âW8ﬁÚÙ<˙v¯é´mÁxh∆\ZÈ˛CE€Î˘ìòh˘|≠Ö\"'),(16,'f62b77f4211595bdb82d3587d33199984b300ce8',2145909600,'xú-åKÄ Ô¬	JÀG iJ\n¬¬ï&.åww/Û&#L¸úÏÿt9ª…sõ&)§H[,•TTZ¢Ä‚&JÜ¶\"À∑”áÏızÕ¬`Dø∏˝yØcÔ◊:¨á¸~=r!'),(17,'e218c28da54599c76c398c7c23d041d2f7ed9843',2145909600,'xú-ÃKÄ E—Ω∞ÇÚ≠÷’T\nîÅ#M˜.$Œ^NnìßÁ§@F˘T≥ç	dñË2\nßUJç∏A∑KZ0X_ëc®ô”ÏÌË˚¡≠‹]ÆÒ–)ƒ…ˆg-ΩÈ5›√ˆ~ÿ ∫'),(18,'39709107a42b7d5d9cce79898e35b15798d6a152',2145909600,'xú-å9Ä0ˇí‰p.Û\Zì8GA‚Ô8›hg¥Ñü’†s®MP£Jªmñìœ¿îÍZ¨ﬂe‚ù„,∏z#˝<®Û=Î%É÷k7ˇ>xˆq-\"ﬁCÏ!!'),(19,'d6e72e3dd14b622265b23e44c73a8ea186694f40',2145909600,'xú-åAÄ ¿˛¬ò8Ák&pâ„ﬂÖƒ[”4\rÇÚ4!1%¥bˆÅVÃ¡Ë9;&õpem‹ÇfXNBON…ÕF_ØêıÆ©èCOS√Øã÷\\˙ÙÑ˚˚æ«'),(20,'b233ae304d783e2724bbe1a026358db7d213e54c',2145909600,'xú-Ãª\r¿ E—]òÄ?ƒLÉÉ\r©@Je˜ÄîÓÈËÍe0∞ ZM§5%.5¢¥∆RåS‡à§NçöΩS£ß‡$Ô^≠æ_π“›À\\¨€¨~n‘kõ€çLÔ@!|');
/*!40000 ALTER TABLE `cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes_tags`
--

LOCK TABLES `cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES (1,'redirects',1600192421,'xúÖQ—rÉ ¸ﬁõ®â&íèqúë)\nÅ£”¥”Ô	55ùiÀ∑ª‹›.Çó¸=™‰LJx≥v‘ì•‡e4;â¨ÿs÷Å˜∫¨9€*ËE4¯Ñ\Z\rlø8ÕK∫T≈¨⁄qµbßKïÀUAUKúSAŸ))Íˆÿ¥e[Wôî˛%œ∑•˜Å3[˙	—Aú\r¨GQè∞`Ù&µFJ\n#ÿË%tÉ\rd˘œ|ÙN‡ê†˝œtXØCÁ·Øn=¨∑i¢\\Q¡ÅƒÓ\Z¡ﬂ®µ#˘Ûﬂ\Zz˙‡~4úë€$Û\rvÃ¶£<0iU≤ø+9πA£¥q¬UrF$8ˇGZΩπ\'‹=Í?ÊÛ	°S¬˛'),(16,'8dd66f8a9309af953e1cd6b0a5ff136d',1600278059,'xúÌZÎr€∏˛ΩûÈ;`π”˛\nu°DYrlwR€Ÿf€d›⁄mßùù—Ä$(aM,\0Jˆ∂}õæI_¨ﬂH›údì∏3›iìãHÁ‡‹?¡O¶\'3\'√¡I 3QYôK°ÉÁÊdù”,õLÚ)üç3ûœ‚ë¶Ÿ$8œá£IFt«\'AÕb.Ò$OÜ~$Uï3öüçG‡}˙ÂÂ∑∑ææbK[ÁGßtaô‘gAau¿\n^-ŒÇLÑôhVÏ¸ËË¥ñ≥t…µˆ,hlNi˙À0dG_‹.•akëi√m≠÷Bãå%íæ±ê… ‘RÀj¡j°ÍB0´ò;Ò%ñ;\Z¨„,◊B0Uãä’ËT∞øˆöW–≠§€óöób≠ÙòJ+yQ<∞TnΩƒﬂpSÕnÓ8◊Kı=„U∆\nôä `æ©2Ã}˝Ê˝ØØ€€ù™˙AÀ≈“≤·l6\r£A4`*?d÷cW˜ÿéë™¬nµÿYbªR3-∞$µrE÷ï–b^Uπ“%∑XÁˆC^—2i¸ÄÖ+lmN˙}˚P´QOÈEˇ(aˆ£”BVw`Yúf©¥MÀ$Vl©E~¯»˚‚ﬁˆWv÷ˇΩ¶3˝Î&Å‚˝Wò6˝úØhaØÆ√*q»&Ì”\0<i•-ƒ˘ØU)‡≠ã∆XUnåU8Àõ”æßj√°ÇŒÇÖÄí‹*ƒNlgÅ7Î≈ÎõÄı˜©WR¨k(≤Cºñô]ûe˚°{x÷y64)/ƒŸb¡sZÊ“ûUÍcªñ÷\n}írùÌ07MYr˝‡»˜Õi\nañBÿŒñ,ò\Z≥o[+ ∫œ\r¬ﬁÙSU÷p/©_\nΩYxÂ«Ÿòg£$NR1:FJ¯PŒGSŒ„A8úD>Œ‚…lƒ„(OF«√8ö§√úè”—xúÙ ó√x6ùÃÜ≥¡4`•»$?’Ì¯Ë‘§Z÷ñù~‡ñ‚YÃáQ%ì„„ce≥qv<Ã£¡0õ¶„¡0∆ì(“,”<„£4∆˛≥Ù8„È Ô}øŸ—dÁß}øÖ¶ºRïÑ:{uAú¶‚•JYq›À‡÷ïÖ~@˛Í˚rrö®9[@T˛†\ZRÈ≤f>èREöˇÃ◊ñ7|ïpÕêß_uK*?Í/°∏ØëSa±`πºá¨™ª©å£J$wÖ\"ô‹∞†\0·ëãaæœ7L4¯!*(÷œÇw‰¬&J¿@ñãén√ºhPÉ/Ï{Vø√üÛZ´‘˘sﬁè˚ÒXŒµPaAUf>òNß„(ùçf>ë}Ó—`Ä˝\"9‚—fÔˆß}~N∂|óö^çØÇsok\"\'s£8Yß˝%V-l÷fåß	X∆-oÁ»≤E¡k#∫aé®ƒÆæÚ, ‰R´:CiÑÖ¥‰°´Ö™ÿπij*\"km÷íy/ãÏ,»yA‹›h¡ä≈[\'õº.Æ ¬)Ùoﬂ~Ë*(≈5HpÒjÑáW¢§≠R2ÎÿÌ™r~⁄;¬∫et[Íê7Vëº¶x5ﬁI`@Y»¢ÈS2ÓZ A¥Üîé€Ht7ª\r¸gG_¥∫à∏ºjMs~yµ1\0§_»vÉ}òaÛÔLõùa≠÷áÈUÑe∫ÚA√dµt8¿”2:-d≈‡Ox«\n√^‹›)ù	U°BD{åxöbÜ<ÍxlØ]ÅTˆçÑTo(^i-›ÄQî›>:¬2	âŸ~¿\'∂b¯ÔÏníB•wåzDXà‹~X\nlÃˇ≈˚…–Q∏Õ∏’Õﬁ“É4Ÿ[{ﬁ—]iCñlL;∫çmgWÔ‘ç?ˆˆp¯ÄÎn;πVà,yÿ∑•◊Ω¢Ü˚’{]RÂﬂãâ≠Ëúpsøà›ú7Ömü»‘!ôﬁ5«v∞ÌáB<a-SÜ[†>`∫„ârŸ≥O∫@õÑú\n¥@MYar∏s0…\r.á¸√L ˙ÍQ~`Ùqät“0úÀECh≤Î!xÿV0ä2A£r–ıè\\zÌA„H]„»•Ió®w√8û«£˘p\rÊ\\§yû&h!ﬂ◊€2Ÿm!cz(îÛ1uË⁄vÊäﬂÓA©xÙªØ+9û<ΩÍÛ+Äªí…ÿ:ì¬Ó‹)ùJ†l7üãf!Åé•Q\0Å6\0élczÏ \'äªE86∆>câLDï5%É	û·ƒ4xAŸ|∆\0º- ><cUS•=ˆ¶Aî≥J¸µ,S‡Ä…“ë	d(\0(OõOm$xó\nX≈ ÛXâB⁄˚¶à y%çÏùˆk“Ì√DÇ¡dI‡ﬁë3ì\nÑö_a\Zì öxxEW“rz#“¯◊né\n~⁄îjzıQ2≥¶yÉ)ÄæRej√ª‰Âè,lwwΩ‰∆õmÖ‡≥5áÆŒÄNo˙1ñR∏ ≈ò¡¥ø	:Ka‡˚dZ7Pél·à{Ï¶¡kË\r5Qi\nFVx∆U•Mge·´US:?°ƒe≤}ˆÛ»vËı\nÆnt-â+ﬁ·ê\ngu£…Îπ–›äÊö\\ï ¨–¢ß VC{\"≤Çñ_4ö\'Ã‡¯3i\n]HßB!î∑“„PNtˇ«\"¸c˙OÙSÍ?—˙O¥Ì?Y˘È\r(z‘Ä>§˜DOÏ=—≥˜ÏƒkÕÖ°û¢~ïm2ömBvŸ⁄c◊d∞vïdI·Ã±ÆT:ëÃ\"≠t%%2uiçÍ$⁄õ/”¶·‘ÄÜÑ˘ƒÍƒt©Õ“ªT`≥)¶´¶®À- ™NõMﬁTÔM	t´å Hﬁ∂≤∫ƒÌ±ó®Z¬UHW–<Ò\n¨*NT[!Æ~A·Œ6(æxõ`•§¢¶‡Á˚£\\Òí¥C’EMlÎ–GÊÒaN˚Ëàw–ÍmtPç?®∆?%†\Z?®∆ˇ!†\Z:PçﬂTﬂ‚¢«≈bÙ®~™üÅÍg†˙T„üPçü\0T„ˇPç?	®∆Ô™‘{∆üÅÍg†˙Ñ<˝îÚxÙÑ<mÛ¯R”?Ûë˘;˙§¸=1\'OÃﬂC!ˇÿq%Ò\ZµOÏÜ<v$PÈMÂ‡c˜iqΩ^˜» M\"¬J•J›I—»ËªE˝ØØøù?§Îı_-~Iﬂ\\ñ`x6¸/ÎÁõhÚèH·§ﬂ^ÀvDiπê’ôìÙÛ—ãüG/ÒÔ≠ü2	ajùƒòTQu»t<›A¶—Ò xãb-(nø∆d\0Gw¸ÅÖ(⁄’†◊\\ﬂ	KÁ$d…nU†ÛWÏ∆\"º\\[–~”$≤¯◊?	;5fÅÄeøæd7Èr˝Ø&§€\r\"ÿ6[§ØOﬁ†õÇÚaÿ¯#ﬂûﬂQ¨ﬁı}h\Zº≠≤˘πq—Ï¸◊ÍG°…/ï¢$°/õ;Îr7⁄ùëy óÆÒiÚ„ZÓ˛˙›uÍá0˛ÒoŸ;√e8Âª-Ó~Ω§~lü~o√≈©ÔÖü¸˘ÉQ:@„ûÃ&i2ôéG£±gy4õÚ„4âf√i8åì$ödπà1åf£8%Q<IgÉ	Á⁄æ≥·ıE÷)†cLtæâNN•Ôës*j¡s~—Å™â;ÖhßëaÏŒXÕ¸Q©[ ¬k≠(?µÈmñüZPÅwCC\ZöbEKH≤∆xvá\\æªx}Û›˙ˇw◊√Ô~Ô÷^\nûˇO¯æu»w∂À˜F®∂xÚ¸3vZ&\"«>⁄øàÑÃ(Ü–öó†∑¿ZW%ó≈ã,sn3Dùh1d¬±3V\nPå#.åõû†-–uH≥ﬁﬂáS£ΩÖﬂÏO∂Îf∆;éx)µ±{≥”ùŸÅÊÎéyä–]go£ÿzç$WÍVÀÚOö◊¥¶¯;√_ÁR»ﬁœë	^6›≤-√Æ U∫eCﬁ∂K§>ô˛ç≤/USeW˜©®È¨¡´¸EJ◊¿€_	:~U¨D÷ns‡¡¬Äû†WT©ÿ∫?gﬂã^†_—	±ÙÇB¯¢úNÀÌö#Ç2MçÿÜºM£W¿O˜{í`ê\\pÄe±œ¥“‹…˙“éz—¯S(õï>H‰¢BΩ(ä+∑•óRôyU˝JÏà mbäØX£e¯Õ\rê*˜‘¨x—mWVÄì‚ÜéZE∑®\Z/e!∫√âdûËr≠E.ù\Z0º;+—NﬂSn_™î*\0çÅ„£®qÊ⁄Û‘«Á•LGﬂº~‡°Q˝~ã≠∑åÂ…ÄlÈåâHØ˝À¡s˜‘l\\¬˙v¥zÆ∂É~pmvFá›®°Wànñu–`oOéo≈WÛÕTkP;∞∏3Ñ‘˜ò±„à¿††\0/à‘x—)7bè)\n≥›ë)≈—|°USÔZ~‚}\\e∑Í¶Ijw\\eÀ`∆ª [É|q”’ﬁ7¥4÷¯ëπ¨“¢…h˝õ÷“Ã	_ëÌwZ\"ŸÏ|«‰õ¡π*6„#∑ÁB«ÕÒäµ—ÖB;·È∂=˜∆ôW–b^º€u±∂w˛aoï˚ZjØ„p2D«”A<ÛVµ∞bYw3C4+7Cªÿ\'ù˚‹d·;|KŸ$)èEÜPø}D·ì⁄5∂[æ0;ÈªdΩ ÊC⁄ÛøÓ‹≈<');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES (15,'8dd66f8a9309af953e1cd6b0a5ff136d','pageId_1');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection`
--

DROP TABLE IF EXISTS `cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection`
--

LOCK TABLES `cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cache_pagesection` DISABLE KEYS */;
INSERT INTO `cache_pagesection` VALUES (6,'1_222419149',1602783659,'xú≈òmo€6ÄˇJ†0IıjÙ√÷eHÅ.(j+P-—éJD ©7¯øÔ®∑äÅc…[Ï‰C,ùÓéÔéGâ$r¢¸3c∆ÇDvsã\"clR;INÍQ7‹lPHSÑmo:±åÖàÏ02æïdKøuñ\ZﬂoﬁΩªÒ¬Ô∆‚ ¢ 2*ŒÂ«¨†ùﬂ,≤‡°n¿,J÷‹’Ìù\rw‡T:;Z≈¸ßÜmı¬\'1í⁄ΩTH\"i/vAöIF\"éå;û7ó‡∑ ªxx.çV;ßiFF\"/2ŸÛZˆAê•)-z¯Ç!+)≥|÷èZ§c	ƒ`C„m≈Îr‰›oÙá›_÷k?1ÚëÚGπ/i\r±Z&ºÿd[cqØÃAGäVgE¬ÍTŸﬂwÒ»D,2IUÏGÕy]»xrçÑ1gÉ‹iòﬂfEúÛtòÇ8≠IÚÿqú∏ÄYƒåÓ(3:èj.Rƒ1Jî«√°â\\≈üñuÆä\0˚}8ÌÖ‚¶y˚◊ÕÚ√ÍVçàîÿ≥,;∞.Ji∞Ç¨BZ7jF»=£)¬)Õ˜MPÍä»åÊj_ÚeRe•4˚H∏êÇ€Ø´®±ç[„xñ5Ç\0‘œà¬EÁQ,A-+∂?iÇˇB3ˆ“Q9Zl`éÇÚó|ÕŸ*$\'Â@Çùñd¶›hh<⁄Å	Â˚úàG˙£‰’åÑ®D™ÅÛ}¨Ã‚9v›»Óxd5æì·ÙÄ™µ©O)èÒ∆É¯Õ∫]1,N]“Ÿ¯Zçt%2‰|tﬂÈœÙ◊VﬂH∏ÔÙ√±æßû◊ÇVΩÅ&Ë,lkl2Ù”ŒIkv∞~ÈYÔH≠B48RKﬁ‹ë |zz2dŒÃ≤^≥,1°Åq«{æÃÛ ˚é≤íVÍπ“ªe4áü_îC1$ßi\Zn˙éÁNÜ40Àøÿ\'R	˙G]$”Lé,ÁıôÙ(ôø’åAˇù&√z¥¬ãì˝ûÌ¶©‹ã◊3™;JRZMÉy:òuy0:çÂÎXˆ≈±>‰–¶πÇkáÎc&f¥àP«¬«Z>¿^ñ‘”h»∫v&WdÕ¶3âÏkgr¶±ÙfoªW¡j>¶ŸÆﬁÙ[ôMoG_õÏK…8Iß∑#Ù¨Ò\'˚ìıØk!+íÃ(7Ω˝£Î‡Ωá⁄-Ø≤øi⁄=ù’7‰]Ùì˙îù∆ÆΩ|ÊL∂-J±?òƒsûmxÕ=ÜG•5MßoËÚ/p#∫y˘uÙ≠]ßˆ>”.Ÿ˛Kô¬bIß)ù∑‰g ›Ã@‚7©ƒˆ¸aöŒ}ìJlÈfP€U¬ìÑÍ∞œTà\'è8ñT÷•i¡_‹ûg∂1nŒ‘m√Oæﬁù√`+ÜÚ•oÖ¿Ú]/¿~C\\&\nÍ5rCõSÃ£ÿ˜q`¡ŒÆÙûoùÏ	gC)™„yÒP‡cxRájZõN~ûü\rƒ´¸•êÿˆö¥`≠ìá\'˜π\0€*KiªjéØÏªÆÔ¯A¢ıÎ‰7€π è4îT…√Ò|^h√rm(¥~æj>Ùìœc(Õ1xËZm@û›º⁄öU,†÷ﬁûŒ™ç€:’⁄l0Î≥µ9Õ|F(ò…ÊâµÊÃjÔÌ©Ëˇ˘p¯oØ');
/*!40000 ALTER TABLE `cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection_tags`
--

LOCK TABLES `cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cache_pagesection_tags` VALUES (11,'1_222419149','pageId_1'),(12,'1_222419149','mpvarHash_222419149');
/*!40000 ALTER TABLE `cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES (13,'1__0_0',1602783659,'xúMêMr√ FÔ¬	Ç›_Â]eìÏ5ƒó	F#‹f2π{e;vŸ°áxBü\rwªΩÅ™Ç{Ç\ZTÔ≠⁄OlÆÚRi©>Aq=∫ÈøCÔV¯ì\n™Wöÿ∞[Ò´PœAÍ/†æ®õè‚çfƒÌJîjÈÓúı¶@o†ÇπQÊ’(‡€[Î‚\nƒ%#fﬂmcﬂAπhKÚÍ‚∞(˜Ö]ãÕ˝≤ÙûËòœΩi]*ñÆ|Î›öÜ8N«Ü‚≈∑jòûKßÖ†èM»vzxÊ·&œn ‚\"–érd,\"◊Uë¬∆Î˘œÅZ±#ªÌRINg”\\Â€∏ÑÉQ∂¿‡F‘”8Ì¬	±j&„„ÒﬂËü„');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES (13,'1__0_0','pageId_1');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `legacy_overlay` (`legacy_overlay_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1599292759,1598690861,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'a:50:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:11:\"description\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:18:\"sitemap_changefreq\";N;s:16:\"sitemap_priority\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:12:\"twitter_card\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,0,31,27,0,'Home','/',1,NULL,1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1600191658,NULL,'',0,'','','',0,0,0,0,0,0,'pagets__2col','pagets__2col',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0),(2,1,1598691973,1598691925,1,1,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'a:33:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:13:\"shortcut_mode\";N;s:8:\"shortcut\";N;s:8:\"abstract\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:6:\"target\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,1,1,31,31,0,'Home','/home',4,NULL,0,0,'',0,3,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES (1,0,1598691612,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Images/logo-light.png','907bfce1b2a4cf1dfe3749ea7b9fe5c4c710347c','c54978bca15ccf6ef824127547db43b952e8a63a','png','image/png','logo-light.png','3c826c890d0266bc3088ca5cc099cc938c93138c',6429,1598691077,1547462500),(2,0,1598696010,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Icons/BackendLayouts/2col.png','e9153124853202110c4c2e677a840c2b99b733d3','f901933f63c3cbd0d6ef476db3a034dc9eae3c5e','png','image/png','2col.png','c23e584e89e9cb273f986244a6c634c8b8d71a4f',388,1598691077,1547192223),(3,0,1598696010,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Icons/BackendLayouts/submenu-left.png','d37d5438992866e0fb2bacd4b4f4b05e0598aec4','f901933f63c3cbd0d6ef476db3a034dc9eae3c5e','png','image/png','submenu-left.png','5851b10871f4451a4641fcb9ff8925bc65c44279',406,1598691077,1580756847),(4,0,1598696010,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Icons/BackendLayouts/3col.png','e05e9125222ed9f3978583cb030377394066d3fb','f901933f63c3cbd0d6ef476db3a034dc9eae3c5e','png','image/png','3col.png','ba2c1639a2acc9eee3c83bb2a257e67848a78e14',389,1598691077,1547192223),(5,0,1598696010,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Icons/BackendLayouts/1col.png','c3c200dd9b1b4ae22f4f59b1ae548aecd06fe5bb','f901933f63c3cbd0d6ef476db3a034dc9eae3c5e','png','image/png','1col.png','f7af9404f0fcd95ce5d9c3d678014e042f34165b',351,1598691077,1547192223),(6,0,1598696010,0,0,0,'2',0,'/typo3conf/ext/vt9/Resources/Public/Icons/BackendLayouts/1colslider.png','400cab6bc4b23e9a5739903e6c33d0e1a4419042','f901933f63c3cbd0d6ef476db3a034dc9eae3c5e','png','image/png','1colslider.png','796693ddac482b95e434715d988e2a2c8f020ae2',353,1598691077,1547192223),(7,0,1600188763,0,0,1,'2',0,'/user_upload/lake-430508_1920.jpg','2c0b3bb69640b585b1974b0548b92671fd35d28b','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','lake-430508_1920.jpg','0f8f8fdd5e55d6033218c5ff72d46b60d8d2c4a8',526406,1600188763,1600188763),(8,0,1600188763,0,0,1,'2',0,'/user_upload/fischer-1559753_1920.jpg','1df669d7cea6d06d222ac513c89e4d01907fa0e6','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','fischer-1559753_1920.jpg','2551a0a1059b31cb3e4d3e642761c8212d73752c',304283,1600188763,1600188763),(9,0,1600188763,0,0,1,'2',0,'/user_upload/salt-lake-1625125_1920.jpg','ebf444542f6781170cf0f5566d2950fed5bfaf86','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','salt-lake-1625125_1920.jpg','e562a21ef55b1d12c682ed4fff2d0ab98f61e4e1',306280,1600188763,1600188763),(10,0,1600188763,0,0,1,'2',0,'/user_upload/sunset-1421010_1920.jpg','c6e8571f5e0730bcf41062b54fc47f60b137e3e5','19669f1e02c2f16705ec7587044c66443be70725','jpg','image/jpeg','sunset-1421010_1920.jpg','a01b713ca7715bdb099477d31da89e3f11d4c9d7',431360,1600188763,1600188763),(11,0,1600191632,0,0,1,'4',0,'/user_upload/dodokay_-_Virales_Marketing_im_Todesstern_Stuttgart_-_Jubilaeumsausgabe_HD_Schwaebisch.youtube','2dc0f34dbcb4f8624ad724a62e3132227007c83c','19669f1e02c2f16705ec7587044c66443be70725','youtube','video/youtube','dodokay_-_Virales_Marketing_im_Todesstern_Stuttgart_-_Jubilaeumsausgabe_HD_Schwaebisch.youtube','8b7b12507be5376a748a759b2aa9fcebaff203fb',11,1600191632,1600191632);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES (1,0,1598691611,1598691611,1,0,0,NULL,0,'',0,0,0,0,0,0,0,1,NULL,299,79,NULL,NULL,0),(2,0,1598696009,1598696009,1,0,0,NULL,0,'',0,0,0,0,0,0,0,2,NULL,160,90,NULL,NULL,0),(3,0,1598696009,1598696009,1,0,0,NULL,0,'',0,0,0,0,0,0,0,3,NULL,160,90,NULL,NULL,0),(4,0,1598696009,1598696009,1,0,0,NULL,0,'',0,0,0,0,0,0,0,4,NULL,160,90,NULL,NULL,0),(5,0,1598696009,1598696009,1,0,0,NULL,0,'',0,0,0,0,0,0,0,5,NULL,160,90,NULL,NULL,0),(6,0,1598696009,1598696009,1,0,0,NULL,0,'',0,0,0,0,0,0,0,6,NULL,160,90,NULL,NULL,0),(7,0,1600188763,1600188763,1,0,0,NULL,0,'',0,0,0,0,0,0,0,7,NULL,1920,1271,NULL,NULL,0),(8,0,1600188763,1600188763,1,0,0,NULL,0,'',0,0,0,0,0,0,0,8,NULL,1920,1280,NULL,NULL,0),(9,0,1600188763,1600188763,1,0,0,NULL,0,'',0,0,0,0,0,0,0,9,NULL,1920,1280,NULL,NULL,0),(10,0,1600188763,1600188763,1,0,0,NULL,0,'',0,0,0,0,0,0,0,10,NULL,1920,1245,NULL,NULL,0),(11,0,1600191632,1600191632,1,0,0,NULL,0,'',0,0,0,0,0,0,0,11,'dodokay - Virales Marketing im Todesstern Stuttgart - Jubil√§umsausgabe HD Schw√§bisch',480,270,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES (1,1598691612,1598691612,0,1,'/typo3temp/assets/_processed_/5/a/csm_logo-light_088842c939.png','csm_logo-light_088842c939.png','a:7:{s:5:\"width\";i:200;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','ba6f3999daa64879a5c9fcc4ffddd553a4e200d5','3c826c890d0266bc3088ca5cc099cc938c93138c','Image.CropScaleMask','088842c939',200,53),(2,1600186180,1598696010,0,2,'/typo3temp/assets/_processed_/a/2/csm_2col_1fb9227752.png','csm_2col_1fb9227752.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:30;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:50;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5b10b32a87d2b1baf873abaddf48e537bf1b07b3','c23e584e89e9cb273f986244a6c634c8b8d71a4f','Image.CropScaleMask','1fb9227752',50,28),(3,1600186180,1598696010,0,3,'/typo3temp/assets/_processed_/7/a/csm_submenu-left_e2ea50033c.png','csm_submenu-left_e2ea50033c.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:30;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:50;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5b10b32a87d2b1baf873abaddf48e537bf1b07b3','5851b10871f4451a4641fcb9ff8925bc65c44279','Image.CropScaleMask','e2ea50033c',50,28),(4,1600186180,1598696010,0,4,'/typo3temp/assets/_processed_/8/b/csm_3col_f9cfe082e2.png','csm_3col_f9cfe082e2.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:30;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:50;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5b10b32a87d2b1baf873abaddf48e537bf1b07b3','ba2c1639a2acc9eee3c83bb2a257e67848a78e14','Image.CropScaleMask','f9cfe082e2',50,28),(5,1600186180,1598696010,0,5,'/typo3temp/assets/_processed_/d/d/csm_1col_8e44694614.png','csm_1col_8e44694614.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:30;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:50;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5b10b32a87d2b1baf873abaddf48e537bf1b07b3','f7af9404f0fcd95ce5d9c3d678014e042f34165b','Image.CropScaleMask','8e44694614',50,28),(6,1600186180,1598696010,0,6,'/typo3temp/assets/_processed_/d/5/csm_1colslider_d99d56ea3d.png','csm_1colslider_d99d56ea3d.png','a:7:{s:5:\"width\";N;s:6:\"height\";i:30;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:50;s:9:\"maxHeight\";N;s:4:\"crop\";N;}','5b10b32a87d2b1baf873abaddf48e537bf1b07b3','796693ddac482b95e434715d988e2a2c8f020ae2','Image.CropScaleMask','d99d56ea3d',50,28),(7,1600188766,1600188766,1,8,'/_processed_/5/c/preview_fischer-1559753_1920_33028419ca.jpg','preview_fischer-1559753_1920_33028419ca.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.Preview','33028419ca',64,43),(8,1600188766,1600188766,1,7,'/_processed_/b/6/preview_lake-430508_1920_bceed3fc80.jpg','preview_lake-430508_1920_bceed3fc80.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','0f8f8fdd5e55d6033218c5ff72d46b60d8d2c4a8','Image.Preview','bceed3fc80',64,42),(9,1600188766,1600188766,1,9,'/_processed_/4/4/preview_salt-lake-1625125_1920_e4658a4df8.jpg','preview_salt-lake-1625125_1920_e4658a4df8.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','e562a21ef55b1d12c682ed4fff2d0ab98f61e4e1','Image.Preview','e4658a4df8',64,43),(10,1600188767,1600188767,1,10,'/_processed_/9/f/preview_sunset-1421010_1920_1bee7fe4ef.jpg','preview_sunset-1421010_1920_1bee7fe4ef.jpg','a:2:{s:5:\"width\";i:64;s:6:\"height\";i:64;}','551dfa8957f1a04693c61acf34bc959a1ca971c4','a01b713ca7715bdb099477d31da89e3f11d4c9d7','Image.Preview','1bee7fe4ef',64,42),(11,1600188769,1600188769,1,8,'/_processed_/5/c/csm_fischer-1559753_1920_5eb139cfb5.jpg','csm_fischer-1559753_1920_5eb139cfb5.jpg','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.CropScaleMask','5eb139cfb5',225,150),(12,1600188769,1600188769,1,8,'/_processed_/5/c/preview_fischer-1559753_1920_897eaf2023.jpg','preview_fischer-1559753_1920_897eaf2023.jpg','a:2:{s:5:\"width\";i:45;s:6:\"height\";i:45;}','b0d56d56a4278a814fda5a593711f40921d5c3f0','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.Preview','897eaf2023',45,30),(13,1600188822,1600188822,1,8,'/_processed_/5/c/csm_fischer-1559753_1920_aecffb0639.jpg','csm_fischer-1559753_1920_aecffb0639.jpg','a:3:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"crop\";N;}','8e17f053c0ee386607a1a7dd4c1234c3571c7b95','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.CropScaleMask','aecffb0639',600,400),(14,1600190723,1600190723,1,8,'/_processed_/5/c/preview_fischer-1559753_1920_70247428e6.jpg','preview_fischer-1559753_1920_70247428e6.jpg','a:3:{s:5:\"width\";i:64;s:6:\"height\";i:64;s:4:\"crop\";N;}','24e2730ad52329bde94ed7a722393b6e97a484b5','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.Preview','70247428e6',64,43),(15,1600190878,1600190878,1,8,'/_processed_/5/c/preview_fischer-1559753_1920_e0f3a9b680.jpg','preview_fischer-1559753_1920_e0f3a9b680.jpg','a:3:{s:5:\"width\";i:45;s:6:\"height\";i:45;s:4:\"crop\";s:98:\"{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}\";}','810cb3ebae746ce83d653c014560bffa73be2bdc','2551a0a1059b31cb3e4d3e642761c8212d73752c','Image.Preview','e0f3a9b680',45,30);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES (1,1,1600188809,1600188809,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,8,11,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(2,1,1600191279,1600191279,1,0,0,0,0,NULL,'',0,0,0,0,0,0,0,8,13,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0),(3,1,1600191658,1600191637,1,0,0,0,0,NULL,'a:6:{s:5:\"title\";N;s:11:\"description\";N;s:8:\"autoplay\";N;s:9:\"uid_local\";N;s:6:\"hidden\";N;s:16:\"sys_language_uid\";N;}',0,0,0,0,0,0,0,11,16,'tt_content','assets',1,'sys_file',NULL,NULL,NULL,'','',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1598690869,1598690869,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,1598690861,1,'BE',1,0,1,'pages','{\"uid\":1,\"pid\":0,\"tstamp\":1598690861,\"crdate\":1598690861,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":0,\"perms_user\":31,\"perms_group\":27,\"perms_everybody\":0,\"title\":\"[Default Title]\",\"slug\":\"\\/\",\"doktype\":1,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"twitter_card\":\"summary\",\"canonical_link\":\"\",\"sitemap_priority\":\"0.5\",\"sitemap_changefreq\":\"\",\"categories\":0}',0,'0400$87eb64f2d68796ae16b77dfa001754da:e175f7045d7ccbfb26ffcf279422c2e5'),(2,1598690861,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"}}',0,'0400$6d44ec93cfae131b35e24b96f839e8d0:e175f7045d7ccbfb26ffcf279422c2e5'),(3,1598690866,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"title\":\"[Default Title]\",\"l10n_diffsource\":\"a:1:{s:4:\\\"slug\\\";N;}\"},\"newRecord\":{\"title\":\"Home\",\"l10n_diffsource\":\"a:1:{s:5:\\\"title\\\";N;}\"}}',0,'0400$7eee47197b4aec9c5dced8ddd915f75f:e175f7045d7ccbfb26ffcf279422c2e5'),(4,1598690882,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"is_siteroot\":0,\"hidden\":1,\"fe_group\":\"0\",\"l10n_diffsource\":\"a:1:{s:5:\\\"title\\\";N;}\"},\"newRecord\":{\"is_siteroot\":\"1\",\"hidden\":\"0\",\"fe_group\":\"\",\"l10n_diffsource\":\"a:50:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:9:\\\"seo_title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"no_index\\\";N;s:9:\\\"no_follow\\\";N;s:14:\\\"canonical_link\\\";N;s:18:\\\"sitemap_changefreq\\\";N;s:16:\\\"sitemap_priority\\\";N;s:8:\\\"og_title\\\";N;s:14:\\\"og_description\\\";N;s:8:\\\"og_image\\\";N;s:13:\\\"twitter_title\\\";N;s:19:\\\"twitter_description\\\";N;s:13:\\\"twitter_image\\\";N;s:12:\\\"twitter_card\\\";N;s:8:\\\"abstract\\\";N;s:8:\\\"keywords\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:16:\\\"content_from_pid\\\";N;s:6:\\\"target\\\";N;s:13:\\\"cache_timeout\\\";N;s:10:\\\"cache_tags\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:6:\\\"module\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$c3d858e50ffa760e381bdfb0910d6602:e175f7045d7ccbfb26ffcf279422c2e5'),(5,1598691020,1,'BE',1,0,1,'sys_template','{\"uid\":1,\"pid\":1,\"tstamp\":1598691020,\"crdate\":1598691020,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"sorting\":256,\"description\":null,\"t3_origuid\":0,\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"title\":\"NEW SITE\",\"sitetitle\":\"\",\"root\":1,\"clear\":3,\"include_static_file\":null,\"constants\":null,\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"basedOn\":\"\",\"includeStaticAfterBasedOn\":0,\"static_file_mode\":0,\"tx_impexp_origuid\":0}',0,'0400$c6a7dfe84af8f7021163dd9b4a99c7fa:35af6288617af54964e77af08c30949a'),(6,1598691040,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"config\":\"\\n# Default PAGE object:\\npage = PAGE\\npage.10 = TEXT\\npage.10.value = HELLO WORLD!\\n\",\"include_static_file\":null},\"newRecord\":{\"config\":\"\",\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap\"}}',0,'0400$d27af65f5b3d0981e4c2e32e8ba3cddc:35af6288617af54964e77af08c30949a'),(7,1598691580,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript\"}}',0,'0400$e7434c8d143502313137fd49b9a16619:35af6288617af54964e77af08c30949a'),(8,1598691608,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"constants\":null},\"newRecord\":{\"constants\":\"\\nvt9.siteTitle = Custom Content Elements\"}}',0,'0400$c9a29bd358944b14cbdca9b63af7194c:35af6288617af54964e77af08c30949a'),(9,1598691925,1,'BE',1,0,2,'pages','{\"uid\":2,\"pid\":1,\"tstamp\":1598691925,\"crdate\":1598691925,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"0\",\"sorting\":256,\"rowDescription\":null,\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"perms_userid\":1,\"perms_groupid\":1,\"perms_user\":31,\"perms_group\":31,\"perms_everybody\":0,\"title\":\"[Default Title]\",\"slug\":\"\\/default-title\",\"doktype\":4,\"TSconfig\":null,\"is_siteroot\":0,\"php_tree_stop\":0,\"url\":\"\",\"shortcut\":0,\"shortcut_mode\":0,\"subtitle\":\"\",\"layout\":0,\"target\":\"\",\"media\":0,\"lastUpdated\":0,\"keywords\":null,\"cache_timeout\":0,\"cache_tags\":\"\",\"newUntil\":0,\"description\":null,\"no_search\":0,\"SYS_LASTCHANGED\":0,\"abstract\":null,\"module\":\"\",\"extendToSubpages\":0,\"author\":\"\",\"author_email\":\"\",\"nav_title\":\"\",\"nav_hide\":0,\"content_from_pid\":0,\"mount_pid\":0,\"mount_pid_ol\":0,\"l18n_cfg\":0,\"fe_login_mode\":0,\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"tsconfig_includes\":null,\"legacy_overlay_uid\":0,\"tx_impexp_origuid\":0,\"seo_title\":\"\",\"no_index\":0,\"no_follow\":0,\"og_title\":\"\",\"og_description\":null,\"og_image\":0,\"twitter_title\":\"\",\"twitter_description\":null,\"twitter_image\":0,\"twitter_card\":\"summary\",\"canonical_link\":\"\",\"sitemap_priority\":\"0.5\",\"sitemap_changefreq\":\"\",\"categories\":0}',0,'0400$8c0d802707fdb7829af1b7cdbc57d050:f11830df10b4b0bca2db34810c2241b3'),(10,1598691930,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"title\":\"[Default Title]\",\"l10n_diffsource\":\"\"},\"newRecord\":{\"title\":\"Home\",\"l10n_diffsource\":\"a:1:{s:5:\\\"title\\\";N;}\"}}',0,'0400$9b5803e50038a1580f1a38790777e490:f11830df10b4b0bca2db34810c2241b3'),(11,1598691952,1,'BE',1,0,1,'sys_redirect','{\"pid\":0,\"updatedon\":\"1598691952\",\"createdon\":\"1598691952\",\"createdby\":1,\"deleted\":0,\"disabled\":0,\"starttime\":0,\"endtime\":0,\"source_host\":\"ccezoominar.ddev.site\",\"source_path\":\"\\/default-title\",\"is_regexp\":0,\"force_https\":0,\"respect_query_parameters\":0,\"target\":\"\\/home\",\"target_statuscode\":307,\"hitcount\":0,\"lasthiton\":0,\"disable_hitcount\":0,\"uid\":1}',0,'0400$6319b268a67dca84921729cc1f428700:f11830df10b4b0bca2db34810c2241b3/5d8e6e70/redirect'),(12,1598691952,2,'BE',1,0,2,'pages','{\"oldRecord\":{\"slug\":\"\\/default-title\",\"shortcut_mode\":0,\"hidden\":1,\"fe_group\":\"0\",\"l10n_diffsource\":\"a:1:{s:5:\\\"title\\\";N;}\"},\"newRecord\":{\"slug\":\"\\/home\",\"shortcut_mode\":\"3\",\"hidden\":\"0\",\"fe_group\":\"\",\"l10n_diffsource\":\"a:33:{s:7:\\\"doktype\\\";N;s:5:\\\"title\\\";N;s:4:\\\"slug\\\";N;s:9:\\\"nav_title\\\";N;s:8:\\\"subtitle\\\";N;s:13:\\\"shortcut_mode\\\";N;s:8:\\\"shortcut\\\";N;s:8:\\\"abstract\\\";N;s:6:\\\"author\\\";N;s:12:\\\"author_email\\\";N;s:11:\\\"lastUpdated\\\";N;s:6:\\\"layout\\\";N;s:8:\\\"newUntil\\\";N;s:14:\\\"backend_layout\\\";N;s:25:\\\"backend_layout_next_level\\\";N;s:6:\\\"target\\\";N;s:11:\\\"is_siteroot\\\";N;s:9:\\\"no_search\\\";N;s:13:\\\"php_tree_stop\\\";N;s:5:\\\"media\\\";N;s:17:\\\"tsconfig_includes\\\";N;s:8:\\\"TSconfig\\\";N;s:8:\\\"l18n_cfg\\\";N;s:6:\\\"hidden\\\";N;s:8:\\\"nav_hide\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:16:\\\"extendToSubpages\\\";N;s:8:\\\"fe_group\\\";N;s:13:\\\"fe_login_mode\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$6319b268a67dca84921729cc1f428700:f11830df10b4b0bca2db34810c2241b3'),(13,1598691973,4,'BE',1,0,2,'pages',NULL,0,'0400$8b6d8ae8e6227920327e68df0a85cf30:f11830df10b4b0bca2db34810c2241b3'),(14,1599292684,1,'BE',1,0,1,'tt_content','{\"uid\":1,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1599292684,\"crdate\":1599292684,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"mask_accordeon\",\"header\":\"Mein Akkordeon\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordeon\":0,\"tx_mask_accordeoncontent_parent\":0}',0,'0400$c182d6350907e0362880cefedf356796:7fa2c035f26826fe83eeecaaeddc4d40'),(15,1599292684,1,'BE',1,0,2,'tt_content','{\"uid\":2,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1599292684,\"crdate\":1599292684,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":128,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"text\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Sed fringilla mauris sit amet nibh. Pellentesque auctor neque nec urna. Nullam accumsan lorem in dui. Mauris sollicitudin fermentum libero.<\\/p>\\r\\n<p>In consectetuer turpis ut velit. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Etiam vitae tortor. Phasellus nec sem in justo pellentesque facilisis. Vestibulum eu odio.<\\/p>\\r\\n<p>Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed hendrerit. Cras dapibus. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordeon\":0,\"tx_mask_accordeoncontent_parent\":0}',0,'0400$c182d6350907e0362880cefedf356796:01dbc21fdb1263685b9147b3b1596ea8'),(16,1599292684,1,'BE',1,0,1,'tx_mask_accordeon','{\"uid\":1,\"pid\":1,\"tstamp\":1599292684,\"crdate\":1599292684,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_wsid\":0,\"t3ver_label\":\"\",\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"t3_origuid\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_diffsource\":\"a:8:{s:22:\\\"tx_mask_accordeonlabel\\\";N;s:24:\\\"tx_mask_accordeoncontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"l10n_state\":null,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"tx_mask_accordeoncontent\":0,\"tx_mask_accordeonlabel\":\"1. Element\",\"fe_group\":\"\",\"editlock\":0}',0,'0400$c182d6350907e0362880cefedf356796:6d75f203e45eb78a0d059a86cc6cb3c6'),(17,1599292707,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"constants\":\"\\nvt9.siteTitle = Custom Content Elements\",\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript\"},\"newRecord\":{\"constants\":\"vt9.siteTitle = Custom Content Elements\",\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:mask\\/Configuration\\/TypoScript,EXT:vt9\\/Configuration\\/TypoScript\"}}',0,'0400$1f9f2fa00679a1d3075c0a07116bb1f6:35af6288617af54964e77af08c30949a'),(18,1599292759,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"backend_layout\":\"\",\"backend_layout_next_level\":\"\"},\"newRecord\":{\"backend_layout\":\"pagets__2col\",\"backend_layout_next_level\":\"pagets__2col\"}}',0,'0400$2286d0245861223bc3334cf29d2fae20:e175f7045d7ccbfb26ffcf279422c2e5'),(19,1599292785,1,'BE',1,0,3,'tt_content','{\"uid\":3,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1599292785,\"crdate\":1599292785,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":0,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"header\",\"header\":\"hg\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":0,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordeon\":0,\"tx_mask_accordeoncontent_parent\":0}',0,'0400$ffaae58e62facf1f62dfd880f11ca3e7:b92300cfb5d1d3645c9cb212a7f56c1f'),(20,1599292837,4,'BE',1,0,3,'tt_content',NULL,0,'0400$2549cf4b63daa16cc1684881ca565e86:b92300cfb5d1d3645c9cb212a7f56c1f'),(21,1599293063,2,'BE',1,0,1,'tt_content','{\"oldRecord\":{\"header_layout\":\"0\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header_layout\":\"1\",\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:17:\\\"tx_mask_accordeon\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$70e2238b377f00db5f757491d17c0036:7fa2c035f26826fe83eeecaaeddc4d40'),(22,1599293063,2,'BE',1,0,1,'tx_mask_accordeon','{\"oldRecord\":{\"l10n_diffsource\":\"a:8:{s:22:\\\"tx_mask_accordeonlabel\\\";N;s:24:\\\"tx_mask_accordeoncontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$70e2238b377f00db5f757491d17c0036:6d75f203e45eb78a0d059a86cc6cb3c6'),(23,1599293085,4,'BE',1,0,2,'tt_content',NULL,0,'0400$8339d75698d72bb35c308fe8d148d89d:01dbc21fdb1263685b9147b3b1596ea8'),(24,1599293085,4,'BE',1,0,1,'tx_mask_accordeon',NULL,0,'0400$8339d75698d72bb35c308fe8d148d89d:6d75f203e45eb78a0d059a86cc6cb3c6'),(25,1599293085,4,'BE',1,0,1,'tt_content',NULL,0,'0400$8339d75698d72bb35c308fe8d148d89d:7fa2c035f26826fe83eeecaaeddc4d40'),(26,1599293096,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:mask\\/Configuration\\/TypoScript,EXT:vt9\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript\"}}',0,'0400$ab988e85452ccb0414e0e95b5640fd9e:35af6288617af54964e77af08c30949a'),(27,1600186176,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript,EXT:mask\\/Configuration\\/TypoScript\"}}',0,'0400$6e4d89303961eed93dc7b87780d805d9:35af6288617af54964e77af08c30949a'),(28,1600187285,1,'BE',1,0,4,'tt_content','{\"uid\":4,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187285,\"crdate\":1600187285,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"mask_accordeon\",\"header\":\"Erste Akkordeon\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":2,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$cd97d917396047058d88ec1ee0debddb:4d391f5ef79b8d5d10dffa8a07ca167d'),(29,1600187285,1,'BE',1,0,5,'tt_content','{\"uid\":5,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187285,\"crdate\":1600187285,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":128,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textpic\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>dfgfdg<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$cd97d917396047058d88ec1ee0debddb:c7626fc9bcba6f70beb6ebc085a400db'),(30,1600187285,1,'BE',1,0,6,'tt_content','{\"uid\":6,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187285,\"crdate\":1600187285,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":64,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$cd97d917396047058d88ec1ee0debddb:c0db6803ab1ec5f70c36e2a72187867b'),(31,1600187285,1,'BE',1,0,1,'tx_mask_accordionelement','{\"uid\":1,\"pid\":1,\"tstamp\":1600187285,\"crdate\":1600187285,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"editlock\":0,\"fe_group\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_wsid\":0,\"t3ver_label\":\"\",\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"t3_origuid\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"l10n_state\":null,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"tx_mask_elementcontent\":0,\"tx_mask_elementtitle\":\"1. Element\"}',0,'0400$cd97d917396047058d88ec1ee0debddb:3292623404439b42929c7ddc60b4979c'),(32,1600187295,2,'BE',1,0,4,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:24:\\\"tx_mask_accordionelement\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$cc806730460117682ecb1d4cc907227e:4d391f5ef79b8d5d10dffa8a07ca167d'),(33,1600187295,2,'BE',1,0,5,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$cc806730460117682ecb1d4cc907227e:c7626fc9bcba6f70beb6ebc085a400db'),(34,1600187295,2,'BE',1,0,6,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$cc806730460117682ecb1d4cc907227e:c0db6803ab1ec5f70c36e2a72187867b'),(35,1600187295,1,'BE',1,0,7,'tt_content','{\"uid\":7,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187295,\"crdate\":1600187295,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":0,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textpic\",\"header\":\"fghfgghhgf\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$cc806730460117682ecb1d4cc907227e:ea41b626baac59a1fe0716bc344af5d9'),(36,1600187333,1,'BE',1,0,8,'tt_content','{\"uid\":8,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187333,\"crdate\":1600187333,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":0,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textpic\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>dffdgg<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$e20dc45a04dd72572a50685a2ef3860d:2097d84972a039cb6bfe093b17089287'),(37,1600187333,2,'BE',1,0,7,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$e20dc45a04dd72572a50685a2ef3860d:ea41b626baac59a1fe0716bc344af5d9'),(38,1600187333,1,'BE',1,0,2,'tx_mask_accordionelement','{\"uid\":2,\"pid\":1,\"tstamp\":1600187333,\"crdate\":1600187333,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"editlock\":0,\"fe_group\":\"\",\"t3ver_oid\":0,\"t3ver_id\":0,\"t3ver_wsid\":0,\"t3ver_label\":\"\",\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"t3_origuid\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"l10n_state\":null,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"tx_mask_elementcontent\":0,\"tx_mask_elementtitle\":\"2. Element\"}',0,'0400$e20dc45a04dd72572a50685a2ef3860d:0693c569672b724f25e7b7c54b4e1b94'),(39,1600187340,2,'BE',1,0,4,'tt_content','{\"oldRecord\":{\"tx_mask_accordionelement\":6},\"newRecord\":{\"tx_mask_accordionelement\":2}}',0,'0400$cbd62efbb1f8931c3871fb639b4ef9a2:4d391f5ef79b8d5d10dffa8a07ca167d'),(40,1600187340,2,'BE',1,0,1,'tx_mask_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$cbd62efbb1f8931c3871fb639b4ef9a2:3292623404439b42929c7ddc60b4979c'),(41,1600187340,2,'BE',1,0,2,'tx_mask_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$cbd62efbb1f8931c3871fb639b4ef9a2:0693c569672b724f25e7b7c54b4e1b94'),(42,1600187643,2,'BE',1,0,8,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"\"},\"newRecord\":{\"l18n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$ccc125908d17e6645626110eb48bea6f:2097d84972a039cb6bfe093b17089287'),(43,1600187643,1,'BE',1,0,9,'tt_content','{\"uid\":9,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600187643,\"crdate\":1600187643,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":0,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0}',0,'0400$ccc125908d17e6645626110eb48bea6f:367f4f227870d8e2a11496a182574aa3'),(44,1600187643,2,'BE',1,0,2,'tx_mask_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$ccc125908d17e6645626110eb48bea6f:0693c569672b724f25e7b7c54b4e1b94'),(45,1600187643,2,'BE',1,0,2,'tx_mask_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:8:{s:20:\\\"tx_mask_elementtitle\\\";N;s:22:\\\"tx_mask_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"}}',0,'0400$ccc125908d17e6645626110eb48bea6f:0693c569672b724f25e7b7c54b4e1b94'),(46,1600188479,2,'BE',1,0,1,'sys_template','{\"oldRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:vt9\\/Configuration\\/TypoScript,EXT:mask\\/Configuration\\/TypoScript\"},\"newRecord\":{\"include_static_file\":\"EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/,EXT:fluid_styled_content\\/Configuration\\/TypoScript\\/Styling\\/,EXT:seo\\/Configuration\\/TypoScript\\/XmlSitemap,EXT:my_mask_export\\/Configuration\\/TypoScript\\/,EXT:vt9\\/Configuration\\/TypoScript\"}}',0,'0400$7f9e8c0d9dc7e8d38637056d31ff3cd5:35af6288617af54964e77af08c30949a'),(47,1600188628,4,'BE',1,0,4,'tt_content',NULL,0,'0400$f534366435be8c7a87550354d83f9ec5:4d391f5ef79b8d5d10dffa8a07ca167d'),(48,1600188631,4,'BE',1,0,5,'tt_content',NULL,0,'0400$6cba46b2de7b178000f11b368ebba0b1:c7626fc9bcba6f70beb6ebc085a400db'),(49,1600188634,4,'BE',1,0,8,'tt_content',NULL,0,'0400$82b92cec7d8402ceb59b58b353fb3056:2097d84972a039cb6bfe093b17089287'),(50,1600188636,4,'BE',1,0,6,'tt_content',NULL,0,'0400$df4f3d69ae15c739f4bab50fed3e730a:c0db6803ab1ec5f70c36e2a72187867b'),(51,1600188639,4,'BE',1,0,9,'tt_content',NULL,0,'0400$ab7696dc3b11b5e513a82685573083c8:367f4f227870d8e2a11496a182574aa3'),(52,1600188642,4,'BE',1,0,7,'tt_content',NULL,0,'0400$5cb3272ac02531562294c7d9c23cb133:ea41b626baac59a1fe0716bc344af5d9'),(53,1600188809,1,'BE',1,0,10,'tt_content','{\"uid\":10,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":256,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"mymaskexport_accordeon\",\"header\":\"Mein exportiertes Akkordeon\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":2,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"1\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":0,\"tx_mymaskexport_accordionelement\":0}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:7ea9bfd0f5c1068d25caf6ccac9d6265'),(54,1600188809,1,'BE',1,0,11,'tt_content','{\"uid\":11,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":128,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Quisque ut nisi.<\\/p>\\r\\n<p>Duis vel nibh at velit scelerisque suscipit. Etiam vitae tortor. Nullam accumsan lorem in dui. Nam commodo suscipit quam. Nullam accumsan lorem in dui.<\\/p>\\r\\n<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. In turpis. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Curabitur vestibulum aliquam leo.<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":0,\"tx_mymaskexport_accordionelement\":0}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:7a14c618500ae24604910dfdd2f8ff12'),(55,1600188809,1,'BE',1,0,12,'tt_content','{\"uid\":12,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":64,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>Praesent ac sem eget est egestas volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus. Donec posuere vulputate arcu. Aenean imperdiet.<\\/p>\\r\\n<p>Donec sodales sagittis magna. Fusce vel dui. Donec venenatis vulputate lorem. Praesent nonummy mi in odio. Vivamus euismod mauris.<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":0,\"tx_mymaskexport_accordionelement\":0}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:b13bbccfb8e2fc277be02db62485ced6'),(56,1600188809,1,'BE',1,0,1,'tx_mymaskexport_accordionelement','{\"uid\":1,\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"a:8:{s:28:\\\"tx_mymaskexport_elementtitle\\\";N;s:30:\\\"tx_mymaskexport_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"tx_mymaskexport_elementcontent\":0,\"tx_mymaskexport_elementtitle\":\"Erstes Element\"}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:ad9627d25b413dfe545de4bc654a99b0'),(57,1600188809,1,'BE',1,0,2,'tx_mymaskexport_accordionelement','{\"uid\":2,\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"a:8:{s:28:\\\"tx_mymaskexport_elementtitle\\\";N;s:30:\\\"tx_mymaskexport_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"tx_mymaskexport_elementcontent\":0,\"tx_mymaskexport_elementtitle\":\"Zweites Element\"}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:bf8b556bdcd1be799577a6552762444e'),(58,1600188809,1,'BE',1,0,1,'sys_file_reference','{\"uid\":1,\"pid\":1,\"tstamp\":1600188809,\"crdate\":1600188809,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"uid_local\":8,\"uid_foreign\":0,\"tablenames\":\"\",\"fieldname\":\"\",\"sorting_foreign\":0,\"table_local\":\"sys_file\",\"title\":null,\"description\":null,\"alternative\":null,\"link\":\"\",\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"autoplay\":0}',0,'0400$ff5ebe3858c2eabbeb26381734146f24:4cf496f597e7b095ce8b755e6cec3c0c'),(59,1600190775,2,'BE',1,0,10,'tt_content','{\"oldRecord\":{\"header_layout\":\"1\",\"l18n_diffsource\":\"\"},\"newRecord\":{\"header_layout\":\"0\",\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:32:\\\"tx_mymaskexport_accordionelement\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$fbf5d60d93d7e1e16b7c6be17c615d96:7ea9bfd0f5c1068d25caf6ccac9d6265'),(60,1600190775,2,'BE',1,0,1,'tx_mymaskexport_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:8:{s:28:\\\"tx_mymaskexport_elementtitle\\\";N;s:30:\\\"tx_mymaskexport_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$fbf5d60d93d7e1e16b7c6be17c615d96:ad9627d25b413dfe545de4bc654a99b0'),(61,1600190775,2,'BE',1,0,2,'tx_mymaskexport_accordionelement','{\"oldRecord\":{\"l10n_diffsource\":\"a:8:{s:28:\\\"tx_mymaskexport_elementtitle\\\";N;s:30:\\\"tx_mymaskexport_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\"},\"newRecord\":{\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\"}}',0,'0400$fbf5d60d93d7e1e16b7c6be17c615d96:bf8b556bdcd1be799577a6552762444e'),(62,1600191279,1,'BE',1,0,2,'sys_file_reference','{\"uid\":2,\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"uid_local\":8,\"uid_foreign\":11,\"tablenames\":\"tt_content\",\"fieldname\":\"assets\",\"sorting_foreign\":1,\"table_local\":\"sys_file\",\"title\":null,\"description\":null,\"alternative\":null,\"link\":\"\",\"crop\":\"{\\\"default\\\":{\\\"cropArea\\\":{\\\"x\\\":0,\\\"y\\\":0,\\\"width\\\":1,\\\"height\\\":1},\\\"selectedRatio\\\":\\\"NaN\\\",\\\"focusArea\\\":null}}\",\"autoplay\":0}',0,'0400$0976ba2653a38fe48ff1ce49aac46372:814fc0f720dfab882655a795e23a5b66'),(63,1600191279,1,'BE',1,0,13,'tt_content','{\"uid\":13,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":1,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":11,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Quisque ut nisi.<\\/p>\\r\\n<p>Duis vel nibh at velit scelerisque suscipit. Etiam vitae tortor. Nullam accumsan lorem in dui. Nam commodo suscipit quam. Nullam accumsan lorem in dui.<\\/p>\\r\\n<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. In turpis. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Curabitur vestibulum aliquam leo.<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":2,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":\"\",\"pages\":\"\",\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":\"\",\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":1,\"tx_mymaskexport_accordionelement\":0}',0,'0400$0976ba2653a38fe48ff1ce49aac46372:aa58d78b4f5fe95c0d2d1cb36d041737'),(64,1600191279,1,'BE',1,0,3,'tx_mymaskexport_accordionelement','{\"uid\":3,\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":1,\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"parentid\":10,\"parenttable\":\"tt_content\",\"sorting\":1,\"t3ver_id\":0,\"t3ver_label\":\"\",\"tx_mymaskexport_elementcontent\":13,\"tx_mymaskexport_elementtitle\":\"Erstes Element\"}',0,'0400$0976ba2653a38fe48ff1ce49aac46372:f482b7d68c30a421e643c457ccca4aa8'),(65,1600191279,1,'BE',1,0,14,'tt_content','{\"uid\":14,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":1,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":12,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"<p>Praesent ac sem eget est egestas volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus. Donec posuere vulputate arcu. Aenean imperdiet.<\\/p>\\r\\n<p>Donec sodales sagittis magna. Fusce vel dui. Donec venenatis vulputate lorem. Praesent nonummy mi in odio. Vivamus euismod mauris.<\\/p>\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":\"\",\"pages\":\"\",\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":\"\",\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":2,\"tx_mymaskexport_accordionelement\":0}',0,'0400$0976ba2653a38fe48ff1ce49aac46372:338e104baa774eacaec42da729015b5f'),(66,1600191279,1,'BE',1,0,4,'tx_mymaskexport_accordionelement','{\"uid\":4,\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":2,\"l10n_diffsource\":\"a:1:{s:6:\\\"hidden\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"parentid\":10,\"parenttable\":\"tt_content\",\"sorting\":2,\"t3ver_id\":0,\"t3ver_label\":\"\",\"tx_mymaskexport_elementcontent\":14,\"tx_mymaskexport_elementtitle\":\"Zweites Element\"}',0,'0400$0976ba2653a38fe48ff1ce49aac46372:3c537e9d4133d16707ded0103df3713e'),(67,1600191279,1,'BE',1,0,15,'tt_content','{\"uid\":15,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600191279,\"crdate\":1600191279,\"cruser_id\":1,\"deleted\":0,\"hidden\":1,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":512,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":10,\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:32:\\\"tx_mymaskexport_accordionelement\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"mymaskexport_accordeon\",\"header\":\"Mein exportiertes Akkordeon (copy 1)\",\"header_position\":\"\",\"bodytext\":null,\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":\"\",\"pages\":\"\",\"colPos\":2,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":\"\",\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":\"\",\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":0,\"tx_mymaskexport_accordionelement\":0}',0,'0400$c53296057ef4b49eb87f885d7c338d86:cb118fde3da18e67b21a92b60bb8cbda'),(68,1600191279,2,'BE',1,0,15,'tt_content','{\"oldRecord\":{\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:32:\\\"tx_mymaskexport_accordionelement\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"},\"newRecord\":{\"l18n_diffsource\":\"a:2:{s:6:\\\"colPos\\\";N;s:16:\\\"sys_language_uid\\\";N;}\"}}',0,'0400$80a73f5542e4a9f037b117e693d5da99:cb118fde3da18e67b21a92b60bb8cbda'),(69,1600191303,2,'BE',1,0,15,'tt_content','{\"oldRecord\":{\"header\":\"Mein exportiertes Akkordeon (copy 1)\",\"hidden\":1,\"l18n_diffsource\":\"a:2:{s:6:\\\"colPos\\\";N;s:16:\\\"sys_language_uid\\\";N;}\"},\"newRecord\":{\"header\":\"Mein zweites Akkordeon\",\"hidden\":\"0\",\"l18n_diffsource\":\"a:19:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:32:\\\"tx_mymaskexport_accordionelement\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$e382091e2190203d6a695193ca75bf7d:cb118fde3da18e67b21a92b60bb8cbda'),(70,1600191637,1,'BE',1,0,16,'tt_content','{\"uid\":16,\"rowDescription\":\"\",\"pid\":1,\"tstamp\":1600191637,\"crdate\":1600191637,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"sorting\":0,\"editlock\":0,\"sys_language_uid\":0,\"l18n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l18n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"CType\":\"textmedia\",\"header\":\"\",\"header_position\":\"\",\"bodytext\":\"\",\"bullets_type\":0,\"uploads_description\":0,\"uploads_type\":0,\"assets\":0,\"image\":0,\"imagewidth\":0,\"imageorient\":0,\"imagecols\":2,\"imageborder\":0,\"media\":0,\"layout\":0,\"frame_class\":\"default\",\"cols\":0,\"space_before_class\":\"\",\"space_after_class\":\"\",\"records\":null,\"pages\":null,\"colPos\":999,\"subheader\":\"\",\"header_link\":\"\",\"image_zoom\":0,\"header_layout\":\"0\",\"list_type\":\"\",\"sectionIndex\":1,\"linkToTop\":0,\"file_collections\":null,\"filelink_size\":0,\"filelink_sorting\":\"\",\"filelink_sorting_direction\":\"\",\"target\":\"\",\"date\":0,\"recursive\":0,\"imageheight\":0,\"pi_flexform\":null,\"accessibility_title\":\"\",\"accessibility_bypass\":0,\"accessibility_bypass_text\":\"\",\"selected_categories\":null,\"category_field\":\"\",\"table_class\":\"\",\"table_caption\":null,\"table_delimiter\":124,\"table_enclosure\":0,\"table_header_position\":0,\"table_tfoot\":0,\"tx_impexp_origuid\":0,\"categories\":0,\"tx_mask_accordionelement\":0,\"tx_mask_elementcontent_parent\":0,\"tx_mymaskexport_elementcontent_parent\":0,\"tx_mymaskexport_accordionelement\":0}',0,'0400$7f194bccc5895c11644dbdc2ebcaa281:43f02d513e41a72738b96558f7ee9015'),(71,1600191637,1,'BE',1,0,5,'tx_mymaskexport_accordionelement','{\"uid\":5,\"pid\":1,\"tstamp\":1600191637,\"crdate\":1600191637,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"fe_group\":\"\",\"editlock\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_source\":0,\"l10n_state\":null,\"t3_origuid\":0,\"l10n_diffsource\":\"a:8:{s:28:\\\"tx_mymaskexport_elementtitle\\\";N;s:30:\\\"tx_mymaskexport_elementcontent\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;}\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"parentid\":0,\"parenttable\":\"\",\"sorting\":0,\"t3ver_id\":0,\"t3ver_label\":\"\",\"tx_mymaskexport_elementcontent\":0,\"tx_mymaskexport_elementtitle\":\"Drittes\"}',0,'0400$7f194bccc5895c11644dbdc2ebcaa281:3f1fc9bba998f528bf71a9dea8b96ccf'),(72,1600191637,1,'BE',1,0,3,'sys_file_reference','{\"uid\":3,\"pid\":1,\"tstamp\":1600191637,\"crdate\":1600191637,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"sys_language_uid\":0,\"l10n_parent\":0,\"l10n_state\":null,\"l10n_diffsource\":\"\",\"t3ver_oid\":0,\"t3ver_wsid\":0,\"t3ver_state\":0,\"t3ver_stage\":0,\"t3ver_count\":0,\"t3ver_tstamp\":0,\"t3ver_move_id\":0,\"uid_local\":11,\"uid_foreign\":0,\"tablenames\":\"\",\"fieldname\":\"\",\"sorting_foreign\":0,\"table_local\":\"sys_file\",\"title\":null,\"description\":null,\"alternative\":null,\"link\":\"\",\"crop\":\"\",\"autoplay\":0}',0,'0400$7f194bccc5895c11644dbdc2ebcaa281:d2c609347a4764200256b39b9425159a'),(73,1600191658,2,'BE',1,0,16,'tt_content','{\"oldRecord\":{\"layout\":0,\"l18n_diffsource\":\"\"},\"newRecord\":{\"layout\":\"5\",\"l18n_diffsource\":\"a:30:{s:5:\\\"CType\\\";N;s:6:\\\"colPos\\\";N;s:6:\\\"header\\\";N;s:13:\\\"header_layout\\\";N;s:15:\\\"header_position\\\";N;s:4:\\\"date\\\";N;s:11:\\\"header_link\\\";N;s:9:\\\"subheader\\\";N;s:8:\\\"bodytext\\\";N;s:6:\\\"assets\\\";N;s:10:\\\"imagewidth\\\";N;s:11:\\\"imageheight\\\";N;s:11:\\\"imageborder\\\";N;s:11:\\\"imageorient\\\";N;s:9:\\\"imagecols\\\";N;s:10:\\\"image_zoom\\\";N;s:6:\\\"layout\\\";N;s:11:\\\"frame_class\\\";N;s:18:\\\"space_before_class\\\";N;s:17:\\\"space_after_class\\\";N;s:12:\\\"sectionIndex\\\";N;s:9:\\\"linkToTop\\\";N;s:16:\\\"sys_language_uid\\\";N;s:6:\\\"hidden\\\";N;s:9:\\\"starttime\\\";N;s:7:\\\"endtime\\\";N;s:8:\\\"fe_group\\\";N;s:8:\\\"editlock\\\";N;s:10:\\\"categories\\\";N;s:14:\\\"rowDescription\\\";N;}\"}}',0,'0400$5f9dae748dba807a5a7319adabe3958d:43f02d513e41a72738b96558f7ee9015'),(74,1600191658,2,'BE',1,0,3,'sys_file_reference','{\"oldRecord\":{\"l10n_diffsource\":\"\"},\"newRecord\":{\"l10n_diffsource\":\"a:6:{s:5:\\\"title\\\";N;s:11:\\\"description\\\";N;s:8:\\\"autoplay\\\";N;s:9:\\\"uid_local\\\";N;s:6:\\\"hidden\\\";N;s:16:\\\"sys_language_uid\\\";N;}\"}}',0,'0400$5f9dae748dba807a5a7319adabe3958d:d2c609347a4764200256b39b9425159a');
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (33,1,1600191658,'tt_content',15,1,'wwagner',0);
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1598690834,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.6','a:1:{i:0;s:7:\"wwagner\";}',-1,-99,'','',0,'',0,NULL,NULL),(2,0,1598690861,1,1,1,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:15:\"[Default Title]\";i:1;s:7:\"pages:1\";i:2;s:12:\"[root-level]\";i:3;i:0;}',0,0,'NEW_1','',0,'',0,NULL,NULL),(3,0,1598690861,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"[Default Title]\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"2\";}',1,0,'','',0,'',0,NULL,NULL),(4,0,1598690866,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"3\";}',1,0,'','',0,'',0,NULL,NULL),(5,0,1598690882,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"4\";}',1,0,'','',0,'',0,NULL,NULL),(6,0,1598690962,1,0,0,'',0,2,'Core: Error handler (BE): PHP Warning: unlink(/var/www/html/var/cache/code/core/sites-configuration.php): No such file or directory in /var/www/html/public/typo3/sysext/core/Classes/Cache/Backend/SimpleFileBackend.php line 292',5,0,'172.18.0.6','',-1,0,'','',0,'',1,NULL,NULL),(7,0,1598691020,1,1,1,'sys_template',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW','',0,'',0,NULL,NULL),(8,0,1598691040,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"6\";}',1,0,'','',0,'',0,NULL,NULL),(9,0,1598691580,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"7\";}',1,0,'','',0,'',0,NULL,NULL),(10,0,1598691608,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:1:\"8\";}',1,0,'','',0,'',0,NULL,NULL),(11,0,1598691925,1,1,2,'pages',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:15:\"[Default Title]\";i:1;s:7:\"pages:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW_1','',0,'',0,NULL,NULL),(12,0,1598691930,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"10\";}',2,0,'','',0,'',0,NULL,NULL),(13,0,1598691952,1,2,2,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";s:7:\"history\";s:2:\"12\";}',2,0,'','',0,'',0,NULL,NULL),(14,0,1598691973,1,3,2,'pages',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:4:\"Home\";i:1;s:7:\"pages:2\";i:2;s:4:\"Home\";i:3;i:1;}',2,0,'','',0,'',0,NULL,NULL),(15,0,1599291957,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.6','a:1:{i:0;s:7:\"wwagner\";}',-1,-99,'','',0,'',0,NULL,NULL),(16,0,1599292684,1,1,1,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:14:\"Mein Akkordeon\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f5344e2ac89d942620623','',0,'',0,NULL,NULL),(17,0,1599292684,1,1,2,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:203:\"Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Sed fringilla mauris sit amet nibh. Pellentesque auctor neque nec urna. Nullam accumsan...\";i:1;s:12:\"tt_content:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f5344f4217b4466142163','',0,'',0,NULL,NULL),(18,0,1599292684,1,1,1,'tx_mask_accordeon',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"1. Element\";i:1;s:19:\"tx_mask_accordeon:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f5344ee438b0405356028','',0,'',0,NULL,NULL),(19,0,1599292684,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Mein Akkordeon\";i:1;s:12:\"tt_content:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(20,0,1599292684,1,2,1,'tx_mask_accordeon',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:19:\"tx_mask_accordeon:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(21,0,1599292707,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"17\";}',1,0,'','',0,'',0,NULL,NULL),(22,0,1599292759,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:4:\"Home\";i:1;s:7:\"pages:1\";s:7:\"history\";s:2:\"18\";}',1,0,'','',0,'',0,NULL,NULL),(23,0,1599292785,1,1,3,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:2:\"hg\";i:1;s:12:\"tt_content:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f53456c769dc106003749','',0,'',0,NULL,NULL),(24,0,1599292837,1,3,3,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:2:\"hg\";i:1;s:12:\"tt_content:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(25,0,1599293063,1,2,1,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Mein Akkordeon\";i:1;s:12:\"tt_content:1\";s:7:\"history\";s:2:\"21\";}',1,0,'','',0,'',0,NULL,NULL),(26,0,1599293063,1,2,1,'tx_mask_accordeon',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:19:\"tx_mask_accordeon:1\";s:7:\"history\";s:2:\"22\";}',1,0,'','',0,'',0,NULL,NULL),(27,0,1599293085,1,3,2,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:203:\"Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Sed fringilla mauris sit amet nibh. Pellentesque auctor neque nec urna. Nullam accumsan...\";i:1;s:12:\"tt_content:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(28,0,1599293085,1,3,1,'tx_mask_accordeon',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:10:\"1. Element\";i:1;s:19:\"tx_mask_accordeon:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(29,0,1599293085,1,3,1,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:14:\"Mein Akkordeon\";i:1;s:12:\"tt_content:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(30,0,1599293096,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"26\";}',1,0,'','',0,'',0,NULL,NULL),(31,0,1600178984,1,1,0,'',0,0,'User %s logged in from ###IP###',255,1,'172.18.0.6','a:1:{i:0;s:7:\"wwagner\";}',-1,-99,'','',0,'',0,NULL,NULL),(32,0,1600186176,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"27\";}',1,0,'','',0,'',0,NULL,NULL),(33,0,1600187285,1,1,4,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60eb3b0902e528695197','',0,'',0,NULL,NULL),(34,0,1600187285,1,1,5,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:6:\"dfgfdg\";i:1;s:12:\"tt_content:5\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60eb631d7c3718927872','',0,'',0,NULL,NULL),(35,0,1600187285,1,1,6,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60eb902b32d278439085','',0,'',0,NULL,NULL),(36,0,1600187285,1,1,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60eb5984d87142784903','',0,'',0,NULL,NULL),(37,0,1600187285,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(38,0,1600187285,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(39,0,1600187295,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";s:2:\"32\";}',1,0,'','',0,'',0,NULL,NULL),(40,0,1600187295,1,2,5,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:6:\"dfgfdg\";i:1;s:12:\"tt_content:5\";s:7:\"history\";s:2:\"33\";}',1,0,'','',0,'',0,NULL,NULL),(41,0,1600187295,1,2,6,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";s:7:\"history\";s:2:\"34\";}',1,0,'','',0,'',0,NULL,NULL),(42,0,1600187295,1,1,7,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"fghfgghhgf\";i:1;s:12:\"tt_content:7\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60eb9aa3d87089806762','',0,'',0,NULL,NULL),(43,0,1600187295,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(44,0,1600187295,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(45,0,1600187333,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(46,0,1600187333,1,1,8,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:6:\"dffdgg\";i:1;s:12:\"tt_content:8\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60ebb31f5b7827376161','',0,'',0,NULL,NULL),(47,0,1600187333,1,2,5,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:6:\"dfgfdg\";i:1;s:12:\"tt_content:5\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(48,0,1600187333,1,2,6,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(49,0,1600187333,1,2,7,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"fghfgghhgf\";i:1;s:12:\"tt_content:7\";s:7:\"history\";s:2:\"37\";}',1,0,'','',0,'',0,NULL,NULL),(50,0,1600187333,1,1,2,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"2. Element\";i:1;s:26:\"tx_mask_accordionelement:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60ebad48a29952113230','',0,'',0,NULL,NULL),(51,0,1600187333,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(52,0,1600187333,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(53,0,1600187333,1,2,2,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"2. Element\";i:1;s:26:\"tx_mask_accordionelement:2\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(54,0,1600187340,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";s:2:\"39\";}',1,0,'','',0,'',0,NULL,NULL),(55,0,1600187340,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";s:2:\"40\";}',1,0,'','',0,'',0,NULL,NULL),(56,0,1600187340,1,2,2,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"2. Element\";i:1;s:26:\"tx_mask_accordionelement:2\";s:7:\"history\";s:2:\"41\";}',1,0,'','',0,'',0,NULL,NULL),(57,0,1600187643,1,2,4,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(58,0,1600187643,1,2,8,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:6:\"dffdgg\";i:1;s:12:\"tt_content:8\";s:7:\"history\";s:2:\"42\";}',1,0,'','',0,'',0,NULL,NULL),(59,0,1600187643,1,1,9,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:9\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60ecf125bb1588152408','',0,'',0,NULL,NULL),(60,0,1600187643,1,2,1,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"1. Element\";i:1;s:26:\"tx_mask_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(61,0,1600187643,1,2,2,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"2. Element\";i:1;s:26:\"tx_mask_accordionelement:2\";s:7:\"history\";s:2:\"44\";}',1,0,'','',0,'',0,NULL,NULL),(62,0,1600187643,1,2,2,'tx_mask_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"2. Element\";i:1;s:26:\"tx_mask_accordionelement:2\";s:7:\"history\";s:2:\"45\";}',1,0,'','',0,'',0,NULL,NULL),(63,0,1600188041,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'MyMaskExport\\MyMaskExport\\Form\\FormDataProvider\\TcaColPosItem\' not found | Error thrown in file /var/www/html/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3423. Requested URL: https://ccezoominar.ddev.site/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Bsys_template%%5D%%5B1%%5D=edit&createExtension=0&returnUrl=%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Fts%%26token%%3D50d9f9e1e39fa82923695f551f3ecf91b56d1720%%26id%%3D1%%26',5,0,'172.18.0.6','',-1,0,'','',0,'',0,NULL,NULL),(64,0,1600188119,1,0,0,'',0,2,'Core: Exception handler (WEB): Uncaught TYPO3 Exception: Class \'MyMaskExport\\MyMaskExport\\Form\\FormDataProvider\\TcaColPosItem\' not found | Error thrown in file /var/www/html/public/typo3/sysext/core/Classes/Utility/GeneralUtility.php in line 3423. Requested URL: https://ccezoominar.ddev.site/typo3/index.php?route=%%2Frecord%%2Fedit&token=--AnonymizedToken--&edit%%5Bsys_template%%5D%%5B1%%5D=edit&createExtension=0&returnUrl=%%2Ftypo3%%2Findex.php%%3Froute%%3D%%252Fmodule%%252Fweb%%252Fts%%26token%%3D50d9f9e1e39fa82923695f551f3ecf91b56d1720%%26id%%3D1',5,0,'172.18.0.6','',-1,0,'','',0,'',0,NULL,NULL),(65,0,1600188479,1,2,1,'sys_template',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:8:\"NEW SITE\";i:1;s:14:\"sys_template:1\";s:7:\"history\";s:2:\"46\";}',1,0,'','',0,'',0,NULL,NULL),(66,0,1600188628,1,3,4,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:15:\"Erste Akkordeon\";i:1;s:12:\"tt_content:4\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(67,0,1600188631,1,3,5,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:6:\"dfgfdg\";i:1;s:12:\"tt_content:5\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(68,0,1600188634,1,3,8,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:6:\"dffdgg\";i:1;s:12:\"tt_content:8\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(69,0,1600188636,1,3,6,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:6\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(70,0,1600188639,1,3,9,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:10:\"[No title]\";i:1;s:12:\"tt_content:9\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(71,0,1600188642,1,3,7,'tt_content',0,0,'Record \'%s\' (%s) was deleted from page \'%s\' (%s)',1,0,'172.18.0.6','a:4:{i:0;s:10:\"fghfgghhgf\";i:1;s:12:\"tt_content:7\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'','',0,'',0,NULL,NULL),(72,0,1600188763,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'172.18.0.6','a:2:{i:0;s:20:\"lake-430508_1920.jpg\";i:1;s:13:\"/user_upload/\";}',-1,0,'','',0,'',0,NULL,NULL),(73,0,1600188763,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'172.18.0.6','a:2:{i:0;s:24:\"fischer-1559753_1920.jpg\";i:1;s:13:\"/user_upload/\";}',-1,0,'','',0,'',0,NULL,NULL),(74,0,1600188763,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'172.18.0.6','a:2:{i:0;s:26:\"salt-lake-1625125_1920.jpg\";i:1;s:13:\"/user_upload/\";}',-1,0,'','',0,'',0,NULL,NULL),(75,0,1600188763,1,1,0,'',0,0,'Uploading file \"%s\" to \"%s\"',2,1,'172.18.0.6','a:2:{i:0;s:23:\"sunset-1421010_1920.jpg\";i:1;s:13:\"/user_upload/\";}',-1,0,'','',0,'',0,NULL,NULL),(76,0,1600188809,1,1,10,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:27:\"Mein exportiertes Akkordeon\";i:1;s:13:\"tt_content:10\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f100dd6a8667182671','',0,'',0,NULL,NULL),(77,0,1600188809,1,1,11,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:203:\"Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Qui...\";i:1;s:13:\"tt_content:11\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f11ed6d13190483123','',0,'',0,NULL,NULL),(78,0,1600188809,1,1,12,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:203:\"Praesent ac sem eget est egestas volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus. Donec posuere vulputate arcu. Aenean imperdiet.\r...\";i:1;s:13:\"tt_content:12\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f17729fe7298491757','',0,'',0,NULL,NULL),(79,0,1600188809,1,1,1,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f1136c780425741436','',0,'',0,NULL,NULL),(80,0,1600188809,1,1,2,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:2\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f16f937fe068494555','',0,'',0,NULL,NULL),(81,0,1600188809,1,1,1,'sys_file_reference',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:24:\"fischer-1559753_1920.jpg\";i:1;s:20:\"sys_file_reference:1\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60f160c65c3652396782','',0,'',0,NULL,NULL),(82,0,1600188809,1,2,10,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:27:\"Mein exportiertes Akkordeon\";i:1;s:13:\"tt_content:10\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(83,0,1600188809,1,2,11,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:203:\"Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Qui...\";i:1;s:13:\"tt_content:11\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(84,0,1600188809,1,2,1,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:1\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(85,0,1600188809,1,2,2,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:2\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(86,0,1600190775,1,2,10,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:27:\"Mein exportiertes Akkordeon\";i:1;s:13:\"tt_content:10\";s:7:\"history\";s:2:\"59\";}',1,0,'','',0,'',0,NULL,NULL),(87,0,1600190775,1,2,1,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:1\";s:7:\"history\";s:2:\"60\";}',1,0,'','',0,'',0,NULL,NULL),(88,0,1600190775,1,2,2,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:2\";s:7:\"history\";s:2:\"61\";}',1,0,'','',0,'',0,NULL,NULL),(89,0,1600191279,1,1,2,'sys_file_reference',0,0,'New version created of table \'%s\', uid \'%s\'. UID of new version is \'%s\'',1,10,'172.18.0.6','a:3:{i:0;s:18:\"sys_file_reference\";i:1;i:0;i:2;i:2;}',1,0,'NEW5f60fb2fe17e8649272843','',0,'',0,NULL,NULL),(90,0,1600191279,1,1,13,'tt_content',0,0,'New version created of table \'%s\', uid \'%s\'. UID of new version is \'%s\'',1,10,'172.18.0.6','a:3:{i:0;s:10:\"tt_content\";i:1;i:0;i:2;i:13;}',1,0,'NEW5f60fb2ff0bb7716983654','',0,'',0,NULL,NULL),(91,0,1600191279,1,1,3,'tx_mymaskexport_accordionelement',0,0,'New version created of table \'%s\', uid \'%s\'. UID of new version is \'%s\'',1,10,'172.18.0.6','a:3:{i:0;s:32:\"tx_mymaskexport_accordionelement\";i:1;i:0;i:2;i:3;}',1,0,'NEW5f60fb30065a7365523543','',0,'',0,NULL,NULL),(92,0,1600191279,1,1,14,'tt_content',0,0,'New version created of table \'%s\', uid \'%s\'. UID of new version is \'%s\'',1,10,'172.18.0.6','a:3:{i:0;s:10:\"tt_content\";i:1;i:0;i:2;i:14;}',1,0,'NEW5f60fb300e69c830945984','',0,'',0,NULL,NULL),(93,0,1600191279,1,1,4,'tx_mymaskexport_accordionelement',0,0,'New version created of table \'%s\', uid \'%s\'. UID of new version is \'%s\'',1,10,'172.18.0.6','a:3:{i:0;s:32:\"tx_mymaskexport_accordionelement\";i:1;i:0;i:2;i:4;}',1,0,'NEW5f60fb30180ca626281268','',0,'',0,NULL,NULL),(94,0,1600191279,1,1,15,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:36:\"Mein exportiertes Akkordeon (copy 1)\";i:1;s:13:\"tt_content:15\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60fb2fd0eb0732016992','',0,'',0,NULL,NULL),(95,0,1600191279,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:36:\"Mein exportiertes Akkordeon (copy 1)\";i:1;s:13:\"tt_content:15\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(96,0,1600191279,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:36:\"Mein exportiertes Akkordeon (copy 1)\";i:1;s:13:\"tt_content:15\";s:7:\"history\";s:2:\"68\";}',1,0,'','',0,'',0,NULL,NULL),(97,0,1600191279,1,2,3,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:3\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(98,0,1600191279,1,2,4,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(99,0,1600191279,1,2,13,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:203:\"Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Qui...\";i:1;s:13:\"tt_content:13\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(100,0,1600191279,1,2,3,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:3\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(101,0,1600191279,1,2,4,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(102,0,1600191303,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:22:\"Mein zweites Akkordeon\";i:1;s:13:\"tt_content:15\";s:7:\"history\";s:2:\"69\";}',1,0,'','',0,'',0,NULL,NULL),(103,0,1600191303,1,2,3,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:3\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(104,0,1600191303,1,2,4,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(105,0,1600191637,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:22:\"Mein zweites Akkordeon\";i:1;s:13:\"tt_content:15\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(106,0,1600191637,1,1,16,'tt_content',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:10:\"[No title]\";i:1;s:13:\"tt_content:16\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60fc6f75131136614058','',0,'',0,NULL,NULL),(107,0,1600191637,1,2,3,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:3\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(108,0,1600191637,1,2,4,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(109,0,1600191637,1,1,5,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:7:\"Drittes\";i:1;s:34:\"tx_mymaskexport_accordionelement:5\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60fc6a38f02488652740','',0,'',0,NULL,NULL),(110,0,1600191637,1,1,3,'sys_file_reference',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,10,'172.18.0.6','a:4:{i:0;s:94:\"dodokay_-_Virales_Marketing_im_Todesstern_Stuttgart_-_Jubilaeumsausgabe_HD_Schwaebisch.youtube\";i:1;s:20:\"sys_file_reference:3\";i:2;s:4:\"Home\";i:3;i:1;}',1,0,'NEW5f60fc9135cc1826116362','',0,'',0,NULL,NULL),(111,0,1600191637,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:22:\"Mein zweites Akkordeon\";i:1;s:13:\"tt_content:15\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(112,0,1600191637,1,2,16,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"[No title]\";i:1;s:13:\"tt_content:16\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(113,0,1600191637,1,2,5,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:7:\"Drittes\";i:1;s:34:\"tx_mymaskexport_accordionelement:5\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(114,0,1600191658,1,2,15,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:22:\"Mein zweites Akkordeon\";i:1;s:13:\"tt_content:15\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(115,0,1600191658,1,2,16,'tt_content',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:10:\"[No title]\";i:1;s:13:\"tt_content:16\";s:7:\"history\";s:2:\"73\";}',1,0,'','',0,'',0,NULL,NULL),(116,0,1600191658,1,2,3,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:14:\"Erstes Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:3\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(117,0,1600191658,1,2,4,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:15:\"Zweites Element\";i:1;s:34:\"tx_mymaskexport_accordionelement:4\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(118,0,1600191658,1,2,5,'tx_mymaskexport_accordionelement',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:7:\"Drittes\";i:1;s:34:\"tx_mymaskexport_accordionelement:5\";s:7:\"history\";i:0;}',1,0,'','',0,'',0,NULL,NULL),(119,0,1600191658,1,2,3,'sys_file_reference',0,0,'Record \'%s\' (%s) was updated. (Online).',1,10,'172.18.0.6','a:3:{i:0;s:94:\"dodokay_-_Virales_Marketing_im_Todesstern_Stuttgart_-_Jubilaeumsausgabe_HD_Schwaebisch.youtube\";i:1;s:20:\"sys_file_reference:3\";s:7:\"history\";s:2:\"74\";}',1,0,'','',0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
INSERT INTO `sys_redirect` VALUES (1,0,1598691952,1598691952,1,0,0,0,0,'ccezoominar.ddev.site','/default-title',0,0,0,0,'/home',307,0,0,0);
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('07fe2df42f1aa6f59b5919cb7ef6b648','tx_mask_accordeon',1,'parentid','','','',0,1,0,'tt_content',1,''),('0f701991a1f1e8a0b417e38b74ffedad','sys_file',7,'storage','','','',0,0,0,'sys_file_storage',1,''),('134808ca4ea851393190771668db3198','tt_content',15,'tx_mymaskexport_accordionelement','','','',0,0,0,'tx_mymaskexport_accordionelement',3,''),('1c6b3ffd36f17c70f12a4768a19549cc','sys_file',8,'storage','','','',0,0,0,'sys_file_storage',1,''),('26d61180d6a78a838c63ecf195907758','sys_file_reference',1,'uid_local','','','',0,0,0,'sys_file',8,''),('324555aee4a0b561f15cd254c5fe80dd','sys_file',11,'storage','','','',0,0,0,'sys_file_storage',1,''),('328d07026fd8919ad8aeae0d2379fca2','tx_mask_accordionelement',2,'tx_mask_elementcontent','','','',1,0,0,'tt_content',9,''),('34f39f9afed5a0de037711189ff8fd1c','tx_mask_accordionelement',2,'tx_mask_elementcontent','','','',0,0,0,'tt_content',8,''),('38350f4dde69ab63d44b5e1d07616cd0','tx_mymaskexport_accordionelement',3,'tx_mymaskexport_elementcontent','','','',0,0,0,'tt_content',13,''),('3abfd951855ef4783f6c6339dfbf8aed','tt_content',15,'tx_mymaskexport_accordionelement','','','',1,0,0,'tx_mymaskexport_accordionelement',4,''),('4cf940b42e7bf3bc7b1a80178a7841e9','tt_content',13,'assets','','','',0,0,0,'sys_file_reference',2,''),('4f08cce85bbc7678093d089b7792d3e8','tx_mymaskexport_accordionelement',2,'tx_mymaskexport_elementcontent','','','',0,0,0,'tt_content',12,''),('54d1ace43f8481a8a49f6ec2c40ea12b','tx_mask_accordionelement',2,'parentid','','','',0,0,0,'tt_content',4,''),('5c47e498cac2bafa45d1d90e74969134','tx_mymaskexport_accordionelement',1,'parentid','','','',0,0,0,'tt_content',10,''),('603b8df44188ac4d28f5ab86912c0c6e','tt_content',15,'tx_mymaskexport_accordionelement','','','',2,0,0,'tx_mymaskexport_accordionelement',5,''),('719aa31b93c3d54d8ca6fec2101e9710','tx_mymaskexport_accordionelement',4,'tx_mymaskexport_elementcontent','','','',0,0,0,'tt_content',14,''),('83ac951d8c25be6a8758d738d874a1ee','sys_file',10,'storage','','','',0,0,0,'sys_file_storage',1,''),('85786b95be5e54a9153eaceb98eec460','tt_content',16,'assets','','','',0,0,0,'sys_file_reference',3,''),('92b1547a7fa22285966320f72bd001a1','tx_mask_accordionelement',1,'parentid','','','',0,0,0,'tt_content',4,''),('a1b4a6300708ae5109a1d06798842afc','tx_mymaskexport_accordionelement',3,'parentid','','','',0,0,0,'tt_content',15,''),('a201bdf53cef34952035bee7f5d8e3be','tx_mymaskexport_accordionelement',2,'parentid','','','',0,0,0,'tt_content',10,''),('a8adb6e203c45b24e15755f01c9fcadb','sys_file_reference',3,'uid_local','','','',0,0,0,'sys_file',11,''),('bdf75356649d83eec82a9806f6cc4d73','tt_content',10,'tx_mymaskexport_accordionelement','','','',0,0,0,'tx_mymaskexport_accordionelement',1,''),('bfb680551eecebd58ae1e27ee4a0b5c3','tx_mymaskexport_accordionelement',4,'parentid','','','',0,0,0,'tt_content',15,''),('c2db2d185e97fb2ed9859cfebdbe6718','sys_file',9,'storage','','','',0,0,0,'sys_file_storage',1,''),('c73b646031de016401ad98d34591cd66','tx_mymaskexport_accordionelement',5,'tx_mymaskexport_elementcontent','','','',0,0,0,'tt_content',16,''),('ccec709546d2b71e9ec4f48e917d71bd','tt_content',10,'tx_mymaskexport_accordionelement','','','',1,0,0,'tx_mymaskexport_accordionelement',2,''),('d3ad9c5e65ea1787698454d3d906b03d','tx_mask_accordionelement',1,'tx_mask_elementcontent','','','',2,0,0,'tt_content',7,''),('d8875b5d979283ed543f278813e6eed9','tx_mymaskexport_accordionelement',5,'parentid','','','',0,0,0,'tt_content',15,''),('e28bc57a4776d764c4dddfd0315b6f32','tx_mask_accordionelement',1,'tx_mask_elementcontent','','','',1,0,0,'tt_content',6,''),('f10f7da12be562acba129b5f72f8e199','tt_content',11,'assets','','','',0,0,0,'sys_file_reference',1,''),('f13c42ff8bb4dfb8e593e7ba5ea2e881','tx_mask_accordionelement',1,'tx_mask_elementcontent','','','',0,0,0,'tt_content',5,''),('fa18680933a4bb597904ce571a8eebe3','sys_file_reference',2,'uid_local','','','',0,0,0,'sys_file',8,''),('fef67c7e0f19d9032125e607ded23200','tx_mymaskexport_accordionelement',1,'tx_mymaskexport_elementcontent','','','',0,0,0,'tt_content',11,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RsaauthExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),(18,'installUpdateRows','rowUpdatersDone','a:1:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";}'),(19,'core','formProtectionSessionToken:1','s:64:\"058e3cda7c726a0b0c61706db7735c05b344e247b5dac40571a3e1f9ff481439\";'),(20,'languagePacks','baseUrl','s:33:\"https://localize.typo3.org/xliff/\";'),(21,'languagePacks','de','i:1598690984;'),(22,'extensionDataImport','typo3conf/ext/vt9/ext_tables_static+adt.sql','s:0:\"\";'),(23,'extensionDataImport','typo3conf/ext/mask/ext_tables_static+adt.sql','s:0:\"\";'),(24,'extensionDataImport','typo3conf/ext/mask_export/ext_tables_static+adt.sql','s:0:\"\";'),(25,'extensionDataImport','typo3conf/ext/my_mask_export/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `basedOn` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1600188479,1598691020,1,0,0,0,0,256,NULL,0,0,0,0,0,0,0,0,'NEW SITE','',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:fluid_styled_content/Configuration/TypoScript/Styling/,EXT:seo/Configuration/TypoScript/XmlSitemap,EXT:my_mask_export/Configuration/TypoScript/,EXT:vt9/Configuration/TypoScript','vt9.siteTitle = Custom Content Elements','','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  `tx_mask_accordionelement` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_mask_elementcontent_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_mymaskexport_elementcontent_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_mymaskexport_accordionelement` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`),
  KEY `parent` (`pid`,`sorting`),
  KEY `tx_mask_elementcontent` (`tx_mask_elementcontent_parent`,`pid`,`deleted`),
  KEY `tx_mymaskexport_elementcontent_parent` (`tx_mymaskexport_elementcontent_parent`,`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',1,1599293085,1599292684,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:17:\"tx_mask_accordeon\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'mask_accordeon','Mein Akkordeon','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'1','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,0),(2,'',1,1599293085,1599292684,1,1,0,0,0,'',1,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'text','','','<p>Pellentesque egestas, neque sit amet convallis pulvinar, justo nulla eleifend augue, ac auctor orci leo non est. Sed fringilla mauris sit amet nibh. Pellentesque auctor neque nec urna. Nullam accumsan lorem in dui. Mauris sollicitudin fermentum libero.</p>\r\n<p>In consectetuer turpis ut velit. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Etiam vitae tortor. Phasellus nec sem in justo pellentesque facilisis. Vestibulum eu odio.</p>\r\n<p>Nullam nulla eros, ultricies sit amet, nonummy id, imperdiet feugiat, pede. Sed hendrerit. Cras dapibus. Donec mi odio, faucibus at, scelerisque quis, convallis in, nisi. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,0),(3,'',1,1599292837,1599292785,1,1,0,0,0,'',0,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'header','hg','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,0),(4,'',1,1600188628,1600187285,1,1,0,0,0,'',256,0,0,0,0,NULL,0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:24:\"tx_mask_accordionelement\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'mask_accordeon','Erste Akkordeon','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,2,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,2,0,0,0),(5,'',1,1600188631,1600187285,1,1,0,0,0,'',1,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'textpic','','','<p>dfgfdg</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,1,0,0),(6,'',1,1600188636,1600187285,1,1,0,0,0,'',2,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'textmedia','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,1,0,0),(7,'',1,1600188642,1600187295,1,1,0,0,0,'',3,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'textpic','fghfgghhgf','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,1,0,0),(8,'',1,1600188634,1600187333,1,1,0,0,0,'',1,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,'textpic','','','<p>dffdgg</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,2,0,0),(9,'',1,1600188639,1600187643,1,1,0,0,0,'',2,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'textmedia','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,2,0,0),(10,'',1,1600190775,1600188809,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:32:\"tx_mymaskexport_accordionelement\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'mymaskexport_accordeon','Mein exportiertes Akkordeon','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,2,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,0,2),(11,'',1,1600188809,1600188809,1,0,0,0,0,'',1,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'textmedia','','','<p>Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Quisque ut nisi.</p>\r\n<p>Duis vel nibh at velit scelerisque suscipit. Etiam vitae tortor. Nullam accumsan lorem in dui. Nam commodo suscipit quam. Nullam accumsan lorem in dui.</p>\r\n<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. In turpis. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Curabitur vestibulum aliquam leo.</p>',0,0,0,1,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,1,0),(12,'',1,1600188809,1600188809,1,0,0,0,0,'',1,0,0,0,0,NULL,0,'',0,0,0,0,0,0,0,'textmedia','','','<p>Praesent ac sem eget est egestas volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus. Donec posuere vulputate arcu. Aenean imperdiet.</p>\r\n<p>Donec sodales sagittis magna. Fusce vel dui. Donec venenatis vulputate lorem. Praesent nonummy mi in odio. Vivamus euismod mauris.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,2,0),(13,'',1,1600191279,1600191279,1,0,0,0,0,'',1,0,0,0,0,NULL,11,'',0,0,0,0,0,0,0,'textmedia','','','<p>Etiam imperdiet imperdiet orci. Etiam feugiat lorem non metus. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Nulla neque dolor, sagittis eget, iaculis quis, molestie non, velit. Quisque ut nisi.</p>\r\n<p>Duis vel nibh at velit scelerisque suscipit. Etiam vitae tortor. Nullam accumsan lorem in dui. Nam commodo suscipit quam. Nullam accumsan lorem in dui.</p>\r\n<p>Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Suspendisse nisl elit, rhoncus eget, elementum ac, condimentum eget, diam. In turpis. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. Curabitur vestibulum aliquam leo.</p>',0,0,0,1,0,0,0,2,0,0,0,'default',0,'','','','',999,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,0,0,0,0,3,0),(14,'',1,1600191279,1600191279,1,0,0,0,0,'',1,0,0,0,0,NULL,12,'',0,0,0,0,0,0,0,'textmedia','','','<p>Praesent ac sem eget est egestas volutpat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam rhoncus. Donec posuere vulputate arcu. Aenean imperdiet.</p>\r\n<p>Donec sodales sagittis magna. Fusce vel dui. Donec venenatis vulputate lorem. Praesent nonummy mi in odio. Vivamus euismod mauris.</p>',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','','','',999,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,0,0,0,0,4,0),(15,'',1,1600191658,1600191279,1,0,0,0,0,'',512,0,0,0,0,NULL,10,'a:19:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:32:\"tx_mymaskexport_accordionelement\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'mymaskexport_accordeon','Mein zweites Akkordeon','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','','','',2,'','',0,'0','',1,0,'',0,'','','',0,0,0,NULL,'',0,'','','','',NULL,124,0,0,0,0,0,0,0,0,3),(16,'',1,1600191658,1600191637,1,0,0,0,0,'',1,0,0,0,0,NULL,0,'a:30:{s:5:\"CType\";N;s:6:\"colPos\";N;s:6:\"header\";N;s:13:\"header_layout\";N;s:15:\"header_position\";N;s:4:\"date\";N;s:11:\"header_link\";N;s:9:\"subheader\";N;s:8:\"bodytext\";N;s:6:\"assets\";N;s:10:\"imagewidth\";N;s:11:\"imageheight\";N;s:11:\"imageborder\";N;s:11:\"imageorient\";N;s:9:\"imagecols\";N;s:10:\"image_zoom\";N;s:6:\"layout\";N;s:11:\"frame_class\";N;s:18:\"space_before_class\";N;s:17:\"space_after_class\";N;s:12:\"sectionIndex\";N;s:9:\"linkToTop\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,0,0,0,0,0,'textmedia','','','',0,0,0,1,0,0,0,2,0,0,5,'default',0,'','',NULL,NULL,999,'','',0,'0','',1,0,NULL,0,'','','',0,0,0,NULL,'',0,'',NULL,'','',NULL,124,0,0,0,0,0,0,0,5,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_mask_accordionelement`
--

DROP TABLE IF EXISTS `tx_mask_accordionelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_mask_accordionelement` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `tx_mask_elementcontent` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_mask_elementtitle` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_mask_accordionelement`
--

LOCK TABLES `tx_mask_accordionelement` WRITE;
/*!40000 ALTER TABLE `tx_mask_accordionelement` DISABLE KEYS */;
INSERT INTO `tx_mask_accordionelement` VALUES (1,1,1600187643,1600187285,1,0,0,0,0,0,'',0,0,0,'',0,0,0,0,0,0,0,0,0,'a:1:{s:6:\"hidden\";N;}',NULL,4,'tt_content',1,3,'1. Element'),(2,1,1600187643,1600187333,1,0,0,0,0,0,'',0,0,0,'',0,0,0,0,0,0,0,0,0,'a:8:{s:20:\"tx_mask_elementtitle\";N;s:22:\"tx_mask_elementcontent\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',NULL,4,'tt_content',2,2,'2. Element');
/*!40000 ALTER TABLE `tx_mask_accordionelement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_mymaskexport_accordionelement`
--

DROP TABLE IF EXISTS `tx_mymaskexport_accordionelement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_mymaskexport_accordionelement` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `parenttable` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_mymaskexport_elementcontent` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_mymaskexport_elementtitle` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `language` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_mymaskexport_accordionelement`
--

LOCK TABLES `tx_mymaskexport_accordionelement` WRITE;
/*!40000 ALTER TABLE `tx_mymaskexport_accordionelement` DISABLE KEYS */;
INSERT INTO `tx_mymaskexport_accordionelement` VALUES (1,1,1600190775,1600188809,1,0,0,0,0,'',0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,10,'tt_content',1,0,'',1,'Erstes Element'),(2,1,1600190775,1600188809,1,0,0,0,0,'',0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,10,'tt_content',2,0,'',1,'Zweites Element'),(3,1,1600191658,1600191279,1,0,0,0,0,'',0,0,0,0,NULL,1,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,15,'tt_content',1,0,'',1,'Erstes Element'),(4,1,1600191658,1600191279,1,0,0,0,0,'',0,0,0,0,NULL,2,'a:1:{s:6:\"hidden\";N;}',0,0,0,0,0,0,0,15,'tt_content',2,0,'',1,'Zweites Element'),(5,1,1600191658,1600191637,1,0,0,0,0,'',0,0,0,0,NULL,0,'a:8:{s:28:\"tx_mymaskexport_elementtitle\";N;s:30:\"tx_mymaskexport_elementcontent\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:8:\"fe_group\";N;s:8:\"editlock\";N;}',0,0,0,0,0,0,0,15,'tt_content',3,0,'',1,'Drittes');
/*!40000 ALTER TABLE `tx_mymaskexport_accordionelement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-15 20:53:02
