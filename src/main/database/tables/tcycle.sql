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
-- Table structure for table `tcycle`
--

DROP TABLE IF EXISTS `tcycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcycle` (
  `cycle_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `phase_cd` varchar(4) DEFAULT NULL,
  `logical_day_nm` varchar(100) DEFAULT NULL,
  `simulation_date` datetime DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `actual_start_date` datetime DEFAULT NULL,
  `actual_end_date` datetime DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `objectives_blob` varchar(1024) DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `closed_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`cycle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcycle`
--

LOCK TABLES `tcycle` WRITE;
/*!40000 ALTER TABLE `tcycle` DISABLE KEYS */;
INSERT INTO `tcycle` VALUES (1,1,'SI-D01','System Integration - Day 1','Having problem with Critrix Servers','C','','I','1','2007-02-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',22,'Dedicated to test case set-up. ','All applications must complete connectivity testing. ','Complete set-up of all customer accounts. ',NULL,0,1,37,0,NULL,0,'2006-01-01 08:00:00','2022-04-04 07:59:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'SI-D01','System Integration - Day 2','Having problem with Critrix Servers','I','','I','2','2007-02-02 00:00:00',NULL,NULL,NULL,NULL,22,'Dedicated to test case set-up. ','All applications must complete connectivity testing. ','Complete set-up of all customer accounts. ',NULL,0,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,'SI-D03','System Integration - Day 3','Waiting for Day 2','O','','I','3','2007-02-03 00:00:00','2005-04-01 00:00:00','2005-04-21 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00',22,'Dedicated to test case set-up. ','All applications must complete connectivity testing. ','Complete set-up of all customer accounts. ',NULL,0,1,37,0,NULL,0,'2006-01-01 08:00:00','2007-01-25 08:43:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,25,'UT-DAY-1','Day 333 from view','','I','','U','1','2005-05-06 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',22,'','','',NULL,0,1,37,0,NULL,0,'2006-01-01 08:00:00','2022-03-03 01:29:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tcycle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:23
