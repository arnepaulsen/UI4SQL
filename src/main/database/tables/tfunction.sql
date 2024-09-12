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
-- Table structure for table `tfunction`
--

DROP TABLE IF EXISTS `tfunction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tfunction` (
  `function_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `keywords_tx` varchar(100) DEFAULT NULL,
  `type_cd` varchar(16) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `memo_tx` varchar(255) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `history_blob` varchar(1024) DEFAULT NULL,
  `priority_blob` varchar(1024) DEFAULT NULL,
  `initiatives_blob` varchar(1024) DEFAULT NULL,
  `owner_id` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
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
  `updated_uid` int(10) DEFAULT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tfunction`
--

LOCK TABLES `tfunction` WRITE;
/*!40000 ALTER TABLE `tfunction` DISABLE KEYS */;
INSERT INTO `tfunction` VALUES (1,1,'Customer Billing','CUST-BILL','','OS','D','Vendor is discontinuing support for current release 5.0.','Performs all aspects of customer billing, including calcuations, statementing, and reporting. ','System has major scalibility issues, and replacement with a vendor product is being considered. ','Installed in May, 2002. ','Version 2 will convert to web services architecture. ',NULL,22,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(2,1,'Payroll','Payroll','','FS','D','Peoplesoft 1.5','Payroll for all employees except senior executives. ','','','',NULL,22,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(3,1,'Teleservicing','Tele-srv','','OS','P','Vendor has gone out of business, looking for new solution.','Support for all teleservicing functions, including incoming, outgoing and marketing. ','','','',NULL,13,1,0,NULL,0,'2006-01-01 08:00:00','2022-03-02 09:17:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL,37),(4,1,'Accounting','Acct','','IM','P','Brand new system.','','','','',NULL,19,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(5,1,'ATM Servicing','ATM-SRV','','OS','D','Stable suit of system.s. no major enhancement planned.','Provide ','','','',NULL,22,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,1),(7,1,'Product Design','DESIGN','','OS','P','','','','','',NULL,21,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0),(8,1,'Card Issue','Card','','OS','D','Works great.','Issue issue and mailing. ','','','',NULL,22,1,0,NULL,0,'2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `tfunction` ENABLE KEYS */;
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
