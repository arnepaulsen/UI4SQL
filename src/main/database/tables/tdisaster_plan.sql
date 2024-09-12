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
-- Table structure for table `tdisaster_plan`
--

DROP TABLE IF EXISTS `tdisaster_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdisaster_plan` (
  `disaster_plan_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `section_cd` varchar(8) DEFAULT NULL,
  `version_nm` varchar(16) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `priority_cd` varchar(100) DEFAULT NULL,
  `some_uid` int(10) DEFAULT NULL,
  `some_date` datetime DEFAULT NULL,
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
  `q01_blob` longtext DEFAULT NULL,
  `q02_blob` longtext DEFAULT NULL,
  `q03_blob` longtext DEFAULT NULL,
  `q04_blob` longtext DEFAULT NULL,
  `q05_blob` longtext DEFAULT NULL,
  `q06_blob` longtext DEFAULT NULL,
  `q07_blob` longtext DEFAULT NULL,
  `q08_blob` longtext DEFAULT NULL,
  `q09_blob` longtext DEFAULT NULL,
  `q10_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`disaster_plan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdisaster_plan`
--

LOCK TABLES `tdisaster_plan` WRITE;
/*!40000 ALTER TABLE `tdisaster_plan` DISABLE KEYS */;
INSERT INTO `tdisaster_plan` VALUES (2,1,'S2','1.0','','','NEW','',0,NULL,1,37,0,NULL,0,'2006-01-01 08:00:00','2022-03-11 12:36:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'Restore to prior day.','database abc.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'S1','1','','','NEW','',0,NULL,1,37,0,NULL,0,'2006-01-01 08:00:00','2006-11-03 03:56:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'Outlines procedures for three scenarios:\r\n1. database outage\r\n2. network outage\r\n3. corrupted data. \r\n',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdisaster_plan` ENABLE KEYS */;
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
