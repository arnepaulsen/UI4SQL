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
-- Table structure for table `tresponsibility`
--

DROP TABLE IF EXISTS `tresponsibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tresponsibility` (
  `responsibility_id` int(10) NOT NULL AUTO_INCREMENT,
  `deliverable_id` int(10) NOT NULL,
  `party_type_cd` varchar(6) DEFAULT NULL,
  `responsibility_cd` varchar(6) DEFAULT NULL,
  `party_uid` int(10) DEFAULT NULL,
  `status_cd` varchar(16) DEFAULT NULL,
  `status_tx` varchar(255) DEFAULT NULL,
  `reject_tx` varbinary(60) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`responsibility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tresponsibility`
--

LOCK TABLES `tresponsibility` WRITE;
/*!40000 ALTER TABLE `tresponsibility` DISABLE KEYS */;
INSERT INTO `tresponsibility` VALUES (1,4,'AUD','C',37,'P','Two Month Review Period','','Need more time to think about it. \r\n',37,37,NULL,NULL,NULL,'2022-04-04 04:23:00','2022-04-04 09:05:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,5,'AUD','R',37,'R','Messed Up',_binary 'I perpetuate my job if I keep rejecting.','Need more documentation. ',37,37,NULL,NULL,NULL,'2022-04-04 04:24:00','2022-04-04 09:03:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,0,NULL,NULL,37,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-04-04 04:24:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,5,'AUD','0',102,NULL,'Why No Deliveragle',NULL,'',37,37,NULL,0,NULL,'2022-04-05 11:05:00','2022-04-05 11:05:00',NULL,NULL,NULL,'P',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tresponsibility` ENABLE KEYS */;
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
