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
-- Table structure for table `tdivision`
--

DROP TABLE IF EXISTS `tdivision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdivision` (
  `division_id` int(10) NOT NULL AUTO_INCREMENT,
  `div_name` varchar(64) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `default_project_id` int(10) DEFAULT NULL,
  `div_mgr_id` int(10) DEFAULT NULL,
  `div_desc` varchar(255) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdivision`
--

LOCK TABLES `tdivision` WRITE;
/*!40000 ALTER TABLE `tdivision` DISABLE KEYS */;
INSERT INTO `tdivision` VALUES (1,'Medical Records','CD',1,3,'Delivery of the HC platform.',1,'2006-01-01 08:00:00',37,'2022-04-05 10:42:00'),(2,'Shared Services','',26,3,'',1,'2006-01-01 08:00:00',37,'2022-03-02 08:58:00'),(3,'Enterprice Architecture','',4,4,'Blah... blahBlah..',1,'2006-01-01 08:00:00',37,'2007-10-30 12:10:00'),(4,'Systems Integration','',2,78,'',1,'2006-01-01 08:00:00',37,'2009-07-22 06:11:00'),(5,'Business Information Office','NCAL-BIO',0,1,'',1,'2006-01-01 08:00:00',37,'2022-03-11 12:19:00'),(6,'Information Technology','KPIT',30,120,'All NCAL legacy applications.',37,'2008-05-02 11:01:00',37,'2022-03-11 12:19:00'),(7,'Legacy','LEG',NULL,84,'',37,'2009-09-10 10:47:00',NULL,NULL);
/*!40000 ALTER TABLE `tdivision` ENABLE KEYS */;
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
