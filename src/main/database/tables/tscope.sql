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
-- Table structure for table `tscope`
--

DROP TABLE IF EXISTS `tscope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tscope` (
  `scope_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `reviewer_title_nm` varchar(100) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `team_tx` varchar(100) DEFAULT NULL,
  `ipm_name` varchar(50) DEFAULT NULL,
  `suit_nm` varchar(100) DEFAULT NULL,
  `pmo_nm` varchar(32) DEFAULT NULL,
  `golive_tx` varchar(100) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `tested_cd` char(1) DEFAULT NULL,
  `priority_cd` varchar(16) DEFAULT NULL,
  `golive_flag` varchar(1) DEFAULT NULL,
  `safety_cd` char(1) DEFAULT NULL,
  `analysis_auth_flag` varchar(100) DEFAULT NULL,
  `approved2_flag` varchar(100) DEFAULT NULL,
  `deferred_flag` varchar(100) DEFAULT NULL,
  `declined_flag` varchar(100) DEFAULT NULL,
  `declined_uid` int(10) DEFAULT NULL,
  `authorized_uid` int(10) DEFAULT NULL,
  `approved2_uid` int(10) DEFAULT NULL,
  `funding_verify_flag` varchar(1) DEFAULT NULL,
  `hardware_flag` varchar(1) DEFAULT NULL,
  `resources_flag` varchar(1) DEFAULT NULL,
  `software_flag` varchar(1) DEFAULT NULL,
  `training_flag` varchar(1) DEFAULT NULL,
  `interfaces_flag` varchar(1) DEFAULT NULL,
  `requirements_flag` varchar(1) DEFAULT NULL,
  `testing_flag` varchar(1) DEFAULT NULL,
  `impact_pmo_flag` varchar(1) DEFAULT NULL,
  `impact_ops_flag` varchar(1) DEFAULT NULL,
  `impact_pbs_flag` varchar(1) DEFAULT NULL,
  `impact_labor_flag` varchar(1) DEFAULT NULL,
  `impact_tpmg_flag` varchar(1) DEFAULT NULL,
  `impact_it_flag` varchar(1) DEFAULT NULL,
  `impact_hp_flag` varchar(1) DEFAULT NULL,
  `impact_other_tx` varchar(1) DEFAULT NULL,
  `impact_comm_flag` varchar(1) DEFAULT NULL,
  `impact_op_flag` varchar(1) DEFAULT NULL,
  `impact_dmdl_flag` varchar(1) DEFAULT NULL,
  `impact_finance_flag` varchar(1) DEFAULT NULL,
  `impact_demo_flag` varchar(1) DEFAULT NULL,
  `impact_envs_flag` varchar(1) DEFAULT NULL,
  `impact_interface_flag` varchar(1) DEFAULT NULL,
  `impact_rc_flag` varchar(1) DEFAULT NULL,
  `impact_rims_flag` varchar(1) DEFAULT NULL,
  `impact_testing_flag` varchar(1) DEFAULT NULL,
  `impact_wf_plan_flag` varchar(1) DEFAULT NULL,
  `impact_wf_safety_flag` varchar(1) DEFAULT NULL,
  `impact_other_flag` varchar(1) DEFAULT NULL,
  `impact_impl_flag` varchar(1) DEFAULT NULL,
  `impact_ecl_flag` varchar(1) DEFAULT NULL,
  `impact_ip_flag` varchar(1) DEFAULT NULL,
  `impact_hos_ops_flag` varchar(1) DEFAULT NULL,
  `impact_care_flag` varchar(1) DEFAULT NULL,
  `impact_med_op_flag` varchar(1) DEFAULT NULL,
  `impact_med_fo_flag` varchar(1) DEFAULT NULL,
  `impact_nops_flag` varchar(1) DEFAULT NULL,
  `impact_kpit_flag` varchar(1) DEFAULT NULL,
  `impact_legacy_flag` varchar(1) DEFAULT NULL,
  `impact_epic_flag` varchar(1) DEFAULT NULL,
  `impact_dhmo_flag` varchar(1) DEFAULT NULL,
  `impact_rqr_nm` varchar(255) DEFAULT NULL,
  `impact_rqr_txt` varchar(1000) DEFAULT NULL,
  `other_tx` varchar(100) DEFAULT NULL,
  `yr1_cost_tx` varchar(100) DEFAULT NULL,
  `yr2_cost_tx` varchar(100) DEFAULT NULL,
  `yr3_cost_tx` varchar(100) DEFAULT NULL,
  `cmt_cost_tx` varchar(100) DEFAULT NULL,
  `yr1_sched_tx` varchar(100) DEFAULT NULL,
  `yr2_sched_tx` varchar(100) DEFAULT NULL,
  `yr3_sched_tx` varchar(100) DEFAULT NULL,
  `cmt_sched_tx` varchar(100) DEFAULT NULL,
  `yr1_rsrc_tx` varchar(100) DEFAULT NULL,
  `yr2_rsrc_tx` varchar(100) DEFAULT NULL,
  `yr3_rsrc_tx` varchar(100) DEFAULT NULL,
  `cmt_rsrc_tx` varchar(100) DEFAULT NULL,
  `yr1_func_tx` varchar(100) DEFAULT NULL,
  `yr2_func_tx` varchar(100) DEFAULT NULL,
  `yr3_func_tx` varchar(100) DEFAULT NULL,
  `cmt_func_tx` varchar(100) DEFAULT NULL,
  `yr1_infra_tx` varchar(100) DEFAULT NULL,
  `yr2_infra_tx` varchar(100) DEFAULT NULL,
  `yr3_infra_tx` varchar(100) DEFAULT NULL,
  `cmt_infra_tx` varchar(100) DEFAULT NULL,
  `yr1_qlty_tx` varchar(100) DEFAULT NULL,
  `yr2_qlty_tx` varchar(100) DEFAULT NULL,
  `yr3_qlty_tx` varchar(100) DEFAULT NULL,
  `cmt_qlty_tx` varchar(100) DEFAULT NULL,
  `board_review_ok_cd` varchar(100) DEFAULT NULL,
  `approved_cd` varchar(100) DEFAULT NULL,
  `release_id` int(10) DEFAULT NULL,
  `desc_blob` varchar(2000) DEFAULT NULL,
  `request_blob` varchar(2000) DEFAULT NULL,
  `notes_blob` varchar(2000) DEFAULT NULL,
  `comments_blob` varchar(2000) DEFAULT NULL,
  `implications_blob` varchar(2000) DEFAULT NULL,
  `resolution_blob` varchar(2000) DEFAULT NULL,
  `alternatives_blob` varchar(2000) DEFAULT NULL,
  `assessment_blob` varchar(2000) DEFAULT NULL,
  `benefit_blob` varchar(2000) DEFAULT NULL,
  `turnaround_tx` varchar(255) DEFAULT NULL,
  `work_impact_blob` varchar(2000) DEFAULT NULL,
  `received_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `contact_uid` int(10) DEFAULT NULL,
  `contact_email_tx` varchar(64) DEFAULT NULL,
  `contact_phone_tx` varchar(32) DEFAULT NULL,
  `pmo_uid` int(10) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `deferred_uid` int(10) DEFAULT NULL,
  `requestor_uid` int(10) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `closed_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `reviewer_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `entered_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `declined_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `assigned_date` datetime DEFAULT NULL,
  `authorized_date` datetime DEFAULT NULL,
  `deferred_date` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `est_complete_date` datetime DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`scope_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tscope`
--

LOCK TABLES `tscope` WRITE;
/*!40000 ALTER TABLE `tscope` DISABLE KEYS */;
INSERT INTO `tscope` VALUES (1,1,0,0,'SCR-001','','Kintdx HL7 Interface','','Ambulatory','Arne Paulsen','','','Enhancing an existing system with HC interface at each of the 19 Medical Centers in NCAL.','O','','M','N','','Y','Y','Y','Y',61,10,0,'Y','N','N','N','N','N','N','N','N','N','N','N','Y','N','N','','Y','N','N','N','Y','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N',NULL,NULL,'Storage','50k','300k','','','','','','','','','','','','','','','','','','','','','','','N','',0,'The primary goal of this project is to correct the flaws in the current application.','This HL/7 interface will correct the following:',NULL,'This will never be approved.','Obviously, the posting of a result to the wrong patient could present tremendous liability risks.\r\n\r\n',NULL,'','This will create performance issues which will require the ugrade of all the servers to 16 processors .','This change will eliminate the current systems unreliability with respect to the posting of reports on our medical record. There is an unacceptable rate of demographic errors. \r\n','Jan 1, 2006','Will delay Spring 06 by five weeks. ',NULL,NULL,49,'ron.lewis@kp.org','510-989-9898',1,49,0,45,0,0,1,37,37,0,22,0,'2006-05-15 09:16:00','1900-01-01 00:00:00','2022-04-04 09:18:00','2006-12-04 00:00:00','0000-00-00 00:00:00','2006-05-31 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2007-01-02 00:00:00','2007-05-01 00:00:00','2007-05-31 00:00:00','2006-05-01 00:00:00','P','N','please approve ',NULL,NULL),(2,1,NULL,NULL,'SCR-988','','Provider Deficiency Chart Track',NULL,'','',NULL,NULL,'','O',NULL,'L','N',NULL,'N','N','Y','N',0,0,NULL,NULL,'Y','N','Y','Y','N','Y','N','N',NULL,'N','N',NULL,NULL,NULL,NULL,'N','N','N','N','Y','Y','N','Y','N','Y','N','N','N','N','N','N','N','Y','Y','N','Y','N','N','N','N',NULL,NULL,'','','','','','','','','','','','','','','','','','','','','','','','','','N',NULL,NULL,'','',NULL,'','',NULL,'','','','','',NULL,NULL,45,'','',NULL,18,28,109,NULL,NULL,37,37,NULL,NULL,0,0,'2007-01-02 11:36:00',NULL,'2022-03-07 09:29:00','2009-03-01 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tscope` ENABLE KEYS */;
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
