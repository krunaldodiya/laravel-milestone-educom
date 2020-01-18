-- -------------------------------------------------------------
-- TablePlus 2.10(270)
--
-- https://tableplus.com/
--
-- Database: milestone
-- Generation Time: 2020-01-18 09:23:24.7680
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


DROP TABLE IF EXISTS `subscriptions`;
CREATE TABLE `subscriptions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `expires_at` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `institute_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `subscriptions` (`id`, `category_id`, `user_id`, `expires_at`, `created_at`, `updated_at`, `institute_id`) VALUES ('3', '2', '3', '2019-10-12 11:41:00', '2019-06-30 11:41:00', '2019-08-10 13:31:33', '1'),
('5', '2', '4', '2020-07-08 12:25:00', '2019-07-02 12:25:00', '2019-07-08 08:03:50', '1'),
('6', '2', '5', '2020-07-08 17:57:00', '2019-07-03 17:57:00', '2019-07-08 20:38:53', '1'),
('9', '2', '12', '2020-07-15 15:41:00', '2019-07-08 15:41:00', '2019-08-24 13:29:54', '1'),
('10', '2', '11', '2020-07-15 15:48:00', '2019-07-08 15:48:00', '2019-08-24 13:21:33', '1'),
('11', '1', '13', '2019-07-10 15:59:15', '2019-07-08 15:59:15', '2019-07-08 15:59:15', '1'),
('14', '2', '8', '2020-07-08 16:57:00', '2019-07-08 16:57:00', '2019-07-08 16:59:01', '1'),
('15', '1', '3', '2019-10-12 17:21:00', '2019-07-08 17:21:00', '2019-08-10 13:31:23', '1'),
('16', '2', '15', '2019-07-10 17:24:45', '2019-07-08 17:24:45', '2019-07-08 17:24:45', '1'),
('17', '2', '17', '2019-07-10 19:56:24', '2019-07-08 19:56:24', '2019-07-08 19:56:24', '1'),
('18', '2', '18', '2019-07-11 14:12:47', '2019-07-09 14:12:47', '2019-07-09 14:12:47', '1'),
('19', '1', '19', '2019-07-12 14:45:00', '2019-07-09 14:45:00', '2019-07-11 19:05:30', '1'),
('20', '2', '20', '2019-07-12 12:39:18', '2019-07-10 12:39:18', '2019-07-10 12:39:18', '1'),
('21', '2', '23', '2019-07-13 12:42:51', '2019-07-11 12:42:51', '2019-07-11 12:42:51', '1'),
('22', '2', '24', '2019-07-13 19:30:57', '2019-07-11 19:30:57', '2019-07-11 19:30:57', '1'),
('23', '2', '22', '2019-07-13 21:19:10', '2019-07-11 21:19:10', '2019-07-11 21:19:10', '1'),
('24', '2', '26', '2019-07-13 21:29:41', '2019-07-11 21:29:41', '2019-07-11 21:29:41', '1'),
('25', '1', '22', '2019-07-13 21:43:28', '2019-07-11 21:43:28', '2019-07-11 21:43:28', '1'),
('26', '2', '27', '2019-07-13 21:52:53', '2019-07-11 21:52:53', '2019-07-11 21:52:53', '1'),
('27', '2', '28', '2019-07-13 21:57:53', '2019-07-11 21:57:53', '2019-07-11 21:57:53', '1'),
('28', '2', '29', '2019-07-13 21:59:51', '2019-07-11 21:59:51', '2019-07-11 21:59:51', '1'),
('29', '2', '30', '2019-07-14 08:38:14', '2019-07-12 08:38:14', '2019-07-12 08:38:14', '1'),
('30', '2', '31', '2020-07-15 11:53:00', '2019-07-12 11:53:00', '2019-07-15 21:36:10', '1'),
('31', '2', '32', '2019-07-14 15:13:22', '2019-07-12 15:13:22', '2019-07-12 15:13:22', '1'),
('32', '1', '32', '2019-07-14 15:17:28', '2019-07-12 15:17:28', '2019-07-12 15:17:28', '1'),
('33', '1', '27', '2019-07-14 16:59:48', '2019-07-12 16:59:48', '2019-07-12 16:59:48', '1'),
('34', '2', '33', '2019-07-14 19:22:19', '2019-07-12 19:22:19', '2019-07-12 19:22:19', '1'),
('35', '1', '33', '2019-07-14 19:22:35', '2019-07-12 19:22:35', '2019-07-12 19:22:35', '1'),
('36', '1', '24', '2019-07-14 21:48:25', '2019-07-12 21:48:25', '2019-07-12 21:48:25', '1'),
('37', '2', '34', '2019-07-14 21:59:58', '2019-07-12 21:59:58', '2019-07-12 21:59:58', '1'),
('38', '2', '35', '2019-07-15 05:42:27', '2019-07-13 05:42:27', '2019-07-13 05:42:27', '1'),
('39', '2', '37', '2019-07-16 15:55:08', '2019-07-14 15:55:08', '2019-07-14 15:55:08', '1'),
('40', '2', '36', '2019-07-16 18:32:50', '2019-07-14 18:32:50', '2019-07-14 18:32:50', '1'),
('41', '2', '38', '2019-07-16 21:04:55', '2019-07-14 21:04:55', '2019-07-14 21:04:55', '1'),
('42', '2', '39', '2019-07-17 08:06:23', '2019-07-15 08:06:23', '2019-07-15 08:06:23', '1'),
('43', '1', '36', '2019-07-17 11:58:48', '2019-07-15 11:58:48', '2019-07-15 11:58:48', '1'),
('44', '2', '40', '2019-07-17 22:11:25', '2019-07-15 22:11:25', '2019-07-15 22:11:25', '1'),
('45', '2', '41', '2019-08-30 16:24:00', '2019-07-16 16:24:00', '2019-07-30 12:14:46', '1'),
('46', '2', '42', '2022-07-13 18:04:00', '2019-07-16 18:04:00', '2019-07-19 08:20:21', '1'),
('47', '2', '43', '2019-07-18 18:50:53', '2019-07-16 18:50:53', '2019-07-16 18:50:53', '1'),
('48', '1', '43', '2019-07-18 18:56:21', '2019-07-16 18:56:21', '2019-07-16 18:56:21', '1'),
('49', '2', '21', '2019-07-19 19:00:46', '2019-07-17 19:00:46', '2019-07-17 19:00:46', '1'),
('50', '2', '45', '2019-07-21 19:44:51', '2019-07-19 19:44:51', '2019-07-19 19:44:51', '1'),
('51', '2', '46', '2019-07-21 19:48:43', '2019-07-19 19:48:43', '2019-07-19 19:48:43', '1'),
('52', '2', '47', '2019-07-21 19:58:55', '2019-07-19 19:58:55', '2019-07-19 19:58:55', '1'),
('53', '2', '48', '2019-07-21 20:20:57', '2019-07-19 20:20:57', '2019-07-19 20:20:57', '1'),
('54', '2', '49', '2020-07-15 20:21:00', '2019-07-19 20:21:00', '2019-07-22 11:43:21', '1'),
('55', '2', '51', '2019-07-22 07:08:17', '2019-07-20 07:08:17', '2019-07-20 07:08:17', '1'),
('56', '2', '53', '2019-07-24 23:09:28', '2019-07-22 23:09:28', '2019-07-22 23:09:28', '1'),
('57', '2', '54', '2019-07-25 13:04:48', '2019-07-23 13:04:48', '2019-07-23 13:04:48', '1'),
('58', '1', '53', '2019-07-25 18:44:18', '2019-07-23 18:44:18', '2019-07-23 18:44:18', '1'),
('59', '2', '56', '2019-07-25 23:30:55', '2019-07-23 23:30:55', '2019-07-23 23:30:55', '1'),
('60', '2', '57', '2019-07-26 13:07:35', '2019-07-24 13:07:35', '2019-07-24 13:07:35', '1'),
('61', '1', '57', '2019-07-26 13:09:57', '2019-07-24 13:09:57', '2019-07-24 13:09:57', '1'),
('62', '2', '59', '2019-07-29 18:02:58', '2019-07-27 18:02:58', '2019-07-27 18:02:58', '1'),
('63', '1', '59', '2019-07-29 18:04:04', '2019-07-27 18:04:04', '2019-07-27 18:04:04', '1'),
('64', '2', '60', '2020-07-15 17:57:00', '2019-07-28 17:57:00', '2019-08-02 17:48:06', '1'),
('65', '2', '62', '2019-08-01 15:57:11', '2019-07-30 15:57:11', '2019-07-30 15:57:11', '1'),
('66', '2', '67', '2019-08-05 15:03:22', '2019-08-03 15:03:22', '2019-08-03 15:03:22', '1'),
('67', '1', '67', '2019-08-05 15:04:08', '2019-08-03 15:04:08', '2019-08-03 15:04:08', '1'),
('68', '1', '5', '2019-08-06 11:42:10', '2019-08-04 11:42:10', '2019-08-04 11:42:10', '1'),
('69', '2', '71', '2019-08-12 16:26:38', '2019-08-10 16:26:38', '2019-08-10 16:26:38', '1'),
('70', '2', '73', '2019-10-10 21:50:00', '2019-08-12 21:50:00', '2019-08-19 14:15:03', '1'),
('71', '2', '75', '2019-08-17 22:05:52', '2019-08-15 22:05:52', '2019-08-15 22:05:52', '1'),
('72', '2', '89', '2019-08-21 22:00:06', '2019-08-19 22:00:06', '2019-08-19 22:00:06', '1'),
('73', '1', '60', '2019-08-23 20:38:00', '2019-08-21 20:38:00', '2019-08-21 20:38:00', '1'),
('74', '2', '92', '2019-08-24 11:02:41', '2019-08-22 11:02:41', '2019-08-22 11:02:41', '1'),
('75', '2', '94', '2019-08-24 23:27:51', '2019-08-22 23:27:51', '2019-08-22 23:27:51', '1'),
('76', '2', '96', '2019-08-25 22:28:15', '2019-08-23 22:28:15', '2019-08-23 22:28:15', '1'),
('77', '2', '103', '2019-08-29 14:18:32', '2019-08-27 14:18:32', '2019-08-27 14:18:32', '1'),
('78', '2', '105', '2019-08-30 14:40:38', '2019-08-28 14:40:38', '2019-08-28 14:40:38', '1'),
('79', '2', '106', '2019-08-31 14:57:46', '2019-08-29 14:57:46', '2019-08-29 14:57:46', '1'),
('80', '1', '106', '2019-09-02 21:11:02', '2019-08-31 21:11:02', '2019-08-31 21:11:02', '1'),
('81', '2', '109', '2019-09-03 11:27:00', '2019-09-01 11:27:00', '2019-09-01 11:27:00', '1'),
('82', '2', '112', '2019-09-03 21:40:11', '2019-09-01 21:40:11', '2019-09-01 21:40:11', '1'),
('83', '2', '121', '2019-09-12 05:53:46', '2019-09-10 05:53:46', '2019-09-10 05:53:46', '1'),
('84', '2', '122', '2019-09-12 09:56:18', '2019-09-10 09:56:18', '2019-09-10 09:56:18', '1'),
('85', '2', '125', '2019-09-14 18:41:52', '2019-09-12 18:41:52', '2019-09-12 18:41:52', '1'),
('86', '2', '126', '2019-09-15 23:16:13', '2019-09-13 23:16:13', '2019-09-13 23:16:13', '1'),
('87', '2', '127', '2019-09-16 13:32:20', '2019-09-14 13:32:20', '2019-09-14 13:32:20', '1'),
('88', '1', '127', '2019-09-16 23:59:48', '2019-09-14 23:59:48', '2019-09-14 23:59:48', '1'),
('89', '2', '128', '2019-09-18 23:16:31', '2019-09-16 23:16:31', '2019-09-16 23:16:31', '1'),
('90', '2', '111', '2019-09-20 09:55:47', '2019-09-18 09:55:47', '2019-09-18 09:55:47', '1'),
('91', '2', '136', '2019-09-26 11:05:01', '2019-09-24 11:05:01', '2019-09-24 11:05:01', '1'),
('92', '2', '144', '2019-10-12 14:01:05', '2019-10-10 14:01:05', '2019-10-10 14:01:05', '1'),
('93', '2', '145', '2019-10-12 17:28:44', '2019-10-10 17:28:44', '2019-10-10 17:28:44', '1'),
('94', '1', '145', '2019-10-12 17:32:21', '2019-10-10 17:32:21', '2019-10-10 17:32:21', '1'),
('95', '1', '144', '2019-10-13 06:20:33', '2019-10-11 06:20:33', '2019-10-11 06:20:33', '1'),
('96', '2', '146', '2019-10-14 07:47:51', '2019-10-12 07:47:51', '2019-10-12 07:47:51', '1'),
('97', '2', '147', '2019-10-18 06:05:00', '2019-10-16 06:05:00', '2019-10-16 06:05:00', '1'),
('98', '2', '152', '2019-10-24 07:54:27', '2019-10-22 07:54:27', '2019-10-22 07:54:27', '1'),
('99', '2', '153', '2019-10-24 14:09:15', '2019-10-22 14:09:15', '2019-10-22 14:09:15', '1'),
('100', '2', '150', '2019-10-24 15:20:00', '2019-10-22 15:20:00', '2019-10-22 15:20:00', '1'),
('101', '2', '157', '2019-11-04 08:16:29', '2019-11-02 08:16:29', '2019-11-02 08:16:29', '1'),
('102', '2', '158', '2019-11-04 11:10:28', '2019-11-02 11:10:28', '2019-11-02 11:10:28', '1'),
('103', '1', '159', '2019-11-04 15:53:49', '2019-11-02 15:53:49', '2019-11-02 15:53:49', '1'),
('104', '2', '159', '2019-11-04 15:55:57', '2019-11-02 15:55:57', '2019-11-02 15:55:57', '1'),
('105', '2', '161', '2019-11-05 15:17:31', '2019-11-03 15:17:31', '2019-11-03 15:17:31', '1'),
('106', '2', '156', '2019-11-08 09:29:02', '2019-11-06 09:29:02', '2019-11-06 09:29:02', '1'),
('107', '2', '166', '2019-11-14 13:57:18', '2019-11-12 13:57:18', '2019-11-12 13:57:18', '1'),
('108', '2', '173', '2019-11-26 10:50:15', '2019-11-24 10:50:15', '2019-11-24 10:50:15', '1'),
('109', '1', '173', '2019-11-26 10:56:06', '2019-11-24 10:56:06', '2019-11-24 10:56:06', '1'),
('110', '2', '174', '2019-11-27 16:30:26', '2019-11-25 16:30:26', '2019-11-25 16:30:26', '1'),
('111', '2', '175', '2019-11-27 16:38:42', '2019-11-25 16:38:42', '2019-11-25 16:38:42', '1'),
('112', '2', '176', '2019-11-28 17:27:52', '2019-11-26 17:27:52', '2019-11-26 17:27:52', '1'),
('113', '2', '177', '2019-11-29 16:25:24', '2019-11-27 16:25:24', '2019-11-27 16:25:24', '1'),
('114', '2', '179', '2019-11-30 03:53:36', '2019-11-28 03:53:36', '2019-11-28 03:53:36', '1'),
('115', '2', '160', '2019-12-02 05:59:01', '2019-11-30 05:59:01', '2019-11-30 05:59:01', '1'),
('116', '1', '180', '2019-12-03 05:57:48', '2019-12-01 05:57:48', '2019-12-01 05:57:48', '1'),
('117', '1', '160', '2019-12-25 13:37:06', '2019-12-23 13:37:06', '2019-12-23 13:37:06', '1'),
('118', '2', '197', '2019-12-27 13:24:59', '2019-12-25 13:24:59', '2019-12-25 13:24:59', '1'),
('119', '2', '201', '2020-01-02 02:31:38', '2019-12-31 02:31:38', '2019-12-31 02:31:38', '1'),
('120', '1', '201', '2020-01-02 02:31:53', '2019-12-31 02:31:53', '2019-12-31 02:31:53', '1'),
('121', '2', '207', '2020-01-06 05:16:46', '2020-01-04 05:16:46', '2020-01-04 05:16:46', '1'),
('122', '1', '213', '2020-01-10 14:19:33', '2020-01-08 14:19:33', '2020-01-08 14:19:33', '1'),
('123', '2', '213', '2020-01-10 14:19:44', '2020-01-08 14:19:44', '2020-01-08 14:19:44', '1'),
('124', '1', '214', '2020-01-11 07:50:16', '2020-01-09 07:50:16', '2020-01-09 07:50:16', '1'),
('125', '2', '214', '2020-01-11 07:51:24', '2020-01-09 07:51:24', '2020-01-09 07:51:24', '1'),
('126', '2', '218', '2020-01-13 04:40:24', '2020-01-11 04:40:24', '2020-01-11 04:40:24', '1'),
('127', '2', '219', '2020-01-13 07:14:01', '2020-01-11 07:14:01', '2020-01-11 07:14:01', '1'),
('128', '1', '219', '2020-01-13 07:18:52', '2020-01-11 07:18:52', '2020-01-11 07:18:52', '1'),
('129', '2', '226', '2020-01-19 13:18:13', '2020-01-17 13:18:13', '2020-01-17 13:18:13', '1');


/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;