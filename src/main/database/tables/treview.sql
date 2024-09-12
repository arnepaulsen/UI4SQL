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
-- Table structure for table `treview`
--

DROP TABLE IF EXISTS `treview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treview` (
  `review_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) NOT NULL,
  `type_cd` char(1) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `session_nm` varchar(12) DEFAULT NULL,
  `pass_cd` char(1) DEFAULT NULL,
  `version_tx` varchar(100) DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `results_blob` longtext DEFAULT NULL,
  `review_date` datetime DEFAULT NULL,
  `owner_uid` int(10) DEFAULT NULL,
  `leader_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `participants_tx` varchar(255) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `a01_st` char(1) DEFAULT NULL,
  `a02_st` char(1) DEFAULT NULL,
  `a03_st` char(1) DEFAULT NULL,
  `a04_st` char(1) DEFAULT NULL,
  `a05_st` char(1) DEFAULT NULL,
  `a06_st` char(1) DEFAULT NULL,
  `a07_st` char(1) DEFAULT NULL,
  `a08_st` char(1) DEFAULT NULL,
  `a09_st` char(1) DEFAULT NULL,
  `a10_st` char(1) DEFAULT NULL,
  `a11_st` char(1) DEFAULT NULL,
  `a12_st` char(1) DEFAULT NULL,
  `a13_st` char(1) DEFAULT NULL,
  `a14_st` char(1) DEFAULT NULL,
  `a15_st` char(1) DEFAULT NULL,
  `a16_st` char(1) DEFAULT NULL,
  `a17_st` char(1) DEFAULT NULL,
  `a18_st` char(1) DEFAULT NULL,
  `a19_st` char(1) DEFAULT NULL,
  `a20_st` char(1) DEFAULT NULL,
  `a21_st` char(1) DEFAULT NULL,
  `a22_st` char(1) DEFAULT NULL,
  `a23_st` char(1) DEFAULT NULL,
  `a24_st` char(1) DEFAULT NULL,
  `a25_st` char(1) DEFAULT NULL,
  `a26_st` char(1) DEFAULT NULL,
  `a27_st` char(1) DEFAULT NULL,
  `a28_st` char(1) DEFAULT NULL,
  `a29_st` char(1) DEFAULT NULL,
  `a30_st` char(1) DEFAULT NULL,
  `a31_st` char(1) DEFAULT NULL,
  `a32_st` char(1) DEFAULT NULL,
  `a33_st` char(1) DEFAULT NULL,
  `a34_st` char(1) DEFAULT NULL,
  `a35_st` char(1) DEFAULT NULL,
  `a36_st` char(1) DEFAULT NULL,
  `a37_st` char(1) DEFAULT NULL,
  `a38_st` char(1) DEFAULT NULL,
  `a39_st` char(1) DEFAULT NULL,
  `a40_st` char(1) DEFAULT NULL,
  `a01_rmk` longtext DEFAULT NULL,
  `a02_rmk` longtext DEFAULT NULL,
  `a03_rmk` longtext DEFAULT NULL,
  `a04_rmk` longtext DEFAULT NULL,
  `a05_rmk` longtext DEFAULT NULL,
  `a06_rmk` longtext DEFAULT NULL,
  `a07_rmk` longtext DEFAULT NULL,
  `a08_rmk` longtext DEFAULT NULL,
  `a09_rmk` longtext DEFAULT NULL,
  `a10_rmk` longtext DEFAULT NULL,
  `a11_rmk` longtext DEFAULT NULL,
  `a12_rmk` longtext DEFAULT NULL,
  `a13_rmk` longtext DEFAULT NULL,
  `a14_rmk` longtext DEFAULT NULL,
  `a15_rmk` longtext DEFAULT NULL,
  `a16_rmk` longtext DEFAULT NULL,
  `a17_rmk` longtext DEFAULT NULL,
  `a18_rmk` longtext DEFAULT NULL,
  `a19_rmk` longtext DEFAULT NULL,
  `a20_rmk` longtext DEFAULT NULL,
  `a21_rmk` longtext DEFAULT NULL,
  `a22_rmk` longtext DEFAULT NULL,
  `a23_rmk` longtext DEFAULT NULL,
  `a24_rmk` longtext DEFAULT NULL,
  `a25_rmk` longtext DEFAULT NULL,
  `a26_rmk` longtext DEFAULT NULL,
  `a27_rmk` longtext DEFAULT NULL,
  `a28_rmk` longtext DEFAULT NULL,
  `a29_rmk` longtext DEFAULT NULL,
  `a30_rmk` longtext DEFAULT NULL,
  `a31_rmk` longtext DEFAULT NULL,
  `a32_rmk` longtext DEFAULT NULL,
  `a33_rmk` longtext DEFAULT NULL,
  `a34_rmk` longtext DEFAULT NULL,
  `a35_rmk` longtext DEFAULT NULL,
  `a36_rmk` longtext DEFAULT NULL,
  `a37_rmk` longtext DEFAULT NULL,
  `a38_rmk` longtext DEFAULT NULL,
  `a39_rmk` longtext DEFAULT NULL,
  `a40_rmk` longtext DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treview`
--

LOCK TABLES `treview` WRITE;
/*!40000 ALTER TABLE `treview` DISABLE KEYS */;
INSERT INTO `treview` VALUES (1,1,'C','RW-9898','Module CUST-MASTER-01','1','P','Not everyone was prepared with the test output results.','No one could follow the program logic.','The module needs to be entirely re-written.','2005-05-12 00:00:00',9,22,1,NULL,1,NULL,NULL,'Morgan, Fred, Shawna Twain.','2006-01-01 08:00:00',NULL,NULL,NULL,NULL,'N','N',NULL,NULL,NULL,'N','Y','N','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N','N','N','N','N','N','Y','N','','N','N','N','N','Y','Y','Y','','N','N','N','','N','Y','Y','','','It doesn\"t handle requirements R-243 and R-989.','All values are edited against choice tables.  It\"s not possible to enter a wrong answer.  ','2','3',NULL,'','','Each one is checked for consistency with the type and range values. ',NULL,'','','','','','','','','','','','','No, we\"ll never migrate off Tandem!',NULL,'','','','','','Each program paragraph is linked backed to the design spec. ','','','','','',NULL,'','','',NULL,NULL),(2,1,'D','HLD','High-Level Design','1','P','Performance analysis cannot be evaluated as this time','The system impact analysis was not available at review time.  Megan will email it out today, and we\"ll have a follow up session on 11/12/2006','','2005-02-12 00:00:00',13,6,1,NULL,37,NULL,NULL,'Jennifer, Sarah, Megan, Bob.','2006-01-01 08:00:00',NULL,'2007-12-24 07:25:00',NULL,NULL,'N','N',NULL,NULL,NULL,'Y','N','N','Y','N','N','N','Y','N','N','N','N','N','N','N','N','N','N','N','N','','','','','','','','','','','','','','','','','','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'R','','Functional Requirements','1','P','','','Excellent. ','2005-09-12 00:00:00',22,22,1,NULL,37,NULL,NULL,'Sally, Fred, John,','2006-01-01 08:00:00',NULL,'2023-06-07 07:05:00',NULL,NULL,'N','N',NULL,NULL,NULL,'N','Y','Y','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','','','','','','','','','','','','','','','','','','','','','They are not broken out by use case, and are not even numbered.  Requirement 3 and 12 do not tie back to Voice of Customer. ','2','3','4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,27,'C',NULL,'','','U',NULL,'','','1900-01-01 00:00:00',NULL,43,37,NULL,37,NULL,NULL,'','2007-01-14 07:56:00',NULL,'2007-01-14 07:57:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,27,'D',NULL,'Impact to Ancillary Systems','3','P',NULL,'','','2007-05-12 00:00:00',NULL,43,37,NULL,37,NULL,NULL,'Jansin, Jerry, Arne, Rick','2007-01-14 08:04:00',NULL,'2007-01-14 08:05:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y',NULL,'N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `treview` ENABLE KEYS */;
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
