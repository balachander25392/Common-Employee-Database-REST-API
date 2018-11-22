-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for byd_comn_emp_db
CREATE DATABASE IF NOT EXISTS `byd_comn_emp_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `byd_comn_emp_db`;

-- Dumping structure for table byd_comn_emp_db.be_emp_aduser
CREATE TABLE IF NOT EXISTS `be_emp_aduser` (
  `ea_id` int(30) NOT NULL AUTO_INCREMENT,
  `ea_emp_id` varchar(50) NOT NULL,
  `ea_name` varchar(100) NOT NULL,
  `ea_password` varchar(255) NOT NULL,
  `ea_email` varchar(50) NOT NULL,
  `ea_designation` varchar(100) DEFAULT NULL,
  `ea_role` enum('1','2') NOT NULL DEFAULT '2' COMMENT '1 - super admin, 2 - admin',
  `ea_added_on` datetime NOT NULL,
  `ea_last_updated` datetime NOT NULL,
  `ea_pass_reset` datetime NOT NULL,
  `ea_deac_on` datetime NOT NULL,
  `ea_user_st` enum('1','0') NOT NULL DEFAULT '1' COMMENT '1-active,0-inactive',
  PRIMARY KEY (`ea_id`),
  UNIQUE KEY `ea_id` (`ea_id`),
  UNIQUE KEY `ea_emp_id` (`ea_emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table byd_comn_emp_db.be_emp_aduser: ~5 rows (approximately)
/*!40000 ALTER TABLE `be_emp_aduser` DISABLE KEYS */;
INSERT INTO `be_emp_aduser` (`ea_id`, `ea_emp_id`, `ea_name`, `ea_password`, `ea_email`, `ea_designation`, `ea_role`, `ea_added_on`, `ea_last_updated`, `ea_pass_reset`, `ea_deac_on`, `ea_user_st`) VALUES
	(1, '3163208', 'Bala', 'e10adc3949ba59abbe56e057f20f883e', 'balachander@byd.com', 'PHP Developer', '1', '2018-09-19 09:49:21', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
	(13, '111111', '111111', '96e79218965eb72c92a549dd5a330112', '111@1111.111', '111111', '2', '2018-11-13 16:08:43', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
	(14, '1111', '1111', 'b59c67bf196a4758191e42f76670ceba', '1111@111.1111', '', '2', '2018-11-13 17:03:59', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
	(15, '11111111111', '1111111', 'adbc91a43e988a3b5b745b8529a90b61', '11111111111@1111111.111', '111', '2', '2018-11-13 17:04:14', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1'),
	(16, '232443', 'bala', 'aaba7b9fa4ae21dd9341674b42856687', 'baaa@www.ccc', '', '2', '2018-11-13 17:04:31', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1');
/*!40000 ALTER TABLE `be_emp_aduser` ENABLE KEYS */;

-- Dumping structure for table byd_comn_emp_db.be_emp_db
CREATE TABLE IF NOT EXISTS `be_emp_db` (
  `ed_id` int(30) NOT NULL AUTO_INCREMENT,
  `ed_emp_id` varchar(50) NOT NULL,
  `ed_emp_name` varchar(250) NOT NULL,
  `ed_emp_pass` varchar(250) NOT NULL,
  `ed_emp_email` varchar(100) DEFAULT NULL,
  `ed_emp_desig` varchar(100) DEFAULT NULL,
  `ed_emp_grade` varchar(100) DEFAULT NULL,
  `ed_emp_div` varchar(50) DEFAULT NULL,
  `ed_emp_team` varchar(100) DEFAULT NULL,
  `ed_emp_section` varchar(100) DEFAULT NULL,
  `ed_emp_leader` varchar(250) DEFAULT NULL,
  `ed_emp_dob` date DEFAULT NULL,
  `ed_emp_doj` date DEFAULT NULL,
  `ed_emp_add_on` datetime NOT NULL,
  `ed_emp_add_by` int(30) NOT NULL,
  `ed_emp_lup_on` datetime DEFAULT NULL,
  `ed_emp_lup_by` int(30) DEFAULT NULL,
  `ed_emp_pas_rt_on` datetime DEFAULT NULL,
  `ed_emp_pas_tr_by` int(30) DEFAULT NULL,
  `ed_emp_st` enum('0','1') NOT NULL DEFAULT '1',
  `ed_emp_add_from` enum('single','bulk') NOT NULL DEFAULT 'single',
  `ed_emp_deac_on` datetime NOT NULL,
  `ed_emp_deac_by` int(30) NOT NULL,
  PRIMARY KEY (`ed_id`),
  UNIQUE KEY `ed_id` (`ed_id`),
  UNIQUE KEY `ed_emp_id` (`ed_emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table byd_comn_emp_db.be_emp_db: ~8 rows (approximately)
/*!40000 ALTER TABLE `be_emp_db` DISABLE KEYS */;
INSERT INTO `be_emp_db` (`ed_id`, `ed_emp_id`, `ed_emp_name`, `ed_emp_pass`, `ed_emp_email`, `ed_emp_desig`, `ed_emp_grade`, `ed_emp_div`, `ed_emp_team`, `ed_emp_section`, `ed_emp_leader`, `ed_emp_dob`, `ed_emp_doj`, `ed_emp_add_on`, `ed_emp_add_by`, `ed_emp_lup_on`, `ed_emp_lup_by`, `ed_emp_pas_rt_on`, `ed_emp_pas_tr_by`, `ed_emp_st`, `ed_emp_add_from`, `ed_emp_deac_on`, `ed_emp_deac_by`) VALUES
	(1, '3163208', 'balachander', '25e5d99cbb8cbb504e3404e04c7be8f0', 'bala@gmail.com', 'PHP DEVELOPER', 'E级', '第五事业部', '软件中心', NULL, 'SUN JING', '1992-03-25', '2018-08-23', '2018-11-13 16:31:51', 1, '2018-11-13 17:58:54', 1, NULL, NULL, '1', 'bulk', '0000-00-00 00:00:00', 0),
	(2, '111111', '111111', '96e79218965eb72c92a549dd5a330112', '1111@111.111', '111111', '111111', '111111', '111111', NULL, '111111', '2018-11-01', '2018-11-01', '2018-11-13 16:37:49', 1, NULL, NULL, NULL, NULL, '1', 'single', '2018-11-13 16:37:53', 0),
	(3, '111111111111111', '1111', '4ba36d23a78c7393b4900ef38019d8ff', '', '', '', '', '', NULL, '', '0000-00-00', '0000-00-00', '2018-11-13 17:01:58', 1, NULL, NULL, NULL, NULL, '1', 'single', '0000-00-00 00:00:00', 0),
	(4, '1111', '1111', 'b59c67bf196a4758191e42f76670ceba', '', '', '', '', '', NULL, '', '0000-00-00', '0000-00-00', '2018-11-13 17:02:06', 1, NULL, NULL, NULL, NULL, '1', 'single', '0000-00-00 00:00:00', 0),
	(5, '555555J', '555555', '5b1b68a9abf4d2cd155c81a9225fd158', '555@555.555E', '55555D', '555G', '555DI', '555T', NULL, '555L', '1992-06-03', '2017-11-25', '2018-11-13 17:20:09', 1, '2018-11-13 17:54:15', 1, NULL, NULL, '1', 'bulk', '0000-00-00 00:00:00', 0),
	(6, '555555I', '555555N', '07db06272dd5c6274492861068d693b7', '555@555.555E', '55555D', '555G', '555DI', '555T', NULL, '555L', '1992-06-03', '2017-11-25', '2018-11-13 17:28:27', 1, '2018-11-13 17:28:27', 1, NULL, NULL, '1', 'bulk', '0000-00-00 00:00:00', 0),
	(7, '555555K', '555555N', '5b1b68a9abf4d2cd155c81a9225fd158', '555@555.555E', '55555D', '555G', '555DI', '555T', NULL, '555L', '1992-06-03', '2017-11-25', '2018-11-13 17:55:17', 1, '2018-11-13 17:55:56', 1, NULL, NULL, '1', 'bulk', '0000-00-00 00:00:00', 0),
	(8, '555555', '555555N', '5b1b68a9abf4d2cd155c81a9225fd158', '555@555.555E', '55555D', '555G', '555DI', '555T', NULL, '555L', '1992-06-03', '2017-11-25', '2018-11-13 17:58:54', 1, '2018-11-13 17:58:54', 1, NULL, NULL, '1', 'bulk', '0000-00-00 00:00:00', 0);
/*!40000 ALTER TABLE `be_emp_db` ENABLE KEYS */;

-- Dumping structure for table byd_comn_emp_db.keys
CREATE TABLE IF NOT EXISTS `keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Dumping data for table byd_comn_emp_db.keys: ~2 rows (approximately)
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
	(1, 0, 'CODEX@123', 0, 0, 0, NULL, '2017-10-12 13:34:33'),
	(2, 0, 'TEST@123', 0, 0, 0, NULL, '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;

-- Dumping structure for table byd_comn_emp_db.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` enum('1','0') COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- Dumping data for table byd_comn_emp_db.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
