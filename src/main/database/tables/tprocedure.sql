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
-- Table structure for table `tprocedure`
--

DROP TABLE IF EXISTS `tprocedure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprocedure` (
  `procedure_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT 0,
  `application_id` int(10) NOT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `frequency_cd` varchar(32) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `as_of_date` datetime DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `trigger_blob` varchar(1024) DEFAULT NULL,
  `proc_desc_blob` varchar(1024) DEFAULT NULL,
  `alternate_proc_blob` varchar(1024) DEFAULT NULL,
  `notification_blob` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`procedure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tprocedure`
--

LOCK TABLES `tprocedure` WRITE;
/*!40000 ALTER TABLE `tprocedure` DISABLE KEYS */;
INSERT INTO `tprocedure` VALUES (1,0,13,'EMFI Server Down - Multiple Error Codes 1501 In Bridges','EMFI','R','MSG','2006-10-31 00:00:00','A','Error codes 1501 to multiple Bridges interfaces. ','','','','',37,37,NULL,NULL,NULL,'2006-10-17 11:14:00','2007-01-28 10:56:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,0,13,'KPFS Extended Outage','KPFS','R','MG','2006-12-01 00:00:00','A','KPFS has planned or unplanned outage greater than one hour','','','','',37,37,NULL,NULL,NULL,'2006-10-17 01:34:00','2007-01-28 10:56:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,13,'Standard Start-Up Procedure','Standard','R','MG','2005-12-01 00:00:00','A','1. Scheduled upgrade of a single Epic server.\r\n2. IB Outage','','','','',37,37,NULL,NULL,NULL,'2006-10-17 01:38:00','2007-01-28 11:01:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,0,13,'CPT4','Radiology CPT-4 Code ','H','SD','2006-10-20 00:00:00','A','Tiviloi generated ticlet','describe the entire prodcedure','','','',37,37,NULL,NULL,NULL,'2006-10-18 10:46:00','2022-03-11 12:34:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,0,13,'KITS Filer Hangs','KITS','R','FLR','2007-01-30 00:00:00','A','1.	User creates and releases order in KPHC - this order does not create a message to KITS because there is no Outbound KITS interface.  The order is printed out and given to the vaccination clinic tech.\r\n2.	User records the results in KITS with matching information to the KPHC order (mr#, provider, order date, procedure...)\r\n3.	Message is sent from KITS to KPHC.  Filer matches by key fields and associates results with KPHC order.\r\n4.	User cancels the results in KITS (This may or may not be part of a KITS merge.)\r\n5.	Message is sent from KITS to KPHC.  Filer matches by key fields and cancels results.  \r\n6.	FILER HANGS.\r\n','1.	Pull up the message that is causing the filer to hang.\r\n2.	Check field RXA-21.  It should have a value of D\r\n3.	We must now stop the process that is causing the filer to hang\r\n4.	Exit out to the Lookitt or Cache prompt\r\n5.	Enter \"d lt^%zv4util(898311)\" - this searches through he lock table for the string 898311\r\n6.	You should get a result similar to this:\r\n\r\n	Entry Owner    X#  Item Locked	\r\n	660   38899778 1   ^[\"^^/epic/caprd13/ifc/\"]AIRECVHL(898311,1)\r\n	691   28672058 1   ^[\"^^/epic/caprd13/ifc/\"]AITCPIN(898311,\"|TCP|39999\",\"RUN\")\r\n	\r\n7.	The first line (with AIRECVHL) corresponds to the filer, the second (with AITCPIN) to the comm\r\n8.	Copy the value in the Owner column for the filer - 38899778 in this case\r\n9.	Enter \"d jobexam^%zv4util\" - this takes you to the Job Examination menu\r\n10.	Enter E - this option allows you to view the job specs\r\n11.	Enter \"p\" + \"Owner value\" ... p38899778 in this case\r\n12.	Check the \"Last reference:\" line ...it should have a value of an outbound interface like 430, 600, etc.','','','',37,37,NULL,NULL,NULL,'2007-01-30 04:53:00','2007-01-30 05:57:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,0,13,'Put Interfaces in Degraded Mode','Degrad','R','SD','2007-01-01 00:00:00','A','Some of the triggers for degraded mode:\r\n\r\n1. One server down \r\n2. EMPI Down\r\n3. ','\r\nRun script :\r\n\r\nDegrade... blah..','','','',37,NULL,NULL,NULL,NULL,'2007-01-30 06:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,0,13,'Downtime Procedures for Full Health Connect Outage','HC Full Outage','R','SD','2008-02-01 00:00:00','A','Notification from HC senior management.','','','','',37,NULL,NULL,NULL,NULL,'2008-02-04 04:19:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tprocedure` ENABLE KEYS */;
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
