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
-- Table structure for table `tassumption`
--

DROP TABLE IF EXISTS `tassumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tassumption` (
  `assumption_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `assumption_desc` varchar(255) DEFAULT NULL,
  `assumption_confirmed_uid` int(10) DEFAULT NULL,
  `confirmed_cd` char(4) DEFAULT NULL,
  `costs_cd` char(2) DEFAULT NULL,
  `priority_cd` char(2) DEFAULT NULL,
  `time_cd` char(2) DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
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
  `outcome_blob` varchar(2000) DEFAULT NULL,
  `impact_blob` varchar(2000) DEFAULT NULL,
  `contingency_blob` varchar(2000) DEFAULT NULL,
  `desc_blob` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`assumption_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tassumption`
--

LOCK TABLES `tassumption` WRITE;
/*!40000 ALTER TABLE `tassumption` DISABLE KEYS */;
INSERT INTO `tassumption` VALUES (1,10,'adsf-898df','The Big Assumption','We\"ll get there today.',0,'Y',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,8,'pqer','Test Set PRoject Id','adf',0,'n',NULL,NULL,NULL,NULL,1,1,NULL,NULL,NULL,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'ASM-D98','No delays Yet','you can never make too many assumptions.',0,'Y','Y','1','Y',22,1,37,1,NULL,0,'2006-01-01 08:00:00','2007-01-09 11:07:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'','','',''),(4,1,'adfs','Time Limit','Blah..blah',0,'N','N','0','N',0,1,37,1,NULL,0,'2006-01-01 08:00:00','2023-06-07 07:05:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'','','',''),(5,2,'asm-9834','Big Assumption #1','',0,'N',NULL,NULL,NULL,NULL,1,1,1,NULL,1,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,1,'TM-101','Tranining Manuals','Manufacturor of training manuals has capacity for 1000 manuals.',0,'N','N','1','N',0,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2009-01-14 08:58:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'','','',''),(7,1,'ABC-1233','Test New MySQL',NULL,NULL,'N','N','0','N',263,37,37,NULL,NULL,NULL,'2009-12-07 11:09:00','2022-03-08 09:13:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BLAH.','impact','why','desc');
/*!40000 ALTER TABLE `tassumption` ENABLE KEYS */;
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
