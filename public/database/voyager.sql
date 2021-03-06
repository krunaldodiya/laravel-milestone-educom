# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.16)
# Database: milestone_educom
# Generation Time: 2019-07-03 05:49:25 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table chapters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chapters`;

CREATE TABLE `chapters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_category_id_foreign` (`category_id`),
  CONSTRAINT `chapters_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;

INSERT INTO `chapters` (`id`, `category_id`, `image`, `name`, `description`, `order`, `created_at`, `updated_at`)
VALUES
	(1,2,'chapters/July2019/gUAQ9F6OZPW97VdBUP69.jpg','બહુપદીઓ','3 નોટ્સ, 3 સ્વાધ્યાય, 9 ઉદાહરણો',2,'2019-06-30 06:00:00','2019-07-03 04:39:59'),
	(2,2,'chapters/July2019/Tuy4Pwe3MDmyiB0i8gK8.jpg','વાસ્તવિક સંખ્યાઓ','4 નોટ્સ, 4 સ્વાધ્યાય, 11 ઉદાહરણો',1,'2019-06-30 17:51:00','2019-07-03 04:39:44'),
	(3,2,'chapters/July2019/Ir7w1cqrhcKhSP0CsHPR.jpg','દ્વિચલ સુરેખ સમીકરણયુગ્મ','Coming Soon..',3,'2019-07-02 14:11:00','2019-07-03 04:40:08'),
	(4,2,'chapters/July2019/z4CoMWBzTqoOIxlLKRsl.jpg','દ્વિઘાત સમીકરણ','Coming Soon...',4,'2019-07-02 15:42:00','2019-07-03 04:47:48'),
	(5,2,'chapters/July2019/pVPwuQ7wTEKhPAYeTE0i.jpg','સમાંતર શ્રેણી','Coming Soon...',5,'2019-07-03 04:42:09','2019-07-03 04:42:09'),
	(6,2,'chapters/July2019/IoeCv4ACg342GzCPdoDd.jpg','ત્રિકોણ','Coming Soon...',6,'2019-07-03 04:42:00','2019-07-03 04:42:52'),
	(7,2,'chapters/July2019/uTb9u20xlGjV9pZJDZHN.jpg','પ્રસ્તાવના','Coming Soon...',0,'2019-07-03 04:43:00','2019-07-03 04:45:38'),
	(8,2,'chapters/July2019/Yrj6P3LX8pPIQwoY6tYD.jpg','ગણિતનાં પાયાનું જ્ઞાન','Coming Soon',0,'2019-07-03 04:45:00','2019-07-03 04:47:33'),
	(9,2,'chapters/July2019/p3Ib3oIGIWaENFzlbyxj.jpg','યામ ભૂમિતિ','Coming Soon...',7,'2019-07-03 04:58:05','2019-07-03 04:58:05'),
	(10,2,'chapters/July2019/6btdZVyFLL79WdlcaCdY.jpg','ત્રિકોણમિતિનો પરિચય','Coming Soon...',8,'2019-07-03 04:58:37','2019-07-03 04:58:37'),
	(11,2,'chapters/July2019/OhrJrbICGXVK2fOOtgDF.jpg','ત્રિકોણમિતિના ઉપયોગો','Coming Soon...',9,'2019-07-03 04:59:09','2019-07-03 04:59:09'),
	(12,2,'chapters/July2019/Fhm1jbqK5rzqGEVhpOy3.jpg','વર્તુળ','Coming Soon...',10,'2019-07-03 04:59:34','2019-07-03 04:59:34'),
	(13,2,'chapters/July2019/z0i1uzARfGbBqtljKoGs.jpg','રચના','Coming Soon...',11,'2019-07-03 05:00:00','2019-07-03 05:00:00'),
	(14,2,'chapters/July2019/GnZSXb40fQ48b0ZBMRIs.jpg','વર્તુળ સંબંધિત ક્ષેત્રફળ','Coming Soon...',12,'2019-07-03 05:00:54','2019-07-03 05:00:54'),
	(15,2,'chapters/July2019/gjFGS6yuDDDGBp3Fmb6z.jpg','પૃષ્ઠફળ અને ઘનફળ','Coming Soon...',13,'2019-07-03 05:01:22','2019-07-03 05:01:22'),
	(16,2,'chapters/July2019/CATdY0j0Dj8yYlcYdX9a.jpg','આંકડાશાસ્ત્ર','Coming Soon...',14,'2019-07-03 05:01:56','2019-07-03 05:01:56'),
	(17,2,'chapters/July2019/4UEtZvGySDn3LbPnoBJ3.jpg','સંભાવના','Coming Soon...',15,'2019-07-03 05:02:19','2019-07-03 05:02:19');

/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),
	(2,1,'name','text','Name',0,1,1,1,1,1,'{}',2),
	(3,1,'email','text','Email',0,1,1,1,1,1,'{}',3),
	(4,1,'password','password','Password',0,0,0,1,1,0,'{}',4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',12),
	(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(16,3,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(17,3,'name','text','Name',1,1,1,1,1,1,NULL,2),
	(18,3,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),
	(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),
	(20,3,'display_name','text','Display Name',1,1,1,1,1,1,NULL,5),
	(21,1,'role_id','text','Role',0,0,0,0,0,0,'{}',9),
	(22,4,'id','number','ID',1,0,0,0,0,0,'{}',1),
	(24,4,'order','text','Order',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',3),
	(25,4,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',4),
	(27,4,'created_at','timestamp','Created At',0,0,1,0,0,0,'{}',6),
	(28,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),
	(29,5,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(30,5,'author_id','text','Author',1,0,1,1,0,1,NULL,2),
	(31,5,'category_id','text','Category',1,0,1,1,1,0,NULL,3),
	(32,5,'title','text','Title',1,1,1,1,1,1,NULL,4),
	(33,5,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,5),
	(34,5,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,6),
	(35,5,'image','image','Post Image',0,1,1,1,1,1,'{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}',7),
	(36,5,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}',8),
	(37,5,'meta_description','text_area','Meta Description',1,0,1,1,1,1,NULL,9),
	(38,5,'meta_keywords','text_area','Meta Keywords',1,0,1,1,1,1,NULL,10),
	(39,5,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}',11),
	(40,5,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,12),
	(41,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,13),
	(42,5,'seo_title','text','SEO Title',0,1,1,1,1,1,NULL,14),
	(43,5,'featured','checkbox','Featured',1,1,1,1,1,1,NULL,15),
	(44,6,'id','number','ID',1,0,0,0,0,0,NULL,1),
	(45,6,'author_id','text','Author',1,0,0,0,0,0,NULL,2),
	(46,6,'title','text','Title',1,1,1,1,1,1,NULL,3),
	(47,6,'excerpt','text_area','Excerpt',1,0,1,1,1,1,NULL,4),
	(48,6,'body','rich_text_box','Body',1,0,1,1,1,1,NULL,5),
	(49,6,'slug','text','Slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}',6),
	(50,6,'meta_description','text','Meta Description',1,0,1,1,1,1,NULL,7),
	(51,6,'meta_keywords','text','Meta Keywords',1,0,1,1,1,1,NULL,8),
	(52,6,'status','select_dropdown','Status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),
	(53,6,'created_at','timestamp','Created At',1,1,1,0,0,0,NULL,10),
	(54,6,'updated_at','timestamp','Updated At',1,0,0,0,0,0,NULL,11),
	(55,6,'image','image','Page Image',0,1,1,1,1,1,NULL,12),
	(61,8,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(62,8,'category_id','text','Category Id',1,1,1,1,1,1,'{}',2),
	(63,8,'image','image','Image',0,1,1,1,1,1,'{}',3),
	(64,8,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',4),
	(65,8,'description','text_area','Description',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),
	(66,8,'order','text','Order',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',6),
	(67,8,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),
	(68,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
	(69,9,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(71,9,'topic_id','text','Topic Id',1,1,1,1,1,1,'{}',3),
	(72,9,'thumbnail','image','Thumbnail',0,1,1,1,1,1,'{}',4),
	(73,9,'title','text','Title',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),
	(74,9,'description','text_area','Description',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',6),
	(75,9,'url','text','Url',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',7),
	(76,9,'order','text','Order',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',8),
	(77,9,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',9),
	(78,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',10),
	(79,4,'image','image','Image',0,1,1,1,1,1,'{}',4),
	(80,4,'category_hasone_topic_relationship','relationship','topics',0,1,1,0,0,0,'{\"model\":\"App\\\\Topic\",\"table\":\"topics\",\"type\":\"hasOne\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',8),
	(83,8,'topic_belongsto_category_relationship','relationship','category',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),
	(84,8,'topic_hasmany_video_relationship','relationship','videos',0,1,1,0,0,0,'{\"model\":\"App\\\\Video\",\"table\":\"videos\",\"type\":\"hasMany\",\"column\":\"topic_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',10),
	(86,1,'mobile','text','Mobile',0,1,1,1,1,1,'{}',4),
	(88,1,'email_verified_at','timestamp','Email Verified At',0,1,1,0,0,1,'{}',7),
	(89,1,'dob','text','Dob',1,1,1,1,1,1,'{}',9),
	(90,1,'gender','select_dropdown','Gender',1,1,1,1,1,1,'{\"default\":\"Male\",\"options\":{\"Male\":\"Male\",\"Female\":\"Female\"}}',10),
	(92,1,'education','text','Education',0,1,1,1,1,1,'{}',13),
	(93,1,'account_status','select_dropdown','Account Status',1,1,1,1,1,1,'{\"default\":\"Pending\",\"options\":{\"Pending\":\"Pending\",\"Approved\":\"Approved\",\"Rejected\":\"Rejected\"}}',14),
	(94,1,'status','checkbox','Status',1,1,1,1,1,1,'{\"on\":\"Enabled\",\"off\":\"Disabled\",\"checked\":\"true\"}',15),
	(96,9,'video_belongsto_topic_relationship','relationship','topic',0,1,1,1,1,1,'{\"model\":\"App\\\\Topic\",\"table\":\"topics\",\"type\":\"belongsTo\",\"column\":\"topic_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',12),
	(97,1,'imei','text','Imei',0,1,1,0,0,0,'{}',5),
	(98,10,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(99,10,'category_id','text','Category Id',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',2),
	(100,10,'image','image','Image',0,1,1,1,1,1,'{}',3),
	(101,10,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',4),
	(102,10,'description','text','Description',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',5),
	(103,10,'order','text','Order',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required\"}}',6),
	(104,10,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',7),
	(105,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),
	(107,8,'topic_belongsto_chapter_relationship','relationship','chapters',0,1,1,1,1,1,'{\"model\":\"App\\\\Chapter\",\"table\":\"chapters\",\"type\":\"belongsTo\",\"column\":\"chapter_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',11),
	(108,8,'chapter_id','text','Chapter Id',1,1,1,1,1,1,'{}',3),
	(109,1,'school','text','School',1,1,1,1,1,1,'{}',12),
	(110,9,'video_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',13),
	(111,9,'video_belongsto_chapter_relationship','relationship','chapters',0,1,1,1,1,1,'{\"model\":\"App\\\\Chapter\",\"table\":\"chapters\",\"type\":\"belongsTo\",\"column\":\"chapter_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',14),
	(112,9,'category_id','text','Category Id',1,1,1,1,1,1,'{}',2),
	(113,9,'chapter_id','text','Chapter Id',1,1,1,1,1,1,'{}',3),
	(114,10,'chapter_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),
	(115,11,'id','text','Id',1,0,0,0,0,0,'{}',1),
	(116,11,'category_id','text','Category Id',1,1,1,1,1,1,'{}',2),
	(117,11,'user_id','text','User Id',1,1,1,1,1,1,'{}',3),
	(118,11,'expires_at','timestamp','Expires At',1,1,1,1,1,1,'{}',4),
	(119,11,'created_at','timestamp','Created At',0,1,1,1,0,1,'{}',5),
	(120,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),
	(121,11,'subscription_belongsto_category_relationship','relationship','categories',0,1,1,1,1,1,'{\"model\":\"App\\\\Category\",\"table\":\"categories\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',7),
	(122,11,'subscription_belongsto_user_relationship','relationship','users',0,1,1,1,1,1,'{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"mobile\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}',8);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','App\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2019-04-25 03:27:51','2019-06-28 05:14:15'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(4,'categories','categories','Category','Categories','voyager-categories','App\\Category',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2019-04-25 03:27:55','2019-06-30 06:19:51'),
	(5,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','TCG\\Voyager\\Policies\\PostPolicy','','',1,0,NULL,'2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(6,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page',NULL,'','',1,0,NULL,'2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(8,'topics','topics','Topic','Topics','voyager-categories','App\\Topic',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-04-25 04:04:50','2019-06-30 06:15:37'),
	(9,'videos','videos','Video','Videos','voyager-categories','App\\Video',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-04-25 04:05:21','2019-06-30 06:03:44'),
	(10,'chapters','chapters','Chapter','Chapters',NULL,'App\\Chapter',NULL,NULL,NULL,1,1,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-27 06:35:01','2019-06-30 05:59:00'),
	(11,'subscriptions','subscriptions','Subscription','Subscriptions',NULL,'App\\Subscription',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2019-06-30 03:35:43','2019-07-03 03:15:13');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2019-04-25 03:27:51','2019-04-25 03:27:51','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,4,'2019-04-25 03:27:51','2019-04-25 03:59:11','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2019-04-25 03:27:51','2019-04-25 03:27:51','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2019-04-25 03:27:51','2019-04-25 03:27:51','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,10,'2019-04-25 03:27:51','2019-06-30 03:50:56',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2019-04-25 03:27:51','2019-04-25 03:59:12','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,2,'2019-04-25 03:27:51','2019-04-25 03:59:12','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,3,'2019-04-25 03:27:51','2019-04-25 03:59:12','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,4,'2019-04-25 03:27:51','2019-04-25 03:59:12','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,11,'2019-04-25 03:27:51','2019-06-30 03:50:56','voyager.settings.index',NULL),
	(11,1,'Category','','_self','voyager-categories','#000000',NULL,5,'2019-04-25 03:27:55','2019-06-30 06:20:47','voyager.categories.index','null'),
	(14,1,'Hooks','','_self','voyager-hook',NULL,5,5,'2019-04-25 03:27:56','2019-04-25 03:59:12','voyager.hooks',NULL),
	(17,1,'Topic','','_self','voyager-categories','#000000',NULL,7,'2019-04-25 04:04:51','2019-06-30 06:21:07','voyager.topics.index','null'),
	(18,1,'Video','','_self','voyager-categories','#000000',NULL,8,'2019-04-25 04:05:21','2019-06-30 06:21:15','voyager.videos.index','null'),
	(19,1,'Chapter','','_self','voyager-categories','#000000',NULL,6,'2019-06-27 06:32:44','2019-06-30 06:20:56','voyager.chapters.index','null'),
	(21,1,'No Subscription','export/users/1','_self','voyager-categories','#000000',23,1,'2019-06-28 04:22:55','2019-06-30 06:44:34',NULL,''),
	(22,1,'Subscriptions','','_self','voyager-categories','#000000',NULL,9,'2019-06-30 03:35:43','2019-06-30 03:51:59','voyager.subscriptions.index','null'),
	(23,1,'Export Users','','_self','voyager-people','#000000',NULL,12,'2019-06-30 06:39:42','2019-06-30 06:42:57',NULL,''),
	(24,1,'Active Subscription','export/users/2','_self','voyager-categories','#000000',23,2,'2019-06-30 06:42:18','2019-06-30 06:44:21',NULL,''),
	(25,1,'Expired Subscription','export/users/3','_self','voyager-categories','#000000',23,3,'2019-06-30 06:42:33','2019-06-30 06:44:06',NULL,'');

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2019-04-25 03:27:51','2019-04-25 03:27:51');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,'About','this is about page','<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','pages/page1.jpg','about','about page','about','ACTIVE','2019-04-25 03:27:55','2019-05-06 02:50:31');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(27,1),
	(28,1),
	(29,1),
	(30,1),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(36,1),
	(37,1),
	(38,1),
	(39,1),
	(40,1),
	(41,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1),
	(56,1),
	(57,1),
	(58,1),
	(59,1),
	(60,1),
	(61,1),
	(62,1),
	(63,1),
	(64,1),
	(65,1),
	(66,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(2,'browse_bread',NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(3,'browse_database',NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(4,'browse_media',NULL,'2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(5,'browse_compass',NULL,'2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(6,'browse_menus','menus','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(7,'read_menus','menus','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(8,'edit_menus','menus','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(9,'add_menus','menus','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(10,'delete_menus','menus','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(11,'browse_roles','roles','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(12,'read_roles','roles','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(13,'edit_roles','roles','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(14,'add_roles','roles','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(15,'delete_roles','roles','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(16,'browse_users','users','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(17,'read_users','users','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(18,'edit_users','users','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(19,'add_users','users','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(20,'delete_users','users','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(21,'browse_settings','settings','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(22,'read_settings','settings','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(23,'edit_settings','settings','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(24,'add_settings','settings','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(25,'delete_settings','settings','2019-04-25 03:27:52','2019-04-25 03:27:52'),
	(26,'browse_categories','categories','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(27,'read_categories','categories','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(28,'edit_categories','categories','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(29,'add_categories','categories','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(30,'delete_categories','categories','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(31,'browse_posts','posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(32,'read_posts','posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(33,'edit_posts','posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(34,'add_posts','posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(35,'delete_posts','posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(36,'browse_pages','pages','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(37,'read_pages','pages','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(38,'edit_pages','pages','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(39,'add_pages','pages','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(40,'delete_pages','pages','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(41,'browse_hooks',NULL,'2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(47,'browse_topics','topics','2019-04-25 04:04:50','2019-04-25 04:04:50'),
	(48,'read_topics','topics','2019-04-25 04:04:50','2019-04-25 04:04:50'),
	(49,'edit_topics','topics','2019-04-25 04:04:50','2019-04-25 04:04:50'),
	(50,'add_topics','topics','2019-04-25 04:04:50','2019-04-25 04:04:50'),
	(51,'delete_topics','topics','2019-04-25 04:04:51','2019-04-25 04:04:51'),
	(52,'browse_videos','videos','2019-04-25 04:05:21','2019-04-25 04:05:21'),
	(53,'read_videos','videos','2019-04-25 04:05:21','2019-04-25 04:05:21'),
	(54,'edit_videos','videos','2019-04-25 04:05:21','2019-04-25 04:05:21'),
	(55,'add_videos','videos','2019-04-25 04:05:21','2019-04-25 04:05:21'),
	(56,'delete_videos','videos','2019-04-25 04:05:21','2019-04-25 04:05:21'),
	(57,'browse_chapters','chapters','2019-06-27 06:35:01','2019-06-27 06:35:01'),
	(58,'read_chapters','chapters','2019-06-27 06:35:01','2019-06-27 06:35:01'),
	(59,'edit_chapters','chapters','2019-06-27 06:35:01','2019-06-27 06:35:01'),
	(60,'add_chapters','chapters','2019-06-27 06:35:01','2019-06-27 06:35:01'),
	(61,'delete_chapters','chapters','2019-06-27 06:35:01','2019-06-27 06:35:01'),
	(62,'browse_subscriptions','subscriptions','2019-06-30 03:35:43','2019-06-30 03:35:43'),
	(63,'read_subscriptions','subscriptions','2019-06-30 03:35:43','2019-06-30 03:35:43'),
	(64,'edit_subscriptions','subscriptions','2019-06-30 03:35:43','2019-06-30 03:35:43'),
	(65,'add_subscriptions','subscriptions','2019-06-30 03:35:43','2019-06-30 03:35:43'),
	(66,'delete_subscriptions','subscriptions','2019-06-30 03:35:43','2019-06-30 03:35:43');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`)
VALUES
	(1,0,NULL,'Lorem Ipsum Post',NULL,'This is the excerpt for the Lorem Ipsum Post','<p>This is the body of the lorem ipsum post</p>','posts/post1.jpg','lorem-ipsum-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(2,0,NULL,'My Sample Post',NULL,'This is the excerpt for the sample Post','<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>','posts/post2.jpg','my-sample-post','Meta Description for sample post','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(3,0,NULL,'Latest Post',NULL,'This is the excerpt for the latest post','<p>This is the body for the latest post</p>','posts/post3.jpg','latest-post','This is the meta description','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(4,0,NULL,'Yarr Post',NULL,'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.','<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>','posts/post4.jpg','yarr-post','this be a meta descript','keyword1, keyword2, keyword3','PUBLISHED',0,'2019-04-25 03:27:55','2019-04-25 03:27:55');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2019-04-25 03:27:51','2019-04-25 03:27:51'),
	(2,'user','Normal User','2019-04-25 03:27:51','2019-04-25 03:27:51');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','','','image',5,'Admin'),
	(6,'admin.title','Admin Title','Voyager','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Welcome to Voyager. The Missing Admin for Laravel','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin'),
	(11,'site.video_url','Video URL','https://wappspecial.com',NULL,'text',7,'Site'),
	(13,'site.expire_subscription_url','Subscription Expire URL','https://wappspecial.com/uploadfile/video/YourPlanExpire(1.23MB).mp4',NULL,'text',8,'Site'),
	(14,'site.no_subscription_url','No Subscription URL','https://api.milestoneducation.com/uploadfile/Direct and Indirect Speech.mp4',NULL,'text',9,'Site');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table subscriptions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `subscriptions`;

CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;

INSERT INTO `subscriptions` (`id`, `category_id`, `user_id`, `expires_at`, `created_at`, `updated_at`)
VALUES
	(1,1,3,'2019-07-02 06:05:28','2019-06-30 06:05:28','2019-06-30 06:05:28'),
	(2,1,2,'2019-07-02 05:04:00','2019-06-30 06:05:00','2019-07-01 13:52:11'),
	(3,2,3,'2019-07-31 06:11:00','2019-06-30 06:11:00','2019-07-03 01:30:25'),
	(4,2,2,'2019-07-03 13:58:00','2019-07-01 13:58:00','2019-07-02 15:51:15'),
	(5,2,4,'2019-07-07 06:55:00','2019-07-02 06:55:00','2019-07-02 18:31:23');

/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'data_types','display_name_singular',5,'pt','Post','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(2,'data_types','display_name_singular',6,'pt','Página','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(3,'data_types','display_name_singular',1,'pt','Utilizador','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(4,'data_types','display_name_singular',4,'pt','Categoria','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(5,'data_types','display_name_singular',2,'pt','Menu','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(6,'data_types','display_name_singular',3,'pt','Função','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(7,'data_types','display_name_plural',5,'pt','Posts','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(8,'data_types','display_name_plural',6,'pt','Páginas','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(9,'data_types','display_name_plural',1,'pt','Utilizadores','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(10,'data_types','display_name_plural',4,'pt','Categorias','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(11,'data_types','display_name_plural',2,'pt','Menus','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(12,'data_types','display_name_plural',3,'pt','Funções','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(13,'categories','slug',1,'pt','categoria-1','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(14,'categories','name',1,'pt','Categoria 1','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(15,'categories','slug',2,'pt','categoria-2','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(16,'categories','name',2,'pt','Categoria 2','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(17,'pages','title',1,'pt','Olá Mundo','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(18,'pages','slug',1,'pt','ola-mundo','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(19,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(20,'menu_items','title',1,'pt','Painel de Controle','2019-04-25 03:27:55','2019-04-25 03:27:55'),
	(21,'menu_items','title',2,'pt','Media','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(22,'menu_items','title',12,'pt','Publicações','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(23,'menu_items','title',3,'pt','Utilizadores','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(24,'menu_items','title',11,'pt','Categorias','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(25,'menu_items','title',13,'pt','Páginas','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(26,'menu_items','title',4,'pt','Funções','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(27,'menu_items','title',5,'pt','Ferramentas','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(28,'menu_items','title',6,'pt','Menus','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(29,'menu_items','title',7,'pt','Base de dados','2019-04-25 03:27:56','2019-04-25 03:27:56'),
	(30,'menu_items','title',10,'pt','Configurações','2019-04-25 03:27:56','2019-04-25 03:27:56');

/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
