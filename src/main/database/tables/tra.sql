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
-- Table structure for table `tra`
--

DROP TABLE IF EXISTS `tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tra` (
  `ra_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT 13,
  `interface_id` int(10) DEFAULT NULL,
  `release_id` int(10) DEFAULT NULL,
  `title_nm` varchar(512) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `reference_nm` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `doc_link_tx` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `author_nm` varchar(127) DEFAULT NULL,
  `defect_nm` varchar(8) DEFAULT NULL,
  `rfc_nm` varchar(8) DEFAULT NULL,
  `customer_nm` varchar(127) DEFAULT NULL,
  `product_nm` varchar(63) DEFAULT NULL,
  `dlg_nm` varchar(32) DEFAULT NULL,
  `slg_nm` varchar(32) DEFAULT NULL,
  `issue_type_cd` varchar(16) DEFAULT NULL,
  `fix_type_cd` varchar(64) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `bridges_uid` int(10) DEFAULT NULL,
  `release_cd` varchar(8) DEFAULT NULL,
  `spring07_cd` varchar(50) DEFAULT NULL,
  `suite_cd` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `status_tx` varchar(128) DEFAULT NULL,
  `client_server_cd` varchar(16) DEFAULT NULL,
  `hc_contact_nm` varchar(50) DEFAULT NULL,
  `production_cd` char(1) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `wits_cd` char(1) DEFAULT NULL,
  `renc_cd` char(1) DEFAULT NULL,
  `stgn_cd` char(1) DEFAULT NULL,
  `test_blob` longtext DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `issues_blob` longtext DEFAULT NULL,
  `install_blob` longtext DEFAULT NULL,
  `backout_blob` longtext DEFAULT NULL,
  `env_blob` longtext DEFAULT NULL,
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
  `xra_no` int(10) DEFAULT NULL,
  `xinterface_no` int(10) DEFAULT NULL,
  `orig_ra_no` int(10) unsigned DEFAULT NULL,
  `issue_type_tx` varchar(45) DEFAULT NULL,
  `fix_type_tx` varchar(45) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `env_tx` varchar(45) DEFAULT NULL,
  `slg_num_tx` varchar(45) DEFAULT NULL,
  `epic_code_blob` longtext DEFAULT NULL,
  `owner_nuid_tx` varchar(12) DEFAULT NULL,
  `region_tx` varchar(68) DEFAULT NULL,
  `rfc1_no` int(10) DEFAULT NULL,
  `rfc2_no` int(10) DEFAULT NULL,
  `rfc3_no` int(10) DEFAULT NULL,
  `faxed_cd` varchar(1) DEFAULT NULL,
  `env_cd` varchar(4) DEFAULT NULL,
  `memo_tx` varchar(255) DEFAULT NULL,
  `reviewer_nuid_cd` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`ra_id`),
  KEY `IX_tra` (`ra_id`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tra`
--

LOCK TABLES `tra` WRITE;
/*!40000 ALTER TABLE `tra` DISABLE KEYS */;
INSERT INTO `tra` VALUES (2,1,NULL,NULL,'509 - SYSTEM CONFIGURATION TO ENABLE THE USE OF TRANSCRIPTION SOFT-DELETION UTILITIES','509','#cnviaaamr110amrA&I RA TrackingRA Docs509_20080320 - NCAL EDI Transcriptions - Global setup to enable transcription utilities.doc#',NULL,NULL,'LOEWENSTEIN, DANIEL            ',NULL,NULL,NULL,'EDI',NULL,NULL,'O','NA',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2010-05-11 03:11:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,509,'Other','Not Applicable','2008-03-20 00:00:00','Server Only','263518','epic code...no peeking','G336027','KP N CALIFORNIA REGION ',4246349,2420743,4246349,'Y','SERV',NULL,NULL),(3,1,NULL,NULL,'Summer 2022','565','#onedrivedocra565.doc#',NULL,NULL,'Bill Bonkers',NULL,NULL,NULL,'EDI',NULL,NULL,'O','E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'O',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-10 10:49:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,565,'Other','Enhancement','2008-09-11 00:00:00','Server Only','384550','','F117112',' CALIFORNIA REGION ',0,0,0,'Y','SERV','','0'),(4,1,NULL,NULL,'573_20090209 ? 898601 ? Store replaced medication order id to 7088 for RU-RO messages','573','#Cscrdvutf502EPIC RA ToolRA Tracking NCALRA Docs573_20090209 ? 898601 ? Store replaced medication order id to 7088 for RU-RO messages.doc#',NULL,NULL,'LOEWENSTEIN, DANIEL            ',NULL,NULL,NULL,'EDI',NULL,NULL,'0','E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'O',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2010-04-16 10:16:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,573,' ','Enhancement','2009-02-09 00:00:00','Server Only','311801','','F117112','KP N CALIFORNIA REGION ',3384911,3588226,NULL,NULL,'SERV',NULL,NULL),(5,1,NULL,NULL,'KPNCAL -  Sync COPAY Override Reason Code (EPT 5791) and Refund Reason Code (TAR-7510) Require Comment Flag','959','#\\\\cnviaaamr110\\amr\\A&I RA Tracking\\RA Docs\\RA 959Release Auth_ - KPNCAL -  Sync Requre Comment Flag.doc#',NULL,NULL,'Ryan Gonzalez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,959,NULL,NULL,'2007-09-27 00:00:00','Server',NULL,NULL,NULL,'KP N CALIFORNIA REGION',2033826,NULL,NULL,NULL,'SERV',NULL,NULL);
/*!40000 ALTER TABLE `tra` ENABLE KEYS */;
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
