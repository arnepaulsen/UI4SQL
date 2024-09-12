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
-- Table structure for table `tremedy`
--

DROP TABLE IF EXISTS `tremedy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tremedy` (
  `tremedy_id` int(11) NOT NULL AUTO_INCREMENT,
  `division_id` int(11) NOT NULL DEFAULT 0,
  `project_id` int(11) DEFAULT 0,
  `remedy_no` int(11) DEFAULT 0,
  `application_id` int(11) DEFAULT 0,
  `reference_nm` varchar(64) DEFAULT '',
  `title_nm` varchar(128) DEFAULT '',
  `rfc_nm` varchar(16) DEFAULT '',
  `defect_nm` varchar(100) DEFAULT '',
  `tested_nm` varchar(100) DEFAULT '',
  `status_tx` varchar(128) DEFAULT '',
  `status_cd` varchar(8) DEFAULT '',
  `tested_cd` char(1) DEFAULT '',
  `received_date` date DEFAULT '0000-00-00',
  `review_date` date DEFAULT '0000-00-00',
  `install_date` date DEFAULT '0000-00-00',
  `closed_date` datetime DEFAULT '0000-00-00 00:00:00',
  `closed_uid` int(11) DEFAULT 0,
  `requester_uid` int(11) DEFAULT 0,
  `owner_uid` int(11) DEFAULT 0,
  `added_uid` int(11) DEFAULT NULL,
  `updated_uid` int(11) DEFAULT NULL,
  `submitted_uid` int(11) DEFAULT NULL,
  `reviewed_uid` int(11) DEFAULT NULL,
  `approved_uid` int(11) DEFAULT NULL,
  `remedy_start_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `remedy_end_dt` datetime DEFAULT '0000-00-00 00:00:00',
  `added_date` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_date` datetime DEFAULT '0000-00-00 00:00:00',
  `submitted_date` datetime DEFAULT '0000-00-00 00:00:00',
  `reviewed_date` datetime DEFAULT '0000-00-00 00:00:00',
  `approved_date` datetime DEFAULT '0000-00-00 00:00:00',
  `reviewed_flag` char(1) DEFAULT 'N',
  `approved_flag` char(1) DEFAULT 'N',
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `description_blob` blob DEFAULT NULL,
  PRIMARY KEY (`tremedy_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tremedy`
--

LOCK TABLES `tremedy` WRITE;
/*!40000 ALTER TABLE `tremedy` DISABLE KEYS */;
INSERT INTO `tremedy` VALUES (1,0,0,99999999,0,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00 00:00:00',0,0,0,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N','N',NULL,NULL,NULL,NULL),(2,0,0,666666,0,'','','','','','','','','0000-00-00','0000-00-00','0000-00-00','0000-00-00 00:00:00',0,0,0,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','N','N',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tremedy` ENABLE KEYS */;
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
