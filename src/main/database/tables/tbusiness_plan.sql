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
-- Table structure for table `tbusiness_plan`
--

DROP TABLE IF EXISTS `tbusiness_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbusiness_plan` (
  `bsns_plan_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `section_cd` varchar(4) DEFAULT NULL,
  `phase_cd` varchar(16) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `version_nm` varchar(32) DEFAULT NULL,
  `status_cd` varchar(12) DEFAULT NULL,
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
  `q01_blob` longtext DEFAULT NULL,
  `q02_blob` longtext DEFAULT NULL,
  `q03_blob` longtext DEFAULT NULL,
  `q04_blob` longtext DEFAULT NULL,
  `q05_blob` longtext DEFAULT NULL,
  `q06_blob` longtext DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `q07_blob` longtext DEFAULT NULL,
  `q08_blob` longtext DEFAULT NULL,
  `q09_blob` longtext DEFAULT NULL,
  `q10_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`bsns_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbusiness_plan`
--

LOCK TABLES `tbusiness_plan` WRITE;
/*!40000 ALTER TABLE `tbusiness_plan` DISABLE KEYS */;
INSERT INTO `tbusiness_plan` VALUES (1,1,'S201','IPP','Section 1','sc1','1.0','CMP',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'Implement cmm-framer. ','Key objectives....','Staffing will have to do for now. ','','','',NULL,'',NULL,NULL,NULL),(3,1,'S203','IPP','','','1.0','CMP',1,37,1,NULL,0,'2006-01-01 08:00:00','2022-04-05 03:45:00','2005-12-20 06:33:00',NULL,NULL,'N','N',NULL,NULL,'We will meet all the objectives. ','Increase technical skills so they can get better paying jobs somewhere else. ','','','','',NULL,NULL,NULL,NULL,NULL),(4,1,'S205','IPP','','','1.0','NEW',1,37,0,NULL,0,'2006-01-01 08:00:00','2022-04-04 07:30:00',NULL,NULL,NULL,'N','N',NULL,NULL,'Always use online-lifecycle-<br>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'S206','IPP','','','1.0','NEW',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'Convert back to COBOL. ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,'S202','IPP',NULL,NULL,'1.0','WIP',0,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,'S204','IPP','','','1.0','NEW',1,37,1,NULL,0,'2006-01-01 08:00:00','2022-04-04 07:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,'Objectives','Business scope is ...','Key Business Functional and Process Requirements are blah. ','Key Business Information and Data Requirements are soon to be determined. ','Performance Requirements are on and on. ','System Arch. Infrastrure Reqr. is SOA. ',NULL,'Support is requiremented from Enterprise Middleware. ',NULL,NULL,NULL),(10,1,'S209','IPP','','','1.0','NEW',1,37,0,NULL,0,'2006-01-01 08:00:00','2009-07-22 10:49:00',NULL,NULL,NULL,'N','N',NULL,NULL,'Vendor proposals for an EDI clearinghouse. ','See the milestones form.  It\"s a lot easy to do analysis on items in a database than it is items in a word document... don\"t you think?','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,3,'S202','IPP','','','1.0','WIP',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'','','','','','',NULL,'',NULL,NULL,NULL),(12,3,'S202','RQR','','','1.0','NEW',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'','','','','','',NULL,'',NULL,NULL,NULL),(15,1,'S212','TST2','','','1.0','NEW',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'dfa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,1,'S301','SPEC','','','1.0','NEW',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,1,'S207','IPP','','','1.0','WIP',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,'','','','','','',NULL,'',NULL,NULL,NULL),(19,1,'S210','','','','1.0','NEW',1,37,0,NULL,0,'2006-01-01 08:00:00','2022-04-04 08:48:00',NULL,NULL,NULL,'N','N',NULL,NULL,'Just bands of roving project managers. ','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbusiness_plan` ENABLE KEYS */;
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
