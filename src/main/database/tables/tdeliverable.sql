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
-- Table structure for table `tdeliverable`
--

DROP TABLE IF EXISTS `tdeliverable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdeliverable` (
  `deliverable_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `url_tx` varchar(255) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `deliverable_cd` varchar(16) DEFAULT NULL,
  `deliverable_status_cd` char(3) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `notes_tx` varchar(255) DEFAULT NULL,
  `sqa_report_id` varchar(16) DEFAULT NULL,
  `sqa_pass_flag` char(1) DEFAULT NULL,
  `sqa_review_desc` varchar(255) DEFAULT NULL,
  `sqa_sev_1_error_no` int(10) DEFAULT NULL,
  `sqa_sev_2_error_no` int(10) DEFAULT NULL,
  `sqa_sev_3_error_no` int(10) DEFAULT NULL,
  `sqa_review_hours_no` int(10) DEFAULT NULL,
  `sqa_review_team` varchar(100) DEFAULT NULL,
  `sqa_major_concerns` varchar(255) DEFAULT NULL,
  `sqa_feedback_status` varchar(255) DEFAULT NULL,
  `sqa_sent_sqar_date` datetime DEFAULT NULL,
  `sqa_close_date` datetime DEFAULT NULL,
  `sqa_author_return_date` datetime DEFAULT NULL,
  `sqa_action_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`deliverable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdeliverable`
--

LOCK TABLES `tdeliverable` WRITE;
/*!40000 ALTER TABLE `tdeliverable` DISABLE KEYS */;
INSERT INTO `tdeliverable` VALUES (1,25,'CredCard - BR - V1','','Requirements Phase 1','BRD','NEW',22,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,1,NULL,NULL,NULL,'2006-08-23 12:27:00','2022-03-02 04:06:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,3,'RQ-001','','Requirements','BRD','NEW',22,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,'2006-08-25 09:35:00','2006-08-25 09:52:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'MRM-REQR-001','','MRN Merge Requirements','SRS','NEW',37,'',NULL,NULL,'',0,0,0,0,'','','','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00',37,37,NULL,NULL,NULL,'2006-10-31 11:46:00','2022-04-04 04:22:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,'SA-105','...','Application Sunset Analysis','IAD','NEW',102,'SD&C is runnning. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2006-11-09 01:11:00','2022-04-04 10:44:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,27,'MRM - R1','','Requirements','SRS','NEW',37,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,'2007-01-24 03:16:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdeliverable` ENABLE KEYS */;
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
