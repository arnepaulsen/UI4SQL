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
-- Table structure for table `trisk_plan`
--

DROP TABLE IF EXISTS `trisk_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trisk_plan` (
  `risk_plan_id` decimal(4,0) NOT NULL,
  `project_id` decimal(4,0) DEFAULT NULL,
  `title_nm` varchar(45) DEFAULT NULL,
  `reference_nm` varchar(128) DEFAULT NULL,
  `added_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `submitted_id` int(10) DEFAULT NULL,
  `approved_id` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `assessment_blob` longtext DEFAULT NULL,
  `monitoring_plan_blob` longtext DEFAULT NULL,
  `privacy_consideraions_blob` longtext DEFAULT NULL,
  `q1_blob` longtext DEFAULT NULL,
  `q2_blob` longtext DEFAULT NULL,
  `q3_blob` longtext DEFAULT NULL,
  `q4_blob` longtext DEFAULT NULL,
  `q5_blob` longtext DEFAULT NULL,
  `q6_blob` longtext DEFAULT NULL,
  `q7_blob` longtext DEFAULT NULL,
  `q8_blob` longtext DEFAULT NULL,
  `q9_blob` longtext DEFAULT NULL,
  `q10_blob` longtext DEFAULT NULL,
  `q11_blob` longtext DEFAULT NULL,
  `q12_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`risk_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trisk_plan`
--

LOCK TABLES `trisk_plan` WRITE;
/*!40000 ALTER TABLE `trisk_plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `trisk_plan` ENABLE KEYS */;
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
