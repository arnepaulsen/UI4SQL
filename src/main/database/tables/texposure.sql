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
-- Table structure for table `texposure`
--

DROP TABLE IF EXISTS `texposure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `texposure` (
  `exposure_id` int(10) NOT NULL AUTO_INCREMENT,
  `application_id` int(10) NOT NULL,
  `project_id` int(10) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` char(3) DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `condition_blob` varchar(1024) DEFAULT NULL,
  `consequence_blob` varchar(1024) DEFAULT NULL,
  `mitigation_blob` varchar(1024) DEFAULT NULL,
  `contingency_blob` varchar(1024) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `assign_to_uid` int(10) DEFAULT NULL,
  `probability_pct` int(10) DEFAULT NULL,
  `state_cd` char(3) DEFAULT NULL,
  `exposure_amt` int(10) DEFAULT NULL,
  `loss_amt` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`exposure_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `texposure`
--

LOCK TABLES `texposure` WRITE;
/*!40000 ALTER TABLE `texposure` DISABLE KEYS */;
INSERT INTO `texposure` VALUES (1,13,0,'AR-001','CS','ARs Forgiven W/O Authorization','','Cummulative losses.','Create report to CFO of a/r write-offs.','File insurance claims. Today.','The payroll clerk can write-off a/r to friends that are under $500, and no one would know. The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.',2,20,'PND',1000,5000,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-09 01:31:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(2,13,0,'LN-001','PO','Loans Exteneded to Insiders',NULL,'Loan losses','mitagation','conting','A loan could be granted to friend and/or accomplise of a Credit Officer. ',360,10,'NEW',1000,0,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-08 09:57:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(3,13,0,'AR-001','INV','ARs Forgiven W/O Authorization 2','','Cummulative losses.','Create report to CFO of a/r write-offs.','File insurance claims.','The payroll clerk can write-off a/r to friends that are under $500, and no one would know. The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.The payroll clerk can write-off a/r to friends that are under $500, and no one would know.',2,50,'NEW',200,5000,1,37,NULL,NULL,NULL,'2006-01-01 08:00:00','2022-03-07 10:35:00',NULL,NULL,NULL,'N','N',NULL,NULL,NULL),(4,13,0,'EX-AR-01','0','Add Revenue Mis-Appropriated',NULL,'','','hi arne','',2,0,'0',0,0,1,37,1,NULL,NULL,'2005-12-20 06:48:00','2022-03-07 09:52:00','2005-12-20 06:48:00',NULL,NULL,'N','N',NULL,NULL,NULL),(5,13,NULL,'SE-001','0','Mistake Entering Profile Information',NULL,'paulsen','was','here.','arne',37,29,'NEW',1000,2000,37,37,NULL,NULL,NULL,'2007-01-09 10:30:00','2022-03-09 02:02:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,13,NULL,'XML-3','IT','Test aqdd',NULL,' consequence','migitation','contingency','desc',71,50,'WIP',50,5000,37,37,NULL,NULL,NULL,'2009-07-18 12:25:00','2022-03-08 09:13:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,13,NULL,'ref 1','IT','title 2',NULL,'cons','mitigate','contingency','desc',2,90,'PND',500,1000,37,37,NULL,NULL,NULL,'2022-03-07 11:08:00','2022-03-23 03:49:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,13,NULL,'ref 3','SL','War',NULL,'not','startl','over','why null',2,300,'NEW',400,400,37,37,NULL,NULL,NULL,'2022-03-07 02:05:00','2022-03-09 10:39:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,13,NULL,'default','SL','default',NULL,'Chasta','Why','! ','Why',2,0,'0',0,0,37,37,NULL,NULL,NULL,'2022-03-07 02:06:00','2022-03-07 09:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,13,NULL,'Ref 2','IT','Title',NULL,'Consequence','Mitigatio','Contingency','Desc',314,20,'NEW',200,1000,37,37,NULL,NULL,NULL,'2022-03-07 09:01:00','2022-03-09 02:08:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,13,NULL,'ref','IT','title name',NULL,'conse','mitagion','conseq','desc',150,40,'WIP',20000,5000,37,37,NULL,NULL,NULL,'2022-03-08 09:58:00','2022-03-08 09:58:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `texposure` ENABLE KEYS */;
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
