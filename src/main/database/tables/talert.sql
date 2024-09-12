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
-- Table structure for table `talert`
--

DROP TABLE IF EXISTS `talert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talert` (
  `alert_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `impact_blob` varchar(1024) DEFAULT NULL,
  `contingency_blob` varchar(1024) DEFAULT NULL,
  `outcome_blob` varchar(1024) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `confirmed_cd` char(1) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `production_cd` char(1) DEFAULT NULL,
  `safety_cd` char(1) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `begin_dttm` datetime DEFAULT NULL,
  `end_dttm` datetime DEFAULT NULL,
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
  PRIMARY KEY (`alert_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talert`
--

LOCK TABLES `talert` WRITE;
/*!40000 ALTER TABLE `talert` DISABLE KEYS */;
INSERT INTO `talert` VALUES (1,1,'WITS','WITS Will Be Down Friday 1-4 PM','WITS will be down for upgrade.','','','',14,'','C','','N','N',1,1,NULL,NULL,NULL,'2006-05-12 01:00:00','2006-05-12 05:00:00','2006-05-10 09:40:00','2006-10-02 01:47:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'Cetrix','Verify Citrix on Sunday','WITS will be down for upgrade.','','','',0,'','O','','N','N',1,37,NULL,0,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00','2006-05-10 09:41:00','2023-06-07 11:53:00',NULL,NULL,NULL,'N','N','','',''),(3,1,'Freeze','Code Freeze Before Spring ','Members homed in EB that present in other regions will not have Charts.\r\np','Paper procedures. ','','',4,'','O','','Y','Y',1,37,37,0,NULL,'2007-01-31 08:00:00','0000-00-00 00:00:00','2006-05-10 09:42:00','2023-06-07 11:53:00','2022-04-04 09:05:00',NULL,NULL,'P','N','','','');
/*!40000 ALTER TABLE `talert` ENABLE KEYS */;
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
