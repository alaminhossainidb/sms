-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema sms
--

CREATE DATABASE IF NOT EXISTS sms;
USE sms;

--
-- Definition of table `cost`
--

DROP TABLE IF EXISTS `cost`;
CREATE TABLE `cost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `month` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

/*!40000 ALTER TABLE `cost` DISABLE KEYS */;
INSERT INTO `cost` (`id`,`description`,`amount`,`month`,`date`,`year`) VALUES 
 (1,'Books',4500,'March','12-04-2021','2021'),
 (2,'Printer',8000,'May','12-04-2021','2022'),
 (3,'Pens',6500,'April','13-04-2021','2021'),
 (4,'Khata',9500,'April','13-04-2021','2021'),
 (5,'Guide',9000,'April','14-04-2021','2021'),
 (6,'Books',9000,'April','24-04-2021','2021'),
 (7,'pen',2000,'May','17-05-2021','2021');
/*!40000 ALTER TABLE `cost` ENABLE KEYS */;


--
-- Definition of table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `s_mark` int(10) unsigned NOT NULL,
  `e_mark` int(10) unsigned NOT NULL,
  `gpa` double NOT NULL,
  `grade` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grade`
--

/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` (`id`,`s_mark`,`e_mark`,`gpa`,`grade`) VALUES 
 (1,0,32,0,'F'),
 (2,33,39,1,'D'),
 (5,40,49,2,'C'),
 (6,50,59,3,'B'),
 (7,60,69,3.5,'A-'),
 (8,70,79,4,'A'),
 (9,80,100,5,'A+');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;


--
-- Definition of table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pass` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` (`id`,`pass`,`role`) VALUES 
 (2,'123456','USER'),
 (3,'123','ADMIN'),
 (4,'12345','ACCOUNTS');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Definition of table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  `year` varchar(45) NOT NULL,
  `term` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `marks` int(4) unsigned NOT NULL,
  `gpa` double NOT NULL,
  `grade` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`id`,`name`,`class`,`roll`,`year`,`term`,`subject`,`marks`,`gpa`,`grade`) VALUES 
 (1,'A','PLAY',1,'2021','1ST TERM','Bangla',95,5,'A+'),
 (2,'A','PLAY',1,'2021','1ST TERM','English',75,4,'A'),
 (3,'A','PLAY',1,'2021','1ST TERM','Math',62,3.5,'A-'),
 (4,'B','TWO',1,'2021','1ST TERM','Bangla',25,0,'F'),
 (5,'B','TWO',1,'2021','1ST TERM','English',45,2,'C'),
 (6,'B','TWO',1,'2021','1ST TERM','Math',58,3,'B'),
 (7,'C','ONE',4,'2021','1ST TERM','Bangla',85,5,'A+'),
 (8,'C','ONE',4,'2021','1ST TERM','English',69,3.5,'A-'),
 (9,'C','ONE',4,'2021','1ST TERM','Math',33,1,'D'),
 (10,'D','NURSERY',2,'2021','1ST TERM','Bangla',88,5,'A+'),
 (11,'D','NURSERY',2,'2021','1ST TERM','English',95,5,'A+'),
 (12,'D','NURSERY',2,'2021','1ST TERM','Math',99,5,'A+'),
 (13,'E','ONE',3,'2021','2ND TERM','Bangla',65,3.5,'A-'),
 (14,'E','ONE',3,'2021','2ND TERM','English',65,3.5,'A-'),
 (15,'E','ONE',3,'2021','2ND TERM','Math',76,4,'A'),
 (16,'F','NURSERY',4,'2021','FINAL','Bangla',98,5,'A+'),
 (17,'F','NURSERY',4,'2021','FINAL','English',43,2,'C'),
 (18,'F','NURSERY',4,'2021','FINAL','Math',76,4,'A'),
 (19,'G','NURSERY',3,'2021','1ST TERM','Bangla',53,3,'B'),
 (20,'G','NURSERY',3,'2021','1ST TERM','English',67,3.5,'A-'),
 (21,'G','NURSERY',3,'2021','1ST TERM','Math',87,5,'A+'),
 (22,'AA','NURSERY',4,'2021','1ST TERM','Bangla',65,3.5,'A-'),
 (23,'AA','NURSERY',4,'2021','1ST TERM','English',67,3.5,'A-'),
 (24,'AA','NURSERY',4,'2021','1ST TERM','Math',98,5,'A+'),
 (25,'AAA','ONE',1,'2021','1ST TERM','Bangla',87,5,'A+'),
 (26,'AAA','ONE',1,'2021','1ST TERM','English',54,3,'B'),
 (27,'AAA','ONE',1,'2021','1ST TERM','Math',74,4,'A'),
 (28,'Hasan','THREE',1,'2021','1ST TERM','Bangla',96,5,'A+'),
 (29,'Hasan','THREE',1,'2021','1ST TERM','English',54,3,'B'),
 (30,'Hasan','THREE',1,'2021','1ST TERM','Math',67,3.5,'A-'),
 (31,'Hasan','THREE',1,'2021','1ST TERM','Bangladesh & Global Study',77,4,'A'),
 (32,'Hasan','THREE',1,'2021','1ST TERM','Science',88,5,'A+'),
 (33,'Hasan','THREE',1,'2021','1ST TERM','Religion',98,5,'A+'),
 (34,'Tahsan','FIVE',1,'2021','1ST TERM','Bangla',97,5,'A+'),
 (35,'Tahsan','FIVE',1,'2021','1ST TERM','English',65,3.5,'A-'),
 (36,'Tahsan','FIVE',1,'2021','1ST TERM','Math',76,4,'A'),
 (37,'Tahsan','FIVE',1,'2021','1ST TERM','Bangladesh & Global Study',87,5,'A+'),
 (38,'Tahsan','FIVE',1,'2021','1ST TERM','Science',56,3,'B'),
 (39,'Tahsan','FIVE',1,'2021','1ST TERM','Religion',45,2,'C'),
 (40,'Kamal','FOUR',1,'2021','1ST TERM','Bangla',45,2,'C'),
 (41,'Kamal','FOUR',1,'2021','1ST TERM','English',66,3.5,'A-'),
 (42,'Kamal','FOUR',1,'2021','1ST TERM','Math',77,4,'A'),
 (43,'Kamal','FOUR',1,'2021','1ST TERM','Bang.& Global Study',88,5,'A+'),
 (44,'Kamal','FOUR',1,'2021','1ST TERM','Science',99,5,'A+'),
 (45,'Kamal','FOUR',1,'2021','1ST TERM','Religion',55,3,'B'),
 (46,'Habib','SIX',1,'2021','1ST TERM','Bangla-1',87,5,'A+'),
 (47,'Habib','SIX',1,'2021','1ST TERM','Bangla-2',66,3.5,'A-'),
 (48,'Habib','SIX',1,'2021','1ST TERM','English-1',55,3,'B'),
 (49,'Habib','SIX',1,'2021','1ST TERM','English-2',55,3,'B'),
 (50,'Habib','SIX',1,'2021','1ST TERM','Math',44,2,'C'),
 (51,'Habib','SIX',1,'2021','1ST TERM','Bang. & Global Study',98,5,'A+'),
 (52,'Habib','SIX',1,'2021','1ST TERM','Science',77,4,'A'),
 (53,'Habib','SIX',1,'2021','1ST TERM','Religion',88,5,'A+'),
 (54,'Habib','SIX',1,'2021','1ST TERM','ICT',76,4,'A'),
 (55,'Habib','SIX',1,'2021','1ST TERM','ARTS & CRAFT',97,5,'A+'),
 (56,'Habib','SIX',1,'2021','1ST TERM','AGRICULTURE',66,3.5,'A-'),
 (57,'Sallu','EIGHT',1,'2021','1ST TERM','Bangla',88,5,'A+'),
 (58,'Sallu','EIGHT',1,'2021','1ST TERM','English',76,4,'A'),
 (59,'Sallu','EIGHT',1,'2021','1ST TERM','Math',98,5,'A+'),
 (60,'Sallu','EIGHT',1,'2021','1ST TERM','Bang. & Global Study',77,4,'A'),
 (61,'Sallu','EIGHT',1,'2021','1ST TERM','Science',56,3,'B'),
 (62,'Sallu','EIGHT',1,'2021','1ST TERM','Religion',88,5,'A+'),
 (63,'Sallu','EIGHT',1,'2021','1ST TERM','ICT',33,1,'D'),
 (64,'Sallu','EIGHT',1,'2021','1ST TERM','ARTS & CRAFT',55,3,'B'),
 (65,'Sallu','EIGHT',1,'2021','1ST TERM','HOME ECONOMICS',56,3,'B'),
 (66,'Jamal','EIGHT',2,'2021','1ST TERM','Bangla',76,4,'A'),
 (67,'Jamal','EIGHT',2,'2021','1ST TERM','English',88,5,'A+'),
 (68,'Jamal','EIGHT',2,'2021','1ST TERM','Math',88,5,'A+'),
 (69,'Jamal','EIGHT',2,'2021','1ST TERM','Bang. & Global Study',55,3,'B'),
 (70,'Jamal','EIGHT',2,'2021','1ST TERM','Science',76,4,'A'),
 (71,'Jamal','EIGHT',2,'2021','1ST TERM','Religion',76,4,'A'),
 (72,'Jamal','EIGHT',2,'2021','1ST TERM','ICT',87,5,'A+'),
 (73,'Jamal','EIGHT',2,'2021','1ST TERM','Arts & Craft',65,3.5,'A-'),
 (74,'Jamal','EIGHT',2,'2021','1ST TERM','Home Economics',43,2,'C'),
 (75,'Al-Amin','TEN',1,'2021','1ST TERM','Bangla-1',85,5,'A+'),
 (76,'Al-Amin','TEN',1,'2021','1ST TERM','Bangla-2',95,5,'A+'),
 (77,'Al-Amin','TEN',1,'2021','1ST TERM','English-1',66,3.5,'A-'),
 (78,'Al-Amin','TEN',1,'2021','1ST TERM','English-2',75,4,'A'),
 (79,'Al-Amin','TEN',1,'2021','1ST TERM','Math',88,5,'A+'),
 (80,'Al-Amin','TEN',1,'2021','1ST TERM','Biology',78,4,'A'),
 (81,'Al-Amin','TEN',1,'2021','1ST TERM','Social Science',65,3.5,'A-'),
 (82,'Al-Amin','TEN',1,'2021','1ST TERM','Religion',89,5,'A+'),
 (83,'Al-Amin','TEN',1,'2021','1ST TERM','ICT',90,5,'A+'),
 (84,'Al-Amin','TEN',1,'2021','1ST TERM','Physics',85,5,'A+'),
 (85,'Al-Amin','TEN',1,'2021','1ST TERM','Chemistry',86,5,'A+'),
 (86,'Al-Amin','TEN',1,'2021','1ST TERM','Higher Math',45,2,'C'),
 (87,'Sulaiman','ONE',2,'2021','1ST TERM','Bangla',98,5,'A+'),
 (88,'Sulaiman','ONE',2,'2021','1ST TERM','English',85,5,'A+'),
 (89,'Sulaiman','ONE',2,'2021','1ST TERM','Math',85,5,'A+'),
 (90,'sdgf','TEN',5,'2021','1ST TERM','Bangla-2',65,3.5,'A-'),
 (91,'sdgf','TEN',5,'2021','1ST TERM','English-1',45,2,'C'),
 (92,'sdgf','TEN',5,'2021','1ST TERM','English-2',55,3,'B'),
 (93,'sdgf','TEN',5,'2021','1ST TERM','Math',33,1,'D'),
 (94,'sdgf','TEN',5,'2021','1ST TERM','Biology',23,0,'F'),
 (95,'sdgf','TEN',5,'2021','1ST TERM','Social Science',34,1,'D'),
 (96,'sdgf','TEN',5,'2021','1ST TERM','Religion',54,3,'B'),
 (97,'sdgf','TEN',5,'2021','1ST TERM','ICT',54,3,'B'),
 (98,'sdgf','TEN',5,'2021','1ST TERM','Physics',45,2,'C'),
 (99,'sdgf','TEN',5,'2021','1ST TERM','Chemistry',54,3,'B'),
 (100,'sdgf','TEN',5,'2021','1ST TERM','Higher Math',88,5,'A+'),
 (101,'dsgf','TEN',54,'2021','1ST TERM','Bangla-2',55,3,'B'),
 (102,'dsgf','TEN',54,'2021','1ST TERM','English-1',55,3,'B'),
 (103,'dsgf','TEN',54,'2021','1ST TERM','English-2',44,2,'C'),
 (104,'dsgf','TEN',54,'2021','1ST TERM','Math',44,2,'C'),
 (105,'dsgf','TEN',54,'2021','1ST TERM','Home Economics',44,2,'C'),
 (106,'dsgf','TEN',54,'2021','1ST TERM','Social Science',33,1,'D'),
 (107,'dsgf','TEN',54,'2021','1ST TERM','Religion',44,2,'C'),
 (108,'dsgf','TEN',54,'2021','1ST TERM','ICT',44,2,'C'),
 (109,'dsgf','TEN',54,'2021','1ST TERM','Physics',44,2,'C'),
 (110,'dsgf','TEN',54,'2021','1ST TERM','Chemistry',44,2,'C'),
 (111,'dsgf','TEN',54,'2021','1ST TERM','Higher Math',44,2,'C'),
 (112,'gd','NINE',5,'2021','1ST TERM','Bangla-2',55,3,'B'),
 (113,'gd','NINE',5,'2021','1ST TERM','English-1',55,3,'B'),
 (114,'gd','NINE',5,'2021','1ST TERM','English-2',55,3,'B'),
 (115,'gd','NINE',5,'2021','1ST TERM','Math',55,3,'B'),
 (116,'gd','NINE',5,'2021','1ST TERM','Agriculture',55,3,'B'),
 (117,'gd','NINE',5,'2021','1ST TERM','Social Science',55,3,'B'),
 (118,'gd','NINE',5,'2021','1ST TERM','Religion',55,3,'B'),
 (119,'gd','NINE',5,'2021','1ST TERM','ICT',55,3,'B'),
 (120,'gd','NINE',5,'2021','1ST TERM','Economics',55,3,'B'),
 (121,'gd','NINE',5,'2021','1ST TERM','Finance',55,3,'B'),
 (122,'gd','NINE',5,'2021','1ST TERM','Higher Math',5,0,'F'),
 (123,'rt','NINE',6,'2021','1ST TERM','Bangla-2',55,3,'B'),
 (124,'rt','NINE',6,'2021','1ST TERM','English-1',55,3,'B'),
 (125,'rt','NINE',6,'2021','1ST TERM','English-2',55,3,'B'),
 (126,'rt','NINE',6,'2021','1ST TERM','Math',55,3,'B'),
 (127,'rt','NINE',6,'2021','1ST TERM','Agriculture',55,3,'B'),
 (128,'rt','NINE',6,'2021','1ST TERM','Social Science',55,3,'B'),
 (129,'rt','NINE',6,'2021','1ST TERM','Religion',55,3,'B'),
 (130,'rt','NINE',6,'2021','1ST TERM','ICT',55,3,'B'),
 (131,'rt','NINE',6,'2021','1ST TERM','Physics',55,3,'B'),
 (132,'rt','NINE',6,'2021','1ST TERM','Chemistry',55,3,'B'),
 (133,'rt','NINE',6,'2021','1ST TERM','Higher Math',55,3,'B'),
 (134,'ggh','--- SELECT ONE ---',1,'--- SELECT ONE ---','--- SELECT ONE ---','Bangla',56,3,'B'),
 (135,'ggh','--- SELECT ONE ---',1,'--- SELECT ONE ---','--- SELECT ONE ---','English',65,3.5,'A-'),
 (136,'ggh','--- SELECT ONE ---',1,'--- SELECT ONE ---','--- SELECT ONE ---','Math',69,3.5,'A-'),
 (137,'Sabbir','SIX',1,'2021','1ST TERM','Bangla-1',88,5,'A+'),
 (138,'Sabbir','SIX',1,'2021','1ST TERM','Bangla-2',54,3,'B'),
 (139,'Sabbir','SIX',1,'2021','1ST TERM','English-1',78,4,'A'),
 (140,'Sabbir','SIX',1,'2021','1ST TERM','English-2',56,3,'B'),
 (141,'Sabbir','SIX',1,'2021','1ST TERM','Math',56,3,'B'),
 (142,'Sabbir','SIX',1,'2021','1ST TERM','Bang. & Global Study',96,5,'A+'),
 (143,'Sabbir','SIX',1,'2021','1ST TERM','Science',56,3,'B'),
 (144,'Sabbir','SIX',1,'2021','1ST TERM','Religion',98,5,'A+'),
 (145,'Sabbir','SIX',1,'2021','1ST TERM','ICT',54,3,'B'),
 (146,'Sabbir','SIX',1,'2021','1ST TERM','Arts & Craft',54,3,'B'),
 (147,'Sabbir','SIX',1,'2021','1ST TERM','Agriculture',88,5,'A+'),
 (148,'sadfs','THREE',4,'2021','1ST TERM','Bangla',76,4,'A'),
 (149,'sadfs','THREE',4,'2021','1ST TERM','English',78,4,'A'),
 (150,'sadfs','THREE',4,'2021','1ST TERM','Math',88,5,'A+'),
 (151,'sadfs','THREE',4,'2021','1ST TERM','Bang. & Global Study',88,5,'A+'),
 (152,'sadfs','THREE',4,'2021','1ST TERM','Science',98,5,'A+'),
 (153,'sadfs','THREE',4,'2021','1ST TERM','Religion',99,5,'A+');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


--
-- Definition of table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`id`,`role`) VALUES 
 (1,'ADMIN'),
 (2,'USER'),
 (3,'ACCOUNTS');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


--
-- Definition of table `student_attendence`
--

DROP TABLE IF EXISTS `student_attendence`;
CREATE TABLE `student_attendence` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  `year` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_attendence`
--

/*!40000 ALTER TABLE `student_attendence` DISABLE KEYS */;
INSERT INTO `student_attendence` (`id`,`name`,`class`,`roll`,`year`,`time`,`date`,`sid`) VALUES 
 (9,'Tahsan','EIGHT',1,'2021','6-04-2021 at 10:52:15 AM','1',0),
 (10,'B','NURSERY',4,'2026','6-04-2021 at 10:52:19 AM','16',0),
 (11,'Tahsan','EIGHT',1,'2021','6-04-2021 at 10:55:20 AM','1',0),
 (12,'Tahsan','EIGHT',1,'2021','6-04-2021 at 10:55:54 AM','1',0),
 (13,'Tahsan','EIGHT',1,'2021','6-04-2021 at 10:58:07 AM','1',0),
 (14,'Tahsan','EIGHT',1,'2021','6-04-2021 at 10:58:24 AM','1',0),
 (15,'Tahsan','EIGHT',1,'2021','6-04-2021 at 11:22:50 AM','1',0),
 (16,'Tahsan','EIGHT',1,'2021','6-04-2021 at 11:23:34 AM','1',0),
 (17,'Tahsan','EIGHT',1,'2021','12-04-2021 at 10:32:32 PM','1',0),
 (18,'Tahsan','EIGHT',1,'2021','12-04-2021 at 10:48:07 PM','1',0),
 (19,'B','NURSERY',4,'2026','12-04-2021 at 10:51:16 PM','16',0),
 (20,'Tahsan','EIGHT',1,'2021','12-04-2021 at 10:52:49 PM','1',0),
 (21,'Tahsan','EIGHT',1,'2021','12-04-2021 at 10:54:24 PM','1',0),
 (22,'dsfsd','NURSERY',3,'2024','12-04-2021 at 10:54:32 PM','5',0),
 (23,'werwq','NURSERY',4,'2025','12-04-2021 at 10:54:43 PM','9',0),
 (24,'B','NURSERY',4,'2026','12-04-2021 at 10:54:54 PM','16',0),
 (25,'Tahsan','EIGHT',1,'2021','12-04-2021 at 11:05:48 PM','1',0),
 (26,'B','NURSERY',4,'2026','12-04-2021 at 11:08:28 PM','16',0),
 (27,'Tahsan','EIGHT',1,'2021','12-04-2021 at 11:08:33 PM','1',0),
 (28,'B','NURSERY',4,'2026','12-04-2021 at 11:08:38 PM','16',0),
 (29,'Tahsan','EIGHT',1,'2021','13-04-2021 at 12:55:17 AM','13-04-2021',1),
 (30,'Tahsan','EIGHT',1,'2021','12:55:42 AM','13-04-2021',1),
 (31,'Tahsan','EIGHT',1,'2021','01:04:08 AM','13-04-2021',1),
 (32,'B','NURSERY',4,'2026','01:04:19 AM','13-04-2021',16),
 (33,'dsfsd','NURSERY',3,'2024','01:04:23 AM','13-04-2021',6),
 (34,'Tahsan','EIGHT',1,'2026','11:34:11 PM','19-04-2021',1),
 (35,'B','NURSERY',4,'2026','11:34:17 PM','19-04-2021',16),
 (36,'Tahsan','EIGHT',1,'2026','10:14:00 AM','20-04-2021',1),
 (37,'sadfs','THREE',4,'2023','10:14:07 AM','20-04-2021',8),
 (38,'Tahsan','EIGHT',1,'2021','12:27:24 PM','17-05-2021',1),
 (39,'B','NURSERY',4,'2026','12:27:41 PM','17-05-2021',16),
 (40,'Tahsan','EIGHT',1,'2021','11:55:51 PM','18-05-2021',1),
 (41,'werwq','NURSERY',4,'2021','11:55:57 PM','18-05-2021',9),
 (42,'Tahsan','EIGHT',1,'2021','11:56:32 PM','18-05-2021',1);
/*!40000 ALTER TABLE `student_attendence` ENABLE KEYS */;


--
-- Definition of table `student_fees`
--

DROP TABLE IF EXISTS `student_fees`;
CREATE TABLE `student_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `mother_name` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  `year` varchar(45) NOT NULL,
  `fee` int(10) unsigned NOT NULL,
  `month` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_fees`
--

/*!40000 ALTER TABLE `student_fees` DISABLE KEYS */;
INSERT INTO `student_fees` (`id`,`name`,`father_name`,`mother_name`,`class`,`roll`,`year`,`fee`,`month`,`type`) VALUES 
 (1,'Tahsan','Hashem','Asma','EIGHT',1,'2021',800,'JANUARY','MONTHLY FEES'),
 (2,'Tahsan','Hashem','Asma','EIGHT',1,'2021',800,'FEBRUARY','MONTHLY FEES'),
 (3,'Tahsan','Hashem','Asma','EIGHT',1,'2021',800,'DECEMBER','MONTHLY FEES'),
 (4,'Tahsan','Hashem','Asma','EIGHT',1,'2021',800,'APRIL','MONTHLY FEES'),
 (5,'dsfsd','sadfsa','asdf','NURSERY',3,'2021',500,'APRIL','MONTHLY FEES'),
 (6,'dsfsd','sadfsa','asdf','NURSERY',3,'2021',500,'APRIL','MONTHLY FEES'),
 (7,'dsfgdsg','dsfg','sfds','TWO',4,'2021',500,'MAY','MONTHLY FEES');
/*!40000 ALTER TABLE `student_fees` ENABLE KEYS */;


--
-- Definition of table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `presentAddress` varchar(45) NOT NULL,
  `permanentAddress` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `class` varchar(45) NOT NULL,
  `bid` longtext NOT NULL,
  `year` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `roll` int(10) unsigned NOT NULL,
  `fees` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` (`id`,`name`,`f_name`,`m_name`,`presentAddress`,`permanentAddress`,`religion`,`class`,`bid`,`year`,`mobile`,`gender`,`roll`,`fees`) VALUES 
 (1,'Tahsan','Hashem','Asma','Kajla, Dhaka-1236','Kajla, Dhaka-1236','ISLAM','EIGHT','32424','2021','01555123123','MALE',1,3500),
 (5,'dsfsd','sadfsa','asdf','sdfsdf','sfds','HINDU','NURSERY','3243','2021','2342','MALE',3,4500),
 (6,'dsfsd','sadfsa','asdf','sdfsdf','sfds','HINDU','NURSERY','3243','2021','2342','MALE',3,4500),
 (7,'dsfgdsg','dsfg','sfds','dfgdf','dsgfds','HINDU','TWO','34534','2021','345345','MALE',4,6000),
 (8,'sadfs','asdf','asfd','sdfsaf','sdfasd','HINDU','THREE','4534','2021','32423','FEMALE',4,2500),
 (9,'werwq','sfds','sdfs','sdfsf','werw','OTHERS','NURSERY','435325','2021','342532','MALE',4,5000),
 (11,'Sallu Mallu','sdf','sdf','sdfs','sdfsaf','HINDU','ONE','3453','2021','32432','MALE',44,6000),
 (12,'Tahsan','Hashem','Asma','Kajla, Dhaka-1236','Kajla, Dhaka-1236','ISLAM','EIGHT','32424','2021','01555123123','MALE',1,3500),
 (13,'sddg','dfsafa','sadfs','sdfs','sdfsaf','HINDU','ONE','53453','2026','34534','MALE',443,5555),
 (16,'B','sdgf','fghfg','asdf','sdfsa','BUDDIST','NURSERY','1111111111','2026','6436436','MALE',4,45345),
 (17,'fghd','gfhf','ghj','fdgd','gfh','BUDDIST','ONE','456','2023','4563','MALE',5,5000),
 (18,'ghvh','jnkj','jhb','bn','klmn','ISLAM','ONE','454412','2026','1251210','MALE',55,5000),
 (19,'Kalam Khan','sadf','sdf','safd','sadfs','ISLAM','ONE','5564','2026','015589','MALE',2,3000),
 (20,'Habib','Halim','Halima','dsgfds','dsgdsgf','ISLAM','NINE','56786','2021','0126554558','MALE',1,8000),
 (21,'Sabbir','Saqlain','Sabina','dgds','sdgsd','ISLAM','SIX','455868','2021','015545754','MALE',1,7000);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;


--
-- Definition of table `teacher_payment`
--

DROP TABLE IF EXISTS `teacher_payment`;
CREATE TABLE `teacher_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `father_name` varchar(45) NOT NULL,
  `mother_name` varchar(45) NOT NULL,
  `post` varchar(45) NOT NULL,
  `salary` int(10) unsigned NOT NULL,
  `month` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `year` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_payment`
--

/*!40000 ALTER TABLE `teacher_payment` DISABLE KEYS */;
INSERT INTO `teacher_payment` (`id`,`name`,`father_name`,`mother_name`,`post`,`salary`,`month`,`date`,`year`) VALUES 
 (1,'sdaf','asdf','dsf','HEADMASTER',234,'JANUARY','11-04-2021',''),
 (2,'sdaf','asdf','dsf','HEADMASTER',234,'--- SELECT ONE ---','12-04-2021',''),
 (3,'sdaf','asdf','dsf','HEADMASTER',234,'FEBRUARY','15-04-2021','2021');
/*!40000 ALTER TABLE `teacher_payment` ENABLE KEYS */;


--
-- Definition of table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `f_name` varchar(45) NOT NULL,
  `m_name` varchar(45) NOT NULL,
  `presentAddress` varchar(45) NOT NULL,
  `permanentAddress` varchar(45) NOT NULL,
  `religion` varchar(45) NOT NULL,
  `maritalStatus` varchar(45) NOT NULL,
  `post` varchar(45) NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `mobile` varchar(45) NOT NULL,
  `salary` int(10) unsigned NOT NULL,
  `education` varchar(45) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` (`id`,`name`,`f_name`,`m_name`,`presentAddress`,`permanentAddress`,`religion`,`maritalStatus`,`post`,`nid`,`mobile`,`salary`,`education`,`subject`,`gender`) VALUES 
 (3,'sdaf','asdf','dsf','sadf','sadf','ISLAM','SINGLE','HEADMASTER',543232,'234',234,'SSC','sdfsa','MALE');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;


--
-- Definition of table `teachers_attend`
--

DROP TABLE IF EXISTS `teachers_attend`;
CREATE TABLE `teachers_attend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `post` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `date` varchar(45) NOT NULL,
  `tid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers_attend`
--

/*!40000 ALTER TABLE `teachers_attend` DISABLE KEYS */;
INSERT INTO `teachers_attend` (`id`,`name`,`post`,`time`,`date`,`tid`) VALUES 
 (1,'sdaf','HEADMASTER','6-04-2021 at 11:21:49 AM','3',0),
 (2,'sdaf','HEADMASTER','6-04-2021 at 11:23:05 AM','3',0),
 (3,'sdaf','HEADMASTER','6-04-2021 at 11:23:37 AM','3',0),
 (4,'sdaf','HEADMASTER','12-04-2021 at 10:49:58 PM','3',0),
 (5,'sdaf','HEADMASTER','01:01:02 AM','13-04-2021',3),
 (6,'sdaf','HEADMASTER','01:01:46 AM','13-04-2021',3),
 (7,'sdaf','HEADMASTER','01:02:29 AM','13-04-2021',3),
 (8,'sdaf','HEADMASTER','01:04:13 AM','13-04-2021',3),
 (9,'sdaf','HEADMASTER','11:34:24 PM','19-04-2021',3),
 (10,'sdaf','HEADMASTER','10:15:35 AM','20-04-2021',3),
 (11,'sdaf','HEADMASTER','12:27:57 PM','17-05-2021',3);
/*!40000 ALTER TABLE `teachers_attend` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
