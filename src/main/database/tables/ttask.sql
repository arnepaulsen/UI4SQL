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
-- Table structure for table `ttask`
--

DROP TABLE IF EXISTS `ttask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttask` (
  `task_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `deliverable_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `resolution_blob` varchar(1024) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `priority_cd` varchar(100) DEFAULT NULL,
  `predecessor_task_id` int(10) DEFAULT NULL,
  `est_qty` int(10) DEFAULT NULL,
  `act_qty` int(10) DEFAULT NULL,
  `qty_cd` varchar(16) DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `act_start_date` datetime DEFAULT NULL,
  `act_end_date` datetime DEFAULT NULL,
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
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttask`
--

LOCK TABLES `ttask` WRITE;
/*!40000 ALTER TABLE `ttask` DISABLE KEYS */;
INSERT INTO `ttask` VALUES (1,1,1,'Complete Disaster Plan','Send to audit for review. ','Pending sign-off from the Project Manager. ','DP','WIP',1,'L',0,16,2,'','2005-01-12 00:00:00','2005-02-12 00:00:00','2005-03-12 00:00:00','2005-04-12 00:00:00',1,37,1,37,0,'2006-01-01 08:00:00','2007-01-14 10:01:00','2006-03-19 07:44:00','2007-01-14 10:01:00',NULL,'Y','N','ok.. thanks for clarifying the description.','',NULL),(2,4,4,'Configure Websphsere','','','configure','NEW',1,'L',0,1,1,'','2005-05-12 00:00:00','2005-05-12 00:00:00','2005-05-12 00:00:00','2005-05-12 00:00:00',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,2,2,'Sign-off Requirements','','','sign-off','NEW',1,'L',0,0,0,'','2005-06-01 00:00:00','2005-06-01 00:00:00','2005-06-01 00:00:00','2005-06-01 00:00:00',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,3,3,'Entiry Relationship Diag','','','ERD','NEW',1,'L',0,0,0,'','2005-06-01 00:00:00','2005-06-01 00:00:00','2005-06-01 00:00:00','2005-06-01 00:00:00',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,1,4,'Review Gaps','','','Gaps','NEW',1,'L',0,0,3,'','2005-05-12 00:00:00','2005-05-12 00:00:00','2005-05-12 00:00:00','2005-05-12 00:00:00',1,37,1,0,0,'2006-01-01 08:00:00','2009-11-20 12:17:00','2006-03-19 07:46:00',NULL,NULL,'P','N','please approve asap.',NULL,NULL),(6,27,5,'Define Cross-Suite Impacts','','','S1','NEW',43,'L',NULL,0,0,NULL,'2007-01-03 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00',37,NULL,NULL,NULL,NULL,'2007-01-03 12:29:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,27,5,'Define Cross-Suite Impacts','','','S2','NEW',43,'L',0,0,0,'','2007-01-03 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00',37,37,NULL,0,NULL,'2007-01-03 12:30:00','2007-01-14 07:41:00',NULL,'1900-01-01 00:00:00',NULL,'','','','','');
/*!40000 ALTER TABLE `ttask` ENABLE KEYS */;
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
