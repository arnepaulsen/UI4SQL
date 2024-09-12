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
-- Table structure for table `tattachment`
--

DROP TABLE IF EXISTS `tattachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tattachment` (
  `attachment_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `deliverable_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `url_tx` varchar(25) DEFAULT NULL,
  `desc_blob` longblob DEFAULT NULL,
  `notes_blob` varchar(100) DEFAULT NULL,
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
  `parent_id` int(10) unsigned DEFAULT NULL,
  `division_id` int(10) unsigned DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `party_uid` int(10) unsigned DEFAULT NULL,
  `file_nm` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tattachment`
--

LOCK TABLES `tattachment` WRITE;
/*!40000 ALTER TABLE `tattachment` DISABLE KEYS */;
INSERT INTO `tattachment` VALUES (1,NULL,4,'SBAR + 1','SBAR1',' ','','',37,37,NULL,NULL,NULL,'2009-12-04 04:26:00','2009-12-18 09:38:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,NULL,NULL,'C:	empsr_update.txt'),(2,NULL,4,'Twp','2','','','',37,37,NULL,NULL,NULL,'2009-12-04 04:27:00','2009-12-11 03:49:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,NULL,NULL,''),(4,NULL,4,'Root Cause Analysis ','REQR-1','','','',37,37,NULL,NULL,NULL,'2009-12-04 04:28:00','2009-12-17 07:27:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,1,NULL,NULL,'C:	empExcelOut.xls'),(15,NULL,NULL,'Powerpoint Overview of SBAR','SBAR101',NULL,_binary 'SBAR XLS','',37,37,NULL,NULL,NULL,'2009-12-18 09:09:00','2009-12-18 09:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,6,NULL,NULL,NULL,'SBAR #1 - Telemetry as a Level of Care.v.9.15.IP.KPHC.ppt'),(16,NULL,NULL,'Arne\'s Favorite Document','t02',NULL,'','',272,272,NULL,NULL,NULL,'2010-02-24 04:06:00','2010-02-24 04:06:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,NULL,NULL,NULL,NULL),(17,NULL,NULL,'arne doc','arne1',NULL,'','',272,272,NULL,NULL,NULL,'2010-02-24 04:17:00','2010-02-24 04:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,'C:	empInpatientTriageTest1.txt'),(18,NULL,NULL,'arne','arne2',NULL,'','',272,NULL,NULL,NULL,NULL,'2010-02-24 04:29:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tattachment` ENABLE KEYS */;
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
