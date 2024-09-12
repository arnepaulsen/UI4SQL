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
-- Table structure for table `tproject`
--

DROP TABLE IF EXISTS `tproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tproject` (
  `project_id` int(10) NOT NULL AUTO_INCREMENT,
  `refr_nm` varchar(16) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_description` varchar(1024) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(8) DEFAULT NULL,
  `progress_cd` varchar(8) DEFAULT NULL,
  `team_cd` varchar(8) DEFAULT NULL,
  `current_stage_id` int(10) DEFAULT NULL,
  `primary_application_id` int(10) DEFAULT NULL,
  `notes_tx` varchar(2000) DEFAULT NULL,
  `process_id` int(10) DEFAULT NULL,
  `division_id` int(10) DEFAULT NULL,
  `commitment_id` int(10) DEFAULT NULL,
  `rfc_id` int(10) DEFAULT NULL,
  `ra_no` int(10) DEFAULT NULL,
  `sr_no` int(10) DEFAULT NULL,
  `cr_no` int(10) DEFAULT NULL,
  `defect_id` int(10) DEFAULT NULL,
  `release_note_id` int(10) DEFAULT NULL,
  `incident_id` int(10) DEFAULT NULL,
  `completed_flag` char(1) DEFAULT NULL,
  `problem_stmt` varchar(255) DEFAULT NULL,
  `plan_start_date` datetime DEFAULT NULL,
  `plan_end_date` datetime DEFAULT NULL,
  `actual_start_date` datetime DEFAULT NULL,
  `actual_end_date` datetime DEFAULT NULL,
  `chng_req_nm` varchar(32) DEFAULT NULL,
  `est_days_no` int(10) DEFAULT NULL,
  `act_days_no` int(10) DEFAULT NULL,
  `est_roi_amt` int(10) DEFAULT NULL,
  `act_roi_amt` int(10) DEFAULT NULL,
  `est_cost_amt` int(10) DEFAULT NULL,
  `act_cost_amt` int(10) DEFAULT NULL,
  `operation_amt` int(10) DEFAULT NULL,
  `capital_amt` int(10) DEFAULT NULL,
  `total_amt` int(10) DEFAULT NULL,
  `est_months_no` int(10) DEFAULT NULL,
  `act_months_no` int(10) DEFAULT NULL,
  `pm_uid` int(10) DEFAULT NULL,
  `stakeholder_uid` int(10) DEFAULT NULL,
  `business_mgr_uid` int(10) DEFAULT NULL,
  `process_mgr_uid` int(10) DEFAULT NULL,
  `team_leader_uid` int(10) DEFAULT NULL,
  `scope_in` varchar(1024) DEFAULT NULL,
  `scope_out` varchar(1024) DEFAULT NULL,
  `vendor_contact_tx` varchar(64) DEFAULT NULL,
  `constraints_tx` varchar(1024) DEFAULT NULL,
  `bsns_env` varchar(1024) DEFAULT NULL,
  `cust_needs` varchar(1024) DEFAULT NULL,
  `effects_tx` varchar(1024) DEFAULT NULL,
  `dependencies_tx` varchar(255) DEFAULT NULL,
  `resources_tx` varchar(255) DEFAULT NULL,
  `budget_tx` varchar(255) DEFAULT NULL,
  `timeline_tx` varchar(255) DEFAULT NULL,
  `audit_seq_no` int(10) DEFAULT NULL,
  `audit_date` datetime DEFAULT NULL,
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
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproject`
--

LOCK TABLES `tproject` WRITE;
/*!40000 ALTER TABLE `tproject` DISABLE KEYS */;
INSERT INTO `tproject` VALUES (1,NULL,'Interfaces','','WIP','EN','2','G','RC',7,13,'',2,1,1,23,0,0,0,0,0,0,'','Merge Boston Feet accounts into eCommerce.','2004-12-12 00:00:00','2005-12-03 00:00:00','2004-12-16 00:00:00','0000-00-00 00:00:00','BRIDGES',34,50,100,67,200,250,0,0,0,3,4,0,0,0,0,0,'Telephone history.','Account roll-ups. ','','Constraints.','Business environment','Customer Needs explain.','','Waiting for new vendor release version 5.0.  We hear it\"s still buggy and has performance problems, but we\"re going to take it anyway.','','','',0,NULL,1,37,1,0,0,'2006-01-01 08:00:00','2022-04-05 11:11:00','2006-03-28 06:33:00',NULL,NULL,'P','N','Ready for stakeholder review',NULL,NULL),(2,NULL,'Lifecycle Managemnt','','NEW','CR      ','2','','RC',1,2,'',1,4,2,NULL,NULL,0,NULL,0,NULL,NULL,'','A Big problem to solve.','2000-03-12 00:00:00','2010-12-01 00:00:00',NULL,NULL,'DEF - ABC 09834',5,0,0,0,0,0,NULL,NULL,NULL,0,0,2,NULL,NULL,NULL,NULL,'in scope.','out x',NULL,'constraints.','Bus env.','cust have too many needs.','effects ad','dadfe af','team fd','budget. df','timeline. ad',0,NULL,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,NULL,'Radiant Phase II','','WIP','PR','4','Y','OP',1,1,'',1,1,2,0,0,0,0,0,0,0,'','We are losing business to competors because we are not offering a full range of services.\r\n\r\nIt takes our IT department too long to bring projects to market, because the senior analysts are busy filing out Word and Excel documents, and emailing them a','2009-06-06 00:00:00','2002-02-02 00:00:00','2009-06-06 00:00:00','2009-06-06 00:00:00','RAD',5,0,0,0,0,0,0,0,0,0,0,77,0,0,NULL,0,'','','','','','Customers need internet access to their accounts from PDA and cell phones. \r\n\r\nThis project will enable us to capture the 20 year. ','<font color=blue>You can add custom field to any template. </font>\r\n','<font color=blue>This is a custom field</font>','','','',0,NULL,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2009-09-10 04:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,NULL,'Websphere Upgrade','','NEW','CR      ','3','','RC',1,5,'',3,3,0,NULL,NULL,0,NULL,0,NULL,NULL,'','','2004-04-04 00:00:00','2005-05-05 00:00:00',NULL,NULL,'BRD-KJ-98234',5,0,0,0,0,0,NULL,NULL,NULL,0,0,2,NULL,NULL,NULL,NULL,'','',NULL,'','','','','','','','',0,NULL,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(25,NULL,'Continuous Availability',NULL,'WIP','EN','3','R','AMB',3,94,NULL,1,1,1,0,0,0,0,0,0,0,'','Third quarter release package. ','2005-05-01 00:00:00','2005-07-31 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','ALTP',5,0,0,0,0,0,0,0,0,0,0,76,0,0,NULL,0,'','','',NULL,'','','','','','','',0,NULL,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-02 10:35:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(26,NULL,'Tracemaster',NULL,'WIP','PR','4','G','IP',5,1,NULL,2,1,1,0,0,0,0,0,0,0,'','Need to replace manual query to Credit Bureau with automated link.','2005-12-01 00:00:00','2006-05-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','PC-983',0,0,0,0,0,0,0,0,0,0,0,75,0,0,NULL,0,'','','',NULL,'','','',NULL,'','','',0,NULL,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2009-07-22 06:08:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(27,NULL,'HC General',NULL,'WIP','PS','1','G','RC',9,94,NULL,1,1,1,1155817,2104,3443,111,20025,70260,1904847,NULL,'Merge duplicate MRN numbers.','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','K2009MAR',0,0,0,0,0,0,0,0,0,0,0,31,75,77,18,37,'','','Beck Burkholder',NULL,'','','','','','','',NULL,NULL,37,37,NULL,NULL,NULL,'2006-10-31 10:24:00','2009-09-21 05:54:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,NULL,'Release 2009','','NEW','PS','1','Y','RC',3,1,'',2,1,1,0,0,0,0,0,0,0,'','Spring 06 Upgrade','2006-11-11 00:00:00','2006-11-11 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','SUM10',5,0,0,0,0,0,0,0,0,0,0,75,0,18,3,0,'','','','','','','<font color=blue>You can add custom field to any template. </font>\r\n','<font color=blue>This is a custom field</font>','','','',0,'1900-01-01 00:00:00',37,37,NULL,0,NULL,'2006-11-09 06:37:00','2009-09-10 05:09:00',NULL,'1900-01-01 00:00:00',NULL,'N','N','','',''),(30,NULL,'PMO Tool','','WIP','PS','1','G','HC',1,79,'',2,6,2,0,0,0,67,1,0,0,'','Roll out PMO Tool to HC','2006-11-01 00:00:00','2008-02-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','PMO',0,0,0,0,0,0,0,0,0,0,0,101,140,97,0,37,'','','','','','','','','','','',0,'1900-01-01 00:00:00',37,133,NULL,0,NULL,'2006-11-09 01:33:00','2009-07-26 09:58:00',NULL,'1900-01-01 00:00:00',NULL,'','','','',''),(32,NULL,'Cerner Millenium',NULL,'NEW','TD','1','G','RC',9,8,NULL,1,1,1,0,0,0,0,0,0,0,NULL,'Members do not have coverage on the medical card they present at check-in. Coverage is on the bad medical card.','2007-02-01 00:00:00','2007-06-30 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','MRN-CVG',0,0,0,0,0,0,0,0,0,0,0,91,75,75,NULL,34,'Assign coverage from \"bad\" mrn to \"good\" mrn. ','clinical consolidation','',NULL,'','Need impact report analysis. Report will have analysis of members that were sent to Member Services to correct their visit co-pay amount.\r\n\r\nNeed to segment report by a. potential member impact, b. actual members that have been impacted at visit time.\r\nb\r\nSummary Report:\r\nmembers with coverage\r\nmembers with visits in last x months\r\nby members 2 mrn, 3 mrn, 4 mrn\r\n\r\nDetail Report:\r\n\r\n1. # completed visits\r\n2. # unique persons \r\n3. by visit type\r\n4. \r\nPurpose is to replace the current Remedy tracking / reporting workflow.\r\n','Billing, ','','Prelude - Mary Sears\r\nBridges / Bill Mitchell, Arne Paulsen','','',NULL,NULL,37,37,NULL,NULL,NULL,'2007-02-06 01:49:00','2022-03-10 10:48:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,NULL,'Beacon',NULL,'WIP','EN','1','G','AMB',1,81,NULL,2,1,4,0,0,0,0,0,0,0,NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','BEACON',0,0,0,0,0,0,0,0,0,0,0,91,3,102,NULL,77,'','','',NULL,'','','','','','','',NULL,NULL,37,37,NULL,NULL,NULL,'2008-02-06 09:07:00','2022-03-02 09:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'','Electronic Insurance Verification','','WIP','EN','2','G','RC',7,8,'',2,1,4,23,0,0,0,0,0,0,'','Merge Boston Feet accounts into eCommerce.','2004-12-12 00:00:00','2005-12-03 00:00:00','2004-12-16 00:00:00','1900-01-01 00:00:00','EIV',34,50,100,67,200,250,0,0,0,3,4,337,0,0,0,0,'Telephone history.','Account roll-ups. ','','Constraints.','Business environment','Customer Needs explain.','','Waiting for new vendor release version 5.0.  We hear it\"s still buggy and has performance problems, but we\"re going to take it anyway.','','','',0,'1900-01-01 00:00:00',31,37,NULL,0,NULL,'2008-06-25 02:07:00','2009-07-21 05:58:00',NULL,'1900-01-01 00:00:00',NULL,'P','N','Ready for stakeholder review','',''),(37,NULL,'Provider Identity',NULL,'NEW','EN','1','G','RC',1,12,NULL,2,1,4,0,0,0,0,0,0,0,NULL,'','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','PEI',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'','','',NULL,'','','',NULL,'','','',NULL,NULL,37,37,NULL,NULL,NULL,'2008-11-21 09:51:00','2009-07-22 06:28:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,NULL,'Legacy Retirement',NULL,'NEW','EN','1','G','RC',1,8,NULL,2,1,4,0,0,0,0,0,0,0,NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','EIV',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'','','',NULL,'','','','','','','',NULL,NULL,37,37,NULL,NULL,NULL,'2009-06-25 10:32:00','2022-04-05 11:10:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(43,NULL,'Regional Issues Triage',NULL,'WIP','TD','1','G','HC',1,60,NULL,2,1,4,0,0,0,0,0,0,0,NULL,'','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','RIT',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,'','','',NULL,'','','','','','','',NULL,NULL,37,37,NULL,NULL,NULL,'2009-09-18 03:41:00','2009-09-21 06:13:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'','Inpatient Optimization','','WIP','TD','1','Y','CL',3,1,'',2,1,1,0,0,0,0,0,0,0,'','Spring 06 Upgrade','2006-11-11 00:00:00','2006-11-11 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','IP',5,0,0,0,0,0,0,0,0,0,0,272,272,272,3,272,'','','','','','','<font color=blue>You can add custom field to any template. </font>\r\n','<font color=blue>This is a custom field</font>','','','',0,'1900-01-01 12:00:00',37,37,NULL,0,NULL,'2009-11-24 10:25:00','2009-11-24 10:26:00',NULL,'1900-01-01 12:00:00',NULL,'N','N','','','');
/*!40000 ALTER TABLE `tproject` ENABLE KEYS */;
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
