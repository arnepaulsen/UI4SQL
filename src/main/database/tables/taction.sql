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
-- Table structure for table `taction`
--

DROP TABLE IF EXISTS `taction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taction` (
  `action_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `percent_done_no` int(10) DEFAULT NULL,
  `issue_blob` longtext DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `resolution_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `closed_by_uid` int(10) DEFAULT NULL,
  `target_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taction`
--

LOCK TABLES `taction` WRITE;
/*!40000 ALTER TABLE `taction` DISABLE KEYS */;
INSERT INTO `taction` VALUES (1,1,'RQR-1','BD','O',43,'L','Finish LSDD Draft Version 1',NULL,NULL,'blah.','','',NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2008-02-05 04:25:00','2022-04-04 05:45:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,25,'1','BD','O',172,'M','Action Item',NULL,NULL,'Action.','','',NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2022-03-02 08:40:00','2022-03-03 10:47:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,27,'2','BD','O',302,'L','Action 2',NULL,NULL,'Action 2','','',NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-02 08:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,25,'2','BD','O',281,'M','Action Item',0,'','Action.','','',0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,37,37,NULL,0,NULL,'2022-03-03 10:47:00','2022-03-03 11:32:00',NULL,'0000-00-00 00:00:00',NULL,'','','','','');
/*!40000 ALTER TABLE `taction` ENABLE KEYS */;
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
