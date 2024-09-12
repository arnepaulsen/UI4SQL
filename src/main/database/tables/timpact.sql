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
-- Table structure for table `timpact`
--

DROP TABLE IF EXISTS `timpact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timpact` (
  `impact_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `type_cd` char(3) DEFAULT NULL,
  `level_cd` char(1) DEFAULT NULL,
  `project_delay_cd` varchar(100) DEFAULT NULL,
  `impact_area` varchar(100) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `mitigation_blob` varchar(1024) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`impact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timpact`
--

LOCK TABLES `timpact` WRITE;
/*!40000 ALTER TABLE `timpact` DISABLE KEYS */;
INSERT INTO `timpact` VALUES (1,3,'CARD PRNT OP','New Design For Cards','EXP','H','N','Branches','blah, blah','',6,1,1,1,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,1,'BRANCH 98DF','Teller Statinos','EXP','H','Y','Branch Tellsers','The workstations.','Construction.',13,1,37,0,NULL,NULL,'2006-01-01 08:00:00','2022-03-24 03:38:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,5,'IMP-123','impact arene','EXP','','','ADF','FDS',NULL,0,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,1,'BF_IMT_123','Impacts To Go.','EXP','M','Y','AFD','fafd','',22,NULL,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2007-12-24 07:23:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,1,'ad089df','No Queries','CUS','M','Y','adf','adf','',13,1,37,1,NULL,0,'2006-01-01 08:00:00','2007-12-24 11:34:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(57,1,'TWICE','Test SetRow Twice','EXP','L','N','me','','',22,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(58,1,'3 times','Set Row Three Times','EXP','L','N','','','',22,1,1,1,NULL,NULL,'2006-01-01 08:00:00','2005-12-20 06:38:00','2005-12-20 06:38:00',NULL,NULL,'N','N',NULL,NULL,NULL),(59,1,'1','Only Set-Row Once','EXP','L','N','Plugin Faster','description description description description description 333','migration migration  migration  migration  migration  migration 222',22,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00','2006-08-22 04:45:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(66,27,'RX','Rx Discontinue','EMP','L','Y','','Rx needs to have original MRN for the discontinue message.','',37,37,NULL,NULL,NULL,NULL,'2007-01-24 03:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `timpact` ENABLE KEYS */;
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
