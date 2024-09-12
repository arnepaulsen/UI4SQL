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
-- Table structure for table `tprocess`
--

DROP TABLE IF EXISTS `tprocess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tprocess` (
  `process_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `function_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `menu_cd` varchar(16) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `target_tx` varchar(64) DEFAULT NULL,
  `url_tx` varchar(128) DEFAULT NULL,
  `max_fte_no` int(10) DEFAULT NULL,
  `max_dollar_k_amt` int(10) DEFAULT NULL,
  `max_structure_no` int(10) DEFAULT NULL,
  `max_function_point_no` int(10) DEFAULT NULL,
  `max_program_no` int(10) DEFAULT NULL,
  `max_interface_no` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `criteria_blob` varchar(1024) DEFAULT NULL,
  `exclusion_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `author_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
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
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `effective_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tprocess`
--

LOCK TABLES `tprocess` WRITE;
/*!40000 ALTER TABLE `tprocess` DISABLE KEYS */;
INSERT INTO `tprocess` VALUES (1,1,0,'PRC-SML','S','M','L','large','Small Project Development','','http://docushare.ourserver.com/processes/PRC-SML.DOC',30,15,1,300,3,2,'Description of the stages of Small Projects Development','Project must fall within dollar and fte limits, and not impact more than 3 external systems. ','Projects that have architechural implications.','Use \"Large Project Development\" for projects that fall above these ranges.',13,1,1,NULL,'2006-01-01 08:00:00','2006-03-31 06:49:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2005-04-15 00:00:00',NULL),(2,1,0,'Proc-full','F','M','','large','Full Lifecycle Large Project','','',9999,9999,0,0,0,0,'Project that require full lifecycle support.  This is the largest, most rigerous project template. ','','','',22,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2004-05-02 00:00:00',NULL),(3,1,0,'PRC-M','M','M','','large','Periodic Maintenance  Package','','http://documentmanager.abc.com/Maintenance.Doc',30,50,10,2500,6,3,'To be used for routine maintenance packages.','','No new data strucutures, architechural impacts. No more than two other systems imimpacted.','',22,1,1,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2005-05-01 00:00:00',NULL);
/*!40000 ALTER TABLE `tprocess` ENABLE KEYS */;
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
