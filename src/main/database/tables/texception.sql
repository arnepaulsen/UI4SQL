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
-- Table structure for table `texception`
--

DROP TABLE IF EXISTS `texception`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texception` (
  `exception_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `audit_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `rule_id` int(10) DEFAULT NULL,
  `run_no` int(10) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `status_cd` varchar(16) DEFAULT NULL,
  `rule_max_no` int(10) DEFAULT NULL,
  `actual_no` int(10) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `reason_blob` varchar(1024) DEFAULT NULL,
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
  `updated_uid` int(10) DEFAULT NULL,
  `audit_date` datetime DEFAULT NULL,
  PRIMARY KEY (`exception_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texception`
--

LOCK TABLES `texception` WRITE;
/*!40000 ALTER TABLE `texception` DISABLE KEYS */;
INSERT INTO `texception` VALUES (33,1,7,'','D',0,0,'Business Requirements','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(34,1,7,'','D',0,0,'Client Communication Plan','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(35,1,7,'','D',0,0,'GARB Checklist','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(36,1,7,'','I',0,0,'Interface Limit Exceeded','P',2,3,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(37,1,7,'','M',0,0,'Module Limit Exceeded','P',2,8,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(38,1,7,'','E',0,0,'Effort Limit Exceeded','P',30,34,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(39,1,7,'','F',0,0,'Function Points Limit Exceeded','P',3,222,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(40,1,8,'','D',0,0,'Business Requirements','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(41,1,8,'','D',0,0,'Client Communication Plan','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(42,1,8,'','D',0,0,'GARB Checklist','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(43,1,8,'','I',0,0,'Interface Limit Exceeded','P',2,3,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(44,1,8,'','M',0,0,'Module Limit Exceeded','P',2,8,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(45,1,8,'','E',0,0,'Effort Limit Exceeded','P',30,34,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(46,1,8,'','F',0,0,'Function Points Limit Exceeded','P',3,222,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(47,1,9,'','D',0,0,'Business Requirements','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(48,1,9,'','D',0,0,'Client Communication Plan','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(49,1,9,'','D',0,0,'GARB Checklist','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(50,1,9,'','I',0,0,'Interface Limit Exceeded','P',2,3,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(51,1,9,'','M',0,0,'Module Limit Exceeded','P',2,8,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(52,1,9,'','E',0,0,'Effort Limit Exceeded','P',30,34,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(53,1,9,'','F',0,0,'Function Points Limit Exceeded','P',3,222,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(54,1,10,'','D',0,0,'Business Requirements','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(55,1,10,'','D',0,0,'Client Communication Plan','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(56,1,10,'','D',0,0,'GARB Checklist','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(57,1,10,'','I',0,0,'Interface Limit Exceeded','P',2,3,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(58,1,10,'','M',0,0,'Module Limit Exceeded','P',2,8,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(59,1,10,'','E',0,0,'Effort Limit Exceeded','P',30,34,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(60,1,10,'','F',0,0,'Function Points Limit Exceeded','P',3,222,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(61,1,10,'','S',0,0,'Data Structures Limit Exceeded','R',1,2,0,'We\"re just adding one field to tcustomer table... no big deal. ','','',1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1,NULL),(62,3,11,'','D',0,0,'Business Requirements','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(63,3,11,'','D',0,0,'Client Communication Plan','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL),(64,3,11,'','D',0,0,'GARB Checklist','P',1,0,0,NULL,NULL,NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `texception` ENABLE KEYS */;
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
