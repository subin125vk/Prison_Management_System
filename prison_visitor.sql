/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.24-MariaDB 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `visitor` (
	`visitorid` int (11),
	`fullname` varchar (765),
	`prisonervisited` varchar (765),
	`phonenumber` varchar (765),
	`timeofvisit` varchar (765),
	`address` varchar (765),
	`gender` varchar (765)
); 
insert into `visitor` (`visitorid`, `fullname`, `prisonervisited`, `phonenumber`, `timeofvisit`, `address`, `gender`) values('123','sub','sub','1234567980','12:12','asdfgrewe','on');
