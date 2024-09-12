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
-- Table structure for table `tcriteria`
--

DROP TABLE IF EXISTS `tcriteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcriteria` (
  `criteria_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `status_cd` varchar(4) NOT NULL,
  `stage_cd` varchar(8) DEFAULT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `title_nm` varchar(64) NOT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `measure_cd` char(3) NOT NULL,
  `measure_qty` int(10) NOT NULL,
  `confirmed_flag` char(1) NOT NULL,
  `verified_uid` int(10) NOT NULL,
  `verified_dt` datetime DEFAULT NULL,
  `desc_blob` varchar(8000) NOT NULL,
  `success_blob` varchar(8000) NOT NULL,
  `result_blob` varchar(8000) NOT NULL,
  `stakeholder_uid` int(10) NOT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `realize_dt` datetime DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  PRIMARY KEY (`criteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcriteria`
--

LOCK TABLES `tcriteria` WRITE;
/*!40000 ALTER TABLE `tcriteria` DISABLE KEYS */;
INSERT INTO `tcriteria` VALUES (1,1,'CMP','HLD','AC-001','Functionality Gaps Complete','Analyzing last set of messages.','A',0,'Y',13,'2005-05-01 00:00:00','Functionality gaps must be completely analyized by subject matter experts.','Compare interface specifications of the target systems with the message types sent by GlobalVu applications.','Failed',0,6,'2006-06-01 00:00:00',1,'2005-12-07 07:44:00',37,'2022-04-04 04:11:00',1,'2005-12-07 07:59:00',NULL,NULL,NULL,NULL),(2,1,'CMP','HLD','AC-001','Report Definitions Encompass Requirements','Analyzing last set of messages.','A',0,'Y',13,'2005-05-01 00:00:00','Functionality gaps must be completely analyized by subject matter experts.','Compare interface specifications of the target systems with the message types sent by GlobalVu applications.','Failed',0,6,'2006-06-01 00:00:00',1,'2005-12-08 04:13:00',37,'2022-04-04 03:56:00',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tcriteria` ENABLE KEYS */;
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
