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
-- Table structure for table `tobjective`
--

DROP TABLE IF EXISTS `tobjective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tobjective` (
  `objective_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `type_cd` varchar(50) NOT NULL,
  `status_cd` varchar(4) NOT NULL,
  `dmaic_id` varchar(50) NOT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `title_nm` varchar(64) NOT NULL,
  `measure_cd` varchar(50) NOT NULL,
  `measure_qty` int(10) NOT NULL,
  `confirmed_flag` char(1) NOT NULL,
  `verified_by_id` int(10) NOT NULL,
  `verified_dt` datetime DEFAULT NULL,
  `desc_blob` varchar(1024) NOT NULL,
  `success_blob` varchar(1024) NOT NULL,
  `result_blob` varchar(1024) NOT NULL,
  `stakeholder_resp_id` int(10) NOT NULL,
  `realize_dt` datetime DEFAULT NULL,
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
  PRIMARY KEY (`objective_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tobjective`
--

LOCK TABLES `tobjective` WRITE;
/*!40000 ALTER TABLE `tobjective` DISABLE KEYS */;
INSERT INTO `tobjective` VALUES (1,1,'  ','CMP',' ','ADFA','CIF Interfaces Conversion to SOA','A',0,'Y',202,'2005-05-12 00:00:00','Convert all interfaces from customer TCP/IP connections to SOA. ','Six Sigma Defects > .000001.','Huge loss.',13,'2006-04-01 00:00:00',1,37,37,0,NULL,'2006-01-01 08:00:00','2022-03-11 10:59:00','2022-03-11 10:25:00',NULL,NULL,'P','N','',NULL,NULL),(2,1,'  ','NEW',' ','BLAG','OBJ1','C',0,'Y',13,'0000-00-00 00:00:00','','','',366,'0000-00-00 00:00:00',1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-10 04:27:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,1,'  ','PND',' ','Times','Increase Project Timelines','A',0,'Y',0,'0000-00-00 00:00:00','Use the new CMM Lifecycle tool to manage IT projects. ','','',13,'2005-05-12 00:00:00',1,37,1,NULL,0,'2006-01-01 08:00:00','2022-03-10 04:28:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,1,'  ','NEW',' ','WEB','Consistent Web Pages','IC',0,'N',13,'0000-00-00 00:00:00','Blah','','',13,'0000-00-00 00:00:00',1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-10 04:32:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(5,1,'  ','CAN',' ','MktShare','Increase Market Share By 5%','O',5,'N',14,'2005-05-10 00:00:00','Increase market share by 5% over previous quarter.','Revenue 5% over prior quarter, ','We got 6%. ',351,'2005-05-12 00:00:00',1,37,1,NULL,NULL,'2006-01-01 08:00:00','2022-03-11 10:59:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(6,1,'  ','NEW',' ','REV-2007-01','Turn on New Billing System','IC',0,'N',0,'0000-00-00 00:00:00','Start sending bills from new system by Jan 1.','','',13,'2007-01-01 00:00:00',1,37,NULL,NULL,NULL,'2006-03-29 06:42:00','2022-03-11 10:14:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tobjective` ENABLE KEYS */;
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
