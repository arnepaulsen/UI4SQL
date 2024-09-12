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
-- Table structure for table `tadoc_tracker`
--

DROP TABLE IF EXISTS `tadoc_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tadoc_tracker` (
  `ID` int(10) NOT NULL,
  `ra_no` int(10) DEFAULT NULL,
  `file_name_tx` varchar(255) DEFAULT NULL,
  `track_nm` varchar(255) DEFAULT NULL,
  `safety_cd` varchar(255) DEFAULT NULL,
  `cache_client_cd` varchar(255) DEFAULT NULL,
  `file_rec_date` datetime DEFAULT NULL,
  `release_cd` varchar(255) DEFAULT NULL,
  `affected_appl` varchar(255) DEFAULT NULL,
  `region_cd` varchar(255) DEFAULT NULL,
  `description_blob` varchar(1024) DEFAULT NULL,
  `notify_person` varchar(255) DEFAULT NULL,
  `approve_date` datetime DEFAULT NULL,
  `exp_code_drop_date` datetime DEFAULT NULL,
  `exp_prod_date` datetime DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `outage_cd` varchar(50) DEFAULT NULL,
  `release_comments_tx` varchar(255) DEFAULT NULL,
  `apply_ncal_cd` varchar(255) DEFAULT NULL,
  `test_rfc_sumit_date` datetime DEFAULT NULL,
  `test_env_cd` varchar(255) DEFAULT NULL,
  `rfc_testing_no` int(10) DEFAULT NULL,
  `testing_install_dt` datetime DEFAULT NULL,
  `test_stat_cd` varchar(255) DEFAULT NULL,
  `rfc_psup` varchar(255) DEFAULT NULL,
  `psup_date` varchar(255) DEFAULT NULL,
  `rfc_prod_sub_date` varchar(255) DEFAULT NULL,
  `cab_proval_cd` varchar(255) DEFAULT NULL,
  `rfc_orig_cd` varchar(255) DEFAULT NULL,
  `manifest_frc` varchar(255) DEFAULT NULL,
  `in_prod_cd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tadoc_tracker`
--

LOCK TABLES `tadoc_tracker` WRITE;
/*!40000 ALTER TABLE `tadoc_tracker` DISABLE KEYS */;
INSERT INTO `tadoc_tracker` VALUES (2910,0,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','This is to FTP inline code to Kaiser Permenante Northern California region that is to be used to create a smartlink to pull a patient\'s base MRN into a label.',NULL,NULL,NULL,NULL,'This is to FTP inline code to Kaiser Permenante Northern California region that is to be used to create a smartlink to pull a p','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'CAD',NULL,NULL),(2914,1,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Enable identification of duplicate checks in remittance ',NULL,NULL,NULL,NULL,'Enable identification of duplicate checks in remittance','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2916,3,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','New condition code and patient status values are going into effect on October 1, 2009\r\n',NULL,NULL,NULL,NULL,'New condition code and patient status values are going into effect on October 1, 2009','T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','2009-08-26 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2917,4,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','September 2009 Zip Code data\r\n',NULL,NULL,NULL,NULL,'September 2009 Zip Code data','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'PRLD',NULL,NULL),(2924,4912,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','SU to remove restriction to have contact on the account to have the claims produced',NULL,NULL,NULL,NULL,'SU to remove restriction to have contact on the account to have the claims produced','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2927,4916,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','New credit WQ programming points  ',NULL,NULL,NULL,NULL,'New credit WQ programming points  ','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2928,4922,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Demand Bill Updates for EPS Printing',NULL,NULL,NULL,NULL,'Demand Bill Updates for EPS Printing','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTPB',NULL,NULL),(2929,4917,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','This routine is to identify ED patients who are not seen by a doctor. It is used so that later/other routines can waive the ED co-pay for these patients.\r\nThis routine is called by CMG item 1200. The component group should serve as a filter, so this routine only applies to patients with KP coverage. The component group needs to be plugged into a benefit package and linked to an adjudication table, and the test patient needs to be enrolled in a plan linked to the benefit package.\r\nThis routine only applies to HB - it won\'t work in a Tapestry/AP Claim or Resolute PB context because there would be no HAR record to look at.',NULL,NULL,NULL,NULL,'This routine is to identify ED patients who are not seen by a doctor. It is used so that later/other routines can waive the ED ','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2930,4931,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','KP-Upgrade Custom Patient Demographics Form to Summer 2009',NULL,NULL,NULL,NULL,'KP-Upgrade Custom Patient Demographics Form to Summer 2009','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'CAD',NULL,NULL),(2931,4936,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Fix for Patient locking issue causing Resolute EOD errors ',NULL,NULL,NULL,NULL,'Fix for Patient locking issue causing Resolute EOD errors ','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTPB',NULL,NULL),(2932,4898,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Cadence Check-Out Order Node fixes',NULL,NULL,NULL,NULL,'Cadence Check-Out Order Node fixes','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'CAD',NULL,NULL),(2933,4958,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','HB/Statement Fixes',NULL,NULL,NULL,NULL,'HB/Statement Fixes','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2934,4993,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Import MPI items',NULL,NULL,NULL,NULL,'Import MPI items','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P','1900-01-01 00:00:00',NULL,NULL,'IDN',NULL,NULL),(2935,5003,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Collabrative HTML Table for Cadence and Prelude\r\n',NULL,NULL,NULL,NULL,'Collabrative HTML Table for Cadence and Prelude ','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','1900-01-01 00:00:00',NULL,NULL,'CAD',NULL,NULL),(2936,5006,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Programming point to automatically reject charges associated with bad debt write-offs from retroadjudication.',NULL,NULL,NULL,NULL,'Programming point to automatically reject charges associated with bad debt write-offs from retroadjudication.','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','1900-01-01 00:00:00',NULL,NULL,'RES',NULL,NULL),(2937,5008,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','This code delivery fixes the issue with the revenue management store error\r\n',NULL,NULL,NULL,NULL,'This code delivery fixes the issue with the revenue management store error ','Y',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2938,5034,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','HB Collection Agency Recall File Missing Account',NULL,NULL,NULL,NULL,'HB Collection Agency Recall File Missing Account','T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','1900-01-01 00:00:00',NULL,NULL,'RSLTHB',NULL,NULL),(2942,1111,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Property to be used in Follow-up WQ columns to display the last two digits of the MRN.',NULL,NULL,NULL,NULL,'Property to be used in Follow-up WQ columns to display the last two digits of the MRN.','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'C','1900-01-01 00:00:00',NULL,NULL,'RSLTPB',NULL,NULL),(2943,5045,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','DRG Pricing issue',NULL,NULL,NULL,NULL,'DRG Pricing issue','T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P','1900-01-01 00:00:00',NULL,NULL,'TAP',NULL,NULL),(2944,5044,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Provider Place of Service population',NULL,NULL,NULL,NULL,'Provider Place of Service population','T',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'P','1900-01-01 00:00:00',NULL,NULL,'TAP',NULL,NULL),(2945,5036,'1',NULL,NULL,NULL,NULL,NULL,NULL,'NCAL','Custom demand bill fix with ',NULL,NULL,NULL,NULL,'Custom demand bill fix with ','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'A','1900-01-01 00:00:00',NULL,NULL,'RSLTPB',NULL,NULL);
/*!40000 ALTER TABLE `tadoc_tracker` ENABLE KEYS */;
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
