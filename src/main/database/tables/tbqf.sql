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
-- Table structure for table `tbqf`
--

DROP TABLE IF EXISTS `tbqf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbqf` (
  `bqf_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `rfc_no` int(10) DEFAULT NULL,
  `type_cd` varchar(4) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `recommend_cd` varchar(2) DEFAULT NULL,
  `cb_decision_cd` varchar(2) DEFAULT NULL,
  `impact_cd` varchar(4) DEFAULT NULL,
  `source_cd` varchar(2) DEFAULT NULL,
  `size_cd` varchar(8) DEFAULT NULL,
  `process_cd` varchar(4) DEFAULT NULL,
  `product_cd` varchar(8) DEFAULT NULL,
  `loe_cd` varchar(4) DEFAULT NULL,
  `cmt_only_cd` varchar(1) DEFAULT NULL,
  `priority_cd` varchar(4) DEFAULT NULL,
  `reason_cd` varchar(4) DEFAULT NULL,
  `ncal_resp_cd` varchar(4) DEFAULT NULL,
  `scal_resp_cd` varchar(4) DEFAULT NULL,
  `hawaii_resp_cd` varchar(4) DEFAULT NULL,
  `ohio_resp_cd` varchar(4) DEFAULT NULL,
  `ma_resp_cd` varchar(4) DEFAULT NULL,
  `nw_resp_cd` varchar(4) DEFAULT NULL,
  `georgia_resp_cd` varchar(4) DEFAULT NULL,
  `colorado_resp_cd` varchar(4) DEFAULT NULL,
  `ncal_assesor_nm` varchar(128) DEFAULT NULL,
  `scal_assesor_nm` varchar(128) DEFAULT NULL,
  `hawaii_assesor_nm` varchar(128) DEFAULT NULL,
  `ohio_assesor_nm` varchar(128) DEFAULT NULL,
  `georgia_assesor_nm` varchar(128) DEFAULT NULL,
  `colorado_assesor_nm` varchar(128) DEFAULT NULL,
  `nw_assesor_nm` varchar(128) DEFAULT NULL,
  `ma_assesor_nm` varchar(128) DEFAULT NULL,
  `ncal_resp_tx` varchar(255) DEFAULT NULL,
  `scal_resp_tx` varchar(255) DEFAULT NULL,
  `hawaii_resp_tx` varchar(255) DEFAULT NULL,
  `colorado_resp_tx` varchar(255) DEFAULT NULL,
  `georgia_resp_tx` varchar(255) DEFAULT NULL,
  `ma_resp_tx` varchar(255) DEFAULT NULL,
  `nw_resp_tx` varchar(255) DEFAULT NULL,
  `ohio_resp_tx` varchar(255) DEFAULT NULL,
  `prod_1_impact_cd` varchar(8) DEFAULT NULL,
  `prod_2_impact_cd` varchar(8) DEFAULT NULL,
  `prod_3_impact_cd` varchar(8) DEFAULT NULL,
  `prod_4_impact_cd` varchar(50) DEFAULT NULL,
  `prod_1_impact_blob` longtext DEFAULT NULL,
  `prod_2_impact_blob` longtext DEFAULT NULL,
  `prod_3_impact_blob` longtext DEFAULT NULL,
  `prod_4_impact_blob` longtext DEFAULT NULL,
  `sme_1_impact_cd` varchar(4) DEFAULT NULL,
  `sme_1_type_cd` varchar(4) DEFAULT NULL,
  `sme_1_nm` varchar(32) DEFAULT NULL,
  `sme_1_impact_tx` varchar(255) DEFAULT NULL,
  `sme_2_impact_cd` varchar(4) DEFAULT NULL,
  `sme_2_type_cd` varchar(4) DEFAULT NULL,
  `sme_2_nm` varchar(32) DEFAULT NULL,
  `sme_2_impact_tx` varchar(255) DEFAULT NULL,
  `sme_3_type_cd` varchar(4) DEFAULT NULL,
  `sme_3_impact_cd` varchar(4) DEFAULT NULL,
  `sme_3_nm` varchar(32) DEFAULT NULL,
  `sme_3_impact_tx` varchar(255) DEFAULT NULL,
  `sme_4_impact_cd` varchar(4) DEFAULT NULL,
  `sme_4_type_cd` varchar(4) DEFAULT NULL,
  `sme_4_nm` varchar(32) DEFAULT NULL,
  `sme_4_impact_tx` varchar(255) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(1024) DEFAULT NULL,
  `version_nm` varchar(8) DEFAULT NULL,
  `regions_tx` varchar(128) DEFAULT NULL,
  `sponsor_nm` varchar(128) DEFAULT NULL,
  `natl_ac_nm` varchar(128) DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `epic_ini_tx` varchar(128) DEFAULT NULL,
  `recommend_tx` varchar(255) DEFAULT NULL,
  `cb_recommend_tx` varchar(255) DEFAULT NULL,
  `cb_decision_tx` varchar(255) DEFAULT NULL,
  `other_teams_nm` varchar(255) DEFAULT NULL,
  `measure_cd` char(3) DEFAULT NULL,
  `measure_qty` int(10) DEFAULT NULL,
  `accepted_flag` char(1) DEFAULT NULL,
  `budgeted_cd` char(1) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `requestor_uid` int(10) DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `reason_blob` longtext DEFAULT NULL,
  `result_blob` longtext DEFAULT NULL,
  `alternative_blob` longtext DEFAULT NULL,
  `impact_not_do_blob` longtext DEFAULT NULL,
  `team_impacts_blob` longtext DEFAULT NULL,
  `qualify_blob` longtext DEFAULT NULL,
  `rejection_blob` longtext DEFAULT NULL,
  `areas_blob` longtext DEFAULT NULL,
  `data_blob` longtext DEFAULT NULL,
  `process_blob` longtext DEFAULT NULL,
  `goals_blob` longtext DEFAULT NULL,
  `current_blob` longtext DEFAULT NULL,
  `scope_blob` longtext DEFAULT NULL,
  `solution_blob` longtext DEFAULT NULL,
  `costs_blob` longtext DEFAULT NULL,
  `impacts_blob` longtext DEFAULT NULL,
  `decision_dt` datetime DEFAULT NULL,
  `required_dt` datetime DEFAULT NULL,
  `accept_dt` datetime DEFAULT NULL,
  `request_dt` datetime DEFAULT NULL,
  `proposal_dt` datetime DEFAULT NULL,
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
  PRIMARY KEY (`bqf_id`),
  UNIQUE KEY `IX_tbqf` (`rfc_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbqf`
--

LOCK TABLES `tbqf` WRITE;
/*!40000 ALTER TABLE `tbqf` DISABLE KEYS */;
INSERT INTO `tbqf` VALUES (1,1,NULL,13455668,'FIX','NEW','D','A','L','B','S',NULL,'ANTICOAG','L','N','L','A','A','A','A','A','A','A','A','E','','','','','','','','','','','','','','','','','ANTICOAG','BATCH','CE','CLINICIP','','','','','L','COMP','','','L','COMP','','','COMP','L','','','L','COMP','','','','Upgrade',NULL,'California','Joe','Jane','','','',NULL,'','',NULL,NULL,'N','Y',314,403,'','Regs',NULL,'','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'2020-12-04 00:00:00','0000-00-00 00:00:00','2022-12-02 00:00:00',NULL,37,37,NULL,NULL,NULL,'2022-03-10 10:31:00','2022-03-10 10:35:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbqf` ENABLE KEYS */;
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
