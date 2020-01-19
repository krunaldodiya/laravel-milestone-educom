-- -------------------------------------------------------------
-- TablePlus 2.10(270)
--
-- https://tableplus.com/
--
-- Database: milestone_alpesh
-- Generation Time: 2020-01-19 14:05:58.8130
-- -------------------------------------------------------------


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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES ('1', 'site.title', 'Site Title', 'Site Title', '', 'text', '1', 'Site'),
('2', 'site.description', 'Site Description', 'Site Description', '', 'text', '2', 'Site'),
('3', 'site.logo', 'Site Logo', '', '', 'image', '3', 'Site'),
('4', 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', '4', 'Site'),
('5', 'admin.bg_image', 'Admin Background Image', '', '', 'image', '5', 'Admin'),
('6', 'admin.title', 'Admin Title', 'Voyager', '', 'text', '1', 'Admin'),
('7', 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', '2', 'Admin'),
('8', 'admin.loader', 'Admin Loader', '', '', 'image', '3', 'Admin'),
('9', 'admin.icon_image', 'Admin Icon Image', '', '', 'image', '4', 'Admin'),
('10', 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', '1', 'Admin'),
('11', 'site.video_url', 'Video URL', 'https://api.shendre.com', NULL, 'text', '7', 'Site'),
('13', 'site.expire_subscription_url', 'Subscription Expire URL', 'https://api.shendre.com/uploadfile/10th_Guj/Planexpirevideo.mp4', NULL, 'text', '8', 'Site'),
('14', 'site.no_subscription_url', 'No Subscription URL', 'https://api.shendre.com/uploadfile/10th_Guj/notsubscribe/Not-Subscribed.mp4', NULL, 'text', '9', 'Site'),
('15', 'site.youtube_channel', 'YouTube Channel', 'https://www.youtube.com/channel/UCPg0-WocTNNVI0q5NlvkkPA', NULL, 'text', '10', 'Site'),
('16', 'site.facebook', 'Facebook', 'https://www.facebook.com/MilestoneEducom', NULL, 'text', '11', 'Site'),
('17', 'site.watermark_color', 'Watermark Color', '0xffFFFFFF', NULL, 'text', '12', 'Site'),
('18', 'site.watermark_size', 'Watermark Size', '10', NULL, 'text', '13', 'Site');


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;