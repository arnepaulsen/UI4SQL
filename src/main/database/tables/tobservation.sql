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
-- Table structure for table `tobservation`
--

DROP TABLE IF EXISTS `tobservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tobservation` (
  `observation_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `version_tx` varchar(4) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `observation_date` datetime DEFAULT NULL,
  `keywords_tx` varchar(100) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `change_blob` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`observation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tobservation`
--

LOCK TABLES `tobservation` WRITE;
/*!40000 ALTER TABLE `tobservation` DISABLE KEYS */;
INSERT INTO `tobservation` VALUES (1,3,0,'Customers Have Bad Zip Codes','','zip',NULL,'','SYS','The system was written in COBOL in 1968. ','It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still works great. It still wor',NULL,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(2,1,2,'Tracking Out-Of-Stock','1','rates','2006-05-12 00:00:00','','L','Tracking system doesn\"t identify all out-of-stock items. ','RFID readers don\"t always count correctly.... results are questionable. ','5/12/2005 Took second reading. ',1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(3,13,1,'Memory Leaks ','1.0','ML','0200-01-01 00:00:00',NULL,'D','System warnings on memory constraint','','',37,NULL,NULL,NULL,'2022-03-11 09:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tobservation` ENABLE KEYS */;
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
