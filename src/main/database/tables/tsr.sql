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
-- Table structure for table `tsr`
--

DROP TABLE IF EXISTS `tsr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsr` (
  `sr_id` int(10) NOT NULL AUTO_INCREMENT,
  `sr_no` int(10) DEFAULT NULL,
  `division_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `defect_nm` varchar(100) DEFAULT NULL,
  `problem_nm` varchar(64) DEFAULT NULL,
  `related_nm` varchar(64) DEFAULT NULL,
  `tested_nm` varchar(100) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `build_track_no` int(10) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `product_cd` varchar(8) DEFAULT NULL,
  `workflow_cd` varchar(8) DEFAULT NULL,
  `test_method_cd` varchar(8) DEFAULT NULL,
  `sr_type_cd` varchar(8) DEFAULT NULL,
  `mstr_suite_cd` varchar(8) DEFAULT NULL,
  `suite_cd` varchar(8) DEFAULT NULL,
  `fcab_review_cd` varchar(8) DEFAULT NULL,
  `suite_review_cd` varchar(8) DEFAULT NULL,
  `baod_reqr_cd` varchar(8) DEFAULT NULL,
  `back_office_cd` varchar(8) DEFAULT NULL,
  `sr_status_cd` varchar(8) DEFAULT NULL,
  `type_cd` varchar(3) DEFAULT NULL,
  `trigger_cd` varchar(2) DEFAULT NULL,
  `install_cd` varchar(2) DEFAULT NULL,
  `tested_cd` char(1) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `release_cd` varchar(16) DEFAULT NULL,
  `impact_cd` varchar(1) DEFAULT NULL,
  `notify_cd` varchar(4) DEFAULT NULL,
  `safety_cd` char(1) DEFAULT NULL,
  `funding_type_cd` char(1) DEFAULT NULL,
  `config_loe_cd` varchar(50) DEFAULT NULL,
  `epic_loe_cd` varchar(1) DEFAULT NULL,
  `prod_cd` varchar(1) DEFAULT NULL,
  `comm_class_cd` varchar(1) DEFAULT NULL,
  `domain_grp_cd` varchar(6) DEFAULT NULL,
  `domain_apv_cd` varchar(2) DEFAULT NULL,
  `reg_domain_apv_cd` varchar(2) DEFAULT NULL,
  `local_domain_apv_cd` varchar(2) DEFAULT NULL,
  `comm_class_leader_cd` varchar(1) DEFAULT NULL,
  `train_hrs_tx` varchar(8) DEFAULT NULL,
  `recomend_priority_cd` varchar(1) DEFAULT NULL,
  `ip_apv_cd` varchar(1) DEFAULT NULL,
  `all_instances_cd` varchar(1) DEFAULT NULL,
  `in_compli_cd` varchar(100) DEFAULT NULL,
  `closure_cd` varchar(3) DEFAULT NULL,
  `assign_date` datetime DEFAULT NULL,
  `remedy_asof_date` datetime DEFAULT NULL,
  `remedy_approve_cd` varchar(8) DEFAULT NULL,
  `remedy_grp_cd` varchar(32) DEFAULT NULL,
  `remedy_grp_tx` varchar(128) DEFAULT NULL,
  `remedy_item_tx` varchar(128) DEFAULT NULL,
  `remedy_cat_tx` varchar(128) DEFAULT NULL,
  `remedy_type_tx` varchar(128) DEFAULT NULL,
  `remedy_type_cd` varchar(16) DEFAULT NULL,
  `remedy_item_cd` varchar(16) DEFAULT NULL,
  `remedy_start_dt_tx` varchar(128) DEFAULT NULL,
  `remedy_start_dt` datetime DEFAULT NULL,
  `remedy_end_dt_tx` varchar(128) DEFAULT NULL,
  `remedy_end_dt` datetime DEFAULT NULL,
  `prod_build_dt` datetime DEFAULT NULL,
  `test_start_tx` varchar(128) DEFAULT NULL,
  `cmnt_proj_tx` varchar(128) DEFAULT NULL,
  `cmnt_loe_tx` varchar(128) DEFAULT NULL,
  `cmnt_funding_tx` varchar(128) DEFAULT NULL,
  `cmnt_comm_tx` varchar(128) DEFAULT NULL,
  `remedy_requested_completion_dt` datetime DEFAULT NULL,
  `remedy_create_dt` datetime DEFAULT NULL,
  `remedy_effort_tx` varchar(64) DEFAULT NULL,
  `hotlist_cd` varchar(3) DEFAULT NULL,
  `outage_cd` varchar(3) DEFAULT NULL,
  `funded_cd` varchar(3) DEFAULT NULL,
  `team_cd` varchar(3) DEFAULT NULL,
  `expedited_cd` varchar(1) DEFAULT NULL,
  `release_related_cd` varchar(1) DEFAULT NULL,
  `emergency_cd` varchar(1) DEFAULT NULL,
  `escalated_cd` varchar(1) DEFAULT NULL,
  `regulatory_cd` varchar(1) DEFAULT NULL,
  `urgency_cd` varchar(1) DEFAULT NULL,
  `domain_apv_flag` varchar(1) DEFAULT NULL,
  `reg_domain_apv_flag` varchar(1) DEFAULT NULL,
  `fac_priority_cd` varchar(2) DEFAULT NULL,
  `sizing_tx` varchar(128) DEFAULT NULL,
  `install_hours_tx` varchar(8) DEFAULT NULL,
  `release_tx` varchar(32) DEFAULT NULL,
  `intrusive_cd` varchar(100) DEFAULT NULL,
  `schedule_days_tx` varchar(100) DEFAULT NULL,
  `bsns_driver_tx` varchar(100) DEFAULT NULL,
  `success_cd` varchar(2) DEFAULT NULL,
  `ip_clinicals_impact_cd` varchar(4) DEFAULT NULL,
  `op_clinicals_impact_cd` varchar(4) DEFAULT NULL,
  `x_suite_cd` varchar(4) DEFAULT NULL,
  `x_epic_prod_cd` varchar(1) DEFAULT NULL,
  `epic_only_cd` varchar(2) DEFAULT NULL,
  `asm_impact_cd` varchar(2) DEFAULT NULL,
  `rtn_maint_cd` varchar(2) DEFAULT NULL,
  `interface_sign_off_cd` varchar(2) DEFAULT NULL,
  `test_sign_off_cd` varchar(2) DEFAULT NULL,
  `security_sign_off_cd` varchar(2) DEFAULT NULL,
  `ip_leader_apv_cd` varchar(2) DEFAULT NULL,
  `ip_leader_priority_cd` varchar(2) DEFAULT NULL,
  `ip_approver_cd` varchar(2) DEFAULT NULL,
  `test_approve_uid` int(10) DEFAULT NULL,
  `compliant_cd` varchar(4) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `requester_uid` int(10) DEFAULT NULL,
  `submitter_uid` int(10) DEFAULT NULL,
  `facility_cd` varchar(8) DEFAULT NULL,
  `ip_type_cd` varchar(3) DEFAULT NULL,
  `region_cd` varchar(12) DEFAULT NULL,
  `release_id` int(10) DEFAULT NULL,
  `audit_blob` longtext DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `impact_blob` longtext DEFAULT NULL,
  `description_blob` longtext DEFAULT NULL,
  `bsns_need_blob` longtext DEFAULT NULL,
  `comment_blob` longtext DEFAULT NULL,
  `implementation_blob` longtext DEFAULT NULL,
  `alternative_blob` longtext DEFAULT NULL,
  `worklog_blob` longtext DEFAULT NULL,
  `backout_blob` longtext DEFAULT NULL,
  `ancillary_blob` longtext DEFAULT NULL,
  `release_blob` longtext DEFAULT NULL,
  `ac_comment_blob` longtext DEFAULT NULL,
  `resolution_blob` longtext DEFAULT NULL,
  `test_blob` longtext DEFAULT NULL,
  `user_blob` longtext DEFAULT NULL,
  `configuration_blob` longtext DEFAULT NULL,
  `epic_code_blob` longtext DEFAULT NULL,
  `priority_comment_blob` longtext DEFAULT NULL,
  `priority_rationale_blob` longtext DEFAULT NULL,
  `ip_flowsheet_blob` longtext DEFAULT NULL,
  `ip_doc_blob` longtext DEFAULT NULL,
  `ip_nav_blob` longtext DEFAULT NULL,
  `ip_mar_blob` longtext DEFAULT NULL,
  `ip_order_set_blob` longtext DEFAULT NULL,
  `remedy_comment_blob` longtext DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `build_dt` datetime DEFAULT NULL,
  `request_date` datetime DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `suite_review_date` datetime DEFAULT NULL,
  `suite_decision_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
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
  `remedy_pending_cd` varchar(4) DEFAULT NULL,
  `resolution_cd` varchar(45) DEFAULT NULL,
  `remedy_act_end_dt` datetime DEFAULT NULL,
  `est_complete_dt` datetime DEFAULT NULL,
  `bsns_proj_nm` varchar(128) DEFAULT NULL,
  `bsns_submitter_nm` varchar(45) DEFAULT NULL,
  `bsns_grp_nm` varchar(45) DEFAULT NULL,
  `bsns_submit_dt` datetime DEFAULT NULL,
  `bsns_expect_dt` datetime DEFAULT NULL,
  `tech_status_tx` varchar(45) DEFAULT NULL,
  `builder_owner_uid` int(10) unsigned DEFAULT NULL,
  `hb_pb_cd` varchar(4) DEFAULT NULL,
  `ac_stat_cd` varchar(8) DEFAULT NULL,
  `bsns_init_flag` varchar(4) DEFAULT NULL,
  `build_lead_uid` int(10) unsigned DEFAULT NULL,
  `sponsor_uid` int(10) unsigned DEFAULT NULL,
  `hc_ac_uid` int(10) unsigned DEFAULT NULL,
  `validator_uid` int(10) unsigned DEFAULT NULL,
  `pm_uid` int(10) unsigned DEFAULT NULL,
  `pm2_uid` int(10) unsigned DEFAULT NULL,
  `off_cycle_rsn_tx` varchar(255) DEFAULT NULL,
  `adhoc_tx` varchar(145) DEFAULT NULL,
  `tech_notes_blob` text DEFAULT NULL,
  `bsns_depend_blob` text DEFAULT NULL,
  `sizing_cd` varchar(4) DEFAULT NULL,
  `remedy_verifier_nm` varchar(128) DEFAULT NULL,
  `remedy_planned_duration_tx` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsr`
--

LOCK TABLES `tsr` WRITE;
/*!40000 ALTER TABLE `tsr` DISABLE KEYS */;
INSERT INTO `tsr` VALUES (1,88888888,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PRLD','0','0','0',NULL,'RC',NULL,NULL,'0','F','O',NULL,NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','','FHIR Server','','','',NULL,NULL,NULL,NULL,NULL,'0','RC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2022-03-02 12:05:00','2022-03-02 02:13:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',132,198,198,0,0,0,'',NULL,'',NULL,'0',NULL,NULL),(2,99999999,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PRLD','0','0','0',NULL,'RC',NULL,NULL,'0','F','O',NULL,NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','','Realtime Eligibility','','','',NULL,NULL,NULL,NULL,NULL,'0','BR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'R',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2022-03-02 09:04:00','2022-04-04 10:35:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',133,0,109,0,0,0,'',NULL,'',NULL,'0',NULL,NULL),(3,666666,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PRLD','0','0','0',NULL,'RC',NULL,NULL,'N','F','O',NULL,NULL,NULL,'0',NULL,NULL,NULL,'0',NULL,'0',NULL,NULL,'Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','','','','','',NULL,NULL,NULL,NULL,NULL,'0','RC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'R',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-11 09:01:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,0,0,0,0,0,'',NULL,'',NULL,'0',NULL,NULL);
/*!40000 ALTER TABLE `tsr` ENABLE KEYS */;
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
