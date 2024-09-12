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
-- Table structure for table `tproposal`
--

DROP TABLE IF EXISTS `tproposal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tproposal` (
  `proposal_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `type_cd` char(4) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `recommend_cd` varchar(2) DEFAULT NULL,
  `cb_decision_cd` varchar(2) DEFAULT NULL,
  `impact_cd` varchar(4) DEFAULT NULL,
  `source_cd` varchar(2) DEFAULT NULL,
  `size_cd` char(1) DEFAULT NULL,
  `process_cd` varchar(4) DEFAULT NULL,
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
  `ncal_assesor_nm` varchar(32) DEFAULT NULL,
  `scal_assesor_nm` varchar(32) DEFAULT NULL,
  `hawaii_assesor_nm` varchar(32) DEFAULT NULL,
  `ohio_assesor_nm` varchar(32) DEFAULT NULL,
  `georgia_assesor_nm` varchar(32) DEFAULT NULL,
  `colorado_assesor_nm` varchar(32) DEFAULT NULL,
  `nw_assesor_nm` varchar(32) DEFAULT NULL,
  `ma_assesor_nm` varchar(32) DEFAULT NULL,
  `ncal_resp_tx` varchar(128) DEFAULT NULL,
  `scal_resp_tx` varchar(128) DEFAULT NULL,
  `hawaii_resp_tx` varchar(128) DEFAULT NULL,
  `colorado_resp_tx` varchar(128) DEFAULT NULL,
  `georgia_resp_tx` varchar(128) DEFAULT NULL,
  `ma_resp_tx` varchar(128) DEFAULT NULL,
  `nw_resp_tx` varchar(128) DEFAULT NULL,
  `ohio_resp_tx` varchar(128) DEFAULT NULL,
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
  `sme_1_impact_tx` varchar(128) DEFAULT NULL,
  `sme_2_impact_cd` varchar(4) DEFAULT NULL,
  `sme_2_type_cd` varchar(4) DEFAULT NULL,
  `sme_2_nm` varchar(32) DEFAULT NULL,
  `sme_2_impact_tx` varchar(128) DEFAULT NULL,
  `sme_3_type_cd` varchar(4) DEFAULT NULL,
  `sme_3_impact_cd` varchar(4) DEFAULT NULL,
  `sme_3_nm` varchar(32) DEFAULT NULL,
  `sme_3_impact_tx` varchar(128) DEFAULT NULL,
  `sme_4_impact_cd` varchar(4) DEFAULT NULL,
  `sme_4_type_cd` varchar(4) DEFAULT NULL,
  `sme_4_nm` varchar(32) DEFAULT NULL,
  `sme_4_impact_tx` varchar(128) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `version_nm` varchar(8) DEFAULT NULL,
  `rfc_no` varchar(8) DEFAULT NULL,
  `regions_tx` varchar(64) DEFAULT NULL,
  `sponsor_nm` varchar(64) DEFAULT NULL,
  `natl_ac_nm` varchar(64) DEFAULT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `epic_ini_tx` varchar(64) DEFAULT NULL,
  `recommend_tx` varchar(128) DEFAULT NULL,
  `cb_recommend_tx` varchar(128) DEFAULT NULL,
  `cb_decision_tx` varchar(128) DEFAULT NULL,
  `other_teams_nm` varchar(64) DEFAULT NULL,
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
  PRIMARY KEY (`proposal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tproposal`
--

LOCK TABLES `tproposal` WRITE;
/*!40000 ALTER TABLE `tproposal` DISABLE KEYS */;
INSERT INTO `tproposal` VALUES (2,1,29,'CODE','WIP','A','M','M','B','F',NULL,'M',NULL,'H','R','A','A','NA','NA','NA','NA','NA','NA','Karen Bender',' Karen Bender','3',' ','2','1',' ','4','CPM, IB, Brodges','CPM, IB, Brodges',' ',' ',' ','','','','BRIDGES','0','0','0','Epic CR to post provider speciality into to PAT master.','','','','M','Leg','Caroline Rogers','','L','0','','','0','L','','','L','0','','','SF-001','Load Provider NUCC Code (PAT 407) and Primary/ Specialty ','1.2','0','NCAL','Gigi Wallin PBS, VP','William Mitchell','Funding approved.','PAT','Plan for November install.',NULL,'Just in a bad mood','Resolute, Bridges, CPM, ','',0,'Y','Y',34,1052,'The NCAL and SCAL regions will be assigning Providers a yearly designation as a Primary or Specialist. The new deisgination will be used to calculate the co-pay amount in KPHC. The designation will also be sent to the TPA (Harrington Health) so they can properly adjudicate the claims. There are two Cateogry Lists that will need to be populated for the new Provider designation. The PAT 406 Category List will be laoded with a \"P\" and \"S\" to indicate the Provider is a Primary or Specialist. PAT 407 will store the NUCC codes assigned to the Provider for the yearly designation. These NUCC codes are for the yearly Provider designation only. ','Storing the NUCC and Primary/ Specialist designation in the PAT Category Lists will restrict the valid values received from CPM. The Provider designation will be assigned in CPMN and sent to KPHC through the existing Provider interface. The yealry designation will be used to calcuate a different co-pay depending on the Provider being designated as a Primary or Specialist.','','N/A','We will not be able to properly Bill the TPA','They will be using the data to properly designate physicians and calculate appropriate copays for members.','','','NA','Need pager numbers of all customers. ','Need to re-tool to call center outbound queing techniques.','Goal is to increase market share by $20m per quarter. ','There is no automated infrastructure to track markets and potential income.',NULL,'Create a Yahoo widget to monitor market segments, and flash red when we are missing the opportunity. ','Will generate revenue of $100m per quarter.  Cost will be about $25m.  ','None.','2008-12-01 00:00:00','2006-04-02 00:00:00','2008-03-01 00:00:00','2008-12-05 00:00:00',NULL,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2008-11-23 08:33:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,0,'DATA','NEW','A','A','L','P','S',NULL,'L',NULL,'L','A','A','E','E','D','E','E','E','E','Mary Sears','Min Hyeon','Kandis Mcintosh ','Mike Gajdos','Richard Wilson','Bill Olson','Kristi Rutter','Peytie Tyng ','','','','','','','','','0','0','0','0','','','','','L','0','','','L','0','','','0','L','','','L','0','','','DCS-100','Addition to DCS 100',NULL,'2969858','NCAL','Rod Dayley','Wendy Atkins','','DCS','Needed for tracking document in DCS table. ',NULL,'','b',NULL,NULL,'N','Y',0,705,'Add Document Type - Patient Belongings.  Supports new workflow to be able to track patient valuables while admitted when a new envelope is created.  Maintains a auditable tracking mechanism.\r\n','Allows you to track when there is access to a patients belongings and the envelope has to be changed and updated.  Tracks who accessed and created the new envelope\r\n',NULL,'Paper','No tracking mechanism for patient belongings\r\n','c','','','All regions.  Regions must add document to Service Area to use new DCS item. \r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'a','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','2008-08-26 00:00:00',NULL,37,37,NULL,NULL,NULL,'2008-11-24 10:11:00','2008-12-12 10:03:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tproposal` ENABLE KEYS */;
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
