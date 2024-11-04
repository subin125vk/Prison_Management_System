/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB : Database - prison_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`prison_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `prison_management`;

/*Table structure for table `jailor` */

DROP TABLE IF EXISTS `jailor`;

CREATE TABLE `jailor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `jailor_id` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `txtpassword` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Data for the table `jailor` */

insert  into `jailor`(`id`,`fullname`,`jailor_id`,`age`,`dob`,`phonenumber`,`email`,`txtpassword`,`gender`) values 
(1,'test','fdfgfg',34,'2009-01-06','8532632455','test@gmail.com','Test123@','Male');

/*Table structure for table `prisoner` */

DROP TABLE IF EXISTS `prisoner`;

CREATE TABLE `prisoner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `prisoner_id` varchar(255) DEFAULT NULL,
  `casenumber` varchar(255) DEFAULT NULL,
  `edate` varchar(255) DEFAULT NULL,
  `rdate` varchar(255) DEFAULT NULL,
  `etime` varchar(255) DEFAULT NULL,
  `cdetail` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `econtact` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `prisoner` */

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `phonenumber` varchar(10) NOT NULL,
  `address` varchar(60) NOT NULL,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`staff_id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `staff` */

insert  into `staff`(`id`,`fullname`,`age`,`department`,`staff_id`,`phonenumber`,`address`,`gender`) values 
(12,'staff',25,'health','1245','8524123544','sdsdddddd','Male');

/*Table structure for table `visitor` */

DROP TABLE IF EXISTS `visitor`;

CREATE TABLE `visitor` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `prisonervisited` varchar(255) DEFAULT NULL,
  `visitorid` int(11) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `timeofvisit` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

/*Data for the table `visitor` */

insert  into `visitor`(`id`,`fullname`,`prisonervisited`,`visitorid`,`phonenumber`,`timeofvisit`,`address`,`gender`) values 
(2,'Aby','Aby',12345,'9565124151','13:36','Ajinora','Male');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
