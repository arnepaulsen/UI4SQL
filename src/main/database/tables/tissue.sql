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
-- Table structure for table `tissue`
--

DROP TABLE IF EXISTS `tissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tissue` (
  `issue_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `closed_by_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `prod_rfc_no` int(10) DEFAULT NULL,
  `problem_no` int(10) DEFAULT NULL,
  `defect_no` int(10) DEFAULT NULL,
  `requestor_nm` varchar(50) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(1) DEFAULT NULL,
  `sub_cd` varchar(8) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `id_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `impact_blob` longtext DEFAULT NULL,
  `resolution_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`issue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tissue`
--

LOCK TABLES `tissue` WRITE;
/*!40000 ALTER TABLE `tissue` DISABLE KEYS */;
INSERT INTO `tissue` VALUES (3,4,2,1,2,1,1,NULL,0,NULL,NULL,NULL,NULL,'KDF-9898F','C','C','L',NULL,'N','N',NULL,NULL,'2005-06-25 00:00:00','2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Add Issues Table',NULL,NULL,NULL,'Testing.',NULL,NULL,'not resolved.'),(6,1,4,1,2,1,0,NULL,0,NULL,NULL,NULL,NULL,'Up-Time','C','C','M',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'System Availabiity',NULL,NULL,NULL,'The system needs to by up 23 hours, but it takes two hours to run the batch. ',NULL,NULL,'Buy a faster processor.  <font color=blue> <br><br> You can put HTML tabgs in your responses.</font>'),(9,4,1,0,2,1,1,NULL,0,NULL,NULL,NULL,NULL,'SESS-LOG','P','O','L',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Fix Session Login',NULL,NULL,NULL,'','',NULL,''),(13,3,1,1,2,1,1,NULL,0,NULL,NULL,NULL,NULL,'BF-AF-12','T','C','L',NULL,'N','N',NULL,NULL,'2005-07-18 00:00:00','2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Approve Function',NULL,NULL,NULL,'',NULL,NULL,''),(14,2,1,0,2,1,1,NULL,0,NULL,NULL,NULL,NULL,'ISS-NN','T','O','L',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Address Conversions',NULL,NULL,NULL,'Converting addresses from legacy systems is a problem because the existing addresses are not parsed. The city, state and zip are all in one field.','',NULL,'Rsolved by .... converting addresses from legacy systems is a problem because the existing addresses are not parsed. The city, state and zip are all in one field.'),(15,1,22,0,2,37,1,NULL,0,0,0,0,'','D123','0','O','L','0','N','N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2006-01-01 08:00:00','2009-11-20 12:17:00',NULL,NULL,NULL,'Reporting Function Strategy',NULL,NULL,NULL,'Need strategy on whether to use Crystal Reports, or Java applets to deliver reports.','Need information from Ted about how costs and licensing.','',''),(39,1,1,1,1,1,0,NULL,0,NULL,NULL,NULL,NULL,'Addresses Clean','T','C','L',NULL,'N','N',NULL,NULL,'2005-07-18 00:00:00','2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Customer Address Clean-Up',NULL,NULL,NULL,'Need a special team to review and scrub the customer addresses.',NULL,NULL,'<font color=red>You can add more fields to any form using the \"Custom Fields\" menu in the \"Adminsitraion\" tab. </font>'),(40,1,37,0,1,37,1,1,0,0,0,0,'','Notebooks','BD','O','U','0','N','R','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2006-01-01 08:00:00','2009-10-05 08:14:00','2006-03-20 06:48:00','2006-03-20 06:50:00',NULL,'Obsolete Notebooks','ready ths time.','',NULL,'The notebooks need to be upgraded.<br><br>Where are the breaks. ','','','<font color=red>You can add your own issues types with  the \"Codes\" option in the \"Administration\" menu. </font>'),(41,1,28,0,1,37,0,NULL,0,0,0,0,'','Colors','0','O','L','0','N','N','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2006-01-01 08:00:00','2009-12-07 11:08:00',NULL,NULL,NULL,'Dynamic Menus',NULL,NULL,NULL,'The web colors need to match. ','','',''),(42,1,1,0,1,37,1,0,NULL,NULL,NULL,NULL,NULL,'ISP','0','O','L',NULL,'N','P',NULL,NULL,NULL,'2006-01-01 08:00:00','2009-06-25 10:30:00','2006-03-20 06:37:00','2006-03-20 06:37:00',NULL,'Load HTML From Lib','oay','changd my mind',NULL,'','',NULL,''),(43,1,292,37,1,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'buttons','0','C','L',NULL,'N','N',NULL,NULL,'2009-07-21 00:00:00','2006-01-01 08:00:00','2009-07-21 09:45:00',NULL,NULL,NULL,'Buttons in Form Title',NULL,NULL,NULL,'New buttons doens\"t work. ','',NULL,'Not a problem. '),(44,1,217,0,1,37,1,NULL,NULL,NULL,NULL,NULL,NULL,'Buttons','BD','O','L',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00','2009-06-25 05:52:00',NULL,NULL,NULL,'Buttons Crash',NULL,NULL,NULL,'Don\'t display edit buttons for everyone.','',NULL,''),(45,1,1,0,1,37,1,0,NULL,NULL,NULL,NULL,NULL,'I2-111','BD','O','L',NULL,'N','P',NULL,NULL,NULL,'2006-01-01 08:00:00','2009-01-13 01:54:00','2006-03-20 06:41:00',NULL,NULL,'Save-Edit','oaky',NULL,NULL,'','',NULL,''),(46,3,22,0,1,1,1,NULL,0,NULL,NULL,NULL,NULL,'WF-Call Center','P','O','L',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'Workflows for Call Center are Missing',NULL,NULL,NULL,'','',NULL,''),(47,1,22,0,1,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'I2-123','BD','O','L',NULL,'N','N',NULL,NULL,NULL,'2006-01-01 08:00:00','2009-01-13 01:54:00',NULL,NULL,NULL,'Date Issue',NULL,NULL,NULL,'','',NULL,''),(48,1,22,0,1,37,1,0,NULL,NULL,NULL,NULL,NULL,'VC-8998','BD','O','M',NULL,'N','P',NULL,NULL,NULL,'2006-03-31 06:43:00','2009-04-19 10:58:00','2006-03-31 06:44:00',NULL,NULL,'Version Control for Codes','Please review before friday.',NULL,NULL,'Converting from Clear Case to Star Base before next major upgrade.','notes',NULL,'resolutions'),(49,30,95,NULL,37,37,NULL,NULL,NULL,0,0,0,'','PMO-001','REQ','O','M','ADHOC',NULL,NULL,'1900-01-01 00:00:00','1900-01-01 00:00:00',NULL,'2006-11-09 01:35:00','2009-08-20 01:52:00',NULL,NULL,NULL,'Who is Project Manager',NULL,NULL,NULL,'Need to appoint a product manager. ','','',''),(50,27,64,NULL,37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MRM-01','P','O','L',NULL,NULL,NULL,NULL,NULL,NULL,'2007-01-03 12:24:00','2007-01-08 04:02:00',NULL,NULL,NULL,'Legacy Applications',NULL,NULL,NULL,'testing','',NULL,''),(51,27,31,0,37,37,37,0,NULL,NULL,NULL,NULL,NULL,'MRM-02','D','O','L',NULL,'','P',NULL,NULL,'1900-01-01 00:00:00','2007-01-08 04:02:00','2007-01-08 04:08:00','2007-01-08 04:06:00','1900-01-01 00:00:00',NULL,'Pharmacy Discontinue','Please review.','','','Rx discontinue messages will have new MRN, and the Rx system will not match it up to the original order.','',NULL,''),(52,36,85,37,197,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'RxOrders','TEST','C','M',NULL,NULL,NULL,NULL,NULL,'2008-10-16 00:00:00','2008-10-08 03:34:00','2008-10-16 05:51:00',NULL,NULL,NULL,'RX Discontinue',NULL,NULL,NULL,'d','v',NULL,''),(53,37,37,NULL,37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NEVI-IS-01','BD','O','L',NULL,NULL,NULL,NULL,NULL,NULL,'2008-11-21 09:53:00','2008-11-23 07:51:00',NULL,NULL,NULL,'Effective Date Posting',NULL,NULL,NULL,'Define how effective dates should be handled by payor. ','',NULL,''),(54,28,11,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SC0001','BD','O','L',NULL,NULL,NULL,NULL,NULL,NULL,'2008-11-23 07:52:00',NULL,NULL,NULL,NULL,'Image Size',NULL,NULL,NULL,'','',NULL,''),(55,35,163,NULL,37,337,NULL,NULL,NULL,0,0,0,'','EIV-005','BD','O','M','RL',NULL,NULL,'2009-05-01 00:00:00','2009-08-12 00:00:00',NULL,'2009-01-23 04:18:00','2009-07-26 09:45:00',NULL,NULL,NULL,'Auto or manually terminate inelgible coverage',NULL,NULL,NULL,'Question to business, is this still an outstanding issue?  If so, can business indicate the scenario(s) where a pts medicare coverage will be terminated?  Once determined, condcut the following.\r\n\r\n1. Business - Open SR (provide BNJ and associated test data)\r\n2. KPHC AC - Open PROD/Test RFCs\r\n3. Present at CAB => Determine install date\r\n\r\n7/6/2009\r\n-Email sent to Tracy requesting data to analyze/test','','',''),(56,35,163,37,37,37,NULL,0,NULL,0,0,0,'','EIV-001','TEST','O','M','RL','','','1900-01-01 00:00:00','1900-01-01 00:00:00','2009-07-22 00:00:00','2009-01-23 04:48:00','2009-08-04 11:11:00',NULL,'1900-01-01 00:00:00',NULL,'MediCal Coverage MisMatch when Managed Care Returned','','','','The coverage verification status response of E-Mediaid Plan Mismatch is returned when the pts Eligible Medi-Cal coverage is through a Managed Care Coordinator (i.e. KP, BC of CA, HealthNet, etc.).  \r\n\r\nThe way we have the replacement plan logic set up (in Bridges table 330005) is that we will catch any response from Medi-Cal that is eligible and that has ANY Managed Care Plan, even Dental.  \r\n\r\nBeing we are not currently creating dental coverages business has stated these cases should not drive an E-Medicaid Plan Mismatch.  \r\n\r\nBased off that decision, I contacted Epic on 4/29 .  Since, Epic has email the fix to Arne to configure and test in local KPHC testing environment.\r\n','','',''),(57,1,127,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'EIV-1','BD','O','L',NULL,NULL,NULL,NULL,NULL,NULL,'2009-06-25 05:35:00',NULL,NULL,NULL,NULL,'Batch Reports',NULL,NULL,NULL,'null','null',NULL,'null'),(58,1,37,NULL,37,37,NULL,NULL,NULL,0,0,0,'','MediCal','REQ','O','M','0',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2009-06-25 06:22:00','2009-10-23 07:58:00',NULL,NULL,NULL,'MediCal Posting Rules for Dental',NULL,NULL,NULL,'The coverage verification status response of E-Mediaid Plan Mismatch is returned when the pts Eligible Medi-Cal coverage is through a Managed Care Coordinator (i.e. KP, BC of CA, HealthNet, etc.).  The way we have the replacement plan logic set up (in Bridges table 330005) is that we will catch any response from Medi-Cal that is eligible and that has ANY Managed Care Plan, even Dental.  Being we are not currently creating dental coverages business has stated these cases should not drive an E-Medicaid Plan Mismatch.  Based off that decision, I contacted Epic on 4/29 .  Since, Epic has email the fix to Arne to configure and test in local KPHC testing environment.','','',''),(59,38,37,NULL,37,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MC PLN MATCH','TEST','O','H',NULL,NULL,NULL,NULL,NULL,NULL,'2009-06-25 10:34:00','2009-06-25 10:34:00',NULL,NULL,NULL,'Medi-Cal Plan MisMatch for Dental',NULL,NULL,NULL,'Medi-Cal \"verified\" responses go to e-rejected when there is a dental plan. ','',NULL,''),(60,1,1,37,37,37,NULL,0,NULL,NULL,NULL,NULL,NULL,'buttons3','0','C','L',NULL,'N','N',NULL,NULL,'2009-07-21 00:00:00','2009-07-21 09:41:00','2009-07-21 09:41:00',NULL,'1900-01-01 00:00:00',NULL,'Buttons in Form Title','','','','New buttons doens\"t work. ','',NULL,'Not a problem. '),(61,31,37,NULL,37,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'IS-2','REQ','O','M',NULL,NULL,NULL,NULL,NULL,NULL,'2009-07-21 09:54:00',NULL,NULL,NULL,NULL,'List Page Out-of-Order',NULL,NULL,NULL,'','',NULL,''),(62,35,37,37,37,37,NULL,0,NULL,0,0,0,'','EIV-017','OTH','C','M','BAT','','','2009-04-08 00:00:00','2009-05-12 00:00:00','2009-07-26 00:00:00','2009-07-22 04:35:00','2009-07-26 06:28:00',NULL,'1900-01-01 12:00:00',NULL,'Batch Run Time Improvement','','','','Batch performance improvement\r\n\r\n1) Chris Salemme investigating; determined that the batch job is checking all appointments for given instance within in the timeline, then looking at appointments for given departments using NEVI; then which of those patients that have other coverage\r\n2) Timeline is based on instance; Capitol is one of the larger instances, so time for batch should be approximate for each instance going forward\r\n3) Will monitor as all of Capitol comes up \r\n','','',''),(64,35,37,NULL,37,37,NULL,NULL,NULL,0,0,0,'Tracy Warner','EIV-004','REQ','O','H','BAT',NULL,NULL,'2009-08-22 00:00:00','1900-01-01 00:00:00',NULL,'2009-07-26 06:11:00','2009-08-20 01:57:00',NULL,NULL,NULL,'Subscriber Last Name Truncated to Six Characters for Medi-Cal',NULL,NULL,NULL,'Subscriber Last Name Truncated to Six Characters for Medi-Cal','','',NULL),(65,35,160,0,37,37,NULL,0,NULL,0,0,0,'Tracy Warner','EIV-019','REQ','O','H','WQ','','','2009-08-22 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','2009-07-26 09:36:00','2009-08-21 02:11:00',NULL,'1900-01-01 00:00:00',NULL,'E-Verified in Financial Workqueues','','','','Stuff about work queues','','',''),(66,35,163,NULL,37,76,NULL,NULL,NULL,98989898,0,0,'','EIV-090','FUND','O','M','OTH',NULL,NULL,'1900-01-01 00:00:00','2009-10-01 00:00:00',NULL,'2009-08-21 02:14:00','2009-08-25 08:42:00',NULL,NULL,NULL,'Assist Colorado with EIV Implementation',NULL,NULL,NULL,'Help Colorado.','','',NULL),(67,34,37,NULL,37,37,NULL,NULL,NULL,0,0,0,'','Beacon-1','FUND','O','M','OTH',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2009-11-17 10:48:00','2009-11-17 11:14:00',NULL,NULL,NULL,'Beacon Rollback',NULL,NULL,NULL,'','','',NULL),(68,34,37,0,37,37,NULL,0,NULL,0,0,0,'','Beacon-2','FUND','O','M','CODES','','','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2009-11-17 10:48:00','2009-11-17 11:15:00',NULL,'0000-00-00 00:00:00',NULL,'Oncology Codes List Stablize','','','','','','','');
/*!40000 ALTER TABLE `tissue` ENABLE KEYS */;
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
