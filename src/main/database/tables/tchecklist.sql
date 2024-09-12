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
-- Table structure for table `tchecklist`
--

DROP TABLE IF EXISTS `tchecklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tchecklist` (
  `checklist_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(64) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `version_nm` varchar(16) DEFAULT NULL,
  `version_tx` varchar(255) DEFAULT NULL,
  `version_date` datetime DEFAULT NULL,
  `notes_blob` varchar(100) DEFAULT NULL,
  `g1_st` char(1) DEFAULT NULL,
  `g1_rc` char(1) DEFAULT NULL,
  `g1_rmk` varchar(64) DEFAULT NULL,
  `g2_st` char(1) DEFAULT NULL,
  `g2_rc` char(1) DEFAULT NULL,
  `g2_rmk` varchar(64) DEFAULT NULL,
  `g3_st` char(1) DEFAULT NULL,
  `g3_rc` char(1) DEFAULT NULL,
  `g3_rmk` varchar(64) DEFAULT NULL,
  `g4_st` char(1) DEFAULT NULL,
  `g4_rc` char(1) DEFAULT NULL,
  `g4_rmk` varchar(64) DEFAULT NULL,
  `po1_st` char(1) DEFAULT NULL,
  `po1_rc` char(1) DEFAULT NULL,
  `po1_rmk` varchar(64) DEFAULT NULL,
  `po2_st` char(1) DEFAULT NULL,
  `po2_rc` char(1) DEFAULT NULL,
  `po2_rmk` varchar(64) DEFAULT NULL,
  `po3_st` char(1) DEFAULT NULL,
  `po3_rc` char(1) DEFAULT NULL,
  `po3_rmk` varchar(64) DEFAULT NULL,
  `po4_st` char(1) DEFAULT NULL,
  `po4_rc` char(1) DEFAULT NULL,
  `po4_rmk` varchar(64) DEFAULT NULL,
  `po5_st` char(1) DEFAULT NULL,
  `po5_rc` char(1) DEFAULT NULL,
  `po5_rmk` varchar(64) DEFAULT NULL,
  `po6_st` char(1) DEFAULT NULL,
  `po6_rc` char(1) DEFAULT NULL,
  `po6_rmk` varchar(64) DEFAULT NULL,
  `po7_st` char(1) DEFAULT NULL,
  `po7_rc` char(1) DEFAULT NULL,
  `po7_rmk` varchar(64) DEFAULT NULL,
  `po8_st` char(1) DEFAULT NULL,
  `po8_rc` char(1) DEFAULT NULL,
  `po8_rmk` varchar(64) DEFAULT NULL,
  `po9_st` char(1) DEFAULT NULL,
  `po9_rc` char(1) DEFAULT NULL,
  `po9_rmk` varchar(64) DEFAULT NULL,
  `po10_st` char(1) DEFAULT NULL,
  `po10_rc` char(1) DEFAULT NULL,
  `po10_rmk` varchar(64) DEFAULT NULL,
  `po11_st` char(1) DEFAULT NULL,
  `po11_rc` char(1) DEFAULT NULL,
  `po11_rmk` varchar(64) DEFAULT NULL,
  `sc1_st` char(1) DEFAULT NULL,
  `sc1_rc` char(1) DEFAULT NULL,
  `sc1_rmk` varchar(64) DEFAULT NULL,
  `sc2_st` char(1) DEFAULT NULL,
  `sc2_rc` char(1) DEFAULT NULL,
  `sc2_rmk` varchar(64) DEFAULT NULL,
  `sc3_st` char(1) DEFAULT NULL,
  `sc3_rc` char(1) DEFAULT NULL,
  `sc3_rmk` varchar(64) DEFAULT NULL,
  `sc4_st` char(1) DEFAULT NULL,
  `sc4_rc` char(1) DEFAULT NULL,
  `sc4_rmk` varchar(64) DEFAULT NULL,
  `sc5_st` char(1) DEFAULT NULL,
  `sc5_rc` char(1) DEFAULT NULL,
  `sc5_rmk` varchar(64) DEFAULT NULL,
  `sc6_st` char(1) DEFAULT NULL,
  `sc6_rc` char(1) DEFAULT NULL,
  `sc6_rmk` varchar(64) DEFAULT NULL,
  `sc7_st` char(1) DEFAULT NULL,
  `sc7_rc` char(1) DEFAULT NULL,
  `sc7_rmk` varchar(64) DEFAULT NULL,
  `sc8_st` char(1) DEFAULT NULL,
  `sc8_rc` char(1) DEFAULT NULL,
  `sc8_rmk` varchar(64) DEFAULT NULL,
  `sc9_st` char(1) DEFAULT NULL,
  `sc9_rc` char(1) DEFAULT NULL,
  `sc9_rmk` varchar(64) DEFAULT NULL,
  `sc10_st` char(1) DEFAULT NULL,
  `sc10_rc` char(1) DEFAULT NULL,
  `sc10_rmk` varchar(64) DEFAULT NULL,
  `sc11_st` char(1) DEFAULT NULL,
  `sc11_rc` char(1) DEFAULT NULL,
  `sc11_rmk` varchar(64) DEFAULT NULL,
  `i1_st` char(1) DEFAULT NULL,
  `i1_rc` char(1) DEFAULT NULL,
  `i1_rmk` varchar(64) DEFAULT NULL,
  `i2_st` char(1) DEFAULT NULL,
  `i2_rc` char(1) DEFAULT NULL,
  `i2_rmk` varchar(64) DEFAULT NULL,
  `i3_st` char(1) DEFAULT NULL,
  `i3_rc` char(1) DEFAULT NULL,
  `i3_rmk` varchar(64) DEFAULT NULL,
  `pp1_st` char(1) DEFAULT NULL,
  `pp1_rc` char(1) DEFAULT NULL,
  `pp1_rmk` varchar(64) DEFAULT NULL,
  `pp2_st` char(1) DEFAULT NULL,
  `pp2_rc` char(1) DEFAULT NULL,
  `pp2_rmk` varchar(64) DEFAULT NULL,
  `pp3_st` char(1) DEFAULT NULL,
  `pp3_rc` char(1) DEFAULT NULL,
  `pp3_rmk` varchar(64) DEFAULT NULL,
  `pp4_st` char(1) DEFAULT NULL,
  `pp4_rc` char(1) DEFAULT NULL,
  `pp4_rmk` varchar(64) DEFAULT NULL,
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
  PRIMARY KEY (`checklist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tchecklist`
--

LOCK TABLES `tchecklist` WRITE;
/*!40000 ALTER TABLE `tchecklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchecklist` ENABLE KEYS */;
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
