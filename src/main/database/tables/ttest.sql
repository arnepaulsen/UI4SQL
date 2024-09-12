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
-- Table structure for table `ttest`
--

DROP TABLE IF EXISTS `ttest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttest` (
  `test_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT 1,
  `cycle_id` int(10) DEFAULT NULL,
  `env_id` int(10) DEFAULT 0,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `chg_pkg_nm` varchar(128) DEFAULT NULL,
  `anc_contact_tx` varchar(64) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT 'NEW',
  `result_cd` varchar(16) DEFAULT NULL,
  `code_chg_reqr_cd` varchar(8) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `testcase_id` int(10) DEFAULT NULL,
  `anc_list_tx` varchar(255) DEFAULT NULL,
  `config_chg_reqr_cd` varchar(1) DEFAULT NULL,
  `env1_yn_cd` char(1) DEFAULT NULL,
  `env2_yn_cd` char(10) DEFAULT NULL,
  `env3_yn_cd` char(10) DEFAULT NULL,
  `env4_yn_cd` char(10) DEFAULT NULL,
  `env5_yn_cd` char(10) DEFAULT NULL,
  `env6_yn_cd` char(10) DEFAULT NULL,
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
  `closed_date` datetime DEFAULT NULL,
  `owner_uid` int(10) DEFAULT 0,
  `closed_uid` int(10) DEFAULT NULL,
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
  `test_start_date` datetime DEFAULT NULL,
  `data_regr_blob` longtext DEFAULT NULL,
  `epic_products_tx` varchar(255) DEFAULT NULL,
  `anc_products_tx` varchar(255) DEFAULT NULL,
  `test_data_blob` longtext DEFAULT NULL,
  `benefits_blob` longtext DEFAULT NULL,
  `test_env_tx` varchar(128) DEFAULT NULL,
  `other_reqr_blob` longtext DEFAULT NULL,
  `priority_cd` varchar(8) DEFAULT NULL,
  `template_nm` varchar(128) DEFAULT NULL,
  `install_dt` datetime DEFAULT NULL,
  `cab_dt` datetime DEFAULT NULL,
  `sr_no` int(10) unsigned DEFAULT NULL,
  `cab_sr_no` int(10) unsigned DEFAULT NULL,
  `phase_cd` varchar(8) DEFAULT NULL,
  `risk_blob` longtext DEFAULT NULL,
  `mitagate_blob` longtext DEFAULT NULL,
  `plan_sign_date` datetime DEFAULT NULL,
  `case_sign_date` datetime DEFAULT NULL,
  `plan_sign_cd` varchar(4) DEFAULT NULL,
  `case_sign_cd` varchar(4) DEFAULT NULL,
  `summary_sign_date` datetime DEFAULT NULL,
  `scope_blob` longtext DEFAULT NULL,
  `plan_ecp_blob` longtext DEFAULT NULL,
  `plan_engage_blob` longtext DEFAULT NULL,
  `plan_plan_blob` longtext DEFAULT NULL,
  `plan_prep_blob` longtext DEFAULT NULL,
  `plan_exec_blob` longtext DEFAULT NULL,
  `plan_end_engage_blob` longtext DEFAULT NULL,
  `plan_ecp_st_cd` varchar(4) DEFAULT NULL,
  `plan_engage_st_cd` varchar(4) DEFAULT NULL,
  `plan_prep_st_cd` varchar(4) DEFAULT NULL,
  `plan_exec_st_cd` varchar(4) DEFAULT NULL,
  `plan_end_st_cd` varchar(4) DEFAULT NULL,
  `sox_compliance_cd` varchar(4) DEFAULT NULL,
  `test_stat_cd` varchar(4) DEFAULT NULL,
  `test_lead_uid` int(10) unsigned DEFAULT NULL,
  `test_end_date` datetime DEFAULT NULL,
  `plan_exec_pct` int(10) unsigned DEFAULT NULL,
  `plan_pass_pct` int(10) unsigned DEFAULT NULL,
  `actual_exec_pct` int(10) unsigned DEFAULT NULL,
  `actual_pass_pct` int(10) unsigned DEFAULT NULL,
  `test_case_asof_date` datetime DEFAULT NULL,
  `current_activity_blob` longtext DEFAULT NULL,
  `next_week_plans_blob` longtext DEFAULT NULL,
  `plan_plan_st_cd` varchar(4) DEFAULT NULL,
  `manager_uid` int(10) unsigned DEFAULT NULL,
  `status_summary_blob` longtext DEFAULT NULL,
  `division_id` int(10) unsigned DEFAULT 1,
  `progress_cd` varchar(2) DEFAULT NULL,
  `summary_dt_st_cd` varchar(4) DEFAULT NULL,
  `baod_uid` int(10) unsigned DEFAULT NULL,
  `builder_uid` int(10) unsigned DEFAULT NULL,
  `ip_uat_flag` varchar(10) DEFAULT NULL,
  `ecp_reqr_flag` varchar(10) DEFAULT NULL,
  `remedy_asof_date` datetime DEFAULT NULL,
  `remedy_act_end_date` datetime DEFAULT NULL,
  `remedy_cat_tx` varchar(128) DEFAULT NULL,
  `remedy_grp_tx` varchar(128) DEFAULT NULL,
  `remedy_type_tx` varchar(128) DEFAULT NULL,
  `remedy_item_tx` varchar(128) DEFAULT NULL,
  `remedy_approve_cd` varchar(45) DEFAULT NULL,
  `remedy_start_date_tx` varchar(45) DEFAULT NULL,
  `remedy_pending_cd` varchar(45) DEFAULT NULL,
  `remedy_comment_blob` text DEFAULT NULL,
  `remedy_grp_cd` varchar(45) DEFAULT NULL,
  `urgency_cd` varchar(45) DEFAULT NULL,
  `impact_cd` varchar(45) DEFAULT NULL,
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
  `remedy_effort_tx` varchar(45) DEFAULT NULL,
  `description_blob` text DEFAULT NULL,
  `worklog_blob` text DEFAULT NULL,
  `bsns_need_blob` text DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttest`
--

LOCK TABLES `ttest` WRITE;
/*!40000 ALTER TABLE `ttest` DISABLE KEYS */;
INSERT INTO `ttest` VALUES (1,25,2,2,'120909','KPHC CN Bridges - Setup PCP Error Queue in Hyperspace / WITS3','','','Waiting for Cycle 2','Ass','P','N',11,10,'','N','N','N','N','N','N','N','Close account and write-off balance of > $200. ','','','','','','','Required supervisor approval. ','resolved','cause','','','Customer must be in \"accepted\" state.','1900-01-01 00:00:00',697,0,37,37,0,NULL,0,'2006-01-01 08:00:00','2009-11-24 03:28:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'2010-03-01 00:00:00','','',NULL,'','','','','U','','0000-00-00 00:00:00','2009-11-12 00:00:00',4163290,4163290,'U','Risk area.','Migigation','2010-12-02 00:00:00','2010-12-15 00:00:00','Z','Z','0000-00-00 00:00:00',NULL,'','','','','','','0','0','0','0','0','R',NULL,97,'2020-05-01 00:00:00',4,10,50,60,'2009-11-02 00:00:00','Finish wits/3 data set-u.','Finish first 10 cases.','0',0,'',1,'Y','0',NULL,NULL,'y','Y','2009-11-24 15:30:01',NULL,'End User Applications','KPHC CN BRIDGES','KPHC Interfaces','Configuration','NR',NULL,'',NULL,NULL,'L','L','N','N',' ','N','N','2010-01-18 22:00:00','2010-01-18 21:00:00',NULL,'2009-12-16 00:00:00','2009-10-19 14:48:02',1376,1376,' ','setup PCP error workqueue view from Hyperspace in wits3 (assigned to Arne S Paulsen)','',NULL),(2,25,0,0,'CA-201','RTM-KPHC/NCAL/MPR  (PROD) Update RMO settings for USDOL - Reciprocal SCAL SR is CHG2926225',NULL,NULL,'Okay','Pla','P',NULL,22,6,'legacy  -------------------------------------------------  ---------------------rrrrrrrrrrrrrrrrrrrrrrr----ddddddddd  dddddddddddddddddddddddddddddh',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'As per test case.  what happened ?\r\nn',NULL,NULL,NULL,NULL,NULL,NULL,'Slow response, possible due to poor indexing on customer search. ','','',NULL,'test scanersos','1. Account is open. ',NULL,740,0,37,37,0,NULL,0,'2006-01-01 08:00:00','2010-01-20 11:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'2009-01-01 00:00:00','REgression Requirements','epic products',NULL,'daat matric','mrn benefits','env','Other...','M','template','2009-01-01 00:00:00','2009-01-01 00:00:00',3016113,3016113,'P','','','2009-05-01 00:00:00','2009-10-01 00:00:00','R','Y','2009-12-02 00:00:00',NULL,'','','','','','','0','0','0','0','0','Y',NULL,211,'2009-11-15 00:00:00',90,95,50,60,'2009-11-04 00:00:00','','','0',143,'',1,'G','R',43,28,'Y','N','2009-11-24 14:54:32',NULL,'End User Applications','KPHC CN RESOLUTE TECH','KPHC Billing (Resolute)','Maintenance','AR',NULL,'','2009-10-14 - Karin D Gregg - Testing Waived/Change Authorized<BR><BR>','RESLUTTC','L','L','N','N',' ','N','N','2009-11-11 10:01:00','2009-11-11 07:00:00',NULL,NULL,'2008-10-15 09:28:40',740,780,' ','KPHC/NCAL/MPR  PROD Update RMO settings for USDOL - Reciprocal SCAL SR is CHG2926225','','In an effort to synchronize NCAL & SCAL payment posting functions and prepare to aggressively set up Commercial Payors  on 835 Electronic Remittances we have completed a review of all settings. In addition we are setting all default actions to ensure we are seeing our expected results. This will reduce the amount of incidents, ensure compliance, and enhance customer service.'),(3,25,0,0,'TC-AC-004','KPHC CN Bridges TEST - PB Courtesy Billing: Create a new Translation Interface Table.<br><br>WITS3 & PSUP',NULL,NULL,'','Wor','P',NULL,22,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,'','',NULL,697,0,37,37,0,NULL,0,'2006-01-01 08:00:00','2009-11-24 03:56:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'0000-00-00 00:00:00','','',NULL,'','','','','0','','0000-00-00 00:00:00','0000-00-00 00:00:00',4263716,4263716,'0','','','0000-00-00 00:00:00','0000-00-00 00:00:00','0','0',NULL,NULL,'','','','','','','0','0','0','0','0','0',NULL,0,'0000-00-00 00:00:00',0,0,0,0,'0000-00-00 00:00:00','','','0',246,'',1,'R',NULL,28,156,'Y','Y','2009-11-24 15:45:43',NULL,'End User Applications','KPHC CN BRIDGES','KPHC Interfaces','Configuration','NR',NULL,'','2009-11-19 - Arne S Paulsen - All WITS3 and PSUP instances updated. with new table entries.<BR><BR>2009-11-24 - John Fleming - Demand Bill tested in WITS3 successfully.<BR><BR>',NULL,'M','L','N','N',' ','N','N',NULL,NULL,NULL,'2009-11-20 17:00:00','2009-11-19 00:35:30',881,881,' ','PB Courtesy Billing: Create a new Translation Interface Table.\r\n\r\nModify (AIF) table 9870001 - KP PB DEMAND STATEMENT in both WITS3 and PSUP.\r\n\r\n(If time is a constraint in implementing AIF change by 5pm on 11/20 and propagation is not supported for this modification, then selecting a single deployment (CA) for modification is OK)','',NULL),(4,25,4,0,'FEE-1','Charge Fee',NULL,NULL,'','C','P',NULL,22,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,'','',NULL,0,0,37,37,0,NULL,0,'2006-01-01 08:00:00','2009-11-03 12:17:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',5,NULL,'0','','','0000-00-00 00:00:00','0000-00-00 00:00:00','0','0',NULL,NULL,'','','','','','','0','0','0','0','0','0',NULL,0,'0000-00-00 00:00:00',0,0,0,0,'0000-00-00 00:00:00','','','0',0,'',1,'R',NULL,NULL,NULL,'y','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,25,4,0,'FEE-2','Charge Fee',NULL,NULL,'','C','P',NULL,22,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','','',NULL,'','',NULL,0,0,37,37,1,NULL,0,'2006-01-01 08:00:00','2009-11-03 12:18:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',5,NULL,'0','','','0000-00-00 00:00:00','0000-00-00 00:00:00','0','0',NULL,NULL,'','','','','','','0','0','0','0','0','0',NULL,0,'0000-00-00 00:00:00',0,0,0,0,'0000-00-00 00:00:00','','','0',0,'',1,'R',NULL,NULL,NULL,'y','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,25,1,2,'989898','KPHC_ PROD_ CHANGE VISIT TYPE INJECTION(3) BENEFIT GROUPING','','','Waiting for Testing Approval','Clo','P','N',53,10,'','Y','N','N','N','N','N','N','Close account and write-off balance of > $200. ','Bridges configuration of the outbound Reg+ and ADT interfaces, and the inbound Bedrock interface. ','Bedrock needs to receive the CIDs of the W/C plan and payor.  This local .1 values from Capitol to Bedrock are unique Capitol, and can point to the wrong Plan when Bedrock sends them back to HC. ','','','','','Required supervisor approval. ','resolved','cause','','','Need WC registration. ','1900-01-01 00:00:00',893,0,37,37,NULL,0,NULL,'2006-12-05 10:50:00','2009-11-24 02:29:00',NULL,'1900-01-01 00:00:00',NULL,'N','N','','','','2009-08-10 00:00:00','','',NULL,'','','','','M','','2009-12-16 00:00:00','2009-12-01 00:00:00',3848786,3848786,'R','1. OCSP Test plan needs approval.','','2009-12-12 00:00:00','2011-12-12 00:00:00','Z','R','2009-12-31 00:00:00','Close account and write-off balance of > $200. Close account and write-off balance of > $200. Close account and write-off balance of > $200. Close account and write-off balance of > $200. ','','Project Plan updated and sent to 2010 Benefit Changes PM  ','Test Plan submitted for approval. Project plan/timeline has been updated. New VT and E2E test cases have been approved by business 08/12/09.','Test Plan Approvals ? still in Progress. Several approvers are in 2-days training this week and not available.','','Not there yet. \r\n','Z','Y','R','R','G','R',NULL,118,'2009-10-23 00:00:00',10,20,30,40,'2009-11-02 00:00:00','Test execution of New Visit Types Test Cases. Test Plan completed and submitted for approval.','Regression testing of New VT bug fixes. Test execution of End-to-End test cases. ','Z',111,'Project OFF TRACK ? From SOX perspective Test Plan needs approvals. Test execution start date was delayed. ',1,'R','G',0,0,'Y','Y','2009-11-24 14:34:37',NULL,'End User Applications','KPHC CN CADENCE TECH','KPHC OP/Check-In (Cadence/HOV)','Regional - Configuration Change','A',NULL,'','2009-07-22 - Karin D Gregg - Testing Approved/Change Authorized\n<BR><BR>2009-07-23 - Margaret Askew - ROUTINE<BR><BR>2009-07-23 - Remedy Application Service - Approval process complete. Yvette Smith, has been notified approval<BR><BR>2009-07-23 - Yvette Smith - built/changed benefit grouper INJECTION (3) in all instances<BR><BR>2009-07-23 - Yvette Smith - built/changed benefit grouper  for INJECTION (3)from PROVFRST-PROV in all instance<BR><BR>2009-07-23 - James H OGorman - Checked built for change to  benefit grouper for INJECTION (3) from PROVFRST to PROV in all PROD instance<BR><BR>2009-07-23 - Yvette Smith - Verified build for change to  benefit grouper for INJECTION (3) from PROVFRST to PROV in all PROD instance<BR><BR>2009-07-23 - Yvette Smith - Verified build for change to  benefit grouper for INJECTION (3) from PROVFRST to PROV in all PROD instance<BR><BR>','CADTECH','L','L','N','N','S','N','N','2009-07-23 22:01:00','2009-07-23 18:00:00','2009-07-23 18:23:05',NULL,'2009-07-15 12:16:18',893,549,' ','KPHC_ PROD_ CHANGE VISIT TYPE INJECTION(3) BENEFIT GROUPING\n\nBenefit grouping from PROVFRST-PROV','1248391577ï££Remedy Application Serviceï££Approval process complete. Yvette Smith, has been notified approvalï£¢','Properly adjudicate correct benefit service');
/*!40000 ALTER TABLE `ttest` ENABLE KEYS */;
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
