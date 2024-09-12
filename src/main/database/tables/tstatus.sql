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
-- Table structure for table `tstatus`
--

DROP TABLE IF EXISTS `tstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tstatus` (
  `status_id` int(10) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) DEFAULT NULL,
  `stakeholder_id` int(10) DEFAULT NULL,
  `title_nm` varchar(100) DEFAULT NULL,
  `reference_nm` varchar(100) DEFAULT NULL,
  `override_level_cd` char(1) DEFAULT NULL,
  `effective_dt` datetime DEFAULT NULL,
  `type_cd` char(3) DEFAULT NULL,
  `status_cd` varchar(4) DEFAULT NULL,
  `desc_blob` varchar(1024) DEFAULT NULL,
  `notes_blob` varchar(1024) DEFAULT NULL,
  `bottleneck_blob` varchar(1024) DEFAULT NULL,
  `next_blob` varchar(1024) DEFAULT NULL,
  `authorized_uid` varchar(100) NOT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_flag` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(100) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tstatus`
--

LOCK TABLES `tstatus` WRITE;
/*!40000 ALTER TABLE `tstatus` DISABLE KEYS */;
INSERT INTO `tstatus` VALUES (1,1,1,'Get the project off the ground and all the sponsors to approve.','kjkdjf','2','2006-05-02 00:00:00','H','R','Did all my homework, Mrs. Hess.','My pc is slow. ','Tin is messing things up with all the PM talk. ','get done. ','',1,37,0,0,0,NULL,'2008-04-07 09:26:00',NULL,NULL,'','','','','0'),(2,1,1,'Target April as go-live for the Techmunicator roll-out','d','1','2005-05-01 00:00:00','H','Y','vlahs','','','','',1,0,0,0,0,NULL,NULL,NULL,NULL,'','','','','0'),(3,1,1,'Project is on hold for scope evaluation','Call Center Impact','1','2005-05-11 00:00:00','H','Y','vlahs','','','','',1,0,0,0,0,NULL,NULL,NULL,NULL,'','','','','0'),(4,1,1,'Delay Due to Middleware Design Flaws','eis','','2006-03-27 00:00:00','H','G','- Researched ?root cause? of CPM problem reported by Mike F. regarding Bridges ?incorrectly now posting inactive status instead of soft delete? ? resolved, not caused by Bridges.\r\n\r\n- Usual ADT ticket for patient not in Grasp, but have some info to do root-cause analysis and possibly lead to solution.  Hyperspace user should not be able to double-bed patients which creates conflict in ADT.\r\n','- PC refresh\r\n- Research EPT items used for language and history of change\r\n- Production support to resolve or reassign Remedy tickets \r\n','\r\n- HIC/BIC go-live starting 4/8\r\n- Support shadow migration to Napa\r\n- Nevi project overview\r\n- Get info to understand scope of ePremis and TPL automation projects\r\n','- Replicate account/coverage linkage root cause in WITS\r\n- Allow PARRs to cancel ?pre-charted appointments?\r\n- COB ad-hoc drops and run full extract\r\n','',1,37,0,0,0,NULL,'2008-04-07 10:37:00',NULL,NULL,'','','','','0'),(6,1,1,'Back on Track Again','eis','','2006-03-27 00:00:00','W','G','Initial design. ','','','','',1,0,0,0,0,NULL,NULL,NULL,NULL,'','','','','0');
/*!40000 ALTER TABLE `tstatus` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-10  9:58:25
