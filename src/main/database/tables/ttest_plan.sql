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
-- Table structure for table `ttest_plan`
--

DROP TABLE IF EXISTS `ttest_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttest_plan` (
  `test_plan_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `version_no` varchar(100) DEFAULT NULL,
  `phase_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `scope_blob` varchar(1024) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `entrance_criteria_blob` varchar(1024) DEFAULT NULL,
  `exit_criteria_blob` varchar(1024) DEFAULT NULL,
  `result_summary_blob` varchar(1024) DEFAULT NULL,
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
  `remedy_asof_date` datetime DEFAULT NULL,
  `remedy_act_end_date` datetime DEFAULT NULL,
  `remedy_cat_tx` varchar(128) DEFAULT NULL,
  `remedy_grp_tx` varchar(128) DEFAULT NULL,
  `remedy_type_tx` varchar(128) DEFAULT NULL,
  `remedy_item_tx` varchar(128) DEFAULT NULL,
  `remedy_approve_cd` varchar(128) DEFAULT NULL,
  `remedy_start_date_tx` varchar(128) DEFAULT NULL,
  `remedy_pending_cd` varchar(32) DEFAULT NULL,
  `remedy_comment_blob` text DEFAULT NULL,
  `remedy_grp_cd` varchar(128) DEFAULT NULL,
  `urgency_cd` varchar(8) DEFAULT NULL,
  `impact_cd` varchar(8) DEFAULT NULL,
  `expedited_cd` varchar(45) DEFAULT NULL,
  `escalated_cd` varchar(45) DEFAULT NULL,
  `closure_cd` varchar(45) DEFAULT NULL,
  `outage_cd` varchar(45) DEFAULT NULL,
  `emergency_cd` varchar(45) DEFAULT NULL,
  `remedy_end_dt` datetime DEFAULT NULL,
  `remedy_start_dt` datetime DEFAULT NULL,
  `remedy_act_end_dt` datetime DEFAULT NULL,
  `remedy_requested_completion_dt` datetime DEFAULT NULL,
  `remedy_create_dt` datetime DEFAULT NULL,
  `submitter_uid` int(10) unsigned DEFAULT NULL,
  `requester_uid` int(10) unsigned DEFAULT NULL,
  `remedy_effort_tx` varchar(128) DEFAULT NULL,
  `description_blob` text DEFAULT NULL,
  `worklog_blob` text DEFAULT NULL,
  `bsns_need_blob` text DEFAULT NULL,
  PRIMARY KEY (`test_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttest_plan`
--

LOCK TABLES `ttest_plan` WRITE;
/*!40000 ALTER TABLE `ttest_plan` DISABLE KEYS */;
INSERT INTO `ttest_plan` VALUES (1,1,'Unit Test','UT-BF','','P','WIP','All interfaces. ','Test descirption','All ready','All passed.','Summary. ',1,37,0,NULL,0,'2006-01-01 08:00:00','2008-10-17 11:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ttest_plan` ENABLE KEYS */;
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
