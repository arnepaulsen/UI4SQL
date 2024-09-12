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
-- Table structure for table `tramp`
--

DROP TABLE IF EXISTS `tramp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tramp` (
  `ramp_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `year_no` int(10) DEFAULT NULL,
  `qty_cd` varchar(100) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `q1_flt` float DEFAULT NULL,
  `q2_flt` float DEFAULT NULL,
  `q3_flt` float DEFAULT NULL,
  `q4_flt` float DEFAULT NULL,
  `q5_flt` float DEFAULT NULL,
  `q6_flt` float DEFAULT NULL,
  `q7_flt` float DEFAULT NULL,
  `q8_flt` float DEFAULT NULL,
  `q9_flt` float DEFAULT NULL,
  `q10_flt` float DEFAULT NULL,
  `q11_flt` float DEFAULT NULL,
  `q12_flt` float DEFAULT NULL,
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
  PRIMARY KEY (`ramp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tramp`
--

LOCK TABLES `tramp` WRITE;
/*!40000 ALTER TABLE `tramp` DISABLE KEYS */;
INSERT INTO `tramp` VALUES (1,2,'O',2,'SOA','My First Sizing',2004,'M','This depends on everyone working overtime, including holidays and Christmans. ',9.99,2.2,3.3,4.4,5.5,6.6,7.7,8.8,9.9,10.01,11.11,12.12,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,2,'',2,'Team2','New Web Serice.',2006,'W','Just a guess. ',8,8,9,98,8.23,8,8,8,8,8,88,8,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,'D',4,'CC-Conv','07 Initial Estimate',2007,'M','Must verify cash flows with Finance. ',5,6,7,7,8,8,8,9,9,10.3,12,2,1,37,1,NULL,0,'2006-01-01 08:00:00','2007-01-03 10:56:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tramp` ENABLE KEYS */;
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
