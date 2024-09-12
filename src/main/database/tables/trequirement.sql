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
-- Table structure for table `trequirement`
--

DROP TABLE IF EXISTS `trequirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trequirement` (
  `requirement_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) DEFAULT 1,
  `project_id` int(10) NOT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `version_cd` varchar(16) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `benefit_flt` float DEFAULT 0,
  `type_cd` char(3) DEFAULT NULL,
  `sub_cd` varchar(8) DEFAULT NULL,
  `required_date` datetime DEFAULT NULL,
  `desc_blob` varchar(2000) DEFAULT NULL,
  `notes_blob` varchar(2000) DEFAULT NULL,
  `problem_blob` varchar(2000) DEFAULT NULL,
  `alternatives_blob` varchar(2000) DEFAULT NULL,
  `workflow_id` int(10) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `status_cd` varchar(16) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT 0,
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
  PRIMARY KEY (`requirement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trequirement`
--

LOCK TABLES `trequirement` WRITE;
/*!40000 ALTER TABLE `trequirement` DISABLE KEYS */;
INSERT INTO `trequirement` VALUES (1,1,25,'ATM-9895','','ATM Menu Add Spanish',0,'REG',NULL,NULL,'blah, blah,','','','',3,'L','',0,1,37,1,NULL,0,'2006-01-01 08:00:00','2008-12-10 08:51:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,1,'SCROL-124','','Limit Scrolling',0,'RPT',NULL,NULL,'DON\"T scroll to far','','','',3,'L','',0,1,37,1,NULL,NULL,'2006-01-01 08:00:00','2007-01-08 03:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,1,'BF04','','Sarbe-Oxley Controls',12.5,'RPT',NULL,NULL,'Report on Sarbe-Oxley of internal control exceptions.','This is a must-have to go live with the system. ','','',4,'U','O',84,1,37,1,NULL,0,'2006-01-01 08:00:00','2007-01-04 12:36:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,1,1,'TM-221','','Customer Analysis',0,'RPT',NULL,NULL,'Provide real-time customer rating for call center.  Prioritize call wait-list according depending on instant customer profitability analysis. Low-profitability customers get routed to India center.','Interal confidential.  ',NULL,NULL,3,'H','',0,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2007-01-04 12:10:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,13,1,'RQ-1',NULL,'Release Page Needs Product Id',0,'LGL',NULL,NULL,'','','','',2,'L',NULL,0,37,37,NULL,NULL,NULL,'2007-01-25 10:01:00','2009-07-21 10:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,79,1,'R2',NULL,'Low Cost',0,'RPT','PS',NULL,'Must be less than $500 per month','','','',6,'H',NULL,37,37,37,NULL,NULL,NULL,'2007-01-26 10:24:00','2009-07-22 09:52:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,79,1,'R3','','Maintain spreadsheets indepen',500,'RPT','ADHOC','1900-01-01 00:00:00','Must be less than $500 per month','','','',6,'H','',37,37,37,NULL,0,NULL,'2007-01-26 10:26:00','2009-07-22 11:56:00',NULL,'1900-01-01 00:00:00',NULL,'','','','',''),(9,79,1,'R4','','No license requirements',0,'RPT','ADHOC','1900-01-01 12:00:00','Must be less than $500 per month','','','',6,'U','',37,37,37,NULL,0,NULL,'2007-01-26 10:26:00','2009-07-22 11:34:00',NULL,'1900-01-01 12:00:00',NULL,'','','','',''),(10,79,30,'AH001','','Ad-Hoc List page Colors',0,'REG','ADHOC','1900-01-01 12:00:00','Excel spreadsheets should look like existing ones.','','','',3,'H','PND',37,37,140,37,0,NULL,'2007-01-26 10:28:00','2009-07-22 02:26:00','2009-07-21 04:59:00','1900-01-01 12:00:00',NULL,'P','','Please approve','',''),(11,79,30,'BT002',NULL,'Production Instance Must be Configured to Close',0,'LGL','BT',NULL,'Must have production RFC# to close.','','','',3,'L','WIP',37,37,140,NULL,NULL,NULL,'2009-07-22 11:58:00','2009-07-22 02:31:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,79,30,'RIP001',NULL,'Automatically Block AC Updates',0,'RPT','RIPCAB',NULL,'Automatically block updates between 4:00 PM and 6:30 on Tuesdays.','','','',3,'M','NEW',140,140,NULL,NULL,NULL,NULL,'2009-07-22 02:28:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,79,30,'RIP001','','Hide BT Links to RIP-CAB when RIP-CAB is Blocked',0,'RPT','BT','1900-01-01 00:00:00','The build tracker page should not show a link to RIP-CAB page if RIP-CAB is blocked to ACs. ','','','',3,'M','NEW',140,140,140,NULL,0,NULL,'2009-07-22 02:28:00','2009-07-22 02:30:00',NULL,'1900-01-01 00:00:00',NULL,'','','','',''),(14,79,30,'OS-001',NULL,'Domain Sort on Master OS Index',0,'LGL','OS',NULL,'please add a Domain Sort to the Master Order Set Index similar to the Alphabetic sort that is there.','','','',3,'L','NEW',201,201,37,NULL,NULL,NULL,'2009-07-23 02:49:00','2009-07-25 08:43:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,79,30,'OS-001',NULL,'Domain Sort on Master OS Index',0,'LGL','OTH',NULL,'please add a Domain Sort to the Master Order Set Index similar to the Alphabetic sort that is there.','','','',3,'L','NEW',201,201,NULL,NULL,NULL,NULL,'2009-07-23 02:50:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,79,30,'OS002',NULL,'Link between Master OS Index and SR list',0,'LGL','OS',NULL,'Is it possible to add a link between the Master OS list and the SR list to toggle between the them?','','','',3,'L','NEW',201,201,37,NULL,NULL,NULL,'2009-07-23 02:58:00','2009-07-25 08:44:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,79,1,'0S003',NULL,'OS # on list does not match OS # on edit page ',0,'LGL','OTH',NULL,'See order set number 314 on the list.  When you click on it, the OS number on the edit page says 914.  The correct number is 914.  ','','When you change the number on the edit page of the Master Order Set Index, it does not change on the Master Order Set Index list page.  It appears that the same thing is happening on the release.  ','',3,'L','NEW',201,201,NULL,NULL,NULL,NULL,'2009-07-23 03:01:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,79,30,'OS003',NULL,'Paper yes/no Column',0,'LGL','OS',NULL,'Add a column to the Master Order Set list called Paper.\r\nResult will be \'Y\' when there is a paper version, but blank if no paper.\r\nPopulate the column when there is a paper version number on the paper version edit page. If it could link to the paper version edit page, that would be awesome.','','','',3,'L','NEW',201,201,37,NULL,NULL,NULL,'2009-07-23 03:11:00','2009-07-25 08:44:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,79,30,'PMO-001',NULL,'Use Business Objects to pull SRs into PMO',0,'LGL','OS',NULL,'We have a team member who is pulling a report from Remedy based on the KPHC CN IP ORDERSETS group using Business Objects and importing into Access.  We get all tickets assigned to this group.  Is it possible to do the same thing and import them into the PMO tool?  We would like to pull all tickets from the beginning of 2009.  This could possibly be set up as a batch job that we can run once it\'s set up.','','','',3,'L','NEW',201,201,37,NULL,NULL,NULL,'2009-07-24 10:10:00','2009-07-25 08:45:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,8,35,'EIV-001',NULL,'Daily Metrics Report',0,'RPT','BAT',NULL,'adfadf','','','',1,'M','NEW',37,37,37,NULL,NULL,NULL,'2009-07-25 09:00:00','2009-07-25 09:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,79,30,'OS004',NULL,'Related SRs and Tasks',0,'RPT','OS',NULL,'Is there a way to identify that an SR is related to another SR or that it is a task?  If so, please add to the Phase 1 Remedy section.','','','',3,'L','NEW',201,201,NULL,NULL,NULL,NULL,'2009-08-20 09:28:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `trequirement` ENABLE KEYS */;
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
