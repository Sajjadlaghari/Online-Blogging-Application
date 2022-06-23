/*
SQLyog Ultimate v12.5.0 (64 bit)
MySQL - 10.4.22-MariaDB : Database - 16716_sajjad_ali
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`16716_sajjad_ali` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `16716_sajjad_ali`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `blog_title` text DEFAULT NULL,
  `post_per_page` int(11) DEFAULT NULL,
  `blog_background_image` text DEFAULT NULL,
  `blog_status` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` text DEFAULT NULL,
  PRIMARY KEY (`blog_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `blog` */

insert  into `blog`(`blog_id`,`user_id`,`blog_title`,`post_per_page`,`blog_background_image`,`blog_status`,`created_at`,`updated_at`) values 
(6,5,'News',3,'../blogs_images/news.jpg','Active','2022-05-21 13:09:33','1652975216'),
(7,5,'Games',5,'../blogs_images/crikect.jpg','Active','2022-05-21 13:05:41',NULL),
(8,5,'Politics',6,'../blogs_images/politics.jpg','Active','2022-05-21 13:03:08',NULL),
(9,5,'Programming',6,'../blogs_images/Programming-Language.png','Active','2022-05-21 13:11:04',NULL);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_title` varchar(100) DEFAULT NULL,
  `category_description` text DEFAULT NULL,
  `category_status` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_title`,`category_description`,`category_status`,`created_at`,`updated_at`) values 
(1,'Science','Description we will write in latter','Active','2022-05-19 20:47:18',1652975238),
(7,'Cricket','Cricket is Pakistan favrite game','Active','2022-05-19 20:47:14',1652975234),
(8,'Hockey','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','Active','2022-05-20 19:57:59',NULL),
(9,'Wali bal','tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam','Active','2022-05-20 19:58:30',NULL),
(10,'Tenis','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','Active','2022-05-20 19:58:41',NULL),
(11,'Foot Ball','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','Active','2022-05-20 20:04:27',NULL),
(12,'Politics','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','Active','2022-05-20 20:09:22',NULL),
(13,'General','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','Active','2022-05-20 20:09:30',NULL),
(14,'Programming Languages','Programming languages is top jobs now days','Active','2022-05-21 01:27:04',NULL);

/*Table structure for table `post` */

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) DEFAULT NULL,
  `post_title` varchar(200) NOT NULL,
  `post_summary` text NOT NULL,
  `post_description` longtext NOT NULL,
  `featured_image` text DEFAULT NULL,
  `post_status` enum('Active','InActive') DEFAULT NULL,
  `is_comment_allowed` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` text DEFAULT NULL,
  PRIMARY KEY (`post_id`),
  KEY `blog_id` (`blog_id`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

/*Data for the table `post` */

insert  into `post`(`post_id`,`blog_id`,`post_title`,`post_summary`,`post_description`,`featured_image`,`post_status`,`is_comment_allowed`,`created_at`,`updated_at`) values 
(43,7,'Foot Ball','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','../posts_images/2421ffotbal.jpg','Active',1,'2022-05-20 20:06:38',NULL),
(44,7,'Hockey Introduction','tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','../posts_images/46489hockey.jpg','Active',1,'2022-05-24 09:50:49',NULL),
(45,7,'Crcicket','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','../posts_images/19589_53307cricket.jpg','Active',1,'2022-05-24 09:50:51',NULL),
(46,8,'Election News','tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo','../posts_images/82821_politiics.jpg','Active',1,'2022-05-24 10:09:07',NULL),
(47,9,'Hello World','How to wrote hello world first program in 10 different lanaguest like java, python, php, ruby, c sharp, c, c++','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','../posts_images/81736ff.jpg','Active',1,'2022-05-24 09:50:56',NULL),
(51,7,'Tenis','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','../posts_images/3111313493_2421ffotbal.jpg','Active',1,'2022-05-24 09:50:58',NULL),
(52,7,'Checking Mail blog purpose','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.','../posts_images/3041430308crikect.jpg','Active',1,'2022-05-24 09:51:03',NULL);

/*Table structure for table `post_atachment` */

DROP TABLE IF EXISTS `post_atachment`;

CREATE TABLE `post_atachment` (
  `post_atachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `post_attachment_title` varchar(200) DEFAULT NULL,
  `post_attachment_path` text DEFAULT NULL,
  `is_active` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_atachment_id`),
  KEY `fk1` (`post_id`),
  CONSTRAINT `fk1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;

/*Data for the table `post_atachment` */

insert  into `post_atachment`(`post_atachment_id`,`post_id`,`post_attachment_title`,`post_attachment_path`,`is_active`,`created_at`,`updated_at`) values 
(23,44,'Image','../posts_images/3111313493_2421ffotbal.jpg','Active','2022-05-23 02:07:54',NULL),
(24,45,'Image','../posts_images/19589_53307cricket.jpg','Active','2022-05-23 02:05:25',NULL),
(27,47,'Image','../posts_images/81736ff.jpg','Active','2022-05-23 02:03:22',NULL),
(120,51,'File','../posts_images/87271_Prosal.docx',NULL,'2022-05-23 01:55:53',NULL),
(121,51,'Image','../posts_images/7146113493_2421ffotbal.jpg',NULL,'2022-05-23 01:58:38',NULL),
(122,51,'Image','../posts_images/7146113493_2421ffotbal.jpg',NULL,'2022-05-23 01:58:29',NULL),
(123,43,'Image','../posts_images/3111313493_2421ffotbal.jpg',NULL,'2022-05-23 02:09:21',NULL),
(124,43,'Image','../posts_images/3111313493_2421ffotbal.jpg',NULL,'2022-05-23 02:09:21',NULL),
(125,52,'Image','../posts_images/41855_22313_16761.png','Active','2022-05-24 00:50:14',NULL),
(126,46,'Image','../posts_images/82821_politiics.jpg','Active','2022-05-24 10:09:07',NULL);

/*Table structure for table `post_category` */

DROP TABLE IF EXISTS `post_category`;

CREATE TABLE `post_category` (
  `post_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`post_category_id`),
  KEY `post_id` (`post_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `post_category_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `post_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4;

/*Data for the table `post_category` */

insert  into `post_category`(`post_category_id`,`post_id`,`category_id`,`created_at`,`updated_at`) values 
(80,45,7,'2022-05-20 20:02:37',NULL),
(81,44,8,'2022-05-20 20:03:56',NULL),
(85,47,14,'2022-05-21 01:33:47',NULL),
(126,51,11,'2022-05-23 01:55:53',NULL),
(127,51,13,'2022-05-23 01:55:53',NULL),
(128,43,11,'2022-05-23 02:09:21',NULL),
(129,52,7,'2022-05-24 00:50:14',NULL),
(130,46,1,'2022-05-24 10:09:07',NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(50) NOT NULL,
  `is_active` enum('Active','InActive') DEFAULT 'Active',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `role` */

insert  into `role`(`role_id`,`role_type`,`is_active`) values 
(1,'Admin','Active'),
(2,'User','Active');

/*Table structure for table `setting` */

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `setting_key` varchar(100) DEFAULT NULL,
  `setting_value` varchar(100) DEFAULT NULL,
  `setting_status` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `setting_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8mb4;

/*Data for the table `setting` */

insert  into `setting`(`setting_id`,`user_id`,`setting_key`,`setting_value`,`setting_status`,`created_at`,`updated_at`) values 
(18,10,'title_color','#804040','Active','2022-05-23 15:56:40',NULL),
(19,10,'text_align','center','Active','2022-05-23 15:57:17',NULL),
(66,9,'title_color','#000000','Active','2022-05-23 17:09:48',NULL),
(67,9,'text_align','Left','Active','2022-05-23 17:09:49',NULL),
(68,9,'text_align','center','Active','2022-05-23 17:09:49',NULL),
(69,9,'font_style','italic','Active','2022-05-23 17:09:49',NULL),
(70,9,'font_style','normal','Active','2022-05-23 17:09:49',NULL),
(71,9,'font_size','25','Active','2022-05-23 17:09:49',NULL),
(72,9,'font_family','Arial','Active','2022-05-23 17:09:49',NULL),
(139,11,'bg_color','#f7f3f3','Active','2022-05-23 21:28:28',NULL),
(145,11,'title_color','#000000','Active','2022-05-23 21:29:24',NULL),
(146,11,'text_align','Left','Active','2022-05-23 21:29:24',NULL),
(147,11,'font_style','normal','Active','2022-05-23 21:29:24',NULL),
(148,11,'font_size','18','Active','2022-05-23 21:29:24',NULL),
(149,11,'font_family','Arial','Active','2022-05-23 21:29:24',NULL),
(176,12,'bg_color','#ffffff','Active','2022-05-24 10:44:10',NULL),
(181,12,'description_color','#000000','Active','2022-05-24 10:53:27',NULL),
(182,12,'description_font_style','normal','Active','2022-05-24 10:53:27',NULL),
(183,12,'description_font_size','18','Active','2022-05-24 10:53:27',NULL),
(184,12,'description_font_family','Arial','Active','2022-05-24 10:53:27',NULL),
(185,12,'title_color','#000000','Active','2022-05-24 11:33:34',NULL),
(186,12,'text_align','Left','Active','2022-05-24 11:33:35',NULL),
(187,12,'font_style','normal','Active','2022-05-24 11:33:35',NULL),
(188,12,'font_size','22','Active','2022-05-24 11:33:36',NULL),
(189,12,'font_family','Arial','Active','2022-05-24 11:33:36',NULL);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text NOT NULL,
  `gender` enum('Male','Female') DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `user_image` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `is_approved` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `is_active` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`user_id`,`role_id`,`first_name`,`last_name`,`email`,`password`,`gender`,`date_of_birth`,`user_image`,`address`,`is_approved`,`is_active`,`created_at`,`updated_at`) values 
(5,1,'Sajjad','Hussain','sajjad@gmail.com','sajjad123@','Male','1999-11-16','../users_images/479358047845Untitled design.png','Village Noor Muhammad Laghari Distt Naushahro Feroze','Approved','Active','2022-05-24 11:38:20','1653374300'),
(9,2,'sajjad','Ali','sajjad12@gmail.com','sajjad123@','Male','2021-04-16','../users_images/84620524366IMG_20190609_145247123.jpg','Village Noor muhammad laghari district','Approved','Active','2022-05-23 01:52:47','1653252767'),
(10,2,'sajjad','Ahmed','adnanali45302@gmail.com','sajjad123@','Male','2021-03-16','../users_images/531183751717845Untitled design.png',' my address','Approved','Active','2022-05-24 00:44:35','1653203072'),
(11,2,'javeed','Ahmed','javeed@gmail.com','javeed123@','Male','2022-12-31','../users_images/531183751717845Untitled design.png','Qasimabad Hyderabad','Approved','Active','2022-05-23 20:35:59',NULL),
(12,2,'Abid','Ahmed','abid@gmail.com','abid123@','Male','1999-06-25','../users_images/2706479358047845Untitled design.png','New Ajmeer Nagri Karachi','Approved','InActive','2022-05-24 11:39:41','1653374381'),
(13,2,'Sajjad','Ali','sajjadlaghari723@gmail.com','sajjad123@','Male','2021-04-23','../users_images/8717531183751717845Untitled design.png','Old Campus Qasimabad Hyderabad','Pending','InActive','2022-05-24 11:46:36',NULL);

/*Table structure for table `user_blog_following` */

DROP TABLE IF EXISTS `user_blog_following`;

CREATE TABLE `user_blog_following` (
  `follow_id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(11) DEFAULT NULL,
  `blog_following_id` int(11) DEFAULT NULL,
  `status` enum('Followed','Unfollowed') DEFAULT 'Followed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`follow_id`),
  KEY `blog_following_id` (`blog_following_id`),
  KEY `follower_id` (`follower_id`),
  CONSTRAINT `user_blog_following_ibfk_1` FOREIGN KEY (`blog_following_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_blog_following_ibfk_2` FOREIGN KEY (`follower_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_blog_following` */

insert  into `user_blog_following`(`follow_id`,`follower_id`,`blog_following_id`,`status`,`created_at`,`updated_at`) values 
(14,10,7,'Followed','2022-05-24 00:21:29',NULL);

/*Table structure for table `user_feedback` */

DROP TABLE IF EXISTS `user_feedback`;

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `feedback` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` text DEFAULT NULL,
  PRIMARY KEY (`feedback_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_feedback` */

insert  into `user_feedback`(`feedback_id`,`user_id`,`user_name`,`user_email`,`feedback`,`created_at`,`updated_at`) values 
(3,NULL,'Sajjad Hussain','sajjadlaghari723@gmail.com','hello Dear Admin i need account on this wesbite','2022-05-16 02:07:31','1652648851'),
(4,12,'Abid Ahmed','abid@gmail.com','Your Website is really awesome created','2022-05-24 09:40:03',NULL);

/*Table structure for table `user_post_comment` */

DROP TABLE IF EXISTS `user_post_comment`;

CREATE TABLE `user_post_comment` (
  `post_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_description` text DEFAULT NULL,
  `is_active` enum('Active','InActive') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`post_comment_id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  CONSTRAINT `user_post_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_post_comment_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_post_comment` */

insert  into `user_post_comment`(`post_comment_id`,`post_id`,`user_id`,`comment_description`,`is_active`,`created_at`) values 
(2,43,9,'i also listen about this hockey match','InActive','2022-05-22 00:23:46'),
(3,46,9,'Who is the current our Uc Noor pur chairman','Active','2022-05-21 10:08:10'),
(4,46,10,'Your UC chairman is Muhammad Kha ODHO','Active','2022-05-21 12:54:43'),
(5,46,10,'No is not Our UC Chairmain','Active','2022-05-21 12:59:05'),
(6,46,10,'No is not Our UC Chairmain','Active','2022-05-21 12:59:10'),
(12,51,12,'Hello','Active','2022-05-24 09:51:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
