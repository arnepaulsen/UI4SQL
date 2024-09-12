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
-- Table structure for table `tmodule`
--

DROP TABLE IF EXISTS `tmodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmodule` (
  `module_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `status_date` datetime DEFAULT NULL,
  `status_cd` char(3) DEFAULT NULL,
  `blob_desc` varchar(1024) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `language_cd` varchar(16) DEFAULT NULL,
  `job_id` int(10) DEFAULT NULL,
  `blob_inputs` varchar(1024) DEFAULT NULL,
  `blob_bugs` varchar(1024) DEFAULT NULL,
  `blob_outputs` varchar(1024) DEFAULT NULL,
  `blob_process_logic` varchar(1024) DEFAULT NULL,
  `blob_exceptions` varchar(1024) NOT NULL,
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
  PRIMARY KEY (`module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmodule`
--

LOCK TABLES `tmodule` WRITE;
/*!40000 ALTER TABLE `tmodule` DISABLE KEYS */;
INSERT INTO `tmodule` VALUES (1,1,1,'DDA12RPT','Overdue Report Writer','Program Works Perfectly',NULL,'ACT','Write report of accounts overdue 30 days. ','EXT','COB',1,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,1,1,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,4,1,'DSS - Stmt','Print Account Statements','',NULL,'ACT','Print monthly account statements.','','JAV',0,'',NULL,'','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,4,1,'PR-LT-FEE','Compute Late Fee','',NULL,'ACT','','','JAV',3,'',NULL,'','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,4,1,'overdue','Overdue Accounts','',NULL,'ACT','','','COB',3,'',NULL,'','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,2,1,'INV','Inventory','',NULL,'ACT','d','','COB',3,'',NULL,'','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,2,1,'LowProd','Reorder 30 day','',NULL,'ACT','zcv','','JAV',3,'',NULL,'','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(7,1,1,'StolenGood','Stolen Goods','',NULL,'ACT','d','PST','COB',3,'','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(8,1,1,'CHK-LC-POST','Late Charge Post','',NULL,'INA','Calcualte late charge amount., ','UPD','PRC',1,'','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(9,1,1,'DDA12RPT','Dinner Time Dialer','Program Works Perfectly',NULL,'ACT','Write report of accounts overdue 30 days. ','EXT','COB',1,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(10,1,1,'DDA12RPT','Dinner Time Dialer','Program Works Perfectly','2007-02-03 00:00:00','ACT','Write report of accounts overdue 30 days. ','EXT','COB',1,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(11,1,1,'DDA12RPT','Breakfast Time Dialer','Program Works Perfectly',NULL,'ACT','Write report of accounts overdue 30 days. ','EXT','COB',2,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(12,1,0,'WI-SL-981','Sell Loans','',NULL,'ACT','Autodials everyone at dinner time. ','EXT','COB',1,'','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(14,1,1,'DDA12RPT','Dinner Time Dialer','Program Works Perfectly',NULL,'ACT','Write report of accounts overdue 30 days. ','EXT','COB',1,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(15,1,1,'DDA12RPT','Dinner Time Dialer','Program Works Perfectly',NULL,'ACT','Write report of accounts overdue 30 days. ','EXT','COB',1,'DDA Master','Except it crashes on every third monday. ','Overdue Reports','Find all accounts overdue.','1. Job will stop if abc condition is true. ',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(16,13,NULL,'400','Lab Inbound Results','','1900-01-01 00:00:00','ACT','','EXT','COB',NULL,'','','','','',37,NULL,NULL,NULL,NULL,'2006-10-17 10:15:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tmodule` ENABLE KEYS */;
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
