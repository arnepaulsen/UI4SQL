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
-- Table structure for table `tworkflow`
--

DROP TABLE IF EXISTS `tworkflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tworkflow` (
  `workflow_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `version_nm` varchar(100) DEFAULT NULL,
  `effect_date` datetime DEFAULT NULL,
  `actor_id` int(10) DEFAULT NULL,
  `functional_area_id` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `change_blob` varchar(1024) DEFAULT NULL,
  `trigger_blob` varchar(1024) DEFAULT NULL,
  `inputs_blob` varchar(1024) DEFAULT NULL,
  `outcomes_blob` varchar(1024) DEFAULT NULL,
  `rules_blob` varchar(1024) DEFAULT NULL,
  `results_blob` varchar(1024) DEFAULT NULL,
  `confirmed_uid` int(10) DEFAULT NULL,
  `active_flag` char(1) DEFAULT NULL,
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
  PRIMARY KEY (`workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tworkflow`
--

LOCK TABLES `tworkflow` WRITE;
/*!40000 ALTER TABLE `tworkflow` DISABLE KEYS */;
INSERT INTO `tworkflow` VALUES (1,1,2,'CU-KJDF','File Deliverable Documents','4.3','2005-05-12 00:00:00',0,0,'Balance the daily cash to the control report. ',NULL,'Armored car drives into cash vault. ','Cash bags from amored truck. ','ouitputs','rules','Expected Resultes. ',0,'Y',1,1,0,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,1,'Cust-New','Scan Account Applications','1.2','2005-05-12 00:00:00',0,0,'Can the customer applications. ',NULL,'Mail.','','','','',0,'Y',1,1,1,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,1,'Errors','Check Errors','1.2','2005-05-12 00:00:00',0,0,'Check the daily error log.',NULL,'','','','','',0,'Y',1,1,1,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,1,2,'Statements','Consolidated Statements','4','2005-12-31 00:00:00',0,0,'Merge financial statements across all divsions. ','add new inputs from History system. ','Tenth day of every fourth month.','','','','',0,'Y',1,1,0,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,6,1,'DA-1','Deliverable Approval','',NULL,0,0,'','','','','','','',0,'Y',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,79,30,'IM','Internal Management','','2007-01-01 00:00:00',NULL,NULL,'','','','','','','',NULL,'Y',37,NULL,NULL,NULL,NULL,'2007-01-26 10:25:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tworkflow` ENABLE KEYS */;
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
