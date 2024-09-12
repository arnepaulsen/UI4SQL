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
-- Table structure for table `tclosure`
--

DROP TABLE IF EXISTS `tclosure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tclosure` (
  `closure_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `division_id` int(10) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `accessment_cd` varchar(100) DEFAULT NULL,
  `defect_cnt` int(10) DEFAULT NULL,
  `change_cnt` int(10) DEFAULT NULL,
  `realized_loss_amt` int(10) DEFAULT NULL,
  `summary_tx` varchar(100) DEFAULT NULL,
  `accessment_blob` varchar(1024) DEFAULT NULL,
  `success_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `failure_blob` varchar(1024) DEFAULT NULL,
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
  `commit_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tclosure`
--

LOCK TABLES `tclosure` WRITE;
/*!40000 ALTER TABLE `tclosure` DISABLE KEYS */;
INSERT INTO `tclosure` VALUES (8,1,1,'','S',5,4,300,'Big mess up.','','','','',1,37,NULL,'2006-01-01 08:00:00','2022-04-04 04:11:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,1,'','S',5,4,0,'Bad documentation','','','','',1,37,NULL,'2006-01-01 08:00:00','2022-03-03 01:30:00','2006-03-18 09:32:00',NULL,NULL,'P','N','dasdfds',NULL,NULL,1,0,NULL,NULL),(NULL,27,1,NULL,'S',NULL,NULL,NULL,'','','','','',37,NULL,NULL,'2007-01-05 10:54:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,1,1,'','S',5,4,300,'Big mess up.','','','','',1,37,NULL,'2006-01-01 08:00:00','2022-04-04 04:11:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,1,1,'','S',5,4,0,'Bad documentation','','','','',1,37,NULL,'2006-01-01 08:00:00','2022-03-03 01:30:00','2006-03-18 09:32:00',NULL,NULL,'P','N','dasdfds',NULL,NULL,1,0,NULL,NULL),(NULL,27,1,NULL,'S',NULL,NULL,NULL,'','','','','',37,NULL,NULL,'2007-01-05 10:54:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tclosure` ENABLE KEYS */;
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
