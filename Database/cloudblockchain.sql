/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.45-community-nt : Database - cloudblockchain
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `cloudblockchain`;

USE `cloudblockchain`;

/*Table structure for table `blockchain` */

DROP TABLE IF EXISTS `blockchain`;

CREATE TABLE `blockchain` (
  `id` int(11) NOT NULL auto_increment,
  `loginuser` varchar(400) NOT NULL,
  `currenthash` varchar(400) NOT NULL,
  `previoushash` varchar(400) NOT NULL,
  `data` varchar(400) NOT NULL,
  `trnstimestamp` mediumtext NOT NULL,
  `nonce` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `blockchain` */

insert into `blockchain` values 
(1,'alex','000009ef13b699d2ef914f74b04933c0e9c0d1a49cb31b06b26e71c0ff44c789','0','Anuradha sending 1000000 to Canara Bank','1603199673135',105234),
(2,'meghana','00000cec2fa491e69d264bf55f7b5158febae79e0890f93fa29f261b2cebd497','000009ef13b699d2ef914f74b04933c0e9c0d1a49cb31b06b26e71c0ff44c789','vijayprakash sending 1000000 to FDI Bank','1603199793168',4650090),
(3,'alex','0000018b5ee78f4dfcba2023c7ff1ef9cd6ef88b4c4f0daef38fd766aca0bb8a','00000cec2fa491e69d264bf55f7b5158febae79e0890f93fa29f261b2cebd497','Anuradha sending 1000000 to Canara Bank','1603199996391',666215);

/*Table structure for table `insurancedetails` */

DROP TABLE IF EXISTS `insurancedetails`;

CREATE TABLE `insurancedetails` (
  `id` int(11) NOT NULL auto_increment,
  `loginuser` varchar(100) NOT NULL,
  `insuranceuser` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `insurancetype` varchar(100) NOT NULL,
  `insurancepremium` varchar(100) NOT NULL,
  `bnakname` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `insurancedetails` */

insert into `insurancedetails` values 
(4,'alex','Anuradha','9849098490','anuradha@gmail.com','Warangal','Health','1000000','Canara Bank'),
(5,'meghana','vijayprakash','9700189897','vijayprakash@gmail.com','Dachepalli','Health','1000000','FDI Bank'),
(6,'alex','Anuradha','9849098490','anuradha@gmail.com','Warangal','Health','1000000','Canara Bank');

/*Table structure for table `registrations` */

DROP TABLE IF EXISTS `registrations`;

CREATE TABLE `registrations` (
  `id` int(11) NOT NULL auto_increment,
  `custname` varchar(100) NOT NULL,
  `loginid` varchar(100) NOT NULL,
  `pswd` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `locality` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `loginid` (`loginid`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `loginid_2` (`loginid`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `registrations` */

insert into `registrations` values 
(1,'Alex','alex','Alex@141','9700189895','lx160cm@gmail.com','Hyderabad','#302, East Streets','Hyderabad','Telangana','Activated'),
(2,'meghana','meghana','Meghana@141','9715278789','meghanaarumalla@gmail.com','Vijayawada','#202, Milka way','Vijayawada','Andhrapradesh','Activated'),
(3,'Sagar','sagar','Sagarbabu@141','9875622565','sagarmarri121@gmail.com','Godavarikhani','#301 New galgave','Godhavarikhani','Telangana','Activated'),
(4,'harish','harish','Harish@141','9840256568','gangishetttyharish@gmail.com','Markapuram','#201, new galwan streets','Godavarikhani','Andhrapradesh','waiting'),
(5,'Sirisha','sirisha','Sirisha@141','9849052147','siripaya@aol.com','Gujarath','#201, new Morline Tours','Gujarath','Gujarath','waiting'),
(6,'shaan','saishaan','Saishaan@141','9704589897','saishaan@gmail.com','Warangal','#303, New Markande Streets','Hyderabd','Telangana','waiting');

/*Table structure for table `trnxdetails` */

DROP TABLE IF EXISTS `trnxdetails`;

CREATE TABLE `trnxdetails` (
  `id` int(11) NOT NULL auto_increment,
  `loginuser` varchar(100) NOT NULL,
  `nameoncard` varchar(100) NOT NULL,
  `totalamount` varchar(100) NOT NULL,
  `cardnumber` varchar(100) NOT NULL,
  `cvv` varchar(100) NOT NULL,
  `cardexpiry` varchar(100) NOT NULL,
  `blkplatform` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `trnxdetails` */

insert into `trnxdetails` values 
(2,'alex','Anu','1000000','1500200380095612','382','2024-12','AWS Blockchain'),
(3,'meghana','Suren','1000000','9876543210123456','487','2022-01','Azure Blockchain'),
(4,'alex','Anu','1000000','1500200380095612','382','2024-12','AWS Blockchain');
