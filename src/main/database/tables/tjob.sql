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
-- Table structure for table `tjob`
--

DROP TABLE IF EXISTS `tjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tjob` (
  `job_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `stream_nm` varchar(64) DEFAULT NULL,
  `dependent_job_id` int(10) DEFAULT NULL,
  `successor_job_id` int(10) DEFAULT NULL,
  `blob_job_desc` varchar(1024) DEFAULT NULL,
  `frequency_cd` char(3) DEFAULT NULL,
  `status_cd` char(3) DEFAULT NULL,
  `job_type_cd` char(3) DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `blob_recovery_notes` varchar(1024) DEFAULT NULL,
  `blob_spec_instructions` varchar(1024) DEFAULT NULL,
  `blob_notification` varchar(1024) DEFAULT NULL,
  `skip_condition_tx` varchar(100) DEFAULT NULL,
  `max_allowed_rc_tx` varchar(12) DEFAULT NULL,
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
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tjob`
--

LOCK TABLES `tjob` WRITE;
/*!40000 ALTER TABLE `tjob` DISABLE KEYS */;
INSERT INTO `tjob` VALUES (1,1,'MDB034DJ','Check Free Post','Check Daily Cycle 1',1,0,'desc','H','A','PST','2004-05-05 00:00:00','Restore the operating system and call vendor support. ','Never run on mondays.','Manager of HR. ','if post job has rc > 8.','4',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,3,'JOB-PRC1-DLY','Daily Print Check','0',0,0,'blah','H','A','EDT',NULL,'aqetsvb','blah.blah. ',NULL,'','0',1,1,1,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,4,'JOB-DLY-STMTS','Account Statements','0',0,0,'Run job to print customer statements. ','H','A','EDT','2005-05-12 00:00:00','','',NULL,'','0',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,6,'TM-AE-01','Audit Exceptions','',3,0,'List audit exceptions for a projec.t','H','A','PST',NULL,'','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tjob` ENABLE KEYS */;
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
