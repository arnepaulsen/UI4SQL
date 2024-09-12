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
-- Table structure for table `tdesign`
--

DROP TABLE IF EXISTS `tdesign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdesign` (
  `design_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `application_nm` varchar(255) DEFAULT NULL,
  `report_as_nm` varchar(255) DEFAULT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `contact_nm` varchar(255) DEFAULT NULL,
  `vendor_nm` varchar(255) DEFAULT NULL,
  `diagram_url` varchar(255) DEFAULT NULL,
  `detected_nm` varchar(255) DEFAULT NULL,
  `title_nm` varchar(255) DEFAULT NULL,
  `status_tx` varchar(255) DEFAULT NULL,
  `impact_cd` varchar(8) DEFAULT NULL,
  `deployment_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(8) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `testcase_id` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `follow_up_blob` varchar(1000) DEFAULT NULL,
  `notes_blob` varchar(1000) DEFAULT NULL,
  `change_blob` varchar(1000) DEFAULT NULL,
  `review_blob` varchar(1000) DEFAULT NULL,
  `impact_blob` varchar(1000) DEFAULT NULL,
  `consideration_blob` varchar(1000) DEFAULT NULL,
  `resolution_blob` varchar(1000) DEFAULT NULL,
  `limitation_blob` varchar(1000) DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `closed_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `opened_date` datetime DEFAULT NULL,
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
  PRIMARY KEY (`design_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdesign`
--

LOCK TABLES `tdesign` WRITE;
/*!40000 ALTER TABLE `tdesign` DISABLE KEYS */;
INSERT INTO `tdesign` VALUES (1,1,1,NULL,NULL,NULL,'MRNM',NULL,NULL,'98.',NULL,'MRN Merge',NULL,'L',NULL,'NEW',NULL,NULL,281,NULL,'','','','','','','',NULL,'',NULL,NULL,37,37,NULL,NULL,NULL,NULL,'2007-03-11 11:55:00','2010-02-23 10:47:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdesign` ENABLE KEYS */;
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
