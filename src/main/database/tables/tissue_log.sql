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
-- Table structure for table `tissue_log`
--

DROP TABLE IF EXISTS `tissue_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tissue_log` (
  `issue_log_id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `status_cd` varchar(2) DEFAULT NULL,
  `priority_cd` varchar(1) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `token_uid` int(10) DEFAULT NULL,
  `desc_blob` varchar(1000) DEFAULT NULL,
  `notes_blob` varchar(1000) DEFAULT NULL,
  `action_tx` varchar(255) DEFAULT NULL,
  `next_tx` varchar(255) DEFAULT NULL,
  `bottleneck_tx` varchar(255) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`issue_log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tissue_log`
--

LOCK TABLES `tissue_log` WRITE;
/*!40000 ALTER TABLE `tissue_log` DISABLE KEYS */;
INSERT INTO `tissue_log` VALUES (1,52,'Reg','Get New Regulations from State','R','C','M',93,193,'desc','notes',NULL,'','',37,37,NULL,'2008-10-09 05:04:00','2008-10-10 05:31:00'),(2,52,'Screens','Need Screen from Joe','T','O','M',194,193,'desc','notes',NULL,'Call Pam','dont\" know phone #, on vacations',37,37,NULL,'2008-10-09 05:11:00','2008-10-10 05:31:00'),(3,52,'Port Assign','Call Passport','R','O','L',43,930,'Get IP addresses','Need Denise phone 3',NULL,'Bill back from vacation 11/1','',37,37,NULL,'2008-10-10 05:47:00','2008-10-14 05:31:00'),(13,52,'test','test','R','O','L',11,193,'','',NULL,'','',37,NULL,NULL,'2008-11-23 07:43:00',NULL),(14,53,'etst ','asdf','S','O','L',93,193,'','',NULL,'','',37,NULL,NULL,'2008-11-23 07:51:00',NULL),(15,54,'ARNE','Research alternate file types','S','O','L',11,193,'','',NULL,'','',37,NULL,NULL,'2008-11-23 07:53:00',NULL),(16,48,'TSK-01','Start Project','S','O','L',11,1257,'','',NULL,'','',37,NULL,NULL,'2009-04-20 10:21:00',NULL),(17,66,'STEP 1','Find out Colorado Requirement','S','O','M',37,11,'get input from EvelEv','',NULL,'','',37,NULL,NULL,'2009-08-21 02:15:00',NULL),(18,66,'STEP 2','Can\'t Read Messages','Q','O','M',37,337,'get input from EvelEv','','','','',37,37,0,'2009-08-21 02:26:00','2009-08-21 02:26:00');
/*!40000 ALTER TABLE `tissue_log` ENABLE KEYS */;
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
