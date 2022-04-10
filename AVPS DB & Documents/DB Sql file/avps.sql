-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: avps
-- ------------------------------------------------------
-- Server version	5.5.49

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_login` (
  `aid` varchar(45) NOT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_login`
--

LOCK TABLES `admin_login` WRITE;
/*!40000 ALTER TABLE `admin_login` DISABLE KEYS */;
INSERT INTO `admin_login` VALUES ('admin','admin','admin');
/*!40000 ALTER TABLE `admin_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mem_login_details`
--

DROP TABLE IF EXISTS `mem_login_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mem_login_details` (
  `sno` int(11) NOT NULL,
  `mid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Terminal` varchar(45) DEFAULT NULL,
  `LoginTime` datetime DEFAULT NULL,
  `LogoutTime` datetime DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_login_details`
--

LOCK TABLES `mem_login_details` WRITE;
/*!40000 ALTER TABLE `mem_login_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `mem_login_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_login`
--

DROP TABLE IF EXISTS `member_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_login` (
  `mid` varchar(45) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `ph` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_login`
--

LOCK TABLES `member_login` WRITE;
/*!40000 ALTER TABLE `member_login` DISABLE KEYS */;
INSERT INTO `member_login` VALUES ('001','ab','9996685697','001'),('002','xy','9874562315','xyz'),('003','abd','9874563214','abc'),('005','abc','9632587415','abc'),('010','abcd','9874563212','010'),('123','xuy','9632587412','123'),('124','abc','9632587412','123');
/*!40000 ALTER TABLE `member_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking`
--

DROP TABLE IF EXISTS `parking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking` (
  `SlipNo` int(11) NOT NULL,
  `VehicleType` varchar(45) DEFAULT NULL,
  `VehicleNo` varchar(45) DEFAULT NULL,
  `InTime` datetime DEFAULT NULL,
  `OutTime` datetime DEFAULT NULL,
  `FloorNo` varchar(45) DEFAULT NULL,
  `Revenue` int(11) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SlipNo`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking`
--

LOCK TABLES `parking` WRITE;
/*!40000 ALTER TABLE `parking` DISABLE KEYS */;
INSERT INTO `parking` VALUES (1,'Car','256','2017-07-06 12:07:35','2017-07-06 12:09:09','2',20,'Exited'),(2,'Car','321','2017-07-11 13:55:03','2017-07-11 13:56:29','2',20,'Exited'),(3,'Car','357','2017-07-11 13:59:54','2017-07-11 14:09:32','2',20,'Exited'),(4,'Car','352','2017-07-23 18:57:07','2017-07-23 18:57:07','2',0,'Present'),(5,'Bike','362','2017-07-29 18:30:37','2017-07-29 18:32:57','0',10,'Exited'),(6,'Bike','523','2017-07-29 18:33:19','2017-07-29 18:33:19','0',0,'Present'),(7,'Car','987','2017-08-03 16:05:39','2017-08-03 16:05:39','2',0,'Present'),(8,'Bike','963','2017-08-03 16:09:55','2017-08-03 16:11:39','0',10,'Exited'),(9,'Car','321','2017-08-10 13:08:47','2017-08-10 13:08:47','2',0,'Present'),(10,'Car','12','2017-08-18 18:10:06','2017-08-18 18:10:06','2',0,'Present'),(11,'Car','123','2017-08-27 11:15:21','2017-08-27 11:18:10','2',20,'Exited'),(12,'Bike','vcc','2017-08-29 11:45:40','2017-08-29 11:46:13','0',10,'Exited'),(13,'Bike','1226','2017-08-31 17:30:25','2017-08-31 17:31:59','0',10,'Exited'),(14,'Car','123','2017-09-07 13:26:52','2017-09-07 13:29:54','2',20,'Exited'),(15,'Bike','123','2017-09-11 12:25:26','2017-09-11 12:27:06','0',10,'Exited');
/*!40000 ALTER TABLE `parking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parking_area`
--

DROP TABLE IF EXISTS `parking_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parking_area` (
  `FloorNo` varchar(20) NOT NULL,
  `VehicleType` varchar(45) DEFAULT NULL,
  `TotalSlots` int(11) DEFAULT NULL,
  `VacantSlots` int(11) DEFAULT NULL,
  PRIMARY KEY (`FloorNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parking_area`
--

LOCK TABLES `parking_area` WRITE;
/*!40000 ALTER TABLE `parking_area` DISABLE KEYS */;
INSERT INTO `parking_area` VALUES ('0','Bike',30,2),('1','Bike',36,3),('2','Car',25,12),('3','Car',20,20);
/*!40000 ALTER TABLE `parking_area` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-11 15:13:27
