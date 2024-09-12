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
-- Table structure for table `thc_bfq`
--

DROP TABLE IF EXISTS `thc_bfq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thc_bfq` (
  `bfq_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `product_id` int(10) DEFAULT NULL,
  `type_cd` char(2) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `size_cd` char(1) DEFAULT NULL,
  `priority_cd` varchar(4) DEFAULT NULL,
  `reason_cd` varchar(4) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `version_nm` varchar(8) DEFAULT NULL,
  `status_tx` varchar(100) DEFAULT NULL,
  `measure_cd` char(3) DEFAULT NULL,
  `measure_qty` int(10) DEFAULT NULL,
  `accepted_flag` char(1) DEFAULT NULL,
  `budgeted_cd` char(1) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `requestor_uid` int(10) DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `reason_blob` longtext DEFAULT NULL,
  `result_blob` longtext DEFAULT NULL,
  `alternative_blob` longtext DEFAULT NULL,
  `qualify_blob` longtext DEFAULT NULL,
  `rejection_blob` longtext DEFAULT NULL,
  `areas_blob` longtext DEFAULT NULL,
  `data_blob` longtext DEFAULT NULL,
  `process_blob` longtext DEFAULT NULL,
  `goals_blob` longtext DEFAULT NULL,
  `current_blob` longtext DEFAULT NULL,
  `scope_blob` longtext DEFAULT NULL,
  `solution_blob` longtext DEFAULT NULL,
  `costs_blob` longtext DEFAULT NULL,
  `impacts_blob` longtext DEFAULT NULL,
  `required_dt` datetime DEFAULT NULL,
  `accept_dt` datetime DEFAULT NULL,
  `request_dt` datetime DEFAULT NULL,
  `proposal_dt` datetime DEFAULT NULL,
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
  PRIMARY KEY (`bfq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thc_bfq`
--

LOCK TABLES `thc_bfq` WRITE;
/*!40000 ALTER TABLE `thc_bfq` DISABLE KEYS */;
/*!40000 ALTER TABLE `thc_bfq` ENABLE KEYS */;
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
