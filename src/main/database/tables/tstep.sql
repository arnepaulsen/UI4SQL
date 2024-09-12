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
-- Table structure for table `tstep`
--

DROP TABLE IF EXISTS `tstep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tstep` (
  `step_id` int(10) NOT NULL AUTO_INCREMENT,
  `seq_no` int(10) DEFAULT NULL,
  `predecessor_no` int(10) DEFAULT NULL,
  `parent_kind_cd` char(3) DEFAULT NULL,
  `parent_id` int(10) NOT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `skip_cond_tx` varchar(128) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `required_flag` char(1) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `result_blob` varchar(1024) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
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
  `updated_uid` int(10) DEFAULT NULL,
  PRIMARY KEY (`step_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstep`
--

LOCK TABLES `tstep` WRITE;
/*!40000 ALTER TABLE `tstep` DISABLE KEYS */;
INSERT INTO `tstep` VALUES (1,1,0,'W',2,'Add debit balances','','','','N','Add all debit balances.','Use adding machine.  Counting on fingers is unreliable. ',NULL,1,1,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,18),(2,5,0,'W',3,'Add credits.','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,18),(3,4,0,'W',1,'Check out the Stamps','','','','Y','adf','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(4,3,3,'W',3,'Count the debits','','','','Y','adf','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(5,10,0,'W',1,'Go to Jail','','','','Y','adf','fdf',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(6,3,0,'W',2,'Plug in Scanner','','','','Y','Make sure the scanner is plugged in. ','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(7,44,0,'W',2,'Load Applications into Feeder','','','','Y','Put the applications in the paper feeder, and make sure there  are no staples. ','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(8,66,66,'W',3,'Push the Start Button','','','','Y','It\"s the big green button ','',NULL,18,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(9,77,0,'W',3,'Testing \'quotes','','','','N','Just watch the feeder read the apps.','',NULL,18,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,18),(10,99,5,'W',3,'Count the out-baseket.','','','','Y','Pull out the apps, and re-count','Sometimes they fall behind the table, and get sweep up by the janitor. ',NULL,18,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(11,99,0,'W',2,'Turn off Machine','','','','Y','Don\"t forget. ','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(12,101,0,'W',2,'Put in Mail','','','','Y','and add a stamp','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(13,4,3,'M',4,'Ask Users What they Want','','','','','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(14,2,0,'M',4,'Prioritize the Requriements','','no skip allowed','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(15,1,1,'M',1,'Define the Scope','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(16,2,2,'M',1,'Choose the install date','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(17,45,2,'M',0,'This will probably crashg','','dfad','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(18,5,2,'M',4,'Have a Party','','System is backed-out.','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(19,1,0,'M',3,'Evaluate Existing Controls','','Not able to skip.','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(20,2,1,'M',3,'Evaluate Prior Breaches','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(21,1,0,'M',5,'Prepage code package.','','','','N','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(22,2,1,'P',1,'Notify Bridges Manager','','None','','Y','Send page to (510) 999-9999.','',NULL,1,1,NULL,0,'2006-01-01 08:00:00','2006-10-17 11:46:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(23,1,0,'P',2,'Notify Bridges Manager','','','','Y','adf','',NULL,1,0,NULL,0,'2006-01-01 08:00:00','2006-10-17 01:36:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(24,1,0,'P',3,'Service Restored on Down Component','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00','2006-10-17 01:42:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(26,2,1,'P',3,'Wait for Cache To Come UP','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00','2006-10-17 01:40:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(27,10,1,'M',1,'Prepare Budget','','','','Y','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(28,1,0,'T',10,'Search Existing Customers','','If positive the customer has no relationship with company','','Y','Use the \"Search Customer\" Workflow. ','',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(29,1,0,'P',4,'Check ORC-13 .4 ','','','','N','','',NULL,1,0,NULL,0,'2006-01-01 08:00:00','2006-10-18 10:47:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(30,2,1,'P',4,'Find Processing Id','','skip if msg sent to IB','','Y','what do to here,. ','',NULL,1,0,NULL,0,'2006-01-01 08:00:00','2006-10-18 10:48:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(31,3,2,'P',1,'Stop Inbound Interfaces',NULL,'None',NULL,'Y','Run StopComI on all six servers. ','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:18:00','2006-10-17 11:49:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37),(32,4,3,'P',1,'Run Error Report',NULL,'None',NULL,'Y','Run Bridges report \"EMFI Error - All Interfaces\" on each server. \r\n','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:44:00','2006-10-17 11:47:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37),(33,1,0,'P',1,'Call Into Help Desk Bridge',NULL,'',NULL,'Y','','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:46:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,5,4,'P',1,'Wait For A&I To Report that EMFI is Back Up',NULL,'None',NULL,'Y','','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:48:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,7,6,'P',1,'Resubmit Error Messages',NULL,'',NULL,'N','','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:50:00','2006-10-17 11:51:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37),(36,6,5,'P',1,'Start Interfaces',NULL,'None',NULL,'Y','Run Script StrtComI <nuid> <epic-pwd>','',NULL,37,NULL,NULL,NULL,'2006-10-17 11:51:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,3,2,'P',3,'Start KPFS Inbound Interface',NULL,'',NULL,'Y','','',NULL,37,NULL,NULL,NULL,'2006-10-17 01:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,4,3,'P',3,'Start Inbound Interfaces',NULL,'',NULL,'Y','Run StrtBulk id, pw','',NULL,37,NULL,NULL,NULL,'2006-10-17 01:43:00','2006-10-17 01:44:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37),(39,5,4,'P',3,'Start Results Interface',NULL,'',NULL,'Y','','',NULL,37,NULL,NULL,NULL,'2006-10-17 01:45:00','2006-10-17 01:45:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37);
/*!40000 ALTER TABLE `tstep` ENABLE KEYS */;
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
