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
-- Table structure for table `tconstraint`
--

DROP TABLE IF EXISTS `tconstraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tconstraint` (
  `constraint_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `priority_cd` varchar(10) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `impact_blob` varchar(1024) DEFAULT NULL,
  `mitigation_blob` varchar(1024) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`constraint_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tconstraint`
--

LOCK TABLES `tconstraint` WRITE;
/*!40000 ALTER TABLE `tconstraint` DISABLE KEYS */;
INSERT INTO `tconstraint` VALUES (1,1,'Time','Subject Experts','TM',NULL,NULL,'Must complete by Dec 31, 1991.<br><br>You can make your own constraint types using the \"Codes\" option in the Administration tab.',NULL,NULL,1,NULL,1,1,NULL,0,'2006-01-01 08:00:00','2005-12-19 09:03:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'BF-C-TTM','Time to Market','LG','L','O','Must be delivered by jan, 2006.','','',1,0,1,NULL,NULL,NULL,'2006-01-01 08:00:00','2006-10-16 09:15:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,3,'Unix','Volume','CAP',NULL,NULL,'Unix servers can only handle 50 transactions per second.',NULL,NULL,1,NULL,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(7,1,'FR-1','Federal Reg 1004B','T',NULL,NULL,'Must notify customer in five days of fine.',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2006-03-28 06:34:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(8,1,'FR-2','Fed Reg B','PL','L','O','Regulation b.','','',1,0,37,NULL,NULL,NULL,'2006-03-28 06:39:00','2007-12-24 08:17:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(9,1,'FR-3','Fed Reg C.','PL','L','O','Reg C-D','','',1,0,37,NULL,NULL,NULL,'2006-03-28 06:40:00','2008-12-12 11:33:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(10,1,'CON-001','DB2 Support Limited','PL','L','O','Cannot support db-2 in release 1. ','','',1,3,1,NULL,NULL,NULL,'2006-08-25 11:40:00','2006-10-12 02:23:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,1,'CON-001','DB3 Support Limited','PL','L','O','Cannot support DB-3 in release 2. ','','',1,3,NULL,NULL,NULL,NULL,'2006-08-25 11:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,1,'DB4','DB-4 Support LImited','PL','L','O','Cannot support DB-4. ','','',1,14,37,NULL,NULL,NULL,'2006-08-25 11:44:00','2023-01-12 04:51:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,1,'DB5','DB-5 Support LImited','PL','L','O','Cannot support DB-5','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 11:46:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,1,'DB6','DB-6 Support LImited','PL','L','O','Cannot support DB-6','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 11:51:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,1,'DB6','DB-7 Support LImited','PL','L','O','Cannot support DB-7','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 11:55:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 11:56:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,1,'CON-001','DB3 Support Limited','PL','L','O','Cannot support DB-3 in release 2. ','','',1,3,NULL,NULL,NULL,NULL,'2006-08-25 11:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,1,'CON-001','DB3 Support Limited','PL','L','O','Cannot support DB-3 in release 2. ','','',1,3,NULL,NULL,NULL,NULL,'2006-08-25 11:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 12:07:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 12:08:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 12:11:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,1,'CON-001','DB3 Support Limited','PL','L','O','Cannot support DB-3 in release 2. ','','',1,3,NULL,NULL,NULL,NULL,'2006-08-25 11:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,1,'CON-001','DB3 Support Limited','PL','L','O','Cannot support DB-3 in release 2. ','','',1,3,NULL,NULL,NULL,NULL,'2006-08-25 11:40:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 12:14:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,1,'DB8','DB-8 Support LImited','PL','L','O','Cannot support DB-8\r\n','','',1,14,NULL,NULL,NULL,NULL,'2006-08-25 12:26:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,1,'d','DB-12 Not supported','PL','L','O','DB-10 not supported<br>','','',1,6,1,NULL,0,NULL,'2006-08-25 12:37:00','2006-08-25 12:37:00',NULL,'1900-01-01 00:00:00',NULL,'','','','','');
/*!40000 ALTER TABLE `tconstraint` ENABLE KEYS */;
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
