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
-- Table structure for table `tcontrol`
--

DROP TABLE IF EXISTS `tcontrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcontrol` (
  `control_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `exposure_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` char(3) DEFAULT NULL,
  `state_cd` varchar(8) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `assign_to_uid` int(10) DEFAULT NULL,
  `effective_pct` int(10) DEFAULT NULL,
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
  `desc_blob` longtext DEFAULT NULL,
  `contingency_blob` longtext DEFAULT NULL,
  `condition_blob` longtext DEFAULT NULL,
  `consequence_blob` longtext DEFAULT NULL,
  `mitigation_blob` longtext DEFAULT NULL,
  `effectiveness_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`control_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcontrol`
--

LOCK TABLES `tcontrol` WRITE;
/*!40000 ALTER TABLE `tcontrol` DISABLE KEYS */;
INSERT INTO `tcontrol` VALUES (1,1,0,2,'AUD-103','CUS','','Audit Loan Origination Papers',0,40,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'All loan origination files are reviewed by the audit department. ',NULL,NULL,NULL,NULL,NULL),(2,1,0,1,'A/R Aud-001','A','PND','Audit A/R Waiver Paper Forms',16,40,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'Our green-shaded auditors will examine all the a/r waive requests. ',NULL,NULL,NULL,NULL,NULL),(3,1,0,3,'AUD-105','A','WIP','Review Employee Credit Reports',13,12,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'All loan origination files are reviewed by the audit department. ',NULL,NULL,NULL,NULL,NULL),(4,1,0,1,'AR-193','M','WIP','Reconcile Batch Totals to Detail Records',22,50,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL),(5,13,NULL,0,'c123','A','NEW','V.P. Sign Waiver',101,50,37,37,NULL,NULL,NULL,'2008-02-07 12:51:00','2010-06-14 10:38:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desc. control 3\r\n','backup. contros.',NULL,NULL,'enforce','effectiveness blob\r\narne\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\npaulsen\r\n'),(6,13,NULL,0,'RC-2','M','PND','RFC Revoew',314,0,37,37,NULL,NULL,NULL,'2010-06-14 10:51:00','2010-06-14 10:51:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'desc','back up ',NULL,NULL,'enforcement','effectiveness');
/*!40000 ALTER TABLE `tcontrol` ENABLE KEYS */;
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
