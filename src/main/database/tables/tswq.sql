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
-- Table structure for table `tswq`
--

DROP TABLE IF EXISTS `tswq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tswq` (
  `swq_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) NOT NULL,
  `track_type_cd` varchar(100) DEFAULT NULL,
  `track_no` int(10) DEFAULT NULL,
  `status_cd` varchar(255) DEFAULT NULL,
  `region_cd` varchar(255) DEFAULT NULL,
  `title_nm` varchar(255) DEFAULT NULL,
  `severity_cd` varchar(2551) DEFAULT NULL,
  `charge_order_tx` varchar(255) DEFAULT NULL,
  `dlg_nm` varchar(255) DEFAULT NULL,
  `server_pkg_cd` varchar(255) DEFAULT NULL,
  `client_pkg_cd` varchar(255) DEFAULT NULL,
  `related_rn_tx` varchar(255) DEFAULT NULL,
  `adhoc_no` int(10) DEFAULT NULL,
  `rel_type_cd` varchar(255) DEFAULT NULL,
  `drop_type_cd` varchar(255) DEFAULT NULL,
  `est_drop_dt` datetime DEFAULT NULL,
  `act_drop_dt` datetime DEFAULT NULL,
  `retro_rlse_tx` varchar(255) DEFAULT NULL,
  `std_rlse_tx` varchar(255) DEFAULT NULL,
  `plan_rel_pkg_cd` varchar(255) DEFAULT NULL,
  `act_rel_pkg_cd` varchar(255) DEFAULT NULL,
  `product_cd` varchar(255) DEFAULT NULL,
  `appl_contact_nm` varchar(255) DEFAULT NULL,
  `originator_nm` varchar(255) DEFAULT NULL,
  `notes_tx` varchar(255) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `ra_approve_date` datetime DEFAULT NULL,
  `cab_approve_date` datetime DEFAULT NULL,
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
  PRIMARY KEY (`swq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tswq`
--

LOCK TABLES `tswq` WRITE;
/*!40000 ALTER TABLE `tswq` DISABLE KEYS */;
/*!40000 ALTER TABLE `tswq` ENABLE KEYS */;
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
