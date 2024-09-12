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
-- Table structure for table `tservice_request`
--

DROP TABLE IF EXISTS `tservice_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tservice_request` (
  `service_request_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `super_id` int(10) DEFAULT NULL,
  `implementation_plan_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `install_dttm` datetime DEFAULT NULL,
  `status_cd` char(3) DEFAULT NULL,
  `type_cd` char(3) DEFAULT NULL,
  `outage_hours_no` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `install_notes_blob` varchar(1024) DEFAULT NULL,
  `problems_blob` varchar(1024) DEFAULT NULL,
  `outcome_blob` varchar(1024) DEFAULT NULL,
  `followup_blob` varchar(1024) DEFAULT NULL,
  `manager_uid` int(10) DEFAULT NULL,
  `stakeholder_uid` int(10) DEFAULT NULL,
  `technician_uid` int(10) DEFAULT NULL,
  `operations_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`service_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tservice_request`
--

LOCK TABLES `tservice_request` WRITE;
/*!40000 ALTER TABLE `tservice_request` DISABLE KEYS */;
INSERT INTO `tservice_request` VALUES (1,6,0,0,'SR-221','Customer Table Has Reached Row Limit','Run Customer Purge Job','2005-05-12 12:39:00','INS','EMG',0,'Run the customer purge job before the nightly upload from Equistian','','','','',22,8,22,22,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,6,0,1,'SR-312','Customer Table Has Reached Row Limit','Run Database Optimize Job','2005-05-12 12:00:00','INS','EMG',0,'Run this after the purge service request. ','','','','',22,8,22,22,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,13,0,0,'989898','','Test Remedy','1900-01-01 00:00:00','DEV','EMG',0,'','','','','',43,639,43,43,37,NULL,NULL,NULL,NULL,'2007-07-23 03:46:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tservice_request` ENABLE KEYS */;
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
