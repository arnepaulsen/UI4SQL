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
-- Table structure for table `tstage`
--

DROP TABLE IF EXISTS `tstage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tstage` (
  `stage_id` int(10) NOT NULL AUTO_INCREMENT,
  `process_id` int(10) DEFAULT NULL,
  `seq_no` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `required_flag` char(1) DEFAULT NULL,
  `effort_pct` float DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `participants_blob` longtext DEFAULT NULL,
  `entry_criteria_blob` longtext DEFAULT NULL,
  `exit_criteria_blob` longtext DEFAULT NULL,
  `inputs_blob` longtext DEFAULT NULL,
  `outputs_blob` longtext DEFAULT NULL,
  `measurements_blob` longtext DEFAULT NULL,
  `considerations_blob` longtext DEFAULT NULL,
  `references_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `closed_by_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
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
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `commit_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`stage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstage`
--

LOCK TABLES `tstage` WRITE;
/*!40000 ALTER TABLE `tstage` DISABLE KEYS */;
INSERT INTO `tstage` VALUES (1,1,2,'CODE','CODE','','Y',40,'Code','Build list of all requirements.',NULL,'','','1. Design specifications approved.<br>2. Unit Test Cases.<br><br>','','','',NULL,'adsfd',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,1,'RQR','DESN','','Y',20,'Requirements','Get Re',NULL,'','','','','','',NULL,'',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,3,'IT','ITST','','Y',30,'Integration Testing','Test will all interfacing applications.',NULL,'','','','','','',NULL,'',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,2,20,'VOC','HLD','','Y',0,'Design','Gather customer perspective of the project. ',NULL,'','','','','','',NULL,'',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,10,'SIZ','REQR','','Y',0,'Initial Requirements','Obtain high-level sizing. ',NULL,'','','','','','',NULL,'',0,0,1,37,NULL,'2006-01-01 08:00:00','2006-12-29 09:08:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,3,30,'UC','REQR','','Y',20,'Requirements','High level design. ',NULL,'all ducks in a row.','User signs off on use cases.  See Caliber RM for details. ','requirements, voice of customer,','use case document','m','c',NULL,'my notes. ',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,4,'','IMPL','','Y',10,'Install','Install the changes via standard implementation procedures. ',NULL,'','','','','','',NULL,'',0,0,1,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,2,40,'','CODE','','N',0,'Code and Unit Test','',NULL,'','','','','','',NULL,'',0,0,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,2,5,'SIZ','REQR','','Y',15,'Definition','Obtain high-level sizing. ','','','','','','','','','',0,0,37,37,NULL,'2006-12-29 09:08:00','2006-12-29 09:09:00',NULL,'1900-01-01 00:00:00',NULL,'N','N','','','',NULL,0,'1900-01-01 00:00:00','1900-01-01 00:00:00');
/*!40000 ALTER TABLE `tstage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:25
