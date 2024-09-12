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
-- Table structure for table `tpoint`
--

DROP TABLE IF EXISTS `tpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpoint` (
  `point_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `application_id` int(10) DEFAULT NULL,
  `point_rule_id` int(10) DEFAULT NULL,
  `version_nm` varchar(8) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `dept_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `total_points_no` int(10) DEFAULT NULL,
  `qty_cd` varchar(100) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `module_new_simple_qty` int(10) DEFAULT NULL,
  `module_new_medium_qty` int(10) DEFAULT NULL,
  `module_new_complex_qty` int(10) DEFAULT NULL,
  `module_chg_simple_qty` int(10) DEFAULT NULL,
  `module_chg_medium_qty` int(10) DEFAULT NULL,
  `module_chg_complex_qty` int(10) DEFAULT NULL,
  `data_new_simple_qty` int(10) DEFAULT NULL,
  `data_new_medium_qty` int(10) DEFAULT NULL,
  `data_new_complex_qty` int(10) DEFAULT NULL,
  `data_chg_simple_qty` int(10) DEFAULT NULL,
  `data_chg_medium_qty` int(10) DEFAULT NULL,
  `data_chg_complex_qty` int(10) DEFAULT NULL,
  `interface_new_simple_qty` int(10) DEFAULT NULL,
  `interface_new_medium_qty` int(10) NOT NULL,
  `interface_new_complex_qty` int(10) NOT NULL,
  `interface_chg_simple_qty` int(10) NOT NULL,
  `interface_chg_medium_qty` int(10) NOT NULL,
  `interface_chg_complex_qty` int(10) NOT NULL,
  `gui_new_simple_qty` int(10) DEFAULT NULL,
  `gui_new_medium_qty` int(10) DEFAULT NULL,
  `gui_new_complex_qty` int(10) DEFAULT NULL,
  `gui_chg_simple_qty` int(10) DEFAULT NULL,
  `gui_chg_medium_qty` int(10) DEFAULT NULL,
  `gui_chg_complex_qty` int(10) DEFAULT NULL,
  `report_new_simple_qty` int(10) DEFAULT NULL,
  `report_new_medium_qty` int(10) DEFAULT NULL,
  `report_new_complex_qty` int(10) DEFAULT NULL,
  `report_chg_simple_qty` int(10) DEFAULT NULL,
  `report_chg_medium_qty` int(10) DEFAULT NULL,
  `report_chg_complex_qty` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`point_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpoint`
--

LOCK TABLES `tpoint` WRITE;
/*!40000 ALTER TABLE `tpoint` DISABLE KEYS */;
INSERT INTO `tpoint` VALUES (1,1,3,2,'1','',0,'FPA','Preliminary FPA',2330,'','',1,3,1,2,1,1,1,2,1,2,2,2,2,5,2,1,2,2,2,2,2,4,2,3,1,2,4,2,2,4,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,25,4,1,'3','',0,'FPA-CC-892','Credit Card Posting',0,'',NULL,4,5,6,1,2,3,44,55,66,11,22,33,444,555,666,111,222,333,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tpoint` ENABLE KEYS */;
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
