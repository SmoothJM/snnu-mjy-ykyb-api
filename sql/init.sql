/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - snnu_mjy-ykyb-db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
USE `snnu_mjy-ykyb-db`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `stuCode` varchar(10) NOT NULL,
  `stuName` varchar(20) NOT NULL,
  `sex` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstLogin` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(15) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `wechat` varchar(50) DEFAULT NULL,
  `role` varchar(10) DEFAULT 'student',
  PRIMARY KEY (`stuCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`stuCode`,`stuName`,`sex`,`password`,`firstLogin`,`tel`,`birthday`,`qq`,`wechat`,`role`) values ('192621','鸭梨美女',0,'c90138c43a23d948198d1d50864d9e1f',0,NULL,NULL,NULL,NULL,'teater'),('root','root',1,'63a9f0ea7bb98050796b649e85481845',0,NULL,NULL,NULL,NULL,'root');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
