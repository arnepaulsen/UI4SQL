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
-- Table structure for table `tcommitment`
--

DROP TABLE IF EXISTS `tcommitment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcommitment` (
  `commitment_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `division_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(100) DEFAULT NULL,
  `status_cd` varchar(100) DEFAULT NULL,
  `ryg_cd` char(1) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `resolution_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `reason_blob` varchar(1024) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `closed_by_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
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
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `commit_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`commitment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcommitment`
--

LOCK TABLES `tcommitment` WRITE;
/*!40000 ALTER TABLE `tcommitment` DISABLE KEYS */;
INSERT INTO `tcommitment` VALUES (1,1,1,2,'SPR06','F','D','Y','L','Spring \"06 Upgrade','Deliver phase 1 CRM to all tell-servicing reps. ','99% of customer reps have CRM and are fully trained. ','Training plan is outsourced to Trainers USA Unlimited.','Will allow us to put competitors out of business, and raise our rates. ',22,37,1,37,NULL,'2006-01-01 08:00:00','2023-07-04 07:50:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2006-12-31 00:00:00','2023-07-04 00:00:00'),(2,0,1,4,'PRLD-001','F','P','Y','L','MRN Merge Capability','Bring HC in-sync with FS merge functionality.','','',' ',22,0,1,37,NULL,'2006-01-01 08:00:00','2023-07-08 03:00:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,'2006-06-01 00:00:00',NULL),(3,NULL,1,1,'INP-001','F','C','G','L','In-Patient Cliinical Roll-Out','','','','',93,NULL,37,37,NULL,'2007-02-06 02:43:00','2023-07-06 02:05:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(4,NULL,1,4,'PRLD-002','F','C','G','L','Billing Restoration and Compliance','','','','',43,NULL,37,37,NULL,'2007-02-06 02:44:00','2023-07-07 01:52:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `tcommitment` ENABLE KEYS */;
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
