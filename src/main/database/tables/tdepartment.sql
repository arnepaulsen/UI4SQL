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
-- Table structure for table `tdepartment`
--

DROP TABLE IF EXISTS `tdepartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdepartment` (
  `dept_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `dept_ref` varchar(12) DEFAULT NULL,
  `dept_name` varchar(64) DEFAULT NULL,
  `dept_desc` varchar(255) DEFAULT NULL,
  `dept_mgr_id` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdepartment`
--

LOCK TABLES `tdepartment` WRITE;
/*!40000 ALTER TABLE `tdepartment` DISABLE KEYS */;
INSERT INTO `tdepartment` VALUES (1,3,'NW-ASSET','Assets','A group full of our best people, and Arne too.',2,1,'2006-01-01 08:00:00',1,'2005-06-17 06:06:00'),(2,4,'LT-234','Little Dept','arne',7,1,'2006-01-01 08:00:00',1,'2005-05-14 00:00:00'),(3,4,'GEO-34','georgia 2','arne',1,1,'2006-01-01 08:00:00',1,'2005-10-23 10:09:00'),(4,2,'URO-W','Eurpoean Salesl','arne',1,1,'2006-01-01 08:00:00',37,'2022-03-02 08:58:00'),(5,1,'SBS','Small Business Systems','Market to...',22,1,'2006-01-01 08:00:00',1,'2005-10-12 10:32:00'),(6,1,'SCP','Small Consumer Products','Systems for dolls.',22,1,'2006-01-01 08:00:00',37,'2007-12-24 07:24:00');
/*!40000 ALTER TABLE `tdepartment` ENABLE KEYS */;
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
