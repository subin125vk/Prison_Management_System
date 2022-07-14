/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `jailor` (
	`id` int (11),
	`fullname` varchar (765),
	`jailor_id` varchar (765),
	`age` int (11),
	`dob` varchar (765),
	`phonenumber` varchar (765),
	`email` varchar (765),
	`username` varchar (765),
	`password` varchar (765),
	`gender` varchar (765)
); 
insert into `jailor` (`id`, `fullname`, `jailor_id`, `age`, `dob`, `phonenumber`, `email`, `username`, `password`, `gender`) values('1','sub','sub12','25','1997-01-01','9595959595','s@g.c','sub12','sub12','on');
insert into `jailor` (`id`, `fullname`, `jailor_id`, `age`, `dob`, `phonenumber`, `email`, `username`, `password`, `gender`) values('2','subin','subin12','25','1985-02-21','9565656565','s@g.c','sub123','sub123','on');
insert into `jailor` (`id`, `fullname`, `jailor_id`, `age`, `dob`, `phonenumber`, `email`, `username`, `password`, `gender`) values('3','abc','sub1231213','24','1999-03-25','9565456456','ssss@g.c','sub','12312345645678979','on');
insert into `jailor` (`id`, `fullname`, `jailor_id`, `age`, `dob`, `phonenumber`, `email`, `username`, `password`, `gender`) values('4','abc','123abc','30','1992-01-31','9595959595','subabc@g.c','subabcabc','subab','on');
