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
-- Table structure for table `tbuild_stat`
--

DROP TABLE IF EXISTS `tbuild_stat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbuild_stat` (
  `build_stat_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `trigger_cd` varchar(50) DEFAULT NULL,
  `suite_cd` varchar(50) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `year_no` int(10) DEFAULT NULL,
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
  `notes_blob` longtext DEFAULT NULL,
  `hd_jan_no` int(10) unsigned DEFAULT NULL,
  `hd_feb_no` int(10) unsigned DEFAULT NULL,
  `hd_mar_no` int(10) unsigned DEFAULT NULL,
  `hd_apr_no` int(10) unsigned DEFAULT NULL,
  `hd_may_no` int(10) unsigned DEFAULT NULL,
  `hd_jun_no` int(10) unsigned DEFAULT NULL,
  `hd_jul_no` int(10) unsigned DEFAULT NULL,
  `hd_aug_no` int(10) unsigned DEFAULT NULL,
  `hd_sep_no` int(10) unsigned DEFAULT NULL,
  `hd_oct_no` int(10) unsigned DEFAULT NULL,
  `hd_nov_no` int(10) unsigned DEFAULT NULL,
  `hd_dec_no` int(10) unsigned DEFAULT NULL,
  `sr_jan_no` int(10) unsigned DEFAULT NULL,
  `sr_feb_no` int(10) unsigned DEFAULT NULL,
  `sr_mar_no` int(10) unsigned DEFAULT NULL,
  `sr_apr_no` int(10) unsigned DEFAULT NULL,
  `sr_may_no` int(10) unsigned DEFAULT NULL,
  `sr_jun_no` int(10) unsigned DEFAULT NULL,
  `sr_jul_no` int(10) unsigned DEFAULT NULL,
  `sr_aug_no` int(10) unsigned DEFAULT NULL,
  `sr_sep_no` int(10) unsigned DEFAULT NULL,
  `sr_oct_no` int(10) unsigned DEFAULT NULL,
  `sr_nov_no` int(10) unsigned DEFAULT NULL,
  `sr_dec_no` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`build_stat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbuild_stat`
--

LOCK TABLES `tbuild_stat` WRITE;
/*!40000 ALTER TABLE `tbuild_stat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbuild_stat` ENABLE KEYS */;
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
