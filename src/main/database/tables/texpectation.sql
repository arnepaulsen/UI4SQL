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
-- Table structure for table `texpectation`
--

DROP TABLE IF EXISTS `texpectation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texpectation` (
  `expectation_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `status_cd` varchar(4) NOT NULL,
  `reference_nm` varchar(32) NOT NULL,
  `title_nm` varchar(64) NOT NULL,
  `measure_cd` char(3) DEFAULT NULL,
  `measure_qty` int(10) DEFAULT NULL,
  `confirmed_flag` char(1) DEFAULT NULL,
  `verified_by_id` int(10) DEFAULT NULL,
  `verified_dt` datetime DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `success_blob` varchar(1024) DEFAULT NULL,
  `result_blob` varchar(1024) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `realize_dt` datetime DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT 0,
  `approved_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `submitted_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`expectation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texpectation`
--

LOCK TABLES `texpectation` WRITE;
/*!40000 ALTER TABLE `texpectation` DISABLE KEYS */;
INSERT INTO `texpectation` VALUES (1,1,'PND','TM-EX-01','Processing Rates','A',0,'Y',22,'1900-01-01 00:00:00','Roll-out could be delayed due to equipment receipt','Roll-out is complete. ','',18,'2005-05-01 00:00:00',1,'2005-12-02 09:31:00',37,'2007-01-09 10:02:00',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,25,'NEW','E1','Test Cycle 1 Depends on System Availability','IC',0,'N',21,NULL,'','','',6,NULL,1,'2005-12-04 11:24:00',1,'2005-12-05 08:36:00',0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,27,'NEW','eer','Mrn Old','C',NULL,'N',0,'1900-01-01 00:00:00','','','',53,'1900-01-01 00:00:00',37,'2007-01-09 09:47:00',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,27,'NEW','MRN-EX-01','Members Use Either Old or New Mrn The Same','E',NULL,'Y',0,'1900-01-01 00:00:00','','','',37,'1900-01-01 00:00:00',37,'2007-01-09 10:48:00',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `texpectation` ENABLE KEYS */;
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
