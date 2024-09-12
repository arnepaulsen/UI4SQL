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
-- Table structure for table `toutage`
--

DROP TABLE IF EXISTS `toutage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toutage` (
  `outage_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT 1,
  `application_id` int(10) DEFAULT NULL,
  `host_id` int(10) DEFAULT NULL,
  `interface_id` int(10) DEFAULT NULL,
  `instance_id` int(10) DEFAULT NULL,
  `procedure_id` int(10) DEFAULT NULL,
  `instance_cd` varchar(5) DEFAULT NULL,
  `event_id` int(10) DEFAULT NULL,
  `pr_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `plan_hours_tx` varchar(10) DEFAULT NULL,
  `act_hours_tx` varchar(10) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `outage_time` datetime DEFAULT NULL,
  `start_dttm` datetime DEFAULT NULL,
  `end_dttm` datetime DEFAULT NULL,
  `outage_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `full_flag` varchar(1) DEFAULT NULL,
  `status_cd` varchar(3) DEFAULT NULL,
  `planned_cd` varchar(1) DEFAULT NULL,
  `impact_cd` varchar(1) DEFAULT NULL,
  `rfc_no` int(10) DEFAULT NULL,
  `pr_no` int(10) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `contact_uid` int(10) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `resolution_blob` varchar(1024) DEFAULT NULL,
  `cause_blob` varchar(1024) DEFAULT NULL,
  `communication_blob` varchar(1024) DEFAULT NULL,
  `mitigation_blob` varchar(1024) DEFAULT NULL,
  `eta_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `followup_blob` varchar(1024) DEFAULT NULL,
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
  PRIMARY KEY (`outage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toutage`
--

LOCK TABLES `toutage` WRITE;
/*!40000 ALTER TABLE `toutage` DISABLE KEYS */;
INSERT INTO `toutage` VALUES (1,1,NULL,27,19,NULL,3,NULL,NULL,NULL,'Membership Systems Feb Outage','1','','1234456',NULL,'2008-02-10 02:00:00','1900-01-01 00:00:00',NULL,NULL,'UPG','N','O','Y','H',2200275,0,81,37,'','','','','','','Health Connect, IEve, CDR.','',37,37,NULL,NULL,NULL,'2006-10-25 06:47:00','2022-03-10 10:41:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,NULL,21,38,NULL,4,NULL,NULL,NULL,'EMPI Spring 07 Upgrade','7','','98989898',NULL,'2008-01-12 02:20:00',NULL,NULL,NULL,'UPG','N','O','N','M',2200275,0,103,31,'','','','','','','Health Connect.','',37,37,NULL,NULL,NULL,'2008-01-28 04:59:00','2008-02-04 04:18:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,NULL,21,NULL,NULL,4,NULL,NULL,NULL,'RILIS Bi-Weekly Maintenance','2','',NULL,NULL,'2008-01-13 01:00:00',NULL,NULL,NULL,'UPG','N','O','Y','M',0,0,95,85,'','','','','','','Health Connect.','',37,37,NULL,NULL,NULL,'2008-01-29 05:03:00','2008-04-04 03:54:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,0,30,38,0,7,'',0,0,'HC Spring 07 Upgrade','8','','98989898','1900-01-01 00:00:00','2008-03-15 01:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','1900-01-01 00:00:00','UPG','Y','O','Y','H',2200275,0,3,10,'','','','','','','CIPS/CDR, All mainframe.','',37,37,NULL,0,NULL,'2008-01-29 05:06:00','2022-03-02 09:46:00',NULL,'1900-01-01 00:00:00',NULL,'','','','',''),(5,1,0,30,38,0,4,'',0,0,'HC February Partial Outage - Clinical Results','1.5','','98989898','1900-01-01 12:00:00','2008-02-23 01:00:00','1900-01-01 12:00:00','1900-01-01 12:00:00','1900-01-01 12:00:00','UPG','N','O','Y','H',0,0,10,10,'','','','','','','CIPS/CDR, All mainframe.','',37,37,NULL,0,NULL,'2008-02-04 09:14:00','2022-04-04 03:57:00',NULL,'1900-01-01 12:00:00',NULL,'','','','','');
/*!40000 ALTER TABLE `toutage` ENABLE KEYS */;
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
