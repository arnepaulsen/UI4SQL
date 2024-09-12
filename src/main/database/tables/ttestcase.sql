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
-- Table structure for table `ttestcase`
--

DROP TABLE IF EXISTS `ttestcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ttestcase` (
  `testcase_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `requirement_id` int(10) DEFAULT NULL,
  `title_nm` varchar(32) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `use_case_id` int(10) DEFAULT NULL,
  `unit_test_item` varchar(32) DEFAULT NULL,
  `status_cd` char(3) DEFAULT NULL,
  `version_no` varchar(4) DEFAULT NULL,
  `test_plan_ref` varchar(100) DEFAULT NULL,
  `desc_blob` varchar(1000) DEFAULT NULL,
  `low_level_design_id` varchar(32) DEFAULT NULL,
  `input_spec_nm` varchar(255) DEFAULT NULL,
  `output_spec_nm` varchar(255) DEFAULT NULL,
  `test_env_nm` varchar(255) DEFAULT NULL,
  `reviewed_pass_flag` char(1) DEFAULT NULL,
  `data_init_tx` varchar(1000) DEFAULT NULL,
  `case_dependencies_tx` varchar(100) DEFAULT NULL,
  `review_pass_flag` varchar(100) DEFAULT NULL,
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
  PRIMARY KEY (`testcase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ttestcase`
--

LOCK TABLES `ttestcase` WRITE;
/*!40000 ALTER TABLE `ttestcase` DISABLE KEYS */;
INSERT INTO `ttestcase` VALUES (1,1,2,NULL,'Customer Inquiry','CI-100',2,'','NEW','4','plan ref','desc','0','input','adfd','unit test env','Y','data init','test case depend','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,2,NULL,'Purchase Item','PI-100',1,'','WIP','3','KJDF','DF','0','','','','Y','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,1,1,NULL,'Close Account','CUST-CA-01',0,'','CMP','0','','Post account balance. ','0','','','','Y','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(7,1,2,NULL,'Change Address','CA-201',0,'','WIP','0','1','2','','3','4','5','','6','7','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(8,1,1,NULL,'Reverse Late Charge','CUST-LC-01',3,'','WIP','0','','','','','','','','','','',1,1,1,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(9,1,1,NULL,'Open Trouble Ticket','TC-100',0,'','CMP','3','TEST PLAN REF #','a big desc','0','input','outputs','test env','','load customers.','blah','',1,1,1,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(10,6,0,NULL,'Customer Add','TM-CUST-ADD-01',5,'','CMP','0','','','','','','','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(11,6,0,NULL,'Customer Add2','TM-CUST-ADD-01',4,'','PND','0','','','','','','','','','','',1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(12,7,0,NULL,'Credit Maintenane Fee','CMF-001',3,'','NEW','1','','','','','','','','','','',1,NULL,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(13,13,NULL,5,'New Ad-Hoc','TC-001',6,NULL,'NEW','1','d','blah',NULL,'blan','blah','blah',NULL,'blah','blah',NULL,37,37,NULL,NULL,NULL,'2007-01-25 08:09:00','2008-10-17 11:57:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,13,0,5,'New Ad-Hoc','TC-001',6,'','NEW','2','d','blah','','blan','blah','blah','','blah','blah','',37,37,NULL,0,NULL,'2008-10-28 05:35:00','2009-11-05 07:50:00',NULL,'1900-01-01 00:00:00',NULL,'','','','','');
/*!40000 ALTER TABLE `ttestcase` ENABLE KEYS */;
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
