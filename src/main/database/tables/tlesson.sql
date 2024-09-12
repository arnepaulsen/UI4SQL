-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 192.168.1.4    Database: pmo
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.3-MariaDB-1:10.11.3+maria~ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tlesson`
--

DROP TABLE IF EXISTS `tlesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tlesson` (
  `lesson_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `status_cd` varchar(16) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `responsible_uid` int(10) DEFAULT NULL,
  `follow_up_date` datetime DEFAULT NULL,
  `impact_cd` varchar(16) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `follow_up_blob` varchar(1024) DEFAULT NULL,
  `impact_blob` varchar(1024) DEFAULT NULL,
  `solution_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lesson_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tlesson`
--

LOCK TABLES `tlesson` WRITE;
/*!40000 ALTER TABLE `tlesson` DISABLE KEYS */;
INSERT INTO `tlesson` VALUES (1,1,'Wait for Another Region to Install a Major Release First','TT','O','',13,NULL,'M','We changed two major business functions at the same time, and it was too much for the call center to handle at once. ','','',NULL,'',1,37,0,NULL,0,'2006-01-01 08:00:00','2007-01-25 08:44:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'Make Sure IB Knows Install Date for New Interface','TT','O','',31,'1900-01-01 00:00:00','M','IB didn\"t know we were installing the Scanning interface. ','','','','',37,37,NULL,0,NULL,'2006-11-09 11:16:00','2023-06-08 05:10:00',NULL,'1900-01-01 00:00:00',NULL,'N','N','','',''),(3,1,'Never Change Scope at Last Minute','TT','O','',75,'1900-01-01 12:00:00','M','IB didn\"t know we were installing the Scanning interface. ','','','','',37,37,NULL,0,NULL,'2006-11-09 11:17:00','2006-11-09 11:20:00',NULL,'1900-01-01 12:00:00',NULL,'N','N','','','');
/*!40000 ALTER TABLE `tlesson` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:24
