-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB-1:10.4.28+maria~ubu2004-log

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
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` text NOT NULL,
  `icon` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `identifier` varchar(120) NOT NULL DEFAULT '',
  `title` varchar(120) NOT NULL DEFAULT '',
  `widgets` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES (1,0,1702739024,1702739024,1,0,0,0,0,'8263fed7abee73504d1c9f526276ed0a9c4e534c','My dashboard','{\"a405ec61706ed19a595c6505eea29c67af5f4c14\":{\"identifier\":\"t3information\"},\"452dd4b8d2b65be008877e48a1a3ba41e0ada0ea\":{\"identifier\":\"docGettingStarted\"}}');
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
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `non_exclude_fields` text DEFAULT NULL,
  `explicit_allowdeny` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` text DEFAULT NULL,
  `db_mountpoints` text DEFAULT NULL,
  `pagetypes_select` text DEFAULT NULL,
  `tables_select` text DEFAULT NULL,
  `tables_modify` text DEFAULT NULL,
  `groupMods` text DEFAULT NULL,
  `availableWidgets` text DEFAULT NULL,
  `mfa_providers` text DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `subgroup` text DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
INSERT INTO `be_sessions` VALUES ('d62721ffa1ce76d4949b17b2d4dcf8844846aa3ff84d8abfe8f80cc2d69cdcae','[DISABLED]',1,1702917530,'a:1:{s:26:\"formProtectionSessionToken\";s:64:\"81f4141e0f8c7aa9a736dccd5a8412ec4568493cb607f78a74f4b048f2791920\";}');
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
  `description` text DEFAULT NULL,
  `username` varchar(50) NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'default',
  `email` varchar(255) NOT NULL DEFAULT '',
  `db_mountpoints` text DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) NOT NULL DEFAULT '',
  `userMods` text DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text DEFAULT NULL,
  `file_permissions` text DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `TSconfig` text DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `category_perms` longtext DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1702806674,1702739014,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$enN3RjZIaXNEYjVhLmRyRg$g8RdBgRVSeDqIBuWnYx2Jd5XVREEpHjxhBuccx0FN3Q',1,NULL,'de','',NULL,0,'',NULL,'','a:23:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:10:{s:28:\"dashboard/current_dashboard/\";s:40:\"8263fed7abee73504d1c9f526276ed0a9c4e534c\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";a:0:{}s:6:\"web_ts\";a:3:{s:8:\"function\";s:85:\"TYPO3\\CMS\\Tstemplate\\Controller\\TypoScriptTemplateInformationModuleFunctionController\";s:8:\"language\";N;s:19:\"constant_editor_cat\";s:24:\"plugin.tx_calculator_pi1\";}s:10:\"web_layout\";a:3:{s:8:\"function\";s:1:\"1\";s:8:\"language\";s:1:\"0\";s:19:\"constant_editor_cat\";N;}s:10:\"FormEngine\";a:2:{i:0;a:6:{s:32:\"9d54b95f85e14f382597216d42b0b785\";a:4:{i:0;s:16:\"API Route Demo 2\";i:1;a:5:{s:4:\"edit\";a:1:{s:40:\"tx_calculator_domain_model_contributions\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:63:\"&edit%5Btx_calculator_domain_model_contributions%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:40:\"tx_calculator_domain_model_contributions\";s:3:\"uid\";i:2;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"ad6c6673a0ce0bd828f9e86c3bc41bf4\";a:4:{i:0;s:9:\"NEUE SITE\";i:1;a:5:{s:4:\"edit\";a:1:{s:12:\"sys_template\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";s:6:\"config\";s:6:\"noView\";N;}i:2;s:54:\"&edit%5Bsys_template%5D%5B1%5D=edit&columnsOnly=config\";i:3;a:5:{s:5:\"table\";s:12:\"sys_template\";s:3:\"uid\";i:1;s:3:\"pid\";i:1;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"176555febc53ff215de2519cc1add9bd\";a:4:{i:0;s:11:\"Ab 15 Jahre\";i:1;a:5:{s:4:\"edit\";a:1:{s:39:\"tx_calculator_domain_model_contribution\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:62:\"&edit%5Btx_calculator_domain_model_contribution%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:39:\"tx_calculator_domain_model_contribution\";s:3:\"uid\";i:2;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"b51e22bf214ac712fc329866a64eb7c9\";a:4:{i:0;s:16:\"API Route Demo 1\";i:1;a:5:{s:4:\"edit\";a:1:{s:40:\"tx_calculator_domain_model_contributions\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:63:\"&edit%5Btx_calculator_domain_model_contributions%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:40:\"tx_calculator_domain_model_contributions\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"deac478137dd48a97e299bd046412e21\";a:4:{i:0;s:0:\"\";i:1;a:5:{s:4:\"edit\";a:1:{s:10:\"tt_content\";a:1:{i:2;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:33:\"&edit%5Btt_content%5D%5B2%5D=edit\";i:3;a:5:{s:5:\"table\";s:10:\"tt_content\";s:3:\"uid\";i:2;s:3:\"pid\";i:4;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}s:32:\"696addfecc296b326ff6e9f04c7ff3e1\";a:4:{i:0;s:4:\"Main\";i:1;a:5:{s:4:\"edit\";a:1:{s:5:\"pages\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:28:\"&edit%5Bpages%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:5:\"pages\";s:3:\"uid\";i:1;s:3:\"pid\";i:0;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}i:1;s:32:\"696addfecc296b326ff6e9f04c7ff3e1\";}s:16:\"extensionbuilder\";a:1:{s:9:\"firstTime\";i:0;}s:8:\"web_list\";a:3:{s:8:\"function\";N;s:8:\"language\";N;s:19:\"constant_editor_cat\";N;}s:16:\"browse_links.php\";a:1:{s:10:\"expandPage\";s:1:\"3\";}s:16:\"opendocs::recent\";a:1:{s:32:\"b51e22bf214ac712fc329866a64eb7c9\";a:4:{i:0;s:14:\"API Route Demo\";i:1;a:5:{s:4:\"edit\";a:1:{s:40:\"tx_calculator_domain_model_contributions\";a:1:{i:1;s:4:\"edit\";}}s:7:\"defVals\";N;s:12:\"overrideVals\";N;s:11:\"columnsOnly\";N;s:6:\"noView\";N;}i:2;s:63:\"&edit%5Btx_calculator_domain_model_contributions%5D%5B1%5D=edit\";i:3;a:5:{s:5:\"table\";s:40:\"tx_calculator_domain_model_contributions\";s:3:\"uid\";i:1;s:3:\"pid\";i:2;s:3:\"cmd\";s:4:\"edit\";s:12:\"deleteAccess\";b:1;}}}s:13:\"system_config\";a:3:{s:4:\"tree\";s:20:\"httpMiddlewareStacks\";s:11:\"regexSearch\";b:0;s:25:\"node_httpMiddlewareStacks\";a:10:{s:3:\"raw\";i:1;s:12:\"raw.frontend\";i:1;s:8:\"frontend\";i:1;s:54:\"raw.frontend.typo3/cms-frontend/prepare-tsfe-rendering\";i:1;s:60:\"raw.frontend.typo3/cms-frontend/prepare-tsfe-rendering.after\";i:1;s:42:\"raw.frontend.typo3/cms-adminpanel/renderer\";i:1;s:48:\"raw.frontend.typo3/cms-adminpanel/renderer.after\";i:1;s:38:\"raw.frontend.komsa/cms-frontend/webapi\";i:1;s:36:\"raw.frontend.typo3/calculator/webapi\";i:1;s:42:\"raw.frontend.typo3/calculator/webapi.after\";i:1;}}}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";s:2:\"50\";s:8:\"edit_RTE\";i:1;s:20:\"edit_docModuleUpload\";i:1;s:25:\"resizeTextareas_MaxHeight\";s:3:\"500\";s:4:\"lang\";s:2:\"de\";s:19:\"firstLoginTimeStamp\";i:1702739022;s:15:\"moduleSessionID\";a:9:{s:28:\"dashboard/current_dashboard/\";s:40:\"926092c94c2c6a4aa6d4a8f6cf2d6dac68c08d0c\";s:57:\"TYPO3\\CMS\\Backend\\Utility\\BackendUtility::getUpdateSignal\";s:40:\"9c513b96dc87ecb7c9f7f82fcd72e551746f0891\";s:6:\"web_ts\";s:40:\"94c4c9838ce24677f7184e035b87b0045cf1f1f0\";s:10:\"web_layout\";s:40:\"a9aa182dfa1d78bfef6fd7dfece349b1e21555d7\";s:10:\"FormEngine\";s:40:\"9c513b96dc87ecb7c9f7f82fcd72e551746f0891\";s:16:\"extensionbuilder\";s:40:\"94c4c9838ce24677f7184e035b87b0045cf1f1f0\";s:8:\"web_list\";s:40:\"a9aa182dfa1d78bfef6fd7dfece349b1e21555d7\";s:16:\"browse_links.php\";s:40:\"9c513b96dc87ecb7c9f7f82fcd72e551746f0891\";s:16:\"opendocs::recent\";s:40:\"9c513b96dc87ecb7c9f7f82fcd72e551746f0891\";}s:8:\"realName\";s:0:\"\";s:5:\"email\";s:0:\"\";s:8:\"password\";s:0:\"\";s:9:\"password2\";s:0:\"\";s:6:\"avatar\";s:0:\"\";s:11:\"startModule\";s:0:\"\";s:25:\"showHiddenFilesAndFolders\";i:0;s:10:\"copyLevels\";s:0:\"\";s:18:\"resetConfiguration\";s:0:\"\";s:12:\"mfaProviders\";s:0:\"\";s:18:\"backendTitleFormat\";s:10:\"titleFirst\";s:17:\"BackendComponents\";a:1:{s:6:\"States\";a:1:{s:8:\"Pagetree\";a:1:{s:9:\"stateHash\";a:1:{s:3:\"0_1\";s:1:\"1\";}}}}s:10:\"inlineView\";s:234:\"{\"tx_calculator_domain_model_contributions\":{\"1\":{\"tx_calculator_domain_model_contribution\":[\"\",5,7]},\"NEW657f29a002eb8802606168\":{\"tx_calculator_domain_model_contribution\":[4]},\"2\":{\"tx_calculator_domain_model_contribution\":[\"\",8]}}}\";}',NULL,NULL,1,NULL,1702883225,0,NULL,NULL,''),(2,0,1702807923,1702807923,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$MDdnYXRwRHM3RTFXUzZaZA$c2iIqaexiFsVhzZ3heNclW4hUGanb4O0jrA1HjoJ+FI',1,NULL,'default','',NULL,0,'',NULL,'','a:9:{s:14:\"interfaceSetup\";s:0:\"\";s:10:\"moduleData\";a:0:{}s:14:\"emailMeAtLogin\";i:0;s:8:\"titleLen\";i:50;s:8:\"edit_RTE\";s:1:\"1\";s:20:\"edit_docModuleUpload\";s:1:\"1\";s:25:\"resizeTextareas_MaxHeight\";i:500;s:4:\"lang\";s:7:\"default\";s:19:\"firstLoginTimeStamp\";i:1702807923;}',NULL,NULL,1,NULL,0,0,NULL,NULL,'');
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache`
--

LOCK TABLES `cache_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cache_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_adminpanel_requestcache_tags`
--

LOCK TABLES `cache_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
INSERT INTO `cache_hash` VALUES (1,'3697f667c6ada1e0ea4b26eab03b6a29',2145909600,'a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:3:{s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}'),(2,'d7ea7d8f2b37e62d8acee8b798346d95',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:4:\"mod.\";a:5:{s:9:\"web_list.\";a:3:{s:15:\"enableClipBoard\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:9:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:5:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:57:\"header,text,textpic,image,textmedia,bullets,table,uploads\";}s:5:\"menu.\";a:3:{s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:3:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:5:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}s:12:\"saveAndClose\";s:4:\"true\";}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:17:\"html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:4:\"show\";s:34:\"formframework,search,felogin_login\";s:9:\"elements.\";a:3:{s:14:\"formframework.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-form\";s:5:\"title\";s:75:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_title\";s:11:\"description\";s:81:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"form_formframework\";}}s:7:\"search.\";a:4:{s:14:\"iconIdentifier\";s:27:\"content-elements-searchform\";s:5:\"title\";s:79:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_title\";s:11:\"description\";s:85:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:17:\"indexedsearch_pi2\";}}s:14:\"felogin_login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.title\";s:11:\"description\";s:98:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"felogin_login\";}}}}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:2:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}s:4:\"pi1.\";a:4:{s:14:\"iconIdentifier\";s:21:\"calculator-plugin-pi1\";s:5:\"title\";s:85:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.name\";s:11:\"description\";s:92:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:14:\"calculator_pi1\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:12:{s:5:\"1920.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";}s:5:\"1366.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1366\";s:6:\"height\";s:3:\"768\";}s:5:\"1280.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1280\";s:6:\"height\";s:4:\"1024\";}s:5:\"1024.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"768\";}s:7:\"nexus7.\";a:4:{s:5:\"label\";s:7:\"Nexus 7\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"960\";}s:8:\"nexus6p.\";a:4:{s:5:\"label\";s:8:\"Nexus 6P\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"411\";s:6:\"height\";s:3:\"731\";}s:8:\"ipadpro.\";a:4:{s:5:\"label\";s:8:\"iPad Pro\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1366\";}s:8:\"ipadair.\";a:4:{s:5:\"label\";s:8:\"iPad Air\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"768\";s:6:\"height\";s:4:\"1024\";}s:12:\"iphone7plus.\";a:4:{s:5:\"label\";s:13:\"iPhone 7 Plus\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"414\";s:6:\"height\";s:3:\"736\";}s:8:\"iphone6.\";a:4:{s:5:\"label\";s:8:\"iPhone 6\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"667\";}s:8:\"iphone5.\";a:4:{s:5:\"label\";s:8:\"iPhone 5\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"568\";}s:8:\"iphone4.\";a:4:{s:5:\"label\";s:8:\"iPhone 4\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"480\";}}}s:9:\"web_info.\";a:1:{s:17:\"fieldDefinitions.\";a:6:{s:2:\"0.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_0\";s:6:\"fields\";s:75:\"title,uid,slug,starttime,endtime,fe_group,target,url,shortcut,shortcut_mode\";}s:2:\"1.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_1\";s:6:\"fields\";s:26:\"title,uid,###ALL_TABLES###\";}s:2:\"2.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_2\";s:6:\"fields\";s:93:\"title,uid,lastUpdated,newUntil,cache_timeout,php_tree_stop,TSconfig,is_siteroot,fe_login_mode\";}s:2:\"3.\";a:2:{s:5:\"label\";s:75:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_layouts\";s:6:\"fields\";s:79:\"title,uid,actual_backend_layout,backend_layout,backend_layout_next_level,layout\";}s:4:\"seo.\";a:2:{s:5:\"label\";s:64:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:seo\";s:6:\"fields\";s:106:\"title,uid,slug,seo_title,description,no_index,no_follow,canonical_link,sitemap_changefreq,sitemap_priority\";}s:13:\"social_media.\";a:2:{s:5:\"label\";s:73:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:social_media\";s:6:\"fields\";s:67:\"title,uid,og_title,og_description,twitter_title,twitter_description\";}}}s:14:\"linkvalidator.\";a:8:{s:13:\"searchFields.\";a:2:{s:5:\"pages\";s:9:\"media,url\";s:10:\"tt_content\";s:28:\"bodytext,header_link,records\";}s:9:\"linktypes\";s:16:\"db,file,external\";s:16:\"linktypesConfig.\";a:1:{s:9:\"external.\";a:7:{s:13:\"httpAgentName\";s:19:\"TYPO3 LinkValidator\";s:12:\"httpAgentUrl\";s:0:\"\";s:14:\"httpAgentEmail\";s:0:\"\";s:8:\"headers.\";a:0:{}s:6:\"method\";s:4:\"HEAD\";s:5:\"range\";s:6:\"0-4048\";s:7:\"timeout\";s:2:\"20\";}}s:11:\"checkhidden\";s:1:\"0\";s:16:\"showCheckLinkTab\";s:1:\"1\";s:21:\"actionAfterEditRecord\";s:7:\"recheck\";s:5:\"mail.\";a:5:{s:8:\"fromname\";s:13:\"LinkValidator\";s:9:\"fromemail\";s:25:\"linkvalidator@example.com\";s:11:\"replytoname\";s:0:\"\";s:12:\"replytoemail\";s:0:\"\";s:7:\"subject\";s:26:\"TYPO3 LinkValidator report\";}s:12:\"linkhandler.\";a:1:{s:19:\"reportHiddenRecords\";s:1:\"0\";}}}s:8:\"TCEMAIN.\";a:2:{s:18:\"translateToMessage\";s:16:\"Translate to %s:\";s:12:\"linkHandler.\";a:6:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:9:\"page,file\";s:9:\"scanAfter\";s:9:\"page,file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:16:\"page,file,folder\";s:9:\"scanAfter\";s:9:\"telephone\";}s:5:\"mail.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:78:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:20:\"page,file,folder,url\";s:10:\"scanBefore\";s:3:\"url\";}s:10:\"telephone.\";a:4:{s:7:\"handler\";s:53:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\TelephoneLinkHandler\";s:5:\"label\";s:82:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:telephone\";s:12:\"displayAfter\";s:25:\"page,file,folder,url,mail\";s:10:\"scanBefore\";s:3:\"url\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"8f5dc447eb57e3deb06c5b905fa16027\";}'),(3,'6641804b1910668017adf9627456e8c4',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:4:\"mod.\";a:5:{s:9:\"web_list.\";a:3:{s:15:\"enableClipBoard\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:9:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:5:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:57:\"header,text,textpic,image,textmedia,bullets,table,uploads\";}s:5:\"menu.\";a:3:{s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:3:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:5:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}s:12:\"saveAndClose\";s:4:\"true\";}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:17:\"html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:4:\"show\";s:34:\"formframework,search,felogin_login\";s:9:\"elements.\";a:3:{s:14:\"formframework.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-form\";s:5:\"title\";s:75:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_title\";s:11:\"description\";s:81:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"form_formframework\";}}s:7:\"search.\";a:4:{s:14:\"iconIdentifier\";s:27:\"content-elements-searchform\";s:5:\"title\";s:79:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_title\";s:11:\"description\";s:85:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:17:\"indexedsearch_pi2\";}}s:14:\"felogin_login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.title\";s:11:\"description\";s:98:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"felogin_login\";}}}}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:2:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}s:4:\"pi1.\";a:4:{s:14:\"iconIdentifier\";s:21:\"calculator-plugin-pi1\";s:5:\"title\";s:85:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.name\";s:11:\"description\";s:92:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:14:\"calculator_pi1\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:12:{s:5:\"1920.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";}s:5:\"1366.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1366\";s:6:\"height\";s:3:\"768\";}s:5:\"1280.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1280\";s:6:\"height\";s:4:\"1024\";}s:5:\"1024.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"768\";}s:7:\"nexus7.\";a:4:{s:5:\"label\";s:7:\"Nexus 7\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"960\";}s:8:\"nexus6p.\";a:4:{s:5:\"label\";s:8:\"Nexus 6P\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"411\";s:6:\"height\";s:3:\"731\";}s:8:\"ipadpro.\";a:4:{s:5:\"label\";s:8:\"iPad Pro\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1366\";}s:8:\"ipadair.\";a:4:{s:5:\"label\";s:8:\"iPad Air\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"768\";s:6:\"height\";s:4:\"1024\";}s:12:\"iphone7plus.\";a:4:{s:5:\"label\";s:13:\"iPhone 7 Plus\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"414\";s:6:\"height\";s:3:\"736\";}s:8:\"iphone6.\";a:4:{s:5:\"label\";s:8:\"iPhone 6\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"667\";}s:8:\"iphone5.\";a:4:{s:5:\"label\";s:8:\"iPhone 5\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"568\";}s:8:\"iphone4.\";a:4:{s:5:\"label\";s:8:\"iPhone 4\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"480\";}}}s:9:\"web_info.\";a:1:{s:17:\"fieldDefinitions.\";a:6:{s:2:\"0.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_0\";s:6:\"fields\";s:75:\"title,uid,slug,starttime,endtime,fe_group,target,url,shortcut,shortcut_mode\";}s:2:\"1.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_1\";s:6:\"fields\";s:26:\"title,uid,###ALL_TABLES###\";}s:2:\"2.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_2\";s:6:\"fields\";s:93:\"title,uid,lastUpdated,newUntil,cache_timeout,php_tree_stop,TSconfig,is_siteroot,fe_login_mode\";}s:2:\"3.\";a:2:{s:5:\"label\";s:75:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_layouts\";s:6:\"fields\";s:79:\"title,uid,actual_backend_layout,backend_layout,backend_layout_next_level,layout\";}s:4:\"seo.\";a:2:{s:5:\"label\";s:64:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:seo\";s:6:\"fields\";s:106:\"title,uid,slug,seo_title,description,no_index,no_follow,canonical_link,sitemap_changefreq,sitemap_priority\";}s:13:\"social_media.\";a:2:{s:5:\"label\";s:73:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:social_media\";s:6:\"fields\";s:67:\"title,uid,og_title,og_description,twitter_title,twitter_description\";}}}s:14:\"linkvalidator.\";a:8:{s:13:\"searchFields.\";a:2:{s:5:\"pages\";s:9:\"media,url\";s:10:\"tt_content\";s:28:\"bodytext,header_link,records\";}s:9:\"linktypes\";s:16:\"db,file,external\";s:16:\"linktypesConfig.\";a:1:{s:9:\"external.\";a:7:{s:13:\"httpAgentName\";s:19:\"TYPO3 LinkValidator\";s:12:\"httpAgentUrl\";s:0:\"\";s:14:\"httpAgentEmail\";s:0:\"\";s:8:\"headers.\";a:0:{}s:6:\"method\";s:4:\"HEAD\";s:5:\"range\";s:6:\"0-4048\";s:7:\"timeout\";s:2:\"20\";}}s:11:\"checkhidden\";s:1:\"0\";s:16:\"showCheckLinkTab\";s:1:\"1\";s:21:\"actionAfterEditRecord\";s:7:\"recheck\";s:5:\"mail.\";a:5:{s:8:\"fromname\";s:13:\"LinkValidator\";s:9:\"fromemail\";s:25:\"linkvalidator@example.com\";s:11:\"replytoname\";s:0:\"\";s:12:\"replytoemail\";s:0:\"\";s:7:\"subject\";s:26:\"TYPO3 LinkValidator report\";}s:12:\"linkhandler.\";a:1:{s:19:\"reportHiddenRecords\";s:1:\"0\";}}}s:8:\"TCEMAIN.\";a:2:{s:18:\"translateToMessage\";s:16:\"Translate to %s:\";s:12:\"linkHandler.\";a:6:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:9:\"page,file\";s:9:\"scanAfter\";s:9:\"page,file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:16:\"page,file,folder\";s:9:\"scanAfter\";s:9:\"telephone\";}s:5:\"mail.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:78:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:20:\"page,file,folder,url\";s:10:\"scanBefore\";s:3:\"url\";}s:10:\"telephone.\";a:4:{s:7:\"handler\";s:53:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\TelephoneLinkHandler\";s:5:\"label\";s:82:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:telephone\";s:12:\"displayAfter\";s:25:\"page,file,folder,url,mail\";s:10:\"scanBefore\";s:3:\"url\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"8f5dc447eb57e3deb06c5b905fa16027\";}'),(4,'590ecb43f3e95bdd2f8f31e8877609b0',2145909600,'a:2:{s:9:\"constants\";a:2:{s:7:\"styles.\";a:2:{s:8:\"content.\";a:7:{s:10:\"loginform.\";a:21:{s:3:\"pid\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:18:\"showForgotPassword\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:9:\"emailFrom\";s:0:\"\";s:13:\"emailFromName\";s:0:\"\";s:12:\"replyToEmail\";s:0:\"\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:6:\"email.\";a:4:{s:14:\"layoutRootPath\";s:0:\"\";s:16:\"templateRootPath\";s:46:\"EXT:felogin/Resources/Private/Email/Templates/\";s:15:\"partialRootPath\";s:0:\"\";s:12:\"templateName\";s:16:\"PasswordRecovery\";}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:20:\"newPasswordMinLength\";s:1:\"6\";s:7:\"domains\";s:0:\"\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";}s:17:\"defaultHeaderType\";s:1:\"2\";s:9:\"shortcut.\";a:1:{s:6:\"tables\";s:10:\"tt_content\";}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:6:\"image.\";a:2:{s:11:\"lazyLoading\";s:4:\"lazy\";s:13:\"imageDecoding\";s:0:\"\";}s:10:\"textmedia.\";a:9:{s:4:\"maxW\";s:3:\"600\";s:10:\"maxWInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:10:\"rowSpacing\";s:2:\"10\";s:10:\"textMargin\";s:2:\"10\";s:11:\"borderColor\";s:7:\"#000000\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";s:9:\"linkWrap.\";a:6:{s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:9:\"newWindow\";s:1:\"0\";s:15:\"lightboxEnabled\";s:1:\"0\";s:16:\"lightboxCssClass\";s:8:\"lightbox\";s:20:\"lightboxRelAttribute\";s:21:\"lightbox[{field:uid}]\";}}s:6:\"links.\";a:2:{s:9:\"extTarget\";s:6:\"_blank\";s:4:\"keep\";s:4:\"path\";}}s:10:\"templates.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}s:7:\"plugin.\";a:2:{s:17:\"tx_felogin_login.\";a:1:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:0:\"\";s:15:\"partialRootPath\";s:0:\"\";s:14:\"layoutRootPath\";s:0:\"\";}}s:18:\"tx_calculator_pi1.\";a:2:{s:5:\"view.\";a:3:{s:16:\"templateRootPath\";s:43:\"EXT:calculator/Resources/Private/Templates/\";s:15:\"partialRootPath\";s:42:\"EXT:calculator/Resources/Private/Partials/\";s:14:\"layoutRootPath\";s:41:\"EXT:calculator/Resources/Private/Layouts/\";}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:4:\"2,22\";}}}}s:5:\"setup\";a:11:{s:7:\"config.\";a:3:{s:19:\"pageTitleProviders.\";a:2:{s:7:\"record.\";a:1:{s:8:\"provider\";s:48:\"TYPO3\\CMS\\Core\\PageTitle\\RecordPageTitleProvider\";}s:4:\"seo.\";a:2:{s:8:\"provider\";s:49:\"TYPO3\\CMS\\Seo\\PageTitle\\SeoTitlePageTitleProvider\";s:6:\"before\";s:6:\"record\";}}s:11:\"tx_extbase.\";a:3:{s:4:\"mvc.\";a:1:{s:48:\"throwPageNotFoundExceptionIfActionCantBeResolved\";s:1:\"0\";}s:12:\"persistence.\";a:2:{s:28:\"enableAutomaticCacheClearing\";s:1:\"1\";s:20:\"updateReferenceIndex\";s:1:\"0\";}s:9:\"features.\";a:2:{s:20:\"skipDefaultArguments\";s:1:\"0\";s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}}s:29:\"contentObjectExceptionHandler\";s:1:\"0\";}s:7:\"styles.\";a:1:{s:8:\"content.\";a:2:{s:3:\"get\";s:7:\"CONTENT\";s:4:\"get.\";a:2:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}}}}s:10:\"tt_content\";s:4:\"CASE\";s:11:\"tt_content.\";a:54:{s:4:\"key.\";a:1:{s:5:\"field\";s:5:\"CType\";}s:7:\"default\";s:4:\"TEXT\";s:8:\"default.\";a:4:{s:5:\"field\";s:5:\"CType\";s:16:\"htmlSpecialChars\";s:1:\"1\";s:4:\"wrap\";s:165:\"<p style=\"background-color: yellow; padding: 0.5em 1em;\"><strong>ERROR:</strong> Content Element with uid \"{field:uid}\" and type \"|\" has no rendering definition!</p>\";s:5:\"wrap.\";a:1:{s:10:\"insertData\";s:1:\"1\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editPanel\";s:1:\"1\";s:10:\"editPanel.\";a:5:{s:5:\"allow\";s:29:\"move, new, edit, hide, delete\";s:5:\"label\";s:2:\"%s\";s:14:\"onlyCurrentPid\";s:1:\"1\";s:13:\"previewBorder\";s:1:\"1\";s:5:\"edit.\";a:1:{s:13:\"displayRecord\";s:1:\"1\";}}}s:7:\"bullets\";s:20:\"< lib.contentElement\";s:8:\"bullets.\";a:3:{s:12:\"templateName\";s:7:\"Bullets\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\SplitProcessor\";s:3:\"10.\";a:4:{s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:11:\"isLessThan.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:9:\"fieldName\";s:8:\"bodytext\";s:18:\"removeEmptyEntries\";s:1:\"1\";s:2:\"as\";s:7:\"bullets\";}i:20;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"20.\";a:4:{s:9:\"fieldName\";s:8:\"bodytext\";s:3:\"if.\";a:2:{s:5:\"value\";s:1:\"2\";s:7:\"equals.\";a:1:{s:5:\"field\";s:12:\"bullets_type\";}}s:14:\"fieldDelimiter\";s:1:\"|\";s:2:\"as\";s:7:\"bullets\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:59:\"tt_content: header [header_layout], bodytext [bullets_type]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.bullets\";}}}}s:3:\"div\";s:20:\"< lib.contentElement\";s:4:\"div.\";a:1:{s:12:\"templateName\";s:3:\"Div\";}s:6:\"header\";s:20:\"< lib.contentElement\";s:7:\"header.\";a:2:{s:12:\"templateName\";s:6:\"Header\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:63:\"tt_content: header [header_layout|header_link], subheader, date\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:91:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.header\";}}}}s:4:\"html\";s:20:\"< lib.contentElement\";s:5:\"html.\";a:2:{s:12:\"templateName\";s:4:\"Html\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:5:\"image\";s:20:\"< lib.contentElement\";s:6:\"image.\";a:3:{s:12:\"templateName\";s:5:\"Image\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:92:\"tt_content : image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.image\";}}}}s:4:\"list\";s:20:\"< lib.contentElement\";s:5:\"list.\";a:3:{s:12:\"templateName\";s:4:\"List\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:72:\"tt_content: header [header_layout], list_type, layout, pages [recursive]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.list\";}}}s:3:\"20.\";a:4:{s:17:\"indexedsearch_pi2\";s:4:\"USER\";s:18:\"indexedsearch_pi2.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:13:\"IndexedSearch\";s:10:\"pluginName\";s:3:\"Pi2\";}s:14:\"calculator_pi1\";s:4:\"USER\";s:15:\"calculator_pi1.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:10:\"Calculator\";s:10:\"pluginName\";s:3:\"Pi1\";}}}s:8:\"shortcut\";s:20:\"< lib.contentElement\";s:9:\"shortcut.\";a:3:{s:12:\"templateName\";s:8:\"Shortcut\";s:10:\"variables.\";a:2:{s:9:\"shortcuts\";s:7:\"RECORDS\";s:10:\"shortcuts.\";a:2:{s:7:\"source.\";a:1:{s:5:\"field\";s:7:\"records\";}s:6:\"tables\";s:10:\"tt_content\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:43:\"tt_content: header [header_layout], records\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:93:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.shortcut\";}}}}s:5:\"table\";s:20:\"< lib.contentElement\";s:6:\"table.\";a:3:{s:12:\"templateName\";s:5:\"Table\";s:15:\"dataProcessing.\";a:2:{i:10;s:62:\"TYPO3\\CMS\\Frontend\\DataProcessing\\CommaSeparatedValueProcessor\";s:3:\"10.\";a:5:{s:9:\"fieldName\";s:8:\"bodytext\";s:15:\"fieldDelimiter.\";a:1:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_delimiter\";}}}s:15:\"fieldEnclosure.\";a:2:{s:5:\"char.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}}s:3:\"if.\";a:3:{s:5:\"value\";s:1:\"0\";s:7:\"equals.\";a:1:{s:5:\"field\";s:15:\"table_enclosure\";}s:6:\"negate\";s:1:\"1\";}}s:15:\"maximumColumns.\";a:1:{s:5:\"field\";s:4:\"cols\";}s:2:\"as\";s:5:\"table\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:100:\"tt_content: header [header_layout], bodytext, [table_caption|cols|table_header_position|table_tfoot]\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:90:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.table\";}}}}s:4:\"text\";s:20:\"< lib.contentElement\";s:5:\"text.\";a:2:{s:12:\"templateName\";s:4:\"Text\";s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:20:\"tt_content: bodytext\";s:10:\"editIcons.\";a:2:{s:13:\"beforeLastTag\";s:1:\"1\";s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.html\";}}}}s:9:\"textmedia\";s:20:\"< lib.contentElement\";s:10:\"textmedia.\";a:3:{s:12:\"templateName\";s:9:\"Textmedia\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:6:\"assets\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:126:\"tt_content: header [header_layout], bodytext, assets [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:94:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textmedia\";}}}}s:7:\"textpic\";s:20:\"< lib.contentElement\";s:8:\"textpic.\";a:3:{s:12:\"templateName\";s:7:\"Textpic\";s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}i:20;s:50:\"TYPO3\\CMS\\Frontend\\DataProcessing\\GalleryProcessor\";s:3:\"20.\";a:5:{s:15:\"maxGalleryWidth\";s:3:\"600\";s:21:\"maxGalleryWidthInText\";s:3:\"300\";s:13:\"columnSpacing\";s:2:\"10\";s:11:\"borderWidth\";s:1:\"2\";s:13:\"borderPadding\";s:1:\"0\";}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:125:\"tt_content: header [header_layout], bodytext, image [imageorient|imagewidth|imageheight], [imagecols|imageborder], image_zoom\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.textpic\";}}}}s:7:\"uploads\";s:20:\"< lib.contentElement\";s:8:\"uploads.\";a:3:{s:12:\"templateName\";s:7:\"Uploads\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:3:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}s:12:\"collections.\";a:1:{s:5:\"field\";s:16:\"file_collections\";}s:8:\"sorting.\";a:2:{s:5:\"field\";s:16:\"filelink_sorting\";s:10:\"direction.\";a:1:{s:5:\"field\";s:26:\"filelink_sorting_direction\";}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:127:\"tt_content: header [header_layout], media, file_collections, filelink_sorting, [filelink_size|uploads_description|uploads_type]\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:92:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.uploads\";}}}}s:13:\"menu_abstract\";s:20:\"< lib.contentElement\";s:14:\"menu_abstract.\";a:3:{s:12:\"templateName\";s:12:\"MenuAbstract\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:24:\"menu_categorized_content\";s:20:\"< lib.contentElement\";s:25:\"menu_categorized_content.\";a:3:{s:12:\"templateName\";s:22:\"MenuCategorizedContent\";s:15:\"dataProcessing.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"10.\";a:10:{s:5:\"table\";s:10:\"tt_content\";s:12:\"selectFields\";s:15:\"{#tt_content}.*\";s:7:\"groupBy\";s:3:\"uid\";s:10:\"pidInList.\";a:1:{s:4:\"data\";s:12:\"leveluid : 0\";}s:9:\"recursive\";s:2:\"99\";s:5:\"join.\";a:2:{s:4:\"data\";s:25:\"field:selected_categories\";s:4:\"wrap\";s:124:\"{#sys_category_record_mm} ON uid = {#sys_category_record_mm}.{#uid_foreign} AND {#sys_category_record_mm}.{#uid_local} IN(|)\";}s:6:\"where.\";a:2:{s:4:\"data\";s:20:\"field:category_field\";s:4:\"wrap\";s:47:\"{#tablenames}=\'tt_content\' and {#fieldname}=\'|\'\";}s:7:\"orderBy\";s:18:\"tt_content.sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:22:\"menu_categorized_pages\";s:20:\"< lib.contentElement\";s:23:\"menu_categorized_pages.\";a:3:{s:12:\"templateName\";s:20:\"MenuCategorizedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:10:\"categories\";s:8:\"special.\";a:4:{s:6:\"value.\";a:1:{s:5:\"field\";s:19:\"selected_categories\";}s:9:\"relation.\";a:1:{s:5:\"field\";s:14:\"category_field\";}s:7:\"sorting\";s:5:\"title\";s:5:\"order\";s:3:\"asc\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:71:\"tt_content: header [header_layout], selected_categories, category_field\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:10:\"menu_pages\";s:20:\"< lib.contentElement\";s:11:\"menu_pages.\";a:3:{s:12:\"templateName\";s:9:\"MenuPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:13:\"menu_subpages\";s:20:\"< lib.contentElement\";s:14:\"menu_subpages.\";a:3:{s:12:\"templateName\";s:12:\"MenuSubpages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_section\";s:20:\"< lib.contentElement\";s:13:\"menu_section.\";a:3:{s:12:\"templateName\";s:11:\"MenuSection\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:17:\"includeNotInMenu.\";a:2:{s:8:\"override\";s:1:\"1\";s:9:\"override.\";a:1:{s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}}}s:7:\"special\";s:4:\"list\";s:8:\"special.\";a:1:{s:6:\"value.\";a:2:{s:5:\"field\";s:5:\"pages\";s:9:\"override.\";a:3:{s:4:\"data\";s:8:\"page:uid\";s:3:\"if.\";a:1:{s:8:\"isFalse.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:9:\"override.\";a:2:{s:4:\"data\";s:21:\"page:content_from_pid\";s:3:\"if.\";a:1:{s:7:\"isTrue.\";a:1:{s:4:\"data\";s:21:\"page:content_from_pid\";}}}}}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:2:\"as\";s:7:\"content\";s:5:\"where\";s:19:\"{#sectionIndex} = 1\";s:7:\"orderBy\";s:7:\"sorting\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_section_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_section_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSectionPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:15:\"dataProcessing.\";a:4:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}i:20;s:56:\"TYPO3\\CMS\\Frontend\\DataProcessing\\DatabaseQueryProcessor\";s:3:\"20.\";a:6:{s:5:\"table\";s:10:\"tt_content\";s:10:\"pidInList.\";a:1:{s:5:\"field\";s:3:\"uid\";}s:5:\"where\";s:19:\"{#sectionIndex} = 1\";s:7:\"orderBy\";s:7:\"sorting\";s:2:\"as\";s:7:\"content\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"image\";}}}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:21:\"menu_recently_updated\";s:20:\"< lib.contentElement\";s:22:\"menu_recently_updated.\";a:3:{s:12:\"templateName\";s:19:\"MenuRecentlyUpdated\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:3:{s:7:\"special\";s:7:\"updated\";s:8:\"special.\";a:3:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:6:\"maxAge\";s:9:\"3600*24*7\";s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_related_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_related_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuRelatedPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:8:\"keywords\";s:8:\"special.\";a:2:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}s:20:\"excludeNoSearchPages\";s:1:\"1\";}s:23:\"alternativeSortingField\";s:5:\"title\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:12:\"menu_sitemap\";s:20:\"< lib.contentElement\";s:13:\"menu_sitemap.\";a:3:{s:12:\"templateName\";s:11:\"MenuSitemap\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:2:{s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"menu_sitemap_pages\";s:20:\"< lib.contentElement\";s:19:\"menu_sitemap_pages.\";a:3:{s:12:\"templateName\";s:16:\"MenuSitemapPages\";s:15:\"dataProcessing.\";a:2:{i:10;s:47:\"TYPO3\\CMS\\Frontend\\DataProcessing\\MenuProcessor\";s:3:\"10.\";a:4:{s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:6:\"value.\";a:1:{s:5:\"field\";s:5:\"pages\";}}s:6:\"levels\";s:1:\"7\";s:15:\"dataProcessing.\";a:2:{i:10;s:48:\"TYPO3\\CMS\\Frontend\\DataProcessing\\FilesProcessor\";s:3:\"10.\";a:1:{s:11:\"references.\";a:1:{s:9:\"fieldName\";s:5:\"media\";}}}}}s:8:\"stdWrap.\";a:2:{s:9:\"editIcons\";s:41:\"tt_content: header [header_layout], pages\";s:10:\"editIcons.\";a:1:{s:10:\"iconTitle.\";a:1:{s:4:\"data\";s:89:\"LLL:EXT:fluid_styled_content/Resources/Private/Language/FrontendEditing.xlf:editIcon.menu\";}}}}s:18:\"form_formframework\";s:20:\"< lib.contentElement\";s:19:\"form_formframework.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:4:\"Form\";s:10:\"pluginName\";s:13:\"Formframework\";}}s:13:\"felogin_login\";s:20:\"< lib.contentElement\";s:14:\"felogin_login.\";a:3:{s:12:\"templateName\";s:7:\"Generic\";i:20;s:4:\"USER\";s:3:\"20.\";a:3:{s:8:\"userFunc\";s:37:\"TYPO3\\CMS\\Extbase\\Core\\Bootstrap->run\";s:13:\"extensionName\";s:7:\"Felogin\";s:10:\"pluginName\";s:5:\"Login\";}}}s:7:\"module.\";a:4:{s:8:\"tx_form.\";a:2:{s:9:\"settings.\";a:1:{s:19:\"yamlConfigurations.\";a:1:{i:10;s:42:\"EXT:form/Configuration/Yaml/FormSetup.yaml\";}}s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:10;s:45:\"EXT:form/Resources/Private/Backend/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:10;s:44:\"EXT:form/Resources/Private/Backend/Partials/\";}s:16:\"layoutRootPaths.\";a:1:{i:10;s:43:\"EXT:form/Resources/Private/Backend/Layouts/\";}}}s:9:\"tx_belog.\";a:1:{s:9:\"settings.\";a:2:{s:29:\"selectableNumberOfLogEntries.\";a:6:{i:50;s:2:\"50\";i:100;s:3:\"100\";i:200;s:3:\"200\";i:500;s:3:\"500\";i:1000;s:4:\"1000\";i:1000000;s:3:\"any\";}s:18:\"selectableActions.\";a:7:{i:0;s:3:\"any\";i:1;s:14:\"actionDatabase\";i:2;s:10:\"actionFile\";i:3;s:11:\"actionCache\";i:254;s:14:\"actionSettings\";i:255;s:11:\"actionLogin\";i:-1;s:12:\"actionErrors\";}}}s:20:\"tx_extensionmanager.\";a:1:{s:9:\"features.\";a:1:{s:20:\"skipDefaultArguments\";s:1:\"0\";}}s:18:\"extension_builder.\";a:1:{s:9:\"settings.\";a:2:{s:22:\"codeTemplateRootPaths.\";a:1:{i:0;s:62:\"EXT:extension_builder/Resources/Private/CodeTemplates/Extbase/\";}s:25:\"codeTemplatePartialPaths.\";a:1:{i:0;s:70:\"EXT:extension_builder/Resources/Private/CodeTemplates/Extbase/Partials\";}}}}s:7:\"plugin.\";a:4:{s:17:\"tx_felogin_login.\";a:2:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:1:{i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:1:{i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:1:{i:10;s:0:\"\";}}s:9:\"settings.\";a:21:{s:5:\"pages\";s:1:\"0\";s:9:\"recursive\";s:1:\"0\";s:10:\"dateFormat\";s:9:\"Y-m-d H:i\";s:18:\"showForgotPassword\";s:1:\"0\";s:22:\"showForgotPasswordLink\";s:1:\"0\";s:14:\"showPermaLogin\";s:1:\"0\";s:24:\"showLogoutFormAfterLogin\";s:1:\"0\";s:10:\"email_from\";s:0:\"\";s:14:\"email_fromName\";s:0:\"\";s:6:\"email.\";a:4:{s:12:\"templateName\";s:16:\"PasswordRecovery\";s:16:\"layoutRootPaths.\";a:1:{i:20;s:0:\"\";}s:18:\"templateRootPaths.\";a:1:{i:20;s:46:\"EXT:felogin/Resources/Private/Email/Templates/\";}s:17:\"partialRootPaths.\";a:1:{i:20;s:0:\"\";}}s:12:\"redirectMode\";s:0:\"\";s:19:\"redirectFirstMethod\";s:1:\"0\";s:17:\"redirectPageLogin\";s:1:\"0\";s:22:\"redirectPageLoginError\";s:1:\"0\";s:18:\"redirectPageLogout\";s:1:\"0\";s:15:\"redirectDisable\";s:1:\"0\";s:43:\"exposeNonexistentUserInForgotPasswordDialog\";s:1:\"0\";s:23:\"forgotLinkHashValidTime\";s:2:\"12\";s:7:\"domains\";s:0:\"\";s:19:\"passwordValidators.\";a:2:{i:10;s:56:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\NotEmptyValidator\";s:3:\"20.\";a:2:{s:9:\"className\";s:60:\"TYPO3\\CMS\\Extbase\\Validation\\Validator\\StringLengthValidator\";s:8:\"options.\";a:1:{s:7:\"minimum\";s:1:\"6\";}}}s:20:\"newPasswordMinLength\";s:1:\"6\";}}s:18:\"tx_calculator_pi1.\";a:4:{s:5:\"view.\";a:3:{s:18:\"templateRootPaths.\";a:2:{i:0;s:43:\"EXT:calculator/Resources/Private/Templates/\";i:1;s:43:\"EXT:calculator/Resources/Private/Templates/\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:42:\"EXT:calculator/Resources/Private/Partials/\";i:1;s:42:\"EXT:calculator/Resources/Private/Partials/\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:41:\"EXT:calculator/Resources/Private/Layouts/\";i:1;s:41:\"EXT:calculator/Resources/Private/Layouts/\";}}s:12:\"persistence.\";a:1:{s:10:\"storagePid\";s:4:\"2,22\";}s:9:\"features.\";a:1:{s:25:\"ignoreAllEnableFieldsInBe\";s:1:\"0\";}s:4:\"mvc.\";a:0:{}}s:14:\"tx_calculator.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:563:\"    textarea.f3-form-error {\n        background-color: #FF9F9F;\n        border: 1px #FF0000 solid;\n    }\n\n    input.f3-form-error {\n        background-color: #FF9F9F;\n        border: 1px #FF0000 solid;\n    }\n\n    .tx-calculator table {\n        border-collapse: separate;\n        border-spacing: 10px;\n    }\n\n    .tx-calculator table th {\n        font-weight: bold;\n    }\n\n    .tx-calculator table td {\n        vertical-align: top;\n    }\n\n    .typo3-messages .message-error {\n        color: red;\n    }\n\n    .typo3-messages .message-ok {\n        color: green;\n    }\";}s:12:\"tx_frontend.\";a:1:{s:18:\"_CSS_DEFAULT_STYLE\";s:3359:\"    .ce-align-left { text-align: left; }\n    .ce-align-center { text-align: center; }\n    .ce-align-right { text-align: right; }\n\n    .ce-table td, .ce-table th { vertical-align: top; }\n\n    .ce-textpic, .ce-image, .ce-nowrap .ce-bodytext, .ce-gallery, .ce-row, .ce-uploads li, .ce-uploads div { overflow: hidden; }\n\n    .ce-left .ce-gallery, .ce-column { float: left; }\n    .ce-center .ce-outer { position: relative; float: right; right: 50%; }\n    .ce-center .ce-inner { position: relative; float: right; right: -50%; }\n    .ce-right .ce-gallery { float: right; }\n\n    .ce-gallery figure { display: table; margin: 0; }\n    .ce-gallery figcaption { display: table-caption; caption-side: bottom; }\n    .ce-gallery img { display: block; }\n    .ce-gallery iframe { border-width: 0; }\n    .ce-border img,\n    .ce-border iframe {\n        border: 2px solid #000000;\n        padding: 0px;\n    }\n\n    .ce-intext.ce-right .ce-gallery, .ce-intext.ce-left .ce-gallery, .ce-above .ce-gallery {\n        margin-bottom: 10px;\n    }\n    .ce-image .ce-gallery { margin-bottom: 0; }\n    .ce-intext.ce-right .ce-gallery { margin-left: 10px; }\n    .ce-intext.ce-left .ce-gallery { margin-right: 10px; }\n    .ce-below .ce-gallery { margin-top: 10px; }\n\n    .ce-column { margin-right: 10px; }\n    .ce-column:last-child { margin-right: 0; }\n\n    .ce-row { margin-bottom: 10px; }\n    .ce-row:last-child { margin-bottom: 0; }\n\n    .ce-above .ce-bodytext { clear: both; }\n\n    .ce-intext.ce-left ol, .ce-intext.ce-left ul { padding-left: 40px; overflow: auto; }\n\n    /* Headline */\n    .ce-headline-left { text-align: left; }\n    .ce-headline-center { text-align: center; }\n    .ce-headline-right { text-align: right; }\n\n    /* Uploads */\n    .ce-uploads { margin: 0; padding: 0; }\n    .ce-uploads li { list-style: none outside none; margin: 1em 0; }\n    .ce-uploads img { float: left; padding-right: 1em; vertical-align: top; }\n    .ce-uploads span { display: block; }\n\n    /* Table */\n    .ce-table { width: 100%; max-width: 100%; }\n    .ce-table th, .ce-table td { padding: 0.5em 0.75em; vertical-align: top; }\n    .ce-table thead th { border-bottom: 2px solid #dadada; }\n    .ce-table th, .ce-table td { border-top: 1px solid #dadada; }\n    .ce-table-striped tbody tr:nth-of-type(odd) { background-color: rgba(0,0,0,.05); }\n    .ce-table-bordered th, .ce-table-bordered td { border: 1px solid #dadada; }\n\n    /* Space */\n    .frame-space-before-extra-small { margin-top: 1em; }\n    .frame-space-before-small { margin-top: 2em; }\n    .frame-space-before-medium { margin-top: 3em; }\n    .frame-space-before-large { margin-top: 4em; }\n    .frame-space-before-extra-large { margin-top: 5em; }\n    .frame-space-after-extra-small { margin-bottom: 1em; }\n    .frame-space-after-small { margin-bottom: 2em; }\n    .frame-space-after-medium { margin-bottom: 3em; }\n    .frame-space-after-large { margin-bottom: 4em; }\n    .frame-space-after-extra-large { margin-bottom: 5em; }\n\n    /* Frame */\n    .frame-ruler-before:before { content: \'\'; display: block; border-top: 1px solid rgba(0,0,0,0.25); margin-bottom: 2em; }\n    .frame-ruler-after:after { content: \'\'; display: block; border-bottom: 1px solid rgba(0,0,0,0.25); margin-top: 2em; }\n    .frame-indent { margin-left: 15%; margin-right: 15%; }\n    .frame-indent-left { margin-left: 33%; }\n    .frame-indent-right { margin-right: 33%; }\";}}s:4:\"lib.\";a:4:{s:14:\"contentElement\";s:13:\"FLUIDTEMPLATE\";s:15:\"contentElement.\";a:5:{s:12:\"templateName\";s:7:\"Default\";s:18:\"templateRootPaths.\";a:2:{i:0;s:53:\"EXT:fluid_styled_content/Resources/Private/Templates/\";i:10;s:0:\"\";}s:17:\"partialRootPaths.\";a:2:{i:0;s:52:\"EXT:fluid_styled_content/Resources/Private/Partials/\";i:10;s:0:\"\";}s:16:\"layoutRootPaths.\";a:2:{i:0;s:51:\"EXT:fluid_styled_content/Resources/Private/Layouts/\";i:10;s:0:\"\";}s:9:\"settings.\";a:2:{s:17:\"defaultHeaderType\";s:1:\"2\";s:6:\"media.\";a:4:{s:11:\"lazyLoading\";s:4:\"lazy\";s:13:\"imageDecoding\";s:0:\"\";s:6:\"popup.\";a:9:{s:7:\"bodyTag\";s:41:\"<body style=\"margin:0; background:#fff;\">\";s:4:\"wrap\";s:37:\"<a href=\"javascript:close();\"> | </a>\";s:5:\"width\";s:4:\"800m\";s:6:\"height\";s:4:\"600m\";s:5:\"crop.\";a:1:{s:4:\"data\";s:17:\"file:current:crop\";}s:8:\"JSwindow\";s:1:\"1\";s:9:\"JSwindow.\";a:2:{s:9:\"newWindow\";s:1:\"0\";s:3:\"if.\";a:1:{s:7:\"isFalse\";s:1:\"0\";}}s:15:\"directImageLink\";s:1:\"0\";s:11:\"linkParams.\";a:1:{s:11:\"ATagParams.\";a:1:{s:8:\"dataWrap\";s:44:\"class=\"lightbox\" rel=\"lightbox[{field:uid}]\"\";}}}s:17:\"additionalConfig.\";a:2:{s:9:\"no-cookie\";s:1:\"1\";s:3:\"api\";s:1:\"0\";}}}}s:10:\"parseFunc.\";a:9:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}s:12:\"htmlSanitize\";s:1:\"1\";}s:14:\"parseFunc_RTE.\";a:11:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:3:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}s:12:\"encapsLines.\";a:4:{s:13:\"encapsTagList\";s:29:\"p,pre,h1,h2,h3,h4,h5,h6,hr,dt\";s:9:\"remapTag.\";a:1:{s:3:\"DIV\";s:1:\"P\";}s:13:\"nonWrappedTag\";s:1:\"P\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:6:\"&nbsp;\";}}}s:12:\"htmlSanitize\";s:1:\"1\";s:14:\"externalBlocks\";s:97:\"article, aside, blockquote, div, dd, dl, footer, header, nav, ol, section, table, ul, pre, figure\";s:15:\"externalBlocks.\";a:15:{s:3:\"ol.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:3:\"ul.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:1:{s:9:\"parseFunc\";s:15:\"< lib.parseFunc\";}}s:4:\"pre.\";a:1:{s:8:\"stdWrap.\";a:1:{s:10:\"parseFunc.\";a:9:{s:9:\"makelinks\";s:1:\"1\";s:10:\"makelinks.\";a:2:{s:5:\"http.\";a:2:{s:4:\"keep\";s:4:\"path\";s:9:\"extTarget\";s:6:\"_blank\";}s:7:\"mailto.\";a:1:{s:4:\"keep\";s:4:\"path\";}}s:5:\"tags.\";a:2:{s:1:\"a\";s:4:\"TEXT\";s:2:\"a.\";a:2:{s:7:\"current\";s:1:\"1\";s:9:\"typolink.\";a:5:{s:10:\"parameter.\";a:1:{s:4:\"data\";s:15:\"parameters:href\";}s:6:\"title.\";a:1:{s:4:\"data\";s:16:\"parameters:title\";}s:11:\"ATagParams.\";a:1:{s:4:\"data\";s:20:\"parameters:allParams\";}s:7:\"target.\";a:1:{s:8:\"ifEmpty.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}s:10:\"extTarget.\";a:2:{s:8:\"ifEmpty.\";a:1:{s:8:\"override\";s:6:\"_blank\";}s:9:\"override.\";a:1:{s:4:\"data\";s:17:\"parameters:target\";}}}}}s:9:\"allowTags\";s:392:\"a, abbr, acronym, address, article, aside, b, bdo, big, blockquote, br, caption, center, cite, code, col, colgroup, dd, del, dfn, dl, div, dt, em, font, footer, header, h1, h2, h3, h4, h5, h6, hr, i, img, ins, kbd, label, li, link, meta, nav, ol, p, pre, q, s, samp, sdfield, section, small, span, strike, strong, style, sub, sup, table, thead, tbody, tfoot, td, th, tr, title, tt, u, ul, var\";s:8:\"denyTags\";s:1:\"*\";s:5:\"sword\";s:31:\"<span class=\"ce-sword\">|</span>\";s:9:\"constants\";s:1:\"1\";s:18:\"nonTypoTagStdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:18:\"keepNonMatchedTags\";s:1:\"1\";s:16:\"htmlSpecialChars\";s:1:\"2\";}}s:12:\"htmlSanitize\";s:1:\"1\";}}}s:6:\"table.\";a:4:{s:7:\"stripNL\";s:1:\"1\";s:8:\"stdWrap.\";a:2:{s:10:\"HTMLparser\";s:1:\"1\";s:11:\"HTMLparser.\";a:2:{s:5:\"tags.\";a:1:{s:6:\"table.\";a:1:{s:10:\"fixAttrib.\";a:1:{s:6:\"class.\";a:3:{s:7:\"default\";s:12:\"contenttable\";s:6:\"always\";s:1:\"1\";s:4:\"list\";s:12:\"contenttable\";}}}}s:18:\"keepNonMatchedTags\";s:1:\"1\";}}s:14:\"HTMLtableCells\";s:1:\"1\";s:15:\"HTMLtableCells.\";a:2:{s:8:\"default.\";a:1:{s:8:\"stdWrap.\";a:2:{s:9:\"parseFunc\";s:19:\"< lib.parseFunc_RTE\";s:10:\"parseFunc.\";a:1:{s:18:\"nonTypoTagStdWrap.\";a:1:{s:12:\"encapsLines.\";a:2:{s:13:\"nonWrappedTag\";s:0:\"\";s:17:\"innerStdWrap_all.\";a:1:{s:7:\"ifBlank\";s:0:\"\";}}}}}}s:25:\"addChr10BetweenParagraphs\";s:1:\"1\";}}s:4:\"div.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"article.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:6:\"aside.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"figure.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:11:\"blockquote.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"footer.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:7:\"header.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:4:\"nav.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:8:\"section.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dl.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}s:3:\"dd.\";a:2:{s:7:\"stripNL\";s:1:\"1\";s:13:\"callRecursive\";s:1:\"1\";}}}}s:5:\"menu.\";a:2:{s:11:\"calculators\";s:5:\"HMENU\";s:12:\"calculators.\";a:5:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:181:\"    <div class=\"row\">\r\n           <nav class=\"navbar navbar-expand-lg navbar-light bg-light\"> \r\n              <ul class=\"navbar-nav mr-auto\">  |</ul>\r\n           </nav>\r\n    </div>\r\";}s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:5:\"value\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:4:{s:2:\"NO\";s:1:\"1\";s:3:\"NO.\";a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:23:\"class=\"nav-link active\"\";}}}}s:4:\"page\";s:4:\"PAGE\";s:5:\"page.\";a:6:{s:11:\"headerData.\";a:2:{i:20;s:4:\"TEXT\";s:3:\"20.\";a:2:{s:5:\"value\";s:71:\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css\";s:4:\"wrap\";s:152:\"           <link rel=\"stylesheet\" href=\"|\" integrity=\"sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N\" crossorigin=\"anonymous\">\r\";}}s:8:\"stdWrap.\";a:1:{s:9:\"outerWrap\";s:40:\"	        <div class=\"container\">|</div>\r\";}i:5;s:3:\"COA\";s:2:\"5.\";a:2:{i:10;s:5:\"HMENU\";s:3:\"10.\";a:5:{s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:181:\"    <div class=\"row\">\r\n           <nav class=\"navbar navbar-expand-lg navbar-light bg-light\"> \r\n              <ul class=\"navbar-nav mr-auto\">  |</ul>\r\n           </nav>\r\n    </div>\r\";}s:7:\"special\";s:9:\"directory\";s:8:\"special.\";a:1:{s:5:\"value\";s:1:\"1\";}i:1;s:5:\"TMENU\";s:2:\"1.\";a:4:{s:2:\"NO\";s:1:\"1\";s:3:\"NO.\";a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}s:3:\"CUR\";s:1:\"1\";s:4:\"CUR.\";a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:23:\"class=\"nav-link active\"\";}}}}i:10;s:3:\"COA\";s:3:\"10.\";a:3:{s:4:\"wrap\";s:24:\"<div class=\"row\">|</div>\";i:10;s:7:\"CONTENT\";s:3:\"10.\";a:3:{s:5:\"table\";s:10:\"tt_content\";s:7:\"select.\";a:2:{s:7:\"orderBy\";s:7:\"sorting\";s:5:\"where\";s:11:\"{#colPos}=0\";}s:8:\"stdWrap.\";a:2:{s:4:\"wrap\";s:30:\"<div class=\"container\">|</div>\";s:8:\"ifEmpty.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:5:\"value\";s:39:\"Kein Inhalt auf dieser Seite platziert.\";s:4:\"wrap\";s:55:\"<div class=\"alert alert-secondary\" role=\"alert\">|</div>\";}}}}}}s:6:\"types.\";a:1:{i:0;s:4:\"page\";}}}'),(5,'ef4b384a043168ecde8733caea6c8531',2145909600,'a:0:{}'),(6,'8d54e2e29d5178f63cbfbea613e77d8c',1702997587,'a:2:{i:0;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}i:1;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:23:\"class=\"nav-link active\"\";}}'),(7,'e967c3a2a400429288045f0bc7b2cb76',1702997587,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:27:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:25;s:4:\"USER\";s:3:\"25.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:4:\"flag\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:9:\",\"flag\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(8,'9594d0b015c1fac316c5c350fa86a2fb',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:4:\"mod.\";a:5:{s:9:\"web_list.\";a:3:{s:15:\"enableClipBoard\";s:10:\"selectable\";s:18:\"tableDisplayOrder.\";a:9:{s:9:\"be_users.\";a:1:{s:5:\"after\";s:9:\"be_groups\";}s:15:\"sys_filemounts.\";a:1:{s:5:\"after\";s:8:\"be_users\";}s:17:\"sys_file_storage.\";a:1:{s:5:\"after\";s:14:\"sys_filemounts\";}s:13:\"sys_language.\";a:1:{s:5:\"after\";s:16:\"sys_file_storage\";}s:9:\"fe_users.\";a:2:{s:5:\"after\";s:9:\"fe_groups\";s:6:\"before\";s:5:\"pages\";}s:13:\"sys_template.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:15:\"backend_layout.\";a:1:{s:5:\"after\";s:5:\"pages\";}s:11:\"tt_content.\";a:1:{s:5:\"after\";s:33:\"pages,backend_layout,sys_template\";}s:13:\"sys_category.\";a:1:{s:5:\"after\";s:10:\"tt_content\";}}s:12:\"searchLevel.\";a:1:{s:6:\"items.\";a:6:{i:-1;s:82:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.infinite\";i:0;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.0\";i:1;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.1\";i:2;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.2\";i:3;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.3\";i:4;s:75:\"EXT:core/Resources/Private/Language/locallang_core.xlf:labels.searchLevel.4\";}}}s:8:\"wizards.\";a:2:{s:10:\"newRecord.\";a:1:{s:6:\"pages.\";a:1:{s:5:\"show.\";a:3:{s:10:\"pageInside\";s:1:\"1\";s:9:\"pageAfter\";s:1:\"1\";s:18:\"pageSelectPosition\";s:1:\"1\";}}}s:18:\"newContentElement.\";a:1:{s:12:\"wizardItems.\";a:5:{s:7:\"common.\";a:3:{s:6:\"header\";s:81:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common\";s:9:\"elements.\";a:8:{s:7:\"header.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-header\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_headerOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:6:\"header\";}}s:5:\"text.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-text\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_regularText_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"text\";}}s:8:\"textpic.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-textpic\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textImage_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"textpic\";}}s:6:\"image.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-image\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_imagesOnly_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"image\";}}s:10:\"textmedia.\";a:4:{s:14:\"iconIdentifier\";s:17:\"content-textmedia\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_textMedia_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:9:\"textmedia\";}}s:8:\"bullets.\";a:4:{s:14:\"iconIdentifier\";s:15:\"content-bullets\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_bulletList_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"bullets\";}}s:6:\"table.\";a:4:{s:14:\"iconIdentifier\";s:13:\"content-table\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:common_table_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:5:\"table\";}}s:8:\"uploads.\";a:4:{s:14:\"iconIdentifier\";s:23:\"content-special-uploads\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_filelinks_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:7:\"uploads\";}}}s:4:\"show\";s:57:\"header,text,textpic,image,textmedia,bullets,table,uploads\";}s:5:\"menu.\";a:3:{s:6:\"header\";s:79:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu\";s:9:\"elements.\";a:11:{s:14:\"menu_abstract.\";a:4:{s:14:\"iconIdentifier\";s:21:\"content-menu-abstract\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_abstract.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_abstract\";}}s:25:\"menu_categorized_content.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.title\";s:11:\"description\";s:111:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_content.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:24:\"menu_categorized_content\";}}s:23:\"menu_categorized_pages.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-menu-categorized\";s:5:\"title\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.title\";s:11:\"description\";s:109:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_categorized_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:22:\"menu_categorized_pages\";}}s:11:\"menu_pages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:91:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.title\";s:11:\"description\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:10:\"menu_pages\";}}s:14:\"menu_subpages.\";a:4:{s:14:\"iconIdentifier\";s:18:\"content-menu-pages\";s:5:\"title\";s:94:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.title\";s:11:\"description\";s:100:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_subpages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"menu_subpages\";}}s:22:\"menu_recently_updated.\";a:4:{s:14:\"iconIdentifier\";s:29:\"content-menu-recently-updated\";s:5:\"title\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.title\";s:11:\"description\";s:108:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_recently_updated.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:21:\"menu_recently_updated\";}}s:19:\"menu_related_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-related\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_related_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_related_pages\";}}s:13:\"menu_section.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_section\";}}s:19:\"menu_section_pages.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-section\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_section_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_section_pages\";}}s:13:\"menu_sitemap.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-menu-sitemap\";s:5:\"title\";s:93:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.title\";s:11:\"description\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:12:\"menu_sitemap\";}}s:19:\"menu_sitemap_pages.\";a:4:{s:14:\"iconIdentifier\";s:26:\"content-menu-sitemap-pages\";s:5:\"title\";s:99:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.title\";s:11:\"description\";s:105:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:menu_sitemap_pages.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"menu_sitemap_pages\";}}}s:4:\"show\";s:191:\"menu_abstract,menu_categorized_content,menu_categorized_pages,menu_pages,menu_subpages,menu_recently_updated,menu_related_pages,menu_section,menu_section_pages,menu_sitemap,menu_sitemap_pages\";}s:8:\"special.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special\";s:9:\"elements.\";a:3:{s:5:\"html.\";a:4:{s:14:\"iconIdentifier\";s:20:\"content-special-html\";s:5:\"title\";s:98:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_title\";s:11:\"description\";s:104:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_plainHTML_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"html\";}}s:4:\"div.\";a:5:{s:14:\"iconIdentifier\";s:19:\"content-special-div\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_divider_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:3:\"div\";}s:12:\"saveAndClose\";s:4:\"true\";}s:9:\"shortcut.\";a:4:{s:14:\"iconIdentifier\";s:24:\"content-special-shortcut\";s:5:\"title\";s:97:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_title\";s:11:\"description\";s:103:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:special_shortcut_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:8:\"shortcut\";}}}s:4:\"show\";s:17:\"html,div,shortcut\";}s:6:\"forms.\";a:3:{s:6:\"header\";s:80:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:forms\";s:4:\"show\";s:34:\"formframework,search,felogin_login\";s:9:\"elements.\";a:3:{s:14:\"formframework.\";a:4:{s:14:\"iconIdentifier\";s:12:\"content-form\";s:5:\"title\";s:75:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_title\";s:11:\"description\";s:81:\"LLL:EXT:form/Resources/Private/Language/locallang.xlf:form_new_wizard_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:18:\"form_formframework\";}}s:7:\"search.\";a:4:{s:14:\"iconIdentifier\";s:27:\"content-elements-searchform\";s:5:\"title\";s:79:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_title\";s:11:\"description\";s:85:\"LLL:EXT:indexed_search/Resources/Private/Language/locallang_db.xlf:plugin_description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:17:\"indexedsearch_pi2\";}}s:14:\"felogin_login.\";a:4:{s:14:\"iconIdentifier\";s:22:\"content-elements-login\";s:5:\"title\";s:92:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.title\";s:11:\"description\";s:98:\"LLL:EXT:felogin/Resources/Private/Language/Database.xlf:tt_content.CType.felogin_login.description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:13:\"felogin_login\";}}}}s:8:\"plugins.\";a:3:{s:6:\"header\";s:82:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins\";s:9:\"elements.\";a:2:{s:8:\"general.\";a:4:{s:14:\"iconIdentifier\";s:14:\"content-plugin\";s:5:\"title\";s:96:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_title\";s:11:\"description\";s:102:\"LLL:EXT:backend/Resources/Private/Language/locallang_db_new_content_el.xlf:plugins_general_description\";s:21:\"tt_content_defValues.\";a:1:{s:5:\"CType\";s:4:\"list\";}}s:4:\"pi1.\";a:4:{s:14:\"iconIdentifier\";s:21:\"calculator-plugin-pi1\";s:5:\"title\";s:85:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.name\";s:11:\"description\";s:92:\"LLL:EXT:calculator/Resources/Private/Language/locallang_db.xlf:tx_calculator_pi1.description\";s:21:\"tt_content_defValues.\";a:2:{s:5:\"CType\";s:4:\"list\";s:9:\"list_type\";s:14:\"calculator_pi1\";}}}s:4:\"show\";s:1:\"*\";}}}}s:9:\"web_view.\";a:1:{s:19:\"previewFrameWidths.\";a:12:{s:5:\"1920.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:4:\"1080\";}s:5:\"1366.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1366\";s:6:\"height\";s:3:\"768\";}s:5:\"1280.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1280\";s:6:\"height\";s:4:\"1024\";}s:5:\"1024.\";a:4:{s:5:\"label\";s:66:\"LLL:EXT:viewpage/Resources/Private/Language/locallang.xlf:computer\";s:4:\"type\";s:7:\"desktop\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"768\";}s:7:\"nexus7.\";a:4:{s:5:\"label\";s:7:\"Nexus 7\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"600\";s:6:\"height\";s:3:\"960\";}s:8:\"nexus6p.\";a:4:{s:5:\"label\";s:8:\"Nexus 6P\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"411\";s:6:\"height\";s:3:\"731\";}s:8:\"ipadpro.\";a:4:{s:5:\"label\";s:8:\"iPad Pro\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:4:\"1366\";}s:8:\"ipadair.\";a:4:{s:5:\"label\";s:8:\"iPad Air\";s:4:\"type\";s:6:\"tablet\";s:5:\"width\";s:3:\"768\";s:6:\"height\";s:4:\"1024\";}s:12:\"iphone7plus.\";a:4:{s:5:\"label\";s:13:\"iPhone 7 Plus\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"414\";s:6:\"height\";s:3:\"736\";}s:8:\"iphone6.\";a:4:{s:5:\"label\";s:8:\"iPhone 6\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"375\";s:6:\"height\";s:3:\"667\";}s:8:\"iphone5.\";a:4:{s:5:\"label\";s:8:\"iPhone 5\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"568\";}s:8:\"iphone4.\";a:4:{s:5:\"label\";s:8:\"iPhone 4\";s:4:\"type\";s:6:\"mobile\";s:5:\"width\";s:3:\"320\";s:6:\"height\";s:3:\"480\";}}}s:9:\"web_info.\";a:1:{s:17:\"fieldDefinitions.\";a:6:{s:2:\"0.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_0\";s:6:\"fields\";s:75:\"title,uid,slug,starttime,endtime,fe_group,target,url,shortcut,shortcut_mode\";}s:2:\"1.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_1\";s:6:\"fields\";s:26:\"title,uid,###ALL_TABLES###\";}s:2:\"2.\";a:2:{s:5:\"label\";s:69:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_2\";s:6:\"fields\";s:93:\"title,uid,lastUpdated,newUntil,cache_timeout,php_tree_stop,TSconfig,is_siteroot,fe_login_mode\";}s:2:\"3.\";a:2:{s:5:\"label\";s:75:\"LLL:EXT:info/Resources/Private/Language/locallang_webinfo.xlf:pages_layouts\";s:6:\"fields\";s:79:\"title,uid,actual_backend_layout,backend_layout,backend_layout_next_level,layout\";}s:4:\"seo.\";a:2:{s:5:\"label\";s:64:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:seo\";s:6:\"fields\";s:106:\"title,uid,slug,seo_title,description,no_index,no_follow,canonical_link,sitemap_changefreq,sitemap_priority\";}s:13:\"social_media.\";a:2:{s:5:\"label\";s:73:\"LLL:EXT:seo/Resources/Private/Language/locallang_webinfo.xlf:social_media\";s:6:\"fields\";s:67:\"title,uid,og_title,og_description,twitter_title,twitter_description\";}}}s:14:\"linkvalidator.\";a:8:{s:13:\"searchFields.\";a:2:{s:5:\"pages\";s:9:\"media,url\";s:10:\"tt_content\";s:28:\"bodytext,header_link,records\";}s:9:\"linktypes\";s:16:\"db,file,external\";s:16:\"linktypesConfig.\";a:1:{s:9:\"external.\";a:7:{s:13:\"httpAgentName\";s:19:\"TYPO3 LinkValidator\";s:12:\"httpAgentUrl\";s:0:\"\";s:14:\"httpAgentEmail\";s:0:\"\";s:8:\"headers.\";a:0:{}s:6:\"method\";s:4:\"HEAD\";s:5:\"range\";s:6:\"0-4048\";s:7:\"timeout\";s:2:\"20\";}}s:11:\"checkhidden\";s:1:\"0\";s:16:\"showCheckLinkTab\";s:1:\"1\";s:21:\"actionAfterEditRecord\";s:7:\"recheck\";s:5:\"mail.\";a:5:{s:8:\"fromname\";s:13:\"LinkValidator\";s:9:\"fromemail\";s:25:\"linkvalidator@example.com\";s:11:\"replytoname\";s:0:\"\";s:12:\"replytoemail\";s:0:\"\";s:7:\"subject\";s:26:\"TYPO3 LinkValidator report\";}s:12:\"linkhandler.\";a:1:{s:19:\"reportHiddenRecords\";s:1:\"0\";}}}s:8:\"TCEMAIN.\";a:2:{s:18:\"translateToMessage\";s:16:\"Translate to %s:\";s:12:\"linkHandler.\";a:6:{s:5:\"page.\";a:2:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\PageLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:page\";}s:5:\"file.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FileLinkHandler\";s:5:\"label\";s:77:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:file\";s:12:\"displayAfter\";s:4:\"page\";s:9:\"scanAfter\";s:4:\"page\";}s:7:\"folder.\";a:4:{s:7:\"handler\";s:50:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\FolderLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:folder\";s:12:\"displayAfter\";s:9:\"page,file\";s:9:\"scanAfter\";s:9:\"page,file\";}s:4:\"url.\";a:4:{s:7:\"handler\";s:47:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\UrlLinkHandler\";s:5:\"label\";s:79:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:extUrl\";s:12:\"displayAfter\";s:16:\"page,file,folder\";s:9:\"scanAfter\";s:9:\"telephone\";}s:5:\"mail.\";a:4:{s:7:\"handler\";s:48:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\MailLinkHandler\";s:5:\"label\";s:78:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:email\";s:12:\"displayAfter\";s:20:\"page,file,folder,url\";s:10:\"scanBefore\";s:3:\"url\";}s:10:\"telephone.\";a:4:{s:7:\"handler\";s:53:\"TYPO3\\CMS\\Recordlist\\LinkHandler\\TelephoneLinkHandler\";s:5:\"label\";s:82:\"LLL:EXT:recordlist/Resources/Private/Language/locallang_browse_links.xlf:telephone\";s:12:\"displayAfter\";s:25:\"page,file,folder,url,mail\";s:10:\"scanBefore\";s:3:\"url\";}}}s:8:\"TCEFORM.\";a:1:{s:11:\"tt_content.\";a:1:{s:12:\"imageorient.\";a:1:{s:6:\"types.\";a:1:{s:6:\"image.\";a:1:{s:11:\"removeItems\";s:18:\"8,9,10,17,18,25,26\";}}}}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"8f5dc447eb57e3deb06c5b905fa16027\";}'),(9,'8d050ad497ceaaa4df7766ec7e571a25',1703003897,'a:2:{i:0;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}i:1;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}}'),(10,'22606292e011655b384b2dc1c319a0c2',1703003897,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:27:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:25;s:4:\"USER\";s:3:\"25.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:4:\"flag\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:9:\",\"flag\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}'),(11,'e63c095e48217e98c740647a2c4deb58',1703003899,'a:2:{i:0;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:23:\"class=\"nav-link active\"\";}i:1;a:2:{s:8:\"linkWrap\";s:27:\"<li class=\"nav-item\">|</li>\";s:10:\"ATagParams\";s:16:\"class=\"nav-link\"\";}}'),(12,'610418e0a2bb3ce475b9d694ad9cac9a',1703003899,'a:1:{i:0;a:3:{s:11:\"doNotLinkIt\";s:1:\"1\";s:14:\"wrapItemAndSub\";s:3:\"{|}\";s:8:\"stdWrap.\";a:2:{s:7:\"cObject\";s:3:\"COA\";s:8:\"cObject.\";a:27:{i:1;s:13:\"LOAD_REGISTER\";s:2:\"1.\";a:1:{s:11:\"languageId.\";a:2:{s:7:\"cObject\";s:4:\"TEXT\";s:8:\"cObject.\";a:2:{s:6:\"value.\";a:1:{s:4:\"data\";s:24:\"register:languages_HMENU\";}s:8:\"listNum.\";a:2:{s:8:\"stdWrap.\";a:2:{s:4:\"data\";s:28:\"register:count_HMENU_MENUOBJ\";s:4:\"wrap\";s:3:\"|-1\";}s:9:\"splitChar\";s:1:\",\";}}}}i:10;s:4:\"TEXT\";s:3:\"10.\";a:2:{s:8:\"stdWrap.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:4:\"wrap\";s:14:\"\"languageId\":|\";}i:11;s:4:\"USER\";s:3:\"11.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:6:\"locale\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:11:\",\"locale\":|\";}}i:20;s:4:\"USER\";s:3:\"20.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:5:\"title\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:10:\",\"title\":|\";}}i:21;s:4:\"USER\";s:3:\"21.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:15:\"navigationTitle\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:20:\",\"navigationTitle\":|\";}}i:22;s:4:\"USER\";s:3:\"22.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:16:\"twoLetterIsoCode\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:21:\",\"twoLetterIsoCode\":|\";}}i:23;s:4:\"USER\";s:3:\"23.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:8:\"hreflang\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:13:\",\"hreflang\":|\";}}i:24;s:4:\"USER\";s:3:\"24.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:9:\"direction\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:14:\",\"direction\":|\";}}i:25;s:4:\"USER\";s:3:\"25.\";a:4:{s:8:\"userFunc\";s:71:\"TYPO3\\CMS\\Frontend\\DataProcessing\\LanguageMenuProcessor->getFieldAsJson\";s:9:\"language.\";a:1:{s:4:\"data\";s:19:\"register:languageId\";}s:5:\"field\";s:4:\"flag\";s:8:\"stdWrap.\";a:1:{s:4:\"wrap\";s:9:\",\"flag\":|\";}}i:90;s:4:\"TEXT\";s:3:\"90.\";a:2:{s:5:\"value\";s:21:\"###LINKPLACEHOLDER###\";s:4:\"wrap\";s:9:\",\"link\":|\";}i:91;s:4:\"TEXT\";s:3:\"91.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:11:\",\"active\":|\";}i:92;s:4:\"TEXT\";s:3:\"92.\";a:2:{s:5:\"value\";s:1:\"0\";s:4:\"wrap\";s:12:\",\"current\":|\";}i:93;s:4:\"TEXT\";s:3:\"93.\";a:2:{s:5:\"value\";s:1:\"1\";s:4:\"wrap\";s:14:\",\"available\":|\";}i:99;s:16:\"RESTORE_REGISTER\";}}}}');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cache_hash_tags` VALUES (1,'3697f667c6ada1e0ea4b26eab03b6a29','UserTSconfig'),(2,'d7ea7d8f2b37e62d8acee8b798346d95','pageTSconfig'),(3,'6641804b1910668017adf9627456e8c4','pageTSconfig'),(4,'590ecb43f3e95bdd2f8f31e8877609b0','ident_TS_TEMPLATE'),(5,'ef4b384a043168ecde8733caea6c8531','ident_TMPL_CONDITIONS_ALL'),(6,'8d54e2e29d5178f63cbfbea613e77d8c','ident_MENUDATA'),(7,'e967c3a2a400429288045f0bc7b2cb76','ident_MENUDATA'),(8,'9594d0b015c1fac316c5c350fa86a2fb','pageTSconfig'),(9,'8d050ad497ceaaa4df7766ec7e571a25','ident_MENUDATA'),(10,'22606292e011655b384b2dc1c319a0c2','ident_MENUDATA'),(11,'e63c095e48217e98c740647a2c4deb58','ident_MENUDATA'),(12,'610418e0a2bb3ce475b9d694ad9cac9a','ident_MENUDATA');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_imagesizes`
--

LOCK TABLES `cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cache_imagesizes` DISABLE KEYS */;
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES (3,'4_c01e53970446d4917be0cc295a9b9336',1702997587,'xúÕYÈn„F˛=ˆ:{∞£É‘IYr‚Òëq÷F è MvIÍ1…föMŸB0o≥o≤/∂’›§D…ö…$≥	VÄ%≤∫ŒØ™´”Å?¯-∏ÕÅ√$äœ8HÁ8¥⁄ß=\rõ.tZ~ØŸnwY€w{4√–Û;‘¸V´´9{\'•sòrÊÛA€RBë(Tß«€=≠k¯’˘›Ÿ‰ß˚≤Pqtr0‘?Ñq9r\"%—d>r‘8z(;98∆†(	Tf†FNÆfµæ˛™V#/&ûëG2ÆÄ‡c*A#¡ä†•ª©ûd)ó<ôìD\ZQÇd®æBq√ÉrîÃ$\0)$$πÅúYˇ…\rM0∂X?^J\Z√£ê®î+N£hEB	TYãˇ¢Y\níå(ïÒû–Ñëàáêd8û\'«æø˝±Ò˝˝uΩb:ÈJÚ˘B◊˜˚5ØÈµàòÌ*´ìã\'t\'„\"Ao%TƒêY-ÄK\"EB≈ó»c2C3W…L»ò*î3˛Ë¨H‰ñ†0*ÕçÜZ•¢Urﬁ8®’v^q¡…k‡J“y“(Ã#™Ñ$ﬁ∞a«ä‰$à »ôö‘„)R?rlêg7cá4∂π’#W\n‰ §íU≤<é©\\vt!‚…Ü·ÄZEê-\0îCf#«∫¨ N4√⁄»\Zañ5f}Í≤V\\7hwg]z≠~–iQX+Ù†]G¶o›^”Î{ÌfœwHå”ëÉπtLÿøg∂,dI˝}∆ ‚KYO@5í4nB®·Jøk◊ªuØ¡x¶å[ÎÅzÃÌÉÉ%§`.πZ°ïmı€µß;ΩπºæX4{˜?|/ÓÆóÓU^‹OnÊ=•o≤sˇb|≥¯ıÍ\'÷LÆooØœª˛m∫jøπ˙Á-‚(Eñ	,û`HâHV±»3=]6!ÖöŒ1ùk 7©≠yéŒS√ŒΩa ÿ\n_í0BêGfRSéâvN™d)ùìêÕgò–ı(>T˚SÉß±ÕKBd™8ò€ÁÑl)“∫Úh[UM+èeçÊJ†#Ø◊∞ƒH§{¢sù*£ÜƒŸWﬂÓ∞AOÜçàˇ’ﬁ3’Ñö©∏◊Ç∑±–»£‰\Z®° \r±Çñœë˛HFå»¡xÜì3d€88”]åòolµ3öG™x√Ë{VæGt%rUk™´üﬂ\'Xg˛¥‰ÁÀlë^T·QOµ\rÓ«ãÿEÎ‰B∆ÿÉ¢W›öMö˛ÛÔ9\Zê\02≈„õ9ç∞Oa&P¬àé!ÇÖk$Æ8o/∆Ú1Çi–î7ñn√tXÃ}cH+1‘-çZÃD*2l&&\'ÖcpVi ØWßspLÒàdß∆æUO”Õ˚4ÂÓ◊ù◊ñÛÎŒ˘(*√≈74Nè˜1\Z«DÅ‘ÃW∏=ﬁ\rÕ£vß„Sg^gÊy˝Ê¨◊	[›ÆﬂÏÕz!Æ˜∫4Æ¯Õì4WD◊\nvCŒpœ‡îM}◊Íœ”)Œê‰/?Â\nˆãCñ4 Q‚lì≥B¸i›õ‡6 Mà_®◊¢ª—…ø\\\'ïÛ\\o\'≤ç÷ü&‚Ò.Q>¥ö¨”\n}ü6◊e˝n”áf.õπ–Ì¥∫˝Ä5€zŸ˙¢†$¸öcÅoÏˇˆÕØπP«õŸ˜Å˝Ÿ$…æø*∏7òo±€ ⁄‚¥(nqÒ\r◊á∂M†ùÆˆ˚nóRü1ﬂı⁄≠£≠.ÎzÃsY8cÓü	[…<√˝ŸΩƒΩùƒiõ=ã\ZwwÖgÓá>˙0ÛZa\'õÕ>t€-LDèzΩ~÷ıΩ¶€7lw≠\'¶;€ˆÛ©ñº;nz¯≥6∂≠!™e±ŸËÓkéUV›[js)ÚÙ#ÃF¿bV)íÁ@&y†√A˙≈ΩWΩ‚s…œmˇ5Å*!¯WK%∑ªJkñÿ˘◊eP¨œÿÛ%ÑãDó”≈Yy›z‘T´E/\nõ®≥u¡îûSúTäòÔ\Z«-<a5‹µÅŸ¢V‡bW>iÚÁ,óﬂ_µ¢W\'Ö(61ïo≥…ŒB…SµÅçâ–¥≈:eÏbâ◊∏—gä£√Ûªõ‚4v-(v¯äÃÚƒÙî£ó‰∑máñ∏’4Óh£1æàÃÓıÍä}jÂ}yº_›è2Bç˙Ik;UVé€€ˆ Ìd˜SÌ™€“g?G∆ñ2‚qz‡%ùÏ‚Å3VO•˘=∑[æ£]áÒÉ=AÔ˝–‘9≈ì⁄à$H.ã◊#M◊n=õÅ\nGHØˆÿ◊ª˝ê√˚ªÒ‰’^}ﬁ¨Ì?c˘≤é›‰Hüs—Sÿ¨˛HPπLH…XW∏∞Ì∏‘XV9“w∫§ˆ™’9MıEÑ,∞¡¬º7Ô˚îóeŒﬂBÜbVæn~.•à«JﬂMªØ»°v¥°ü?°√“{ˆQUsWtπ“{”[ˆ—a›2MPﬂ·n-ïüùö´ÛøﬂLnÆQµﬂêˆ{≥´¡t/]ùh>çhGá∂qaÖfÒ∏◊ÃBHu	·˛G&´{òv$∑Îóa£Ï+√Fq|5xûË{(◊]_KMp%–$Ø=p÷†ØÔôÏ5”±Ωi∏Ä)√ítéÈ¿”∑e]£h∆ÁöÇ<˙Õ∑∑`}5Ç€ç%g˙\nf-“8∏æ……’§>JåÊöﬂÕç…ª≥õÒª3!·›}©›[#{øk¿9˛ÄÇ\'±1µ´◊ØÍÉ®®≈7´Ôπbe\08°x±˛£…K‹& t≈¶m∑¥mÙ%^ÜõuPjÅ[m·V®Kë\'Ï‚)ÑTO∏´Ÿ©ôxg!`ãh	Ã\0?pö&8◊√hI”ÛBÿDÈ°fHh¡iÆÑæ„\nœt¶Œ\"<·ú*¥∏&Õò∆<≈¢\r‹kEˆtPµÑ0ÕÄbÁÄJ⁄¥dˆ¿”¢mûñõ˜ç$Útü\'‘i]ó.9D,ªJ^C≈⁄¸u	ﬁÔq≤Æ°xCY‹KΩnGcã%÷k≤é7Í2°QO\"úÄc}[ÂM N/y˙.÷-KXƒÿ˛≥ÏáLSõ«V\Zd«=û∏AsgÆTä·\'=\'ŒE®äπÇzÃPªRËÒ≠dˇÒ\n∂!Ïª&)”≤6˜ªÃËÄW»äÍpÒ¡$≥Ö™Ï%µÜ\0ﬂr˚¶aB3™µ9\rù%>f™[R3ÖUí1Y™Ù!∫¡ñËXΩ	]N◊Cä»mÆ+$úaˆ∆•‘àÑ‚ÄSPöîJÒxm∂ßg´R˙∫éßv´\\I[◊ñM¬&bú\Z“¨¢ÉâõgãÜN‰∏lq∑ZyTf)SûÑQŒ¥¸mÅœ¶˙^c_4∆…Æ¶»uY≠âS<~îÙñÒ9sûLc¡÷±Ë©–›ûZp¶	F1çp/≠£˚†->O≤ªï‰ˆˇ:…/ƒˇÉ¨Ø{»ﬂôˆÊﬂúv›Q5O)ó6,}µÔ˚ΩNøgëTà\\úÆG\\◊5#⁄∫©Ëˇë¨˚˝Á&X˜fsá[‰Á5\'øÿKLp∞ËôÎ‹ioÆÿ¥≠£˙/≤∑_g'),(4,'4_192fbd67061991151595d5079101f646',1702997590,'xúÌ<ks„∏ë˘zSuˇA´dØíΩ»ıñ∆„=[ñ«öı´,Õ&©lJëêƒEhA“∂f÷ˇ˝∫Ò\"(R;ÚÏ&ï∫€˘0—@h4˙Mí~Øˇ)Í;µ~Ÿ˜h˚süÚÚÎ®ﬂhˆÀÕ©”´œg^ªSk;Ωû„¥úVØÂµjùûSsÊÌf{v˙Â\rY–©Ôï_˚˝¶lqY:Ñ◊ùzØ_>˛Í¸v0˘€›∞¥å◊¡…´c¸SÚ|˛¶ƒº\\\nH∏xSˆh≈£eÑR‚ùºzuº¶1)πK¬#\Zø)\'Òº“EWïJÈ’Lñ~Tz§≥»èi	~nÿ#Â‘+Õ∂%òÈ∂Q™î¸0⁄¯‹•\reõÄñbVä\0˝\nÜã>0éîÊú“€–∞±Ñª¥4êÎ/]ìˆ∂∆üú¨È#„+@Í«>	Çm…Âîƒr∆ÔH¥°º4^¬óÏCâÑ^)]\ZF\0OB`ooﬁWﬂﬁ]YSªl≥Â˛bóÄ¿›JΩVoîÿ|ŸQi¯Àâ|¬j9µÜAÁxI}^‚Ü∏±ˇ\0y)è`öQ8g|Mb\'÷Éß¬˝Y\"b8äxı´’xªaç#∆’Wï\nê˝ï§Ôˇ˚…hr5Ï∂k‘i˜ÊÛ^≠—ô;^gﬁÌÕ∫≥ÊºN∫^◊õAøé”ÉÆáì”C«òAÉÒxz5:øt27∫\\Ω?Ò:Â–´—Õ¡#Õ–w_∂ÿw_º÷w_º‘À·È˘˛¸Ù39Æ Îw<cﬁ˛x˛C…\rHΩ˜ö¯¿^Âªô≥«Ú…æ*•ˇéCb†sFxI˛©–ß\rb%XËÜ@0Úl!îOJDà+	≤®*à|Õ+$â,$-pÑ¡\Z\ZIi…È¸MπÍí¿M3^q v«¿WÂì3Í«ú,¢¥[…9Æíì„j‡ø\0u=á∫Dƒm,ú°ûŒPMÇ UÉj:ÆëÛîﬁs\"b»´ÒDOﬂÉnÈÁ(»J‚ê∂sí±z9@aÌë~»ñ%q•¶P€ˇ>ﬂ ÛÍãG>˛U¶˘~t3ôé˜£ª…Q≥·’j≠ñGÊû€ÓŒÊéCjçY”ÌÅ˛ö◊{2ºöÍüæ•œåîßùvÇ;,œﬂ˙WM/no\'√˚/Dø £//GΩL*)qTöéc,ç	∞.6Å©”ßXÙ]¿≤qâª§Sèƒ§¸öÙõh¥≈¿πø¿ËÉ6PO\Z2?Ëg`Å≈uÑÉU√©À∏\'ölÍ¬’Áj¬≥–Ï?Æ«?ß?‹iÑ?‹ã±wªî_?√¿~9¢,ùjoœ∆;¶ÃBO_±ÿÂåÇ	@’É\\?L˘,i?MÅV3Q1wÁÜµ¨‹tè∏©x	bg∏aÒcf¯‰“\rZ£˘©ã$åœË=çX@=A¯~π&6Á‘a7@I+4ti∫À:`¶!ôÙ‰8ö)Ó\0OjPÇ&õ¬‚#é1Ÿ¿¬s0Ú\0—l™ßÃL@¶9ÿc	òB÷,02Z˘õs)ÈN˘\"As.JGBüòøãu\ZC±§ü^4\nœ®5ÃÅ∂¨bπ€Ÿ0∏).A´íÓ\ZØ”BöØŸU≥øc3ÓÏ9í@ÔÕAe–qº\rh}B◊õ?†hN;öÖŸz€äﬁEÿZ{-…Jfê„îë/(g\'T¢?·%8gn¨Ó‡†¶≈ËÇ‚ô√~9À-©9},f∫œvÜp∆‚+†Ü:B‹.¸áŸ\0T“œ@¿S\"üuÛîOY⁄I\'#´’—≠Q•õ·∞bΩF —5hU%Q@!O\rHQzØ©Á´	nò‘ò\Z#4,}¸*›\0∏`J«˛⁄L€¡[‡Ÿ-]‰„ÈÇ≥dc[[≤MËMÿ8ô!I#á«VÚú%5 «Zƒ›‡pËG≤eÍánêx8˛F—√è¶ËF!Ì-ÇÆ·≤«Sã‰»V¶q ”ﬁkÿ¬ßkÊôΩ‡’öwÀûJ‚LCÿ≈4†40ª{∆ÛáÏdπ˘kÚ~F¸78u#C˛ï«^˚ªR`Æ¡“∆.˜7q*ã\Zp®g+0‹Æyí$ÂIËä¿F«qC©˛§®;*D¿\rõ 	Oƒ›«˝QÌzﬂê5’&≈¿∞ãnŸ	A˜Åqwæ£ïª™B0UΩO∑˝V”^√˙ƒ˚a`ÎïÏ”=≈€~ΩÉõÚpóBµK√x.å@ë,π’è©‡π.•Z@Á±QÀQÏ˝∂{ÀÖ∫É¸ˇ$yFÅ@∑ÄúwAÛ(©∏dl•Óá0´Ó¡S‹°!—X≠¬	Á*àgåÅ~ı˝+Ëx§.\Z·úlı û–<B]M‡æ™õ«•-ÖNæSìö1]QácÉs£[x”√EÆˆ.çK±¡ç\'¿3™äÕ—æPÑø5Á¥’snF’ˆQ≤k`Ö√$Âü∫Ê)7@a≤ægèDt–<•Ô≠KÖÃ4áﬂ±}MZ)ÉÅÊæß5´fòÉYêÃQÙRX~±Ä—|∏ﬁƒ€+0,oíµ⁄]ê>9›Çn9d0´?øIÇ ∑ÑéÜ—‘óXsÉ∫T<Í8hU<JÄäF˚vÿ5OE<	ÿıãUZP4¨Áé2û:«¸S◊<ÂO©iIë\"Ç¶˝1Òπt≤ÀÏ•¿ÊR+?_C›ú{ÈÓÌ¬Ee:ÒÉÅHz(‚	…ç.è®π fò∏W/çÜ–]\n≈“Â‰˙JÙ‡yb‡çK·EKé6Å_ 8ÎH≈M@\\¬.úw√}∆}‘g≈Û¶\"√–ºÊmê‚π˙ñﬁµ0~ênOv™éÕ≤$—2w-Ÿ^$\\9˙®˘9⁄\nR»: Ìf –DººêP2nâb§òP)|èÇ†äÈÒß¥P¥Ü»ã8a2ÚòIQÆ–4Ë¡BõÈ∆\"	¿π¡POü5Ç^⁄Tt…@ïÊ∑⁄ÌÖº\0Ü‘Œœñ¸YtF≥mL£¬3êBä$3KWÀ˜\Zû»êCw)\"áÀŸØë^$<*Ã\Z≤Á¸Õ•\n\'Ì{ÕíDMa˝l…ü≈wï<æÁ¡0tôW@y‰ªG°ùÑ.ˇxC]üLõ†È‰{ÂP’õËü‡,p#ﬁë\"çÛÔIê¨≠˝}ΩÕè%≥Äûq0“r˜\Z	a¡ÛKÉ©ddõ≠pñ∂ûÏÖl\"åA‰)|¥¢€G∆Ω⁄ˆR`+˘aHπVù@·GıS§_5¨P¯h}w®c˜Hx:ÿg*[n∞«\n`≈˚«◊3ä6ç+=ïæäÌ∑»µ`—HLKb&•Ëf=Ê©ÿí?i≤	=E§wl`ˇ<PΩ≠öã∏-~À<≤{Ècëï±°FqeÌt+R©dS<™£A˚v’(ﬁU£–îcË$RoºœDs?€ßËHYÔΩ∂ÁÄÈüß~÷é˙M·ÖW\ZôÙè≈Ó7\n„Ω]‚HÊ˛”Ä≠◊ÖædsßG9®Á«#–∆ÓlÕÇÓzGB∫G-p!5Ñ¸\'X∆qè¢±{ûá˛«±J.ÿÓÍ‹1ãm¥{Ë,Y‰\'o+H—û@ü`~œºwÏˆ©Y‡ù±œR˛Óõﬂe¢˛L•^#ÔT®üƒÊ&√øNƒË⁄·ådZÖß„·¡H`\\Âê¿È\rnO-_g:≈]Á0v∆ÈËFlØSˇ\"¨£P¶<ä6˝~<º?x”x=sH∫â^c´{ ¢Ω´∏]\rE¬¶ÂÄ\rS6Qö—ıÈ€·¡hFkå`Ì¢Q“Î∑”˚·¯ˆ˝˝@¢ÎäÛrX÷T|∞7ì°\"Z„É-Bu?‹ﬁüèF%JÖ4ªºﬁº,|≥]˙îÓ.}ó◊4LÚ‰ÉÂ\\›ûû˝ﬁé∆≈lá»#ﬁ=]`Ú2œthp√âLnÔáÃÌC\Z•Á~‰∞Êã´˜£Û…˙ÓÍtr¯ô_âÔa1\0◊≤H<åø+ñy∆@SLà~åø©dŒü¨kx>ö‹ùﬁÖ’jÄ{®ï‘∫g+¶J˙ù¶ \n©<P]iWŒœi$<\r–Ã8© »§	§¶T(qìıFD≈;µzØ÷m∑€‚rO%á4§Ÿy≠\\BÃ\ZL”D&[h\0ﬁ¶˜OIÔ°5≈x,‘?Ï±’ñ=QèÃ]ôåZ	€häÅËÀ.ìl +p∫·¸baíÿÕµp*ÖÄù6ìÕ2?vÛZß“¶å˚oK·ı¸˘\\#Å#Bƒü Qzõ¯sŸe®|˘K»0_ë˛Vâ†Lò[æ8=—(Œ\"3K¥D8ˆ6F{Nc3Ò∆üŒ˙Ñ’é™A§…ƒON›ÑGXâ%GZãUNSQ•fŸóNeÕDæùÃ·ûfö©0\ne%ÇZW∏ö∞	∏˙≤√ÓI…ÕI¶ë=øàGÕ*ryöK$HsÇ$5êjÁdvôΩ–ˆ¨Ω®_î/Õ4/Ï4Í@ó‹4eZoÍîR∆FÓŸ=Ì⁄EKÃ€∆*c¢«†ìüp€¢©Noä’Ù∞$\0ôM=˚ÓßiJ\r∂á°ìE4é¨Â˚kk;¬¡¿ÜGﬂ√Äm∫w—ätNÔSOµ∑GFÈÆ3&ìifï.6…ÊäqúÕÖZŒàjE\\=OM◊y&µ(◊ÈpkFÃ»* ïnı’]O¢,J‹aK¢ôõgÕ‚Ù3W‘ÇhJN?2∂∂ÛƒY!:Õp˜˙÷uV≤=M«O7æ£Y\"sﬂ“*ÖÙ“YBrÊÿ6»1:Á›ê2çÑ˜ì\"Zõm’¿ πDnuDmC¯Ç⁄‹l¬øÜ¶©L⁄eµ%’	[›lÀ6TnhE˚¥JXU≈¬7eÁ®V.â\0úèUÙ≤Læ6ÙH¿B˙¶ºÖ.}{ÚÍx“∏\0dÊéd›„1™Ÿ¥æÛ8ZR\Zó|$Òõrt>ºÿ)˛<÷ÚL˜	Ú}D?ëf1àhå$ãé\"äBΩÅUä^0Z`x¿¯°∆ ¶©WEk¡|U1·Œb´zµ÷´bã\'∫¿Vlˇ∏j¶¨D\rq—uıg~‡«€\\-¶Ø≥=f€ç∏mi\rD|∫+Ïøqæùöº∞u”b¥øÚ7Ωa DI¡%ne3X+˛⁄◊Â\0ıf‹∞(·i≈Üô(\'¨-M :ƒs´\\D∆å2≤µ>Í©\r65)OSΩ°Oõ¨±!+¿¿€3iÅ«SÎÖÕÔ\\Yáµ˛ßgπ1WãÆµüo	%;W`F5Lﬁ¸{|G∑˙™ßç	ùÆ|ÔCıºUƒ>ò‡èÍqØ**•|J◊ŸØÎPH¶„Ñ≈$∞iîÅﬁàî-Í•!W≠g°È¶Í∏∫%uWwæ7ùÔ\\V…ƒZñ-m“ëÀfŸ»¥˜<∞È’ÕB\'ª\rY÷Ópunug0¯9Bó›h≥]¨Wª=÷∫q*tt…ÿJ∫÷y’%o¿ZFÎÖvj3=qå◊xµî«¶º|Ì[Ã$˘:ö¯0±ä®Pàï∞ç¨ª∫¿,¢iØÛ^Jr^… &UôX}î◊ﬁOöëÂù†-Äû√øN˙s’£™7UÔíY‡ª’tLUaõÍŒG`√œJ¡ƒ©1vÒ˛f†j´⁄Ÿ⁄™©<î˛\'hÛ”„Ç?WàmdûÁ	¡@ÇK!)ÙMtt %ﬁÅ‡4x‚!d!˙ÊÂ¢\'æQêU˜_∑Œà–´_∑ŒﬂD=˚ˇˇÌuQGÒJjyéùÖe ˙∫ó$Zæi∂Z=B{Ûzk^ØwkÛNÀm¥€ΩZgﬁq]∑^+WO^…_f_ ﬂ“})∂ÆKK…Tb	π“Îv∞†´Q/¨õˇ••[-YêÏ®p¢™ËÖéTÂõ‚Õf¶√\0•æÑ4‰PYRåÈ©3N…*˛Zkw_wMÉñ(}A*“Çâ:ª}¨πÍà3Ω3»√û0IÉ£&∫ÅcBîÔ@ãVéWı?ä—‰∫-¢:œë7E´iqŸ[UooŸ¡4`\'äB\0¨}÷Ï”9˜WÑ»:tÈ˚)\'3ﬂU≠3m[ü±(ÙU⁄öu±—Y,OÆéÄÇ¥y©„>É%¶iÈèc–c˝ìÓ©÷‡#uıZ]ùu˘\rÃ<¢÷yN¬t[¶Í-Âk3≠åÚÇ∑ú“ïnd:Ç/íP~#@Ôuº±QS(Çd≥h@5Ââ~îÈ]Ãxh‹°ïi:œ}’|·áÓ9”ÕÑ3\Z$˙,.∞d©61Á”¡©v\r%§Ù«	âG4ÅZÎ[`7ù~©…sIgú>ÍV_á\r¡XÙu#W(úÁ•(E∂À$Ãπ)¿»•p‚û·_s‡X!ÌˇÅ®	ﬁ†s∫Èïné„\"Ìø\n¥Aáßf¶X≠’æ[ÆUI=42µŸÔ‡4Ú>‡ΩªÚ„eB¨ì‘BØH¸ê6Ø5yÆ	[∫q•—\\É∑ËŸ±éLˇ¿‰‹CÕÇÁIl;‘,x√¯#µˆ∫—ÂtwÃ∫≥≥Ù;p°íEBMô(ß≥{≠aŒ8˘Ë#•KŸ~X\"¡qÔŸ⁄ﬁ:O‘÷Ôì»bW˛®i˛ùn	DóH¡\"]á7ÿ—∑*\n‘ñ∞ïZ3D&76^Çí(˝ÒÆ\\¢6˙Q≠Î4òŸÎät©¬òÚô’¨Oj¸HΩî@≤X≥6K¢*÷&	_•]]Ü˚~≈âoÕ¯‡k\"Ô”8£◊Ô„RoFzM8Ò˛dT Hb?b˜=KzM6e˘‘≈RFå‚MEW∑∏3Ç\rIËk≠À√åÄ∆ı%Xòn\Z√Ûcìπ\\ÿ«\\∑`w¯J¬ïæIkΩ»µñƒ)øÈrsˆ¯C_ûì=dËé?ÙJtÁ}ı!-u≤Û„r:∏—ÑZ¶çóﬂez‚©a+h≥lˇ‘>ñöˆ\\TÄ‰Ù• ¨´¢pµ-ÀS◊ÓŸ&{åB˙Õ≈éQ≈˙\0Â¶Ω;µç\n(ø ≤`∞H^Gó°˘C$Reñi’÷Ì¬¥ÿÅˆ üEYáœ\Z≥T&VîŒ$^)hudQI#k©*CÇUËUùwâ„5∫‘qfÕˆºÌπıFw÷j:Û\Znù6è‹(Jﬂl Xê8≈_ÜQ‰*85o*F¯òO(1/õ`9^†En$¢õæ f€esûƒm(c3ùå\0,∫˛B«1∞÷ÎIºÇvﬁ¿òÉ¬˘üô8 ñòTΩ\'¯\'%=Â´k≤£p:jö¯ŸCQ~˝!/ﬂh0ŸÿêBFµRËú<`qDÜµ]· jgSXÀhˇUæ™l[it>≠É;ÿ‚4/Ÿ’Òld≠ùœUh%Ç1çâ|¡põº7í™ÿ#{3\ZM˚€Á*˛	ü´∞≈Õ2„ç÷çXBﬁ∞ºQÎé)wT„uΩ|jõ=£ê∆’p≥ÆŒÙKAˇ”<j’´†≠cq√\r‡hÌá‚:óD	4˜„-Ã≤$çn≥ÚtÀÇÀã´·≤÷π{˜ñ›≠Æú—ÃﬁMnbBΩ˙”Ê2:Ô\r«◊ÀGÛj·’ı„Õ’yªw≥Ÿ6/Gˇ}SÜ3c(A˝Öæ)£#Ω]≥$*üË`E≥é‹Z©\\ûO?Á¿W*\'6ΩÊ/◊0´FxÒÑNz∑U±% Ùc—pÚ”qU˛ÌsãÚ≥.z\0»áùœΩ¸T>±Ó;^D’W|PÊÁ> cÆH@Âáe¥!óJΩX›16)Œ¯©\\™ûhôÄwXÚ⁄_”I˛çZ	-¡ZuΩ#tÑ-æ√±ö„æv˛ïøÆˇ!“Ë•ÕFJòÓ»≠Êr‡∫ñµ9à\\Ê÷iË¥á¯~˚Æ«oﬂı¯ÌªøÊñ~ÖÔzXB&V°<$∆∑E˜âπˇ\0=´:˙UÒ≠uå:ô`¥ï$ﬁwz›©7íö-â’eú˛lÿYeÍ™÷\nâßﬂüzó\Zú›Ï<ÛyçLÏ>\r≤ﬁÔÎŸP≤VUÊ›€+øf^P¨¬çr˘çX˙^¥ çëf⁄ïrfÆ»å6™ŒæNª>ã›q¨≤õ{&K#Ø“Ú∂çËw,a\'Ø™ﬂı˜~ÂÔﬂ†i£≤@∏Í7ˇ¯«	¥Wu_©w€∂ÂEyÙ®TÖ¡≥ã]~BMœÅæ%^k9HN#È¨õÍe,+Wîö≈2≠√∑nÊ¡◊≤ó˛+ÕUnıeHXGπ5*ï∞Ô÷Ç@ƒ†ôrË⁄¯Z:rÑ‡ËÊﬁ˘ﬁ qŸiµSå7•e^œ¢Ã«ı5J|Âßµã0Û…À¶≤ó.\'’ö_dΩıtœ2úΩÀ¬†_oX°n≈´¸ˆ,•µ˚-\ZΩí[( ΩÂ†s˝Ë«™±`1ù}ãô»a¬Ω_k9ÿÜ˜ÌE,\rwÀ0\\ïÿ—ÉóÊÌ¿Ó>ô`ﬁR|ì∆/¸≥ÿ∑B!(…ü*	©`‡\0\\.ëm◊0|DÏi,›/ìáGG©ÇÚıA}ßaß9ová4%\Za±∑Ìû \"ÕtŒ~4≤—¥˚ü{ºÜ>¯ƒ∑ÆLööŒåE˚;ô©ùn«Û˝˙Û˝rﬂ2˘7jË˚˜¬õ~˚“úãH{9Úç–d¬ÆH\njΩ“_¯Y2+o.ﬁß≥k·¨¿ô`hI+ìæøf5r¸Æ∑ÚN€IEˇ^»#“C—Hdé˙•\Z&XJÈ≈D…€ú”h˘Ú…Â˜\"‡í∞ïˇÚôE)Ü⁄|ÑÖ~º≠‡;mÓˆ≈∏∫h¶èp13Ï¿ŸåŸ5Ò&2X@—ëZº÷SQYıch„;Od±&ˇ?eâÿÒÓµsÃ\'¨îc-MWÛó@Ñh¨ÈÃ∂Ñ˙ÁîÔÆv» %™~˛@‰7ÍÅt8wØ`´©ù≥E_À\0#w∞M∆ÑÌ–¥ 4\'\0√Í4\'ê`;I<üÌ6‚óÀ¨F§ªò˛Z8›∂àÃ∫ò3Â\"»H‘Ôóf]éfçj™Q{ÿœëiπBUü¨øb˜Ÿ°?ø®∂~Ö¬¶èînÄáN3Ì¶úH7‡˚¢≤0⁄¢∂ÆT5nõÿ≤≈∞ˇŒ7Uk˝/1 oøhÿÁıW◊√(õ∑ÔªÆœÜ ˇŒåX¬‡•£ @ı$ò0íÍã∞ıRl≈ó∂ëvÿΩÎ»p¸aÎÿÂ7)84≤M@∂Ù∞]5TÓÙÛ,.ﬂ–•dùô’Ig√Ì†){⁄œE÷˜7Kf«nÒ/◊ä∑ÆiQoÖÖX‹“Q8Ï∂ÆF`7\"/àÒ∆~,fõ=@SjJlyÿÛˇ)u^t!N•„˚…zM¯ˆÖ˛‚ê≈ÌÀ«(\rÚK•Â≥|©ÔÖ˛ÔZ>[ÓØtæ”U©ShÈ©d≥Ö‡˝zΩÛ:‡™åŸˆŸ°≠◊î¶§ ¶òfZ≥y€o‚Ùáw˘ﬁ*’∞D6/®::Ô_ç∂~o¯≥a‘Ùß˙PÏ—áË[ß›ÎıZçN´°L*åÊ≈tΩØêrg•#—5˝Œ-÷FlFÇ”(Ú°ID+ΩKLÖpPâ~I∆®FïZ“Ò‹1Ê‘üüu∂KT:‰€5äÅzé®ÑÕsßXÙivÄ‰XLWdGPk;‘\\ùuCßpå˘‹}£«E=tÿR‘W®]KOƒˆ†‘{°ΩN´ßﬁﬂ⁄yó‘q$œäBËØ‹b\"€Æ 9¨Ë_J√˙e*ä˙ZÆ˛\n£.H0¡¨Æ\\Õ»õ6qSˇ˝/.'),(5,'redirects_e5e14f05df09ce502cd220e89180eb507016528a',1702921097,'xúK¥2∞™Æ\0O˛'),(6,'redirects_df58248c414f342c81e056b40bee12d17a08bf61',1702921097,'xúK¥2∞™Æ\0O˛'),(8,'3_3f02f9f70fd8a7225773994564d62bb9',1703003899,'xúÕYÎr€6˛œÏ;†úiÌÃF/∫€rÎ¯í∏Î€DÍèL”—Ä(!&	\0ek:yõ}ì}±=\0Hâíï4M∂ù’å%Ú‡\\øspp1ÜøÀ°ÁFh¶XÃ®pÂ0hù`\ZƒÆ‚ûì>Ó˘~ß◊Évß€&]?ö≥7tr<£SFúC6,%‚ôuzº\r\"CÁËª≥€”…€ªs4Wirºw§ab‰$J8(¡Ÿl‰⁄ ‘—£ì„ΩΩ£î*å¢9í™ëS®∏—◊√ﬂ5\ZhÔŸdŒ$z†°dä\"xÃ˘î†pâ¿“mÄ\Zàe2gÇe3îSû\')é$®£ﬂÅ∏·9åbA)‚9Õê‰Öà(:µ˛£kúAl©~º8•\\‹ÉR¶Ní%ä≈ Z¸ñ9h|è±òÛ˜g%,¢ôÑÒ\"#0ˆÍÊó÷´ª´fÕtƒÛ•`≥πBﬁ`–o¯Æ o+k¢ÛGpG2ûÅ∑Ç÷ƒÄYÕ)HPâ[@ Ã\\f1)V g¸—Y,,,AA*T.á≠ñZÊ<hr1kÌ5\Z\0;\0ØòJËÒK î¿3·$*¨∏@ﬁQÀéï……\0ïë3£`Rè;®L˝»±Aû^è‘⁄‰VL)*Ü§& ã4≈biÿ¡ÖÑe˜VjôP9ßT9h.h<r¨Àä¶yK®\rŸä§l≈}Ïë†O=/lw„.â¸†vLCD>m7ÅÈGØÁ˙}øÌˆJ)ax‰@.ˆô≠\0ãH÷|/	MÿB43™ZYû∂BŒï∏Úü⁄Õn”o&ïqk5–LY¶}p†Ñù	¶ñ`eéÉ~ªÒxÀì◊WÁs∑w˜Û+~wµ.√Ë¸nr£0%˛c˛Zû\rŒ«◊Ûóoâõ]]?‹\\ùu7˘≤˝˙Úü7Ä£‡Rr(ñAHœñ)/§û.Îê\"MgêŒêÎ‘6<GÁ©eÁﬁQ»…~[†(êGfRcâvéÎd¡ú„Ï°ıÁ(√´Qx±@ˆßAs(ƒF2´â©‚pfúc¥°HÎ*íMU\r≠<\r\\(é$¨6‹ÄNêÔåÆŒh ¡fæ8ü(s||‘Jÿü∞‡?±∞SµøV›*í-‰Z Zíé†ÇOë˛DFå»ﬁxÜì`[«Î.ÜÃ7¥⁄â*ﬂ`FQpZVÔ	^ÚB5‹Ru˝Û«ÎÃﬁWK~π¸ﬁyÔYıÿX„q<{fÅù«Á\"Öî∞2Ë÷l“Ùüœ(¬!\n©T,M°)°ì˙d$åËò&Ù^¡\Z	+ŒõÛÒΩåËµpŒZØUÔ∞≤u\n+v§˚0t5ÁêéúKË(&1•wÙ¥&˜ry2£é)Nûm’èÍq∫~üÊÃ˚æÛ“r~ﬂ9IäE4ˇß˘·.F„O*4Û%,JèÜ7zçÂ|‘éº8å=Ï«ÌA;jc∑ﬂÒI/‹(nªù.ql7ÄoñÂÖB∫`†%2ßÍÏ€VùNaûP!®¯Ì◊ühµå˝Ê†N\nê8]\'»,_≠{‹Zπ	ÒıZt◊:Ÿ∑ÎƒbVË=Ö\\k};·∑ô\Z–¿%ù \Z∞zÈw›ÌHâ=⁄Ì›~H‹∂^ªæ)(A?PÂk˚øˇ°‡Ípù!˚>¥?Î$Ÿ˜%˜\ZÛ\rv[Yú≈\r.∂Ê˙ÿˆ©KqßÎE˝æ◊≈x@»¿Û€ALp–ÖΩ&Ò=≈ƒ˚ö∞ï($l“ÓlÃ]˘$jÿ‚ïûy˚$Ï”ÿ¢Nπnüv€$¢á˝^øwæÎı®µª÷”¢m˙\\_ﬁ7ç¸I/€‘ê4djvªª:dùU˜ñ∆L\"ˇ≥∞ò’E ‰9%êYëÜ‡\'Åê~3AÔToÅ¯RÚ”@€M†° ¸5r¡Ï÷“∆*ã⁄ˇ™ E\Z\Zø†—<”ÂÙMq÷^7u\0ıj—KÄÇf@’È™`*œ1L*ÖÃwÉ¡>ël›®Ÿß÷Ô¡äW=iÚó¨ô%ﬂ_µ¨◊\'Ö(w2µo≥”ñë`πZ√Fxd⁄bræÄá+ÿçËÉ≈¡˛ŸÌuy$ª‚òP≤ˇ≈Efz ¡sÙ˚¶Cÿoöw¥V	ü\'Ê ˜ryI>∑Ú>?‹≠ÓëÄF˝§µù(+F€€v me˜sm®€–g?E∆ñ2‡q@ı¿s4:ﬁ∆>f¨ôÛ{f˜}€√zÇﬁ\0Ç©3«µ Ë∫(_4]ªıD,¶*öî Ωÿa_ÏˆgàˆÔn«ì˝;yÙ°c∏≤ˇÑÂ„Û&úv≥}ÿOÈÓ`ıGPUàUåM€ÆÄ+çU5°}1°KjßZù”\\ﬂFà(Ã;ÛæKy%QÂ¸\rï fÂõÊÁBt¨ÙÖ±˚ÌkG[˙yˇ3\n!,Ωq’57aEKΩAç†eÏ7-”ÙÌo◊RıŸ™π&À‡˚ı‰˙\nT[Ò5i∑7€\ZL˜“’	ÊÛGÙ`ﬂ6.®–}9Á;}Å,DXóÏO‡Ñd≤∫ÉiKrÉ∞z9jU}Â®Uûa\rû«˙2 ÛVwSX	4…oùËá´À&{◊thÔ∆\"ÕÈî@I:áxËÎ+≥ÆQ≥ô¶\0èæEÿ´∞âæÅÌ∆Ç}≥È\rX_∏ Ü‰iR$JFsWÔÊ⁄‰›Èı¯›)Ù›]•›#{∑m¿9¸ÇCGRæ6µ≠wP◊;¶º¶ﬁ¨æßäMî!ÖÈHÀÎ?ò¸h±Ñm@bòa⁄v†mÉ/È\"Z«®ÉRsÿÚh7\\]\"#ÁèÕıÑªåOÃƒ;≈–)‘1Oî‡áékÇÛ|àê4=/¢Î(}–L3&Ù§P\\_tEß:Sß	úÉ`NïZ<ìfHcëC\n¡lÉµ\"{:®[òbä°s–Z⁄¥§ºgyŸ6O™Õ˚Zx:CáÕ2\0Í$IŒçKå&D^f/iÕÿ´º\rﬂ√d]AÒ\Zg$±∏WzΩé∆<ÂZZˇy¨…:nÿ®ã\'Ul,K`éıïï?°i~¡™/dΩ™Ñy\nÌ_ ü•¶∫áVJÄ„NÃ π3˜*Â£ûg<RÂ\\=f®]+tÉ¯F≤ˇ|€v]√TiYô˚Cfp@p+dFÀÍp·¡$3\0Uˆ¶ZC\0oÖ}”0Å,®òÚ5áÜŒdçÍUT©†¢*2$KU>D◊–´7√ãÈj®D∏Õ˝cç3Ã^ªT\ZÅPpJËìB)ñÆÃˆÙ, uJ_◊Ò‘nïkiÎ⁄≤…»ÑèãPC*k:ø∑y∂hËDé´w£≈ÅGIKô≤,J\n¢ÂoJ<òúÍãxç}\r–&ªö÷ ◊eµ\"N·¯Q—„s¬g,õ¶ú¨b—S+ƒ—=∏=µ‡L3àbö¿^&YE˜Q[|ödo#…¡ˇ:…ü.ƒˇÉ¨Øz»ﬂôv˜oNªÓ®\Zâ«ú	ñ◊s◊\r˙ÉÅERri^é¯Ø◊6#⁄™©Ëî¨˙˝ó&X˜fsáA	¥»/kNÉr/1Å¡≤gÆrßΩπ$”@Gı_‘ aË');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES (1,'4_c01e53970446d4917be0cc295a9b9336','pageId_4'),(2,'4_192fbd67061991151595d5079101f646','pageId_4'),(4,'3_3f02f9f70fd8a7225773994564d62bb9','pageId_3');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection`
--

LOCK TABLES `cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cache_pagesection` DISABLE KEYS */;
INSERT INTO `cache_pagesection` VALUES (1,'4_0_222419149',1705503187,'xúÕòmo€6«øJ°0I§e[ ´µÛ–mP‘∞w-1QJD û¯ªÔ®ßêŸ*]≠ÏMlù»ªˇwGö!	N%¸ÒÁﬁ\rIÇ‰Ò\"ìu‚’B®œ¨§⁄àíGñ˙ÍGW,˜n¥≠}j∫ßû‚ƒS¯HÎT<çÉ¡xíÜ5¨REsV¶8<Àdëx_+ΩŒoIéÈ¯\n\\z›ËÇÊå¶e‚qrç\Z<Ç·ÅÂ9-¯ÇêµR¨√Æèñπi\rÓiz®ESﬁCFˇT0v\'∂Õæ\"*\rπ¯ÆŒ‘\0ªm& {vnnıt£dgIYôÒ&◊Ûo{=òL%STkoZà¶T©!yàc*¯h«-3V¶Ö»«µ –iO≤ÔÄùv‚§%¨\"ÂÙH˘∏∫ãé¯œ$áVí?;…&æßL’‰ 3¬≥Ü%ÍwËëu¿fO{0s⁄/≠Zµ8mõB∑;^˝éª/zUc5ﬁnÓ6Ô∂üvi˚*@Î8\nc<TP?\r\Z:¯ûCÂHuÊ4@BÂhÖhj¢ò(˝›π€¨fïÚ#\0€¸±K⁄πi79ù4Å®˝aP¿zºß rG«q}¬#$6CFËuﬂ¬0VûXˇà\0¶óûjaR≠⁄\"ﬁ9V™mÈÁD÷J†Ñ(î÷Hf<˜„óÊ¯±S$¿§ÑN©áπ/ΩÎ˝¨^Ù≥oœ\r?+„]jºÏ≠üŒ,hFÏIÌüN\'ˇA‹Øö=gô+∞/œ\\˘˜¥müóµÒa˚(ï¸Eœìcˆ€ŒX∆q·U‘v@lE«?%∫§™©úë√¿Í˝bBÏWïÿG +⁄ˆÉ∑·¥Ä7XhÅ”RÚ#`_I-ÈÔMôπôê-÷¥DΩä…V…ﬂpN\'Pàmµ‚´ì˝∆én™≈’ãÎ’GJ†Ø›`ë\r\\º∫±ñ6Vxu¨Ol®nÆ’‹r}fr¬±∂±W«⁄>àZeÕ¥xÓLÓ»ûª3âÇπ3πn,{≥£Y∞⁄ÅõmˆM_≥UÃ}!<7Ÿ]≈…›«z∂ÒØØNˆÖñÕØ{	W¬lBπŸ€?öÔ‹f¢f—ºÎµ¥úÙ´æµ∫1Ws∑Ø∆ú»∂~ãR.¸nºg≈~Ê˛ÕÙ(\'∂èt˝p›¥¸b˚Ë@Û‘ﬁ7ö¡W~æ´rhñ‹MâﬁB»oîk∫âB‚7©D¶hA‹˜TºxìJÏË&\nhù*ÎI?˘⁄ˇã¸∑;¸ÂÚ7‘—*\0'),(3,'3_0_222419149',1705509499,'xúÕòmo€6«øJ°0I§e[ ´µÛ–mP‘∞w-1QJD û¯ªÔ®ßêŸ*]≠ÏMlù»ªˇwGö!	N%¸ÒÁﬁ\rIÇ‰Ò\"ìu‚’B®œ¨§⁄àíGñ˙ÍGW,˜n¥≠}j∫ßû‚ƒS¯HÎT<çÉ¡xíÜ5¨REsV¶8<Àdëx_+ΩŒoIéÈ¯\n\\z›ËÇÊå¶e‚qrç\Z<Ç·ÅÂ9-¯ÇêµR¨√Æèñπi\rÓiz®ESﬁCFˇT0v\'∂Õæ\"*\rπ¯ÆŒ‘\0ªm& {vnnıt£dgIYôÒ&◊Ûo{=òL%STkoZà¶T©!yàc*¯h«-3V¶Ö»«µ –iO≤ÔÄùv‚§%¨\"ÂÙH˘∏∫ãé¯œ$áVíÒœN2ÇâÔ)S59»å¨·Dâ˙]¯ø»:‡≥ß=ò9ÌóV≠Zú∂M°€/á~«›Ω™±\Zo7wõw€OªçéÇ¥}†uÖ1*®ü\r|œ°r§:söÉ\0 °Ú?¥B45QLî˛Ó\\âmV≥J˘ÉÄÄm˛ÿ%Ì‹¥õúNöç@‘ã˛0(`=ﬁSeπ£„∏ã>aéõ!#Ù∫Öoa+O¨D\0”KOµ0©VmÔâ+’∂Ùs\"k%PBJk$3û˚ÒKs¸ÿ)‡\nRBß‘√‹óﬁı~V/˙Ÿ7åÁÜüïÒ.5^ˆé÷Og4#ˆè§ˆOßìˇ†\nÓWÕû≥Ãáéÿóg	Æ¸{⁄∂œÀ⁄Ç¯∞}îJ˛¢Á…1˚mg,„8é*j; ∂¢„ü]R’TŒ»a`Üı~1!ˆ´JÏ#Âm˚Aè€pZ¿á,¥¿Çi)˘∞Ø§ñÙ˜¶Ã‹L»kZ¢^≈d´‰øo8ß\n(ƒ∂ZÒ’…~cG7’‚Í≈ıåÍ#%–◊n∞»Æ^›XK+º:÷ß6T7◊jnπ>39aãX€Xã´cmD≠≤fZ<w&wdœ›ôD¡‹ô‹Å7ñΩŸá—,XÌÖ¿Õ6˚¶ØŸ*Ê>éûõÏÆ‚Ç‰Ó„=€¯◊W\'˚BÀÊ◊ΩÑ+a6°‹ÏÌÕÉ˜n≥Q≥øhﬁøuÉ⁄ZŒ\r˙UﬂZ›ò´π€WcNd[øE)~7ﬁ≥É‚\n?sˇ\rèfzîì€«∫˛8ÉnZ~±}t†yjÔÕ‡+?ﬂU94KÓ¶Do!‰7 5›D!ÒõT\"S¥ Ó{*^ºI%vt¥Nïı§ü|ÌˇE˛€˛r˘™y)˛');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pagesection_tags`
--

LOCK TABLES `cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cache_pagesection_tags` DISABLE KEYS */;
INSERT INTO `cache_pagesection_tags` VALUES (1,'4_0_222419149','pageId_4'),(2,'4_0_222419149','mpvarHash_222419149'),(5,'3_0_222419149','pageId_3'),(6,'3_0_222419149','mpvarHash_222419149');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES (9,'1__0_0_1',1705509530,'xúMêMr√ FÔ¬	Çù˛)gh6…û!Ü∏ö`‰1¬m&ìªW∂kó•“C˙,hx Ï™\n	jP=:uòÿ\\Â•“R}Ä‚zÙÉ°ˇΩ[·w*®^ibÀ~≈/BëÉ‘	ˆ†>-Fµx£Õˆ$Jµtwﬁ°-–+®`Ôîy5\n¯BÁ|\\Å∏‰ÀÅªÌ€7P>∫íºÉ∫z”î˚¬Æ≈ÊXzœt óﬁ∂>G7æ˜≥cø8ŒßÜ‚[u8N„“√i!c≤õÊèy`2	ŸD\\⁄Qélä»uU@Ca„ıºs†£È»m∑Tí”≈67Y€,·ò(Wò‡G∂Îûœ_Ÿö˝'),(10,'1__0_0_0',1705509536,'xúMêMr√ FÔ¬	Çù˛)gh6…û!Ü∏ö`‰1¬m&ìªW∂kó•“C˙,hx Ï™\n	jP=:uòÿ\\Â•“R}Ä‚zÙÉ°ˇΩ[·w*®^ibÀ~≈/BëÉ‘	ˆ†>-Fµx£Õˆ$Jµtwﬁ°-–+®`Ôîy5\n¯BÁ|\\Å∏‰ÀÅªÌ€7P>∫íºÉ∫z”î˚¬Æ≈ÊXzœt óﬁ∂>G7æ˜≥cø8ŒßÜ‚[u8N„“√i!c≤õÊèy`2	ŸD\\⁄Qélä»uU@Ca„ıºs†£È»m∑Tí”≈67Y€,·ò(Wò‡G∂Îûœ_Ÿö˝'),(11,'3__0_0_0',1705509536,'xúÕëÀN√0E˘Ú(/g«ûn⁄ΩÂ∆n’ÒDÒ8P°˛;ì§âåÿ Å+{éf∆◊˜jY»wêy•e¡∑ K):0¢\ZŸT≈π*πzîÇ ¡ˆ\ngñ1À≥æÜÑÊ\r§….¯ñ)ê„:»Çü,PØõPkWGß	˚õ\\Ãy=®µó[≈<ﬁZ:AwR8}∆HÀ^¿Î¿ªXCOÌ™„^\nÎMJ§8Z’Ùªq-Àœ¶ì◊Ÿ7‚Ê=Ó‚°”ç\r…É\':wvqãóÏw5˙#4¢⁄é„‹Ca&\n|Ì¢Á∑Wá ®\0d{DJ‘∂=©.1≥H†B∑ÚrÌ∞ØZ4Îg\n6Í†ÎÀV≥; Û/î≥Éu´yó±˘kÏŸßÿÛﬂé}#≈≥ˇ/Rænˇ~»õüáúˇq»óB/:ë'),(12,'4__0_0_0',1705509538,'xúÕëœN√0∆_Â	⁄n¸Àn‹ŸeªGY„ki\\5Œ`B{w‹u≠Ç∏ Åßƒ?ŸŒóÔ≥∫“Ô®Àï’ï‹¢^h’°S´Å]™4VK©µ‚≈zC#+Ñï≈_cFÀâF∂æäÏ•é∫í¡\'@ÓmkÎÎ‰-SS©Ò°`èfÓïV5é∑‡–fËN+oOîxzB¿:a≤K4ÙÃÿŒ:ÓµÇ‡rÚ†’L”SÍÜµ\"ø∏ú≤ﬁXö∑¥IªŒ6≥%é|Í`rKñl75Ö=6jµ∆•á„HÜ⁄\'7ÃØØa4z\"Œ‘∂îõ.3≥ †!?Û≈E¥ßÉi…Õü©ƒ®ù≠\"€åÓò ø0é‡gÛŒCÛ◊ÿãO±óø˚R´gã·_§|›˛˝êó?π¸„êœI9:ì');
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
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES (14,'1__0_0_1','pageId_1'),(15,'1__0_0_0','pageId_1'),(16,'3__0_0_0','pageId_3'),(17,'3__0_0_0','pageId_1'),(18,'4__0_0_0','pageId_4'),(19,'4__0_0_0','pageId_1');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` tinytext DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usergroup` text DEFAULT NULL,
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` tinytext DEFAULT NULL,
  `TSconfig` text DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `felogin_redirectPid` tinytext DEFAULT NULL,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_config`
--

DROP TABLE IF EXISTS `index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_config` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `set_id` int(11) NOT NULL DEFAULT 0,
  `session_data` mediumtext DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(30) NOT NULL DEFAULT '',
  `depth` int(10) unsigned NOT NULL DEFAULT 0,
  `table2index` varchar(255) NOT NULL DEFAULT '',
  `alternative_source_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `get_params` varchar(255) NOT NULL DEFAULT '',
  `fieldlist` varchar(255) NOT NULL DEFAULT '',
  `externalUrl` varchar(255) NOT NULL DEFAULT '',
  `indexcfgs` text DEFAULT NULL,
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `extensions` varchar(255) NOT NULL DEFAULT '',
  `timer_next_indexing` int(11) NOT NULL DEFAULT 0,
  `timer_frequency` int(11) NOT NULL DEFAULT 0,
  `timer_offset` int(11) NOT NULL DEFAULT 0,
  `url_deny` text DEFAULT NULL,
  `recordsbatch` int(11) NOT NULL DEFAULT 0,
  `records_indexonchange` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_config`
--

LOCK TABLES `index_config` WRITE;
/*!40000 ALTER TABLE `index_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_debug`
--

DROP TABLE IF EXISTS `index_debug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_debug` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `debuginfo` mediumtext DEFAULT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_debug`
--

LOCK TABLES `index_debug` WRITE;
/*!40000 ALTER TABLE `index_debug` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_debug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_fulltext`
--

DROP TABLE IF EXISTS `index_fulltext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_fulltext` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `fulltextdata` mediumtext DEFAULT NULL,
  `metaphonedata` mediumtext NOT NULL,
  PRIMARY KEY (`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_fulltext`
--

LOCK TABLES `index_fulltext` WRITE;
/*!40000 ALTER TABLE `index_fulltext` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_fulltext` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_grlist`
--

DROP TABLE IF EXISTS `index_grlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_grlist` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_x` int(11) NOT NULL DEFAULT 0,
  `hash_gr_list` int(11) NOT NULL DEFAULT 0,
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`hash_gr_list`),
  KEY `phash_grouping` (`phash_x`,`hash_gr_list`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_grlist`
--

LOCK TABLES `index_grlist` WRITE;
/*!40000 ALTER TABLE `index_grlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_grlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_phash`
--

DROP TABLE IF EXISTS `index_phash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_phash` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_grouping` int(11) NOT NULL DEFAULT 0,
  `static_page_arguments` blob DEFAULT NULL,
  `data_filename` varchar(1024) NOT NULL DEFAULT '',
  `data_page_id` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_type` int(10) unsigned NOT NULL DEFAULT 0,
  `data_page_mp` varchar(255) NOT NULL DEFAULT '',
  `gr_list` varchar(255) NOT NULL DEFAULT '',
  `item_type` varchar(5) NOT NULL DEFAULT '',
  `item_title` varchar(255) NOT NULL DEFAULT '',
  `item_description` varchar(255) NOT NULL DEFAULT '',
  `item_mtime` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `item_size` int(11) NOT NULL DEFAULT 0,
  `contentHash` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `parsetime` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `item_crdate` int(11) NOT NULL DEFAULT 0,
  `externalUrl` smallint(6) NOT NULL DEFAULT 0,
  `recordUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexUid` int(11) NOT NULL DEFAULT 0,
  `freeIndexSetId` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`),
  KEY `phash_grouping` (`phash_grouping`),
  KEY `freeIndexUid` (`freeIndexUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_phash`
--

LOCK TABLES `index_phash` WRITE;
/*!40000 ALTER TABLE `index_phash` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_phash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_rel`
--

DROP TABLE IF EXISTS `index_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_rel` (
  `phash` int(11) NOT NULL DEFAULT 0,
  `wid` int(11) NOT NULL DEFAULT 0,
  `count` smallint(5) unsigned NOT NULL DEFAULT 0,
  `first` int(10) unsigned NOT NULL DEFAULT 0,
  `freq` smallint(5) unsigned NOT NULL DEFAULT 0,
  `flags` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`phash`,`wid`),
  KEY `wid` (`wid`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_rel`
--

LOCK TABLES `index_rel` WRITE;
/*!40000 ALTER TABLE `index_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_section`
--

DROP TABLE IF EXISTS `index_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_section` (
  `uniqid` int(11) NOT NULL AUTO_INCREMENT,
  `phash` int(11) NOT NULL DEFAULT 0,
  `phash_t3` int(11) NOT NULL DEFAULT 0,
  `rl0` int(10) unsigned NOT NULL DEFAULT 0,
  `rl1` int(10) unsigned NOT NULL DEFAULT 0,
  `rl2` int(10) unsigned NOT NULL DEFAULT 0,
  `page_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uniqid`),
  KEY `joinkey` (`phash`,`rl0`),
  KEY `page_id` (`page_id`),
  KEY `rl0` (`rl0`,`rl1`,`phash`),
  KEY `rl0_2` (`rl0`,`phash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_section`
--

LOCK TABLES `index_section` WRITE;
/*!40000 ALTER TABLE `index_section` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_stat_word`
--

DROP TABLE IF EXISTS `index_stat_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_stat_word` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) NOT NULL DEFAULT '',
  `index_stat_search_id` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `pageid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tstamp` (`tstamp`,`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_stat_word`
--

LOCK TABLES `index_stat_word` WRITE;
/*!40000 ALTER TABLE `index_stat_word` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_stat_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `index_words`
--

DROP TABLE IF EXISTS `index_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `index_words` (
  `wid` int(11) NOT NULL DEFAULT 0,
  `baseword` varchar(60) NOT NULL DEFAULT '',
  `metaphone` varchar(60) NOT NULL DEFAULT '',
  `is_stopword` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`wid`),
  KEY `baseword` (`baseword`),
  KEY `metaphone` (`metaphone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `index_words`
--

LOCK TABLES `index_words` WRITE;
/*!40000 ALTER TABLE `index_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `index_words` ENABLE KEYS */;
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
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(2048) DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text DEFAULT NULL,
  `module` varchar(255) NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` text DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` text DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  `canonical_link` varchar(2048) NOT NULL DEFAULT '',
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1702917530,1702806686,1,0,0,0,0,'',256,NULL,0,0,0,0,NULL,0,'{\"doktype\":\"\",\"title\":\"\",\"slug\":\"\",\"nav_title\":\"\",\"subtitle\":\"\",\"shortcut_mode\":\"\",\"shortcut\":\"\",\"abstract\":\"\",\"author\":\"\",\"author_email\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"newUntil\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"target\":\"\",\"is_siteroot\":\"\",\"no_search\":\"\",\"php_tree_stop\":\"\",\"media\":\"\",\"tsconfig_includes\":\"\",\"TSconfig\":\"\",\"l18n_cfg\":\"\",\"hidden\":\"\",\"nav_hide\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"fe_login_mode\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,1,0,31,27,0,'Main','/',4,NULL,1,0,'',3,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1702807650,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,''),(2,1,1702821871,1702806711,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Contributions','/contract',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,''),(3,1,1702894851,1702810328,1,0,0,0,0,'0',128,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Beitragscalculator 1','/calculator-1',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1702894851,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,''),(4,1,1702894858,1702821587,1,0,0,0,0,'0',192,NULL,0,0,0,0,NULL,0,'{\"title\":\"\"}',0,0,0,0,1,0,31,27,0,'Beitragscalculator 2','/calculator-2',1,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,1702908666,NULL,'',0,'','','',0,0,0,0,0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'summary','',0.5,'');
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
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext NOT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(255) NOT NULL DEFAULT '',
  `fieldname` varchar(255) NOT NULL DEFAULT '',
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
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
  `type` varchar(10) NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
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
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
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
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
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
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) NOT NULL DEFAULT '',
  `title` tinytext DEFAULT NULL,
  `description` text DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `crop` varchar(4000) NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
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
  `description` text DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `driver` tinytext DEFAULT NULL,
  `configuration` text DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1702806754,1702806754,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
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
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `usertype` varchar(2) NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `history_data` mediumtext DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
INSERT INTO `sys_history` VALUES (1,1702911221,1,'BE',1,0,8,'tx_calculator_domain_model_contribution','{\"uid\":8,\"pid\":2,\"tstamp\":1702911221,\"crdate\":1702911221,\"cruser_id\":1,\"deleted\":0,\"hidden\":0,\"starttime\":0,\"endtime\":0,\"contributions\":0,\"name\":\"Ab 1 Jahre\",\"monity\":30,\"age\":1}',0,'0400$a3a1c6792b57c2e75868eddac82e42b8:0c0a763b7de1bf142fa7b83d08009248'),(2,1702917517,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"doktype\":1},\"newRecord\":{\"doktype\":\"4\"}}',0,'0400$1d6c13ad5d8c3a21a7eefb98d0df1d1c:e175f7045d7ccbfb26ffcf279422c2e5'),(3,1702917530,2,'BE',1,0,1,'pages','{\"oldRecord\":{\"shortcut\":0,\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"seo_title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"no_index\\\":\\\"\\\",\\\"no_follow\\\":\\\"\\\",\\\"canonical_link\\\":\\\"\\\",\\\"sitemap_changefreq\\\":\\\"\\\",\\\"sitemap_priority\\\":\\\"\\\",\\\"og_title\\\":\\\"\\\",\\\"og_description\\\":\\\"\\\",\\\"og_image\\\":\\\"\\\",\\\"twitter_title\\\":\\\"\\\",\\\"twitter_description\\\":\\\"\\\",\\\"twitter_image\\\":\\\"\\\",\\\"twitter_card\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"keywords\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"content_from_pid\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"cache_timeout\\\":\\\"\\\",\\\"cache_tags\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"module\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"fe_login_mode\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"},\"newRecord\":{\"shortcut\":\"3\",\"l10n_diffsource\":\"{\\\"doktype\\\":\\\"\\\",\\\"title\\\":\\\"\\\",\\\"slug\\\":\\\"\\\",\\\"nav_title\\\":\\\"\\\",\\\"subtitle\\\":\\\"\\\",\\\"shortcut_mode\\\":\\\"\\\",\\\"shortcut\\\":\\\"\\\",\\\"abstract\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"author_email\\\":\\\"\\\",\\\"lastUpdated\\\":\\\"\\\",\\\"layout\\\":\\\"\\\",\\\"newUntil\\\":\\\"\\\",\\\"backend_layout\\\":\\\"\\\",\\\"backend_layout_next_level\\\":\\\"\\\",\\\"target\\\":\\\"\\\",\\\"is_siteroot\\\":\\\"\\\",\\\"no_search\\\":\\\"\\\",\\\"php_tree_stop\\\":\\\"\\\",\\\"media\\\":\\\"\\\",\\\"tsconfig_includes\\\":\\\"\\\",\\\"TSconfig\\\":\\\"\\\",\\\"l18n_cfg\\\":\\\"\\\",\\\"hidden\\\":\\\"\\\",\\\"nav_hide\\\":\\\"\\\",\\\"starttime\\\":\\\"\\\",\\\"endtime\\\":\\\"\\\",\\\"extendToSubpages\\\":\\\"\\\",\\\"fe_group\\\":\\\"\\\",\\\"fe_login_mode\\\":\\\"\\\",\\\"editlock\\\":\\\"\\\",\\\"categories\\\":\\\"\\\",\\\"rowDescription\\\":\\\"\\\"}\"}}',0,'0400$53aef4a79735de5c0d9a0a6d076b51cf:e175f7045d7ccbfb26ffcf279422c2e5');
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
  `title` varchar(80) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `language_isocode` varchar(2) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
INSERT INTO `sys_lockedrecords` VALUES (133,1,1702917530,'pages',1,0,'admin',0);
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
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `channel` varchar(20) NOT NULL DEFAULT 'default',
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) NOT NULL DEFAULT '',
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` varchar(10) NOT NULL DEFAULT 'info',
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (1,0,1702911181,1,1,0,'',0,0,'User %s has cleared the cache (cacheCmd=%s)',3,'default',0,'172.25.0.6','a:2:{i:0;s:5:\"admin\";i:1;s:3:\"all\";}',-1,0,'','',0,'','info',NULL,NULL),(2,0,1702911221,1,1,8,'tx_calculator_domain_model_contribution',0,0,'Record \'%s\' (%s) was inserted on page \'%s\' (%s)',1,'content',10,'172.25.0.6','a:4:{i:0;s:10:\"Ab 1 Jahre\";i:1;s:41:\"tx_calculator_domain_model_contribution:8\";i:2;s:13:\"Contributions\";i:3;i:2;}',2,0,'NEW65805ce7eb141815648047','',0,'','info',NULL,NULL),(3,0,1702911221,1,2,2,'tx_calculator_domain_model_contributions',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'172.25.0.6','a:3:{i:0;s:16:\"API Route Demo 2\";i:1;s:42:\"tx_calculator_domain_model_contributions:2\";s:7:\"history\";i:0;}',2,0,'','',0,'','info',NULL,NULL),(4,0,1702917517,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'172.25.0.6','a:3:{i:0;s:4:\"Main\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"2\";}',1,0,'','',0,'','info',NULL,NULL),(5,0,1702917530,1,2,1,'pages',0,0,'Record \'%s\' (%s) was updated. (Online).',1,'content',10,'172.25.0.6','a:3:{i:0;s:4:\"Main\";i:1;s:7:\"pages:1\";s:7:\"history\";s:1:\"3\";}',1,0,'','',0,'','info',NULL,NULL);
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
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
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
  `source_host` varchar(255) NOT NULL DEFAULT '',
  `source_path` varchar(2048) NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `protected` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) NOT NULL DEFAULT '',
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) NOT NULL DEFAULT '',
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES ('0c4f72a5816dc9fa9891a555732ae557','sys_template',1,'config','','url','2',-1,0,'_STRING',0,'https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css'),('1ad90a9d2f7984cc83ce16d56b2af963','tx_calculator_domain_model_contributions',1,'collection','','','',4,0,'tx_calculator_domain_model_contribution',7,''),('5291a4a2cf36dd7dc0f8a3a2807ba5f3','tt_content',1,'pages','','','',0,0,'pages',2,''),('544078cd0c16961bded348b51e0aaa2c','tx_calculator_domain_model_contributions',1,'collection','','','',2,0,'tx_calculator_domain_model_contribution',3,''),('90400c1c17df94fcec92a65cc67b3459','tx_calculator_domain_model_contributions',2,'collection','','','',0,0,'tx_calculator_domain_model_contribution',4,''),('9887d2e79ce6146f7fdbf6ae24518ddf','tx_calculator_domain_model_contributions',1,'collection','','','',3,0,'tx_calculator_domain_model_contribution',6,''),('9c88a573dd9b95a23d84aa50fe79e38c','tx_calculator_domain_model_contributions',1,'collection','','','',0,0,'tx_calculator_domain_model_contribution',1,''),('d05e917935e43e0aefc8a600e9e68e9e','tx_calculator_domain_model_contributions',1,'collection','','','',1,0,'tx_calculator_domain_model_contribution',2,''),('d7fedccf3ed93faa2b9cc28b7264c163','tx_calculator_domain_model_contributions',2,'collection','','','',1,0,'tx_calculator_domain_model_contribution',5,''),('ddc57aaa5ee971dc7934ce8a285fda01','tx_calculator_domain_model_contributions',2,'collection','','','',2,0,'tx_calculator_domain_model_contribution',8,''),('ecc3a4d44701bc4b25624dfbc3e5c41b','pages',1,'shortcut','','','',0,0,'pages',3,'');
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
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FeeditExtractionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\TaskcenterExtractionUpdate','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysActionExtractionUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\ShortcutRecordsMigration','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\CollectionsExtractionUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserLanguageMigration','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SysLogChannel','i:1;'),(9,'installUpdate','TYPO3\\CMS\\FrontendLogin\\Updates\\MigrateFeloginPlugins','i:1;'),(10,'installUpdateRows','rowUpdatersDone','a:4:{i:0;s:69:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceVersionRecordsMigration\";i:1;s:66:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L18nDiffsourceToJsonMigration\";i:2;s:77:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceMovePlaceholderRemovalMigration\";i:3;s:76:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\WorkspaceNewPlaceholderRemovalMigration\";}'),(12,'core','formProtectionSessionToken:1','s:64:\"81f4141e0f8c7aa9a736dccd5a8412ec4568493cb607f78a74f4b048f2791920\";'),(13,'languagePacks','de','i:1702806668;');
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
  `description` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text DEFAULT NULL,
  `constants` text DEFAULT NULL,
  `config` text DEFAULT NULL,
  `basedOn` tinytext DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1702895193,1702806738,1,0,0,0,0,256,NULL,0,0,0,0,0,'NEUE SITE',1,3,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:calculator/Configuration/TypoScript,EXT:fluid_styled_content/Configuration/TypoScript/Styling/',NULL,'config.contentObjectExceptionHandler = 0\r\n\r\nmenu.calculators = HMENU\r\nmenu.calculators {\r\n  stdWrap.wrap (\r\n    <div class=\"row\">\r\n           <nav class=\"navbar navbar-expand-lg navbar-light bg-light\"> \r\n              <ul class=\"navbar-nav mr-auto\">  |</ul>\r\n           </nav>\r\n    </div>\r\n  )\r\n  special = directory\r\n  special.value = 1  \r\n  1 = TMENU\r\n  1 {\r\n    NO = 1\r\n    NO.linkWrap = <li class=\"nav-item\">|</li>  \r\n    NO.ATagParams = class=\"nav-link\"\r\n    \r\n    CUR < .NO\r\n    CUR.ATagParams = class=\"nav-link active\"  \r\n  }\r\n  \r\n  \r\n}\r\n\r\n# Default PAGE object:\r\npage = PAGE\r\npage {\r\n     headerData.20 = TEXT\r\n     headerData.20.value = https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css\r\n     headerData.20.wrap (\r\n           <link rel=\"stylesheet\" href=\"|\" integrity=\"sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N\" crossorigin=\"anonymous\">\r\n     )\r\n  \r\n    stdWrap {\r\n       outerWrap (\r\n	        <div class=\"container\">|</div>\r\n       ) \r\n      \r\n    }\r\n    5 = COA\r\n    5 {\r\n      10 < menu.calculators \r\n      \r\n    }\r\n    10 = COA\r\n    10.wrap = <div class=\"row\">|</div>\r\n    10.10 < styles.content.get\r\n    10.10.stdWrap.wrap = <div class=\"container\">|</div>\r\n    10.10.stdWrap.ifEmpty {\r\n      cObject = TEXT\r\n      cObject.value = Kein Inhalt auf dieser Seite platziert. \r\n      cObject.wrap = <div class=\"alert alert-secondary\" role=\"alert\">|</div>\r\n    }\r\n}\r\n\r\n\r\n\r\n\r\n\r\n\r\n','',0,0,0);
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
  `rowDescription` text DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `CType` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_position` varchar(255) NOT NULL DEFAULT '',
  `bodytext` mediumtext DEFAULT NULL,
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
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `records` text DEFAULT NULL,
  `pages` text DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `header_link` varchar(1024) NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext DEFAULT NULL,
  `accessibility_title` varchar(30) NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) NOT NULL DEFAULT '',
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_caption` varchar(255) DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `selected_categories` longtext DEFAULT NULL,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES (1,'',3,1702839682,1702821853,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','',NULL,0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,'2',0,'','',0,'0','calculator_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.selectedContribution\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,0),(2,'',4,1702908666,1702908647,1,0,0,0,0,'',256,0,0,0,0,NULL,0,'{\"CType\":\"\",\"colPos\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_position\":\"\",\"date\":\"\",\"header_link\":\"\",\"subheader\":\"\",\"list_type\":\"\",\"pi_flexform\":\"\",\"pages\":\"\",\"recursive\":\"\",\"layout\":\"\",\"frame_class\":\"\",\"space_before_class\":\"\",\"space_after_class\":\"\",\"sectionIndex\":\"\",\"linkToTop\":\"\",\"sys_language_uid\":\"\",\"hidden\":\"\",\"starttime\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"editlock\":\"\",\"categories\":\"\",\"rowDescription\":\"\"}',0,0,0,0,'list','','','',0,0,0,0,0,0,0,2,0,0,0,'default',0,'','',NULL,NULL,0,'','',0,'0','calculator_pi1',1,0,NULL,0,'','','',0,0,0,'<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"settings.selectedContribution\">\n                    <value index=\"vDEF\">2</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>','',0,'','','',NULL,124,0,0,0,0,NULL,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_calculator_domain_model_contribution`
--

DROP TABLE IF EXISTS `tx_calculator_domain_model_contribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_calculator_domain_model_contribution` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `contributions` int(10) unsigned NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `monity` int(11) NOT NULL DEFAULT 0,
  `age` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_calculator_domain_model_contribution`
--

LOCK TABLES `tx_calculator_domain_model_contribution` WRITE;
/*!40000 ALTER TABLE `tx_calculator_domain_model_contribution` DISABLE KEYS */;
INSERT INTO `tx_calculator_domain_model_contribution` VALUES (1,2,1702908094,1702811018,1,0,0,0,0,1,'Ab 10 Jahre',150,10),(2,2,1702908094,1702811036,1,0,0,0,0,1,'Ab 15 Jahre',200,15),(3,2,1702908094,1702822048,1,0,0,0,0,1,'Ab 20 Jahre',260,20),(4,2,1702911221,1702832613,1,0,0,0,0,2,'Ab 12 Jahren',50,12),(5,2,1702911221,1702837182,1,0,0,0,0,2,'Ab 30 Jahre',400,30),(6,2,1702908094,1702896704,1,0,0,0,0,1,'Ab 5 Jahr',30,5),(7,2,1702908094,1702907957,1,0,0,0,0,1,'Ab 1 Jahr',20,0),(8,2,1702911221,1702911221,1,0,0,0,0,2,'Ab 1 Jahre',30,1);
/*!40000 ALTER TABLE `tx_calculator_domain_model_contribution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_calculator_domain_model_contributions`
--

DROP TABLE IF EXISTS `tx_calculator_domain_model_contributions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_calculator_domain_model_contributions` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `collection` int(10) unsigned NOT NULL DEFAULT 0,
  `apiroute` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_calculator_domain_model_contributions`
--

LOCK TABLES `tx_calculator_domain_model_contributions` WRITE;
/*!40000 ALTER TABLE `tx_calculator_domain_model_contributions` DISABLE KEYS */;
INSERT INTO `tx_calculator_domain_model_contributions` VALUES (1,2,1702907957,1702810980,1,0,0,0,0,256,'API Route Demo 1',5,'/api/v1/contributions/'),(2,2,1702911221,1702832613,1,0,0,0,0,128,'API Route Demo 2',3,'/api/v1/contract/');
/*!40000 ALTER TABLE `tx_calculator_domain_model_contributions` ENABLE KEYS */;
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
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `repository` int(11) NOT NULL DEFAULT 1,
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `description` mediumtext DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `update_comment` mediumtext DEFAULT NULL,
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_linkvalidator_link`
--

DROP TABLE IF EXISTS `tx_linkvalidator_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_linkvalidator_link` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `language` int(11) NOT NULL DEFAULT -1,
  `headline` varchar(255) NOT NULL DEFAULT '',
  `field` varchar(255) NOT NULL DEFAULT '',
  `table_name` varchar(255) NOT NULL DEFAULT '',
  `element_type` varchar(255) NOT NULL DEFAULT '',
  `link_title` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `url_response` text DEFAULT NULL,
  `last_check` int(11) NOT NULL DEFAULT 0,
  `link_type` varchar(50) NOT NULL DEFAULT '',
  `needs_recheck` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_linkvalidator_link`
--

LOCK TABLES `tx_linkvalidator_link` WRITE;
/*!40000 ALTER TABLE `tx_linkvalidator_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_linkvalidator_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text DEFAULT NULL,
  `lastexecution_context` varchar(3) NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 16:40:09
