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
-- Table structure for table `timplementation_plan`
--

DROP TABLE IF EXISTS `timplementation_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timplementation_plan` (
  `plan_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `status_cd` varchar(16) DEFAULT NULL,
  `outage_hours_no` int(10) DEFAULT NULL,
  `risk_cd` char(1) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `start_dttm` datetime DEFAULT NULL,
  `end_dttm` datetime DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
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
  `desc_blob` longtext DEFAULT NULL,
  `scope_blob` longtext DEFAULT NULL,
  `impacts_blob` longtext DEFAULT NULL,
  `business_blob` longtext DEFAULT NULL,
  `support_blob` longtext DEFAULT NULL,
  `validation_blob` longtext DEFAULT NULL,
  `backout_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `contingency_blob` longtext DEFAULT NULL,
  `followup_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timplementation_plan`
--

LOCK TABLES `timplementation_plan` WRITE;
/*!40000 ALTER TABLE `timplementation_plan` DISABLE KEYS */;
INSERT INTO `timplementation_plan` VALUES (1,1,1,'Q3 Release Plan','Ready for draft distribution','Q3','S',5,'H','R','1900-01-01 00:00:00','2005-10-02 04:19:00',21,1,37,1,NULL,0,'2006-01-01 08:00:00','2007-01-24 11:14:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'Quarterly release to fix bugs and minor enhancements','scope','impacts','','Business units, ','Checkit it out. ','backout plan','notes','contengency','follow-up notes.'),(2,2,4,'In-Patient','','NCAL-HC-2','H',0,'','','2005-05-01 00:00:00','2005-05-02 00:00:00',0,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'desc.',NULL,NULL,NULL,NULL,NULL,'backout plans. ','notes','cont','follup up '),(3,1,7,'MRN Merge','','MRN','P',0,'L','R','1900-01-01 00:00:00','1900-01-01 00:00:00',13,1,37,0,NULL,0,'2006-01-01 08:00:00','2007-01-23 01:24:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'','','','','','Check-out new fee schedules.  ','','','',''),(4,27,13,'Spring 06','','IP-001','P',4,'L','E','1900-01-01 00:00:00','1900-01-01 00:00:00',29,37,37,NULL,NULL,NULL,'2007-01-09 10:29:00','2007-01-14 07:41:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','','','','','','');
/*!40000 ALTER TABLE `timplementation_plan` ENABLE KEYS */;
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
