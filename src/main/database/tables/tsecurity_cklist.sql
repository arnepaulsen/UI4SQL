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
-- Table structure for table `tsecurity_cklist`
--

DROP TABLE IF EXISTS `tsecurity_cklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsecurity_cklist` (
  `security_cklist_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `application_id` int(10) DEFAULT NULL,
  `version_nm` varchar(32) DEFAULT NULL,
  `version_date` datetime DEFAULT NULL,
  `section_cd` varchar(4) DEFAULT NULL,
  `phase_cd` varchar(16) DEFAULT NULL,
  `title_nm` varchar(128) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `status_cd` varchar(12) DEFAULT NULL,
  `q01_cd` varchar(16) DEFAULT NULL,
  `q02_cd` varchar(16) DEFAULT NULL,
  `q03_cd` varchar(16) DEFAULT NULL,
  `q04_cd` varchar(16) DEFAULT NULL,
  `q05_cd` varchar(16) DEFAULT NULL,
  `q06_cd` varchar(16) DEFAULT NULL,
  `q07_cd` varchar(16) DEFAULT NULL,
  `q08_cd` varchar(16) DEFAULT NULL,
  `q09_cd` varchar(16) DEFAULT NULL,
  `q10_cd` varchar(16) DEFAULT NULL,
  `q11_cd` varchar(16) DEFAULT NULL,
  `q12_cd` varchar(16) DEFAULT NULL,
  `q13_cd` varchar(16) DEFAULT NULL,
  `q14_cd` varchar(16) DEFAULT NULL,
  `q15_cd` varchar(16) DEFAULT NULL,
  `q16_cd` varchar(16) DEFAULT NULL,
  `q01_rmk` longtext DEFAULT NULL,
  `q02_rmk` longtext DEFAULT NULL,
  `q03_rmk` longtext DEFAULT NULL,
  `q04_rmk` longtext DEFAULT NULL,
  `q05_rmk` longtext DEFAULT NULL,
  `q06_rmk` longtext DEFAULT NULL,
  `q07_rmk` longtext DEFAULT NULL,
  `q08_rmk` longtext DEFAULT NULL,
  `q09_rmk` longtext DEFAULT NULL,
  `q10_rmk` longtext DEFAULT NULL,
  `q11_rmk` longtext DEFAULT NULL,
  `q12_rmk` longtext DEFAULT NULL,
  `q13_rmk` longtext DEFAULT NULL,
  `q14_rmk` longtext DEFAULT NULL,
  `q15_rmk` longtext DEFAULT NULL,
  `q16_rmk` longtext DEFAULT NULL,
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
  PRIMARY KEY (`security_cklist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsecurity_cklist`
--

LOCK TABLES `tsecurity_cklist` WRITE;
/*!40000 ALTER TABLE `tsecurity_cklist` DISABLE KEYS */;
INSERT INTO `tsecurity_cklist` VALUES (1,1,0,'',NULL,'S02','','','','','0','0','0','0','0','0','0','N','','','','','','','','','asdf','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,4,'',NULL,'S04','DSN','','','','2','E','0','0','0','0','0','','','','','','','','','','It\"s slow, and you can\"t join to other database calls. ','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,3,'3.4',NULL,'S03','RQR','','','O','N','N','0','0','0','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,3,3,'',NULL,'S04','DSN','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,1,4,'4',NULL,'S04','RQR','','','O','2','0','0','0','0','0','0','','','','','','','','','','yah. ','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,25,81,NULL,NULL,'S03','IPP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-03 01:30:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,25,81,'4',NULL,'S03','IPP',NULL,NULL,'O','Y','N','R','0','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,37,NULL,NULL,NULL,'2022-03-03 01:30:00','2022-03-03 01:31:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,25,81,NULL,NULL,'S02','IPP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-03-03 01:32:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,1,81,NULL,NULL,'S04','IPP',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,37,NULL,NULL,NULL,NULL,'2022-04-04 08:55:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tsecurity_cklist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:25
