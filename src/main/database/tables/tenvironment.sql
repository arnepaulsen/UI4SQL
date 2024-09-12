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
-- Table structure for table `tenvironment`
--

DROP TABLE IF EXISTS `tenvironment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenvironment` (
  `environment_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `project_id` int(10) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `usage_blob` varchar(1024) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`environment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenvironment`
--

LOCK TABLES `tenvironment` WRITE;
/*!40000 ALTER TABLE `tenvironment` DISABLE KEYS */;
INSERT INTO `tenvironment` VALUES (1,1,1,'Release','RENC',NULL,47,'Spring 06. ','','1900-01-01 00:00:00',37,'2006-10-02 11:17:00',37,'2007-01-25 08:44:00'),(2,1,1,'WITS','WITS',NULL,47,'','','0000-00-00 00:00:00',37,'2006-10-02 11:18:00',37,'2009-11-03 08:57:00'),(3,1,1,'WITS3','WITS3',NULL,302,'','','0000-00-00 00:00:00',37,'2009-11-03 08:56:00',NULL,NULL),(4,1,1,'STGN','STGN',NULL,302,'','','0000-00-00 00:00:00',37,'2009-11-03 08:56:00',37,'2009-11-05 07:51:00');
/*!40000 ALTER TABLE `tenvironment` ENABLE KEYS */;
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
