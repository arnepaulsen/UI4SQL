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
-- Table structure for table `tgui`
--

DROP TABLE IF EXISTS `tgui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tgui` (
  `gui_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `other_application_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `status_cd` char(3) DEFAULT NULL,
  `version_nm` varchar(12) DEFAULT NULL,
  `confirmed_flag` char(1) DEFAULT NULL,
  `version_blob` varchar(1024) DEFAULT NULL,
  `blob_description` varchar(1024) DEFAULT NULL,
  `blob_purpose` varchar(1024) DEFAULT NULL,
  `blob_edits` varchar(1024) DEFAULT NULL,
  `blob_rules` varchar(1024) DEFAULT NULL,
  `blob_trigger` varchar(1024) DEFAULT NULL,
  `blob_notes` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`gui_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tgui`
--

LOCK TABLES `tgui` WRITE;
/*!40000 ALTER TABLE `tgui` DISABLE KEYS */;
INSERT INTO `tgui` VALUES (1,1,3,0,'CHK-WV-123','Waive-Fee Screen','D','A12','N','Add totals fields and help messages.','Request manager approval to waive fee.','Send \"waive fee\" message to check processing for specified fee. ','Manager must enter valid override code. ','Fee must be less then $20. ','Tele-service agents requests when speaking to customer. ','Screen is buggy.  ',1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tgui` ENABLE KEYS */;
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
