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
-- Table structure for table `ttest_express`
--

DROP TABLE IF EXISTS `ttest_express`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttest_express` (
  `test_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL DEFAULT 1,
  `division_id` int(10) unsigned DEFAULT 1,
  `cycle_id` int(10) DEFAULT NULL,
  `env_id` int(10) DEFAULT 0,
  `sr_no` int(10) unsigned DEFAULT NULL,
  `cab_sr_no` int(10) unsigned DEFAULT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `chg_pkg_nm` varchar(128) DEFAULT NULL,
  `anc_contact_tx` varchar(64) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `template_nm` varchar(128) DEFAULT NULL,
  `anc_list_tx` varchar(255) DEFAULT NULL,
  `test_env_tx` varchar(128) DEFAULT NULL,
  `code_chg_reqr_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT 'NEW',
  `phase_cd` varchar(8) DEFAULT NULL,
  `result_cd` varchar(16) DEFAULT NULL,
  `progress_cd` varchar(2) DEFAULT NULL,
  `summary_dt_st_cd` varchar(4) DEFAULT NULL,
  `plan_engage_st_cd` varchar(4) DEFAULT NULL,
  `plan_prep_st_cd` varchar(4) DEFAULT NULL,
  `plan_exec_st_cd` varchar(4) DEFAULT NULL,
  `plan_end_st_cd` varchar(4) DEFAULT NULL,
  `sox_compliance_cd` varchar(4) DEFAULT NULL,
  `priority_cd` varchar(8) DEFAULT NULL,
  `test_stat_cd` varchar(4) DEFAULT NULL,
  `plan_sign_cd` varchar(4) DEFAULT NULL,
  `case_sign_cd` varchar(4) DEFAULT NULL,
  `plan_ecp_st_cd` varchar(4) DEFAULT NULL,
  `plan_plan_st_cd` varchar(4) DEFAULT NULL,
  `testcase_id` int(10) DEFAULT NULL,
  `config_chg_reqr_cd` varchar(1) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `manager_uid` int(10) unsigned DEFAULT NULL,
  `owner_uid` int(10) DEFAULT 0,
  `closed_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `test_lead_uid` int(10) unsigned DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `install_dt` datetime DEFAULT NULL,
  `cab_dt` datetime DEFAULT NULL,
  `test_start_date` datetime DEFAULT NULL,
  `plan_sign_date` datetime DEFAULT NULL,
  `case_sign_date` datetime DEFAULT NULL,
  `test_end_date` datetime DEFAULT NULL,
  `test_case_asof_date` datetime DEFAULT NULL,
  `summary_sign_date` datetime DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `data_regr_blob` longtext DEFAULT NULL,
  `epic_products_tx` varchar(255) DEFAULT NULL,
  `anc_products_tx` varchar(255) DEFAULT NULL,
  `test_data_blob` longtext DEFAULT NULL,
  `benefits_blob` longtext DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `fix_blob` longtext DEFAULT NULL,
  `problem_blob` longtext DEFAULT NULL,
  `regression_blob` longtext DEFAULT NULL,
  `anc_setup_blob` longtext DEFAULT NULL,
  `anc_steps_blob` longtext DEFAULT NULL,
  `anc_valid_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `resolution_blob` longtext DEFAULT NULL,
  `root_cause_blob` longtext DEFAULT NULL,
  `validation_blob` longtext DEFAULT NULL,
  `execution_blob` longtext DEFAULT NULL,
  `setup_blob` longtext DEFAULT NULL,
  `other_reqr_blob` longtext DEFAULT NULL,
  `risk_blob` longtext DEFAULT NULL,
  `mitagate_blob` longtext DEFAULT NULL,
  `scope_blob` longtext DEFAULT NULL,
  `plan_ecp_blob` longtext DEFAULT NULL,
  `plan_engage_blob` longtext DEFAULT NULL,
  `plan_plan_blob` longtext DEFAULT NULL,
  `plan_prep_blob` longtext DEFAULT NULL,
  `plan_exec_blob` longtext DEFAULT NULL,
  `plan_end_engage_blob` longtext DEFAULT NULL,
  `current_activity_blob` longtext DEFAULT NULL,
  `next_week_plans_blob` longtext DEFAULT NULL,
  `status_summary_blob` longtext DEFAULT NULL,
  `product_cd` varchar(8) DEFAULT NULL,
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
  `urgency_cd` varchar(128) DEFAULT NULL,
  `impact_cd` varchar(128) DEFAULT NULL,
  `expedited_cd` varchar(128) DEFAULT NULL,
  `escalated_cd` varchar(128) DEFAULT NULL,
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
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttest_express`
--

LOCK TABLES `ttest_express` WRITE;
/*!40000 ALTER TABLE `ttest_express` DISABLE KEYS */;
INSERT INTO `ttest_express` VALUES (1,1,1,NULL,0,3016113,2411755,NULL,'RTM-KPHC/NCAL/MPR  (PROD) Update RMO settings for USDOL - Reciprocal SCAL SR is CHG2926225',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pla','P',NULL,'G','0','0','0','0','0','Y',NULL,'O','P','R','0','0',NULL,NULL,37,143,740,NULL,37,37,NULL,NULL,NULL,22,NULL,'2009-11-05 02:18:00','2022-03-01 02:12:00',NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,'','','','','','','','','','BILLING','2009-11-23 12:51:16',NULL,'End User Applications','KPHC CN RESOLUTE TECH','KPHC Billing (Resolute)','Maintenance','AR',NULL,'','2009-10-14 - Karin D Gregg - Testing Waived/Change Authorized<BR><BR>','RESLUTTC','L','L','N','N',' ','N','N','2009-11-11 10:01:00','2009-11-11 07:00:00',NULL,NULL,'2008-10-15 09:28:40',740,780,' ','KPHC/NCAL/MPR  PROD Update RMO settings for USDOL - Reciprocal SCAL SR is CHG2926225','','In an effort to synchronize NCAL & SCAL payment posting functions and prepare to aggressively set up Commercial Payors  on 835 Electronic Remittances we have completed a review of all settings. In addition we are setting all default actions to ensure we are seeing our expected results. This will reduce the amount of incidents, ensure compliance, and enhance customer service.');
/*!40000 ALTER TABLE `ttest_express` ENABLE KEYS */;
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
