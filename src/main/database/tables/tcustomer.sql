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
-- Table structure for table `tcustomer`
--

DROP TABLE IF EXISTS `tcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcustomer` (
  `customer_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `internal_flag` char(1) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `cust_ref` varchar(12) DEFAULT NULL,
  `cust_name` varchar(64) DEFAULT NULL,
  `cust_desc` varchar(255) DEFAULT NULL,
  `contact_id` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcustomer`
--

LOCK TABLES `tcustomer` WRITE;
/*!40000 ALTER TABLE `tcustomer` DISABLE KEYS */;
INSERT INTO `tcustomer` VALUES (1,1,'Y','Y','TPMG','Medical Group','',1259,1,'2006-01-01 08:00:00',37,'2022-04-04 09:24:00'),(2,1,'Y','N','NCAL','Facilities','',1405,1,'2006-01-01 08:00:00',37,'2022-04-05 11:08:00'),(3,1,'N','Y','CC','Call Centers','',7,1,'2006-01-01 08:00:00',84,'2006-12-06 11:54:00'),(4,1,'N','Y','PBS','Billing Services','Money laundering fence.',1,1,'2006-01-01 08:00:00',84,'2006-12-06 11:55:00'),(5,1,'N','N','CM','Corporate Marketing','',1257,84,'2006-12-06 11:55:00',37,'2022-03-02 08:59:00');
/*!40000 ALTER TABLE `tcustomer` ENABLE KEYS */;
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
