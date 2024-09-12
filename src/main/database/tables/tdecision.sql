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
-- Table structure for table `tdecision`
--

DROP TABLE IF EXISTS `tdecision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdecision` (
  `decision_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `followup_uid` int(10) DEFAULT NULL,
  `note_date` datetime DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `followup_blob` varchar(1024) DEFAULT NULL,
  `participants_tx` varchar(255) DEFAULT NULL,
  `conclusion_blob` varchar(1024) DEFAULT NULL,
  `added_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `submitted_id` int(10) DEFAULT NULL,
  `approved_id` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  PRIMARY KEY (`decision_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdecision`
--

LOCK TABLES `tdecision` WRITE;
/*!40000 ALTER TABLE `tdecision` DISABLE KEYS */;
INSERT INTO `tdecision` VALUES (1,1,'Zip Codes in Conversion Files','Conversion','DEC',1,'2005-04-01 00:00:00','The conversion files from vendor Abc may not contain reliable zip codes.','See if we eliminating features will reduce ROI. ','Jill and Fred','We will have to cut features out of scope. ',1,1,0,0,'2005-06-10 03:52:00','2005-10-15 09:03:00',NULL,NULL),(2,3,'BEA Has new SOA Product','BEA','DIS',1,'2005-10-01 00:00:00','','','','',1,0,0,0,'2005-08-07 09:07:00',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tdecision` ENABLE KEYS */;
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
