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
-- Table structure for table `tpoint_rule`
--

DROP TABLE IF EXISTS `tpoint_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpoint_rule` (
  `point_rule_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `module_chg_simple_flt` float DEFAULT NULL,
  `module_new_simple_flt` float DEFAULT NULL,
  `module_chg_medium_flt` float DEFAULT NULL,
  `module_new_medium_flt` float DEFAULT NULL,
  `module_chg_complex_flt` float DEFAULT NULL,
  `module_new_complex_flt` float DEFAULT NULL,
  `interface_chg_simple_flt` float DEFAULT NULL,
  `interface_new_simple_flt` float DEFAULT NULL,
  `interface_chg_medium_flt` float DEFAULT NULL,
  `interface_new_medium_flt` float DEFAULT NULL,
  `interface_chg_complex_flt` float DEFAULT NULL,
  `interface_new_complex_flt` float DEFAULT NULL,
  `data_chg_simple_flt` float DEFAULT NULL,
  `data_new_simple_flt` float DEFAULT NULL,
  `data_chg_medium_flt` float DEFAULT NULL,
  `data_new_medium_flt` float DEFAULT NULL,
  `data_chg_complex_flt` float DEFAULT NULL,
  `data_new_complex_flt` float DEFAULT NULL,
  `report_chg_simple_flt` float DEFAULT NULL,
  `report_new_simple_flt` float DEFAULT NULL,
  `report_chg_medium_flt` float DEFAULT NULL,
  `report_new_medium_flt` float DEFAULT NULL,
  `report_chg_complex_flt` float DEFAULT NULL,
  `report_new_complex_flt` float DEFAULT NULL,
  `gui_chg_simple_flt` float DEFAULT NULL,
  `gui_new_simple_flt` float DEFAULT NULL,
  `gui_chg_medium_flt` float DEFAULT NULL,
  `gui_new_medium_flt` float DEFAULT NULL,
  `gui_chg_complex_flt` float DEFAULT NULL,
  `gui_new_complex_flt` float DEFAULT NULL,
  `added_id` int(10) DEFAULT NULL,
  `updated_id` int(10) DEFAULT NULL,
  `submitted_id` int(10) DEFAULT NULL,
  `approved_id` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  PRIMARY KEY (`point_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpoint_rule`
--

LOCK TABLES `tpoint_rule` WRITE;
/*!40000 ALTER TABLE `tpoint_rule` DISABLE KEYS */;
INSERT INTO `tpoint_rule` VALUES (1,1,'Normal Function Pt','',NULL,3.5,2.1,3.1,4.3,6,9.5,2,2,3,4,5,6,1,2,3,4,4,5,1.1,2.2,3,4.5,5.5,6.6,3,10,5,20,10,50,1,1,0,0,'2005-11-01 08:36:00','2005-11-02 08:17:00',NULL,NULL),(2,1,'High-Side Rule','',NULL,10,20,30,40,50,60,10,40,20,50,30,60,10,20,20,40,30,60,10,40,20,80,30,100,10,30,20,40,30,50,1,1,0,0,'2005-11-01 12:37:00','2005-11-02 08:49:00',NULL,NULL),(3,1,'Conservative Rule','',NULL,30,30,30,30,30,30,40.5,40.5,40.5,40.5,40.5,40.5,4,4,4,4,4,4,5,5,5,5,5,5,4,4,4,4,4,4,1,1,0,0,'2005-11-01 12:47:00','2005-11-02 08:48:00',NULL,NULL);
/*!40000 ALTER TABLE `tpoint_rule` ENABLE KEYS */;
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
