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
-- Table structure for table `tmigrate`
--

DROP TABLE IF EXISTS `tmigrate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmigrate` (
  `migrate_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `region_cd` varchar(12) DEFAULT NULL,
  `release_id` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `resolution_blob` varchar(1024) DEFAULT NULL,
  `dependency_blob` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`migrate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmigrate`
--

LOCK TABLES `tmigrate` WRITE;
/*!40000 ALTER TABLE `tmigrate` DISABLE KEYS */;
INSERT INTO `tmigrate` VALUES (1,1,'MIG-223','Module Fixes for Reanamed Tables.','Waiting for DB2 Table Changes','C','M',22,'SYSTA',1,'Move modues AB, CD, and EF from Unit to Integration Region.','','','',NULL,22,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'CON-892','Configure Timeout Thresholds','Waiting for re-start of region.','P','H',22,'UNIT',1,'Change timeout value from 10 to 5 minutes. ','Default value was being used. ','Must re-gen all transaction control blocks.','CICS Relase 10.2 upgrade.','2005-02-01 00:00:00',21,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,'MODS-LIST-3','Post Modules','Use Clear Case View  TST-989','P','L',22,'TESTC',2,'Change request CR-898','','','','0000-00-00 00:00:00',22,1,37,1,NULL,0,'2006-01-01 08:00:00','2009-11-03 08:55:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,25,'MG-FEE-1','FeeModule','waiting for test outage window.','C','M',22,'SYSTA',1,'','','','',NULL,22,1,0,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tmigrate` ENABLE KEYS */;
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
