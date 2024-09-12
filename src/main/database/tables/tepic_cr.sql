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
-- Table structure for table `tepic_cr`
--

DROP TABLE IF EXISTS `tepic_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tepic_cr` (
  `cr_id` int(10) NOT NULL AUTO_INCREMENT,
  `cr_no` int(10) DEFAULT NULL,
  `rfc_no` int(10) DEFAULT NULL,
  `rfc_prod_no` int(10) DEFAULT NULL,
  `rfc_test_no` int(10) DEFAULT NULL,
  `sr_no` int(10) DEFAULT NULL,
  `pr_no` int(10) DEFAULT NULL,
  `adhoc_no` int(10) DEFAULT NULL,
  `division_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `product_id` int(10) DEFAULT NULL,
  `funding_region_cd` varchar(16) DEFAULT NULL,
  `release_id` int(10) DEFAULT NULL,
  `suite_cd` varchar(100) DEFAULT NULL,
  `permanent_cd` varchar(2) DEFAULT NULL,
  `vendor_cd` varchar(8) DEFAULT NULL,
  `vendor_approval_cd` varchar(4) DEFAULT NULL,
  `requestor_uid` int(10) DEFAULT NULL,
  `eeg_scope_cd` varchar(8) DEFAULT NULL,
  `eeg_decision_cd` varchar(3) DEFAULT NULL,
  `leader_uid` int(10) DEFAULT NULL,
  `implementor_uid` int(10) DEFAULT NULL,
  `implementor_reg_tx` varchar(100) DEFAULT NULL,
  `implementor_team_tx` varchar(100) DEFAULT NULL,
  `dependency_tx` varchar(255) DEFAULT NULL,
  `swq_tx` varchar(255) DEFAULT NULL,
  `clinical_team_tx` varchar(100) DEFAULT NULL,
  `billing_team_tx` varchar(100) DEFAULT NULL,
  `sec_products_tx` varchar(100) DEFAULT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `foundation_team_tx` varchar(100) DEFAULT NULL,
  `release_tx` varchar(255) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `release_nm` varchar(100) DEFAULT NULL,
  `estimate_tx` varchar(255) DEFAULT NULL,
  `hours_tx` varchar(64) DEFAULT NULL,
  `rate_tx` varchar(64) DEFAULT NULL,
  `std_custom_tx` varchar(100) DEFAULT NULL,
  `est_type_cd` varchar(8) DEFAULT NULL,
  `chg_order_tx` varchar(64) DEFAULT NULL,
  `region_nm` varchar(100) DEFAULT NULL,
  `other_region_nm` varchar(100) DEFAULT NULL,
  `contact_nm` varchar(255) DEFAULT NULL,
  `team_nm` varchar(100) DEFAULT NULL,
  `title_nm` varchar(255) DEFAULT NULL,
  `permancent_cd` varchar(1) DEFAULT NULL,
  `delay_cd` varchar(1) DEFAULT NULL,
  `inhouse_cd` varchar(100) DEFAULT NULL,
  `region_cd` varchar(255) DEFAULT NULL,
  `status_cd` varchar(12) DEFAULT NULL,
  `std_cstm_cd` varchar(16) DEFAULT NULL,
  `patient_safety_cd` varchar(50) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `clinical_dev_cd` varchar(8) DEFAULT NULL,
  `rev_dev_cd` varchar(8) DEFAULT NULL,
  `member_dev_cd` varchar(8) DEFAULT NULL,
  `severity_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(8) DEFAULT NULL,
  `eeg_approve_cd` varchar(3) DEFAULT NULL,
  `emergency_cd` varchar(50) DEFAULT NULL,
  `vendor_comment_blob` longtext DEFAULT NULL,
  `inhouse_explain_blob` longtext DEFAULT NULL,
  `eeg_comments_blob` longtext DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `benefits_blob` longtext DEFAULT NULL,
  `comments_blob` longtext DEFAULT NULL,
  `status_blob` longtext DEFAULT NULL,
  `progress_blob` longtext DEFAULT NULL,
  `decision_blob` longtext DEFAULT NULL,
  `alternatives_blob` longtext DEFAULT NULL,
  `risks_blob` longtext DEFAULT NULL,
  `regn_impact_blob` longtext DEFAULT NULL,
  `regn_analysis_blob` longtext DEFAULT NULL,
  `epic_comment_blob` longtext DEFAULT NULL,
  `epic_recommendation_blob` longtext DEFAULT NULL,
  `epic_use_blob` longtext DEFAULT NULL,
  `kaiser_use_blob` longtext DEFAULT NULL,
  `requestor_nm` longtext DEFAULT NULL,
  `implementor_nm` longtext DEFAULT NULL,
  `co_tx` longtext DEFAULT NULL,
  `manager_uid` int(10) DEFAULT NULL,
  `vendor_accept_uid` int(10) DEFAULT NULL,
  `epic_uid` int(10) DEFAULT NULL,
  `technician_uid` int(10) DEFAULT NULL,
  `operations_uid` int(10) DEFAULT NULL,
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
  `requested_date` datetime DEFAULT NULL,
  `required_date` datetime DEFAULT NULL,
  `sponsored_date` datetime DEFAULT NULL,
  `vendor_accept_date` datetime DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `cr_assign_date` datetime DEFAULT NULL,
  `estimated_date` datetime DEFAULT NULL,
  `revised_date` datetime DEFAULT NULL,
  `rcc_date` datetime DEFAULT NULL,
  `epic_preapproval_date` datetime DEFAULT NULL,
  `ecb1_approval_date` datetime DEFAULT NULL,
  `ecb2_approval_date` datetime DEFAULT NULL,
  `ncal1_approval_date` datetime DEFAULT NULL,
  `ncal2_approval_date` datetime DEFAULT NULL,
  `natl1_approval_date` datetime DEFAULT NULL,
  `natl2_approval_date` datetime DEFAULT NULL,
  `epic_prov_est_date` datetime DEFAULT NULL,
  `expected_date` datetime DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `release_date` datetime DEFAULT NULL,
  `golive_date` datetime DEFAULT NULL,
  `test1_date` datetime DEFAULT NULL,
  `test2_date` datetime DEFAULT NULL,
  `requested_dt_flag` char(1) DEFAULT NULL,
  `estimated_dt_flag` char(1) DEFAULT NULL,
  `delivery_dt_flag` char(1) DEFAULT NULL,
  `required_dt_flag` char(1) DEFAULT NULL,
  `sponsored_dt_flag` char(1) DEFAULT NULL,
  `cr_assign_dt_flag` char(1) DEFAULT NULL,
  `epic_prov_est_dt_flag` char(1) DEFAULT NULL,
  `epic_preapproval_dt_flag` char(1) DEFAULT NULL,
  `ncal1_approval_dt_flag` char(1) DEFAULT NULL,
  `ncal2_approval_dt_flag` char(1) DEFAULT NULL,
  `ecb1_approval_dt_flag` char(1) DEFAULT NULL,
  `ecb2_approval_dt_flag` char(1) DEFAULT NULL,
  `expected_dt_flag` char(1) DEFAULT NULL,
  `esitmated_dt_flag` char(1) DEFAULT NULL,
  `target_dt_flag` char(1) DEFAULT NULL,
  `revised_dt_flag` char(1) DEFAULT NULL,
  `release_dt_flag` char(1) DEFAULT NULL,
  `golive_dt_flag` char(1) DEFAULT NULL,
  `test1_dt_flag` char(1) DEFAULT NULL,
  `test2_dt_flag` char(1) DEFAULT NULL,
  `rcc_dt_flag` char(1) DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cr_id`),
  KEY `IX_kepiccr` (`cr_no`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tepic_cr`
--

LOCK TABLES `tepic_cr` WRITE;
/*!40000 ALTER TABLE `tepic_cr` DISABLE KEYS */;
INSERT INTO `tepic_cr` VALUES (1,11111,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,'NCAL',0,NULL,'P','EPIC','ASIS',193,'EEG','EEG',0,0,'',NULL,'','Did you search for CR duplicity in the SWQ or AE Log File?  Yes/No',NULL,NULL,'',NULL,NULL,NULL,NULL,'6/1/2021','','','',NULL,'STD','',NULL,'',NULL,'Bridges','Sneak this in under the table.',NULL,NULL,NULL,'NCAL','DRAFT',NULL,NULL,'0','STD','STD','STD','1','L',NULL,'N','',NULL,'','','','',NULL,NULL,NULL,'','','','','','','If this is a change that Epic customers might need, describes the analysis that confirms this.','If this change affects Kaiser code, describe the impact.',NULL,NULL,NULL,NULL,0,8,NULL,NULL,37,37,NULL,NULL,NULL,'2022-03-02 09:40:00','2022-04-05 11:59:00',NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','2022-06-01 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,2222,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,'NCAL',0,NULL,'P','EPIC','ASIS',1388,'EEG','EEG',0,0,'',NULL,'','Did you search for CR duplicity in the SWQ or AE Log File?  Yes/No',NULL,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,'STD','',NULL,'',NULL,'','Small change won\'t hurt anythingn',NULL,NULL,NULL,'NCAL','DRAFT',NULL,NULL,'0','STD','STD','STD','1','L',NULL,'N','',NULL,'','','','',NULL,NULL,NULL,'','','','','','','If this is a change that Epic customers might need, describes the analysis that confirms this.','If this change affects Kaiser code, describe the impact.',NULL,NULL,NULL,NULL,0,0,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-02 09:41:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,12345,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,'NCAL',0,NULL,'I','EPIC','ASIS',899,'EEG','KP',1214,276,'',NULL,'','Did you search for CR duplicity in the SWQ or AE Log File?  Yes/No',NULL,NULL,'',NULL,NULL,NULL,NULL,'','','','',NULL,'STD','',NULL,'',NULL,'Prelucd','Real-Time Eligibility Custom Fields',NULL,NULL,NULL,'NCAL','DRAFT',NULL,NULL,'EC','STD','STD','STD','1','L',NULL,'N','',NULL,'','','','',NULL,NULL,NULL,'','','','','','','If this is a change that Epic customers might need, describes the analysis that confirms this.',NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL,37,37,NULL,NULL,NULL,'2022-04-05 11:24:00','2022-04-06 12:01:00',NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tepic_cr` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:23
