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
-- Table structure for table `tpolicy`
--

DROP TABLE IF EXISTS `tpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpolicy` (
  `policy_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `function_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `target_tx` varchar(64) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `reason_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `inclusions_blob` varchar(1024) DEFAULT NULL,
  `exclusions_blob` varchar(1024) DEFAULT NULL,
  `purpose_blob` varchar(1024) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpolicy`
--

LOCK TABLES `tpolicy` WRITE;
/*!40000 ALTER TABLE `tpolicy` DISABLE KEYS */;
INSERT INTO `tpolicy` VALUES (1,1,0,'POL-TRAIN-1','TP','R','L','Training Materials Development','adf','Training materials must follow the standard templates.','Consistency across divisions.','notes','Include','Exclude',NULL,21,1,37,NULL,'2006-01-01 08:00:00','2022-03-10 12:59:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2005-01-02 00:00:00',NULL),(2,1,0,'PR-Metrics','PR','M','L','Peer Reviews Exclude Metrics','','Metrics collected in formal deliverables shall not be used in performance evaluations.','Maintain objectivity in formal reviews.','','','',NULL,22,1,37,NULL,'2006-01-01 08:00:00','2022-03-11 12:00:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2005-02-02 00:00:00',NULL);
/*!40000 ALTER TABLE `tpolicy` ENABLE KEYS */;
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
