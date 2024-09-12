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
-- Table structure for table `tsbar`
--

DROP TABLE IF EXISTS `tsbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsbar` (
  `sbar_id` int(10) NOT NULL AUTO_INCREMENT,
  `division_id` int(10) DEFAULT NULL,
  `assigned_uid` int(10) DEFAULT NULL,
  `closed_by_uid` int(10) DEFAULT NULL,
  `added_uid` int(10) DEFAULT NULL,
  `updated_uid` int(10) DEFAULT NULL,
  `submitted_uid` int(10) DEFAULT NULL,
  `reviewed_uid` int(10) DEFAULT NULL,
  `approved_uid` int(10) DEFAULT NULL,
  `prod_rfc_no` int(10) DEFAULT NULL,
  `problem_no` int(10) DEFAULT NULL,
  `defect_no` int(10) DEFAULT NULL,
  `requestor_nm` varchar(255) DEFAULT NULL,
  `reference_nm` varchar(32) DEFAULT NULL,
  `type_cd` varchar(8) DEFAULT NULL,
  `status_cd` varchar(8) DEFAULT NULL,
  `priority_cd` varchar(1) DEFAULT NULL,
  `sub_cd` varchar(8) DEFAULT NULL,
  `approved_flag` char(1) DEFAULT NULL,
  `reviewed_flag` char(1) DEFAULT NULL,
  `id_date` datetime DEFAULT NULL,
  `install_date` datetime DEFAULT NULL,
  `closed_date` datetime DEFAULT NULL,
  `added_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `submitted_date` datetime DEFAULT NULL,
  `reviewed_date` datetime DEFAULT NULL,
  `approved_date` datetime DEFAULT NULL,
  `title_nm` varchar(64) DEFAULT NULL,
  `submitted_tx` varchar(255) DEFAULT NULL,
  `reviewed_tx` varchar(255) DEFAULT NULL,
  `approved_tx` varchar(255) DEFAULT NULL,
  `desc_blob` longtext DEFAULT NULL,
  `notes_blob` longtext DEFAULT NULL,
  `impact_blob` longtext DEFAULT NULL,
  `resolution_blob` longtext DEFAULT NULL,
  `situation_blob` longtext DEFAULT NULL,
  `background_blob` longtext DEFAULT NULL,
  `assessment_blob` longtext DEFAULT NULL,
  `recommendations_blob` longtext DEFAULT NULL,
  `combined_cat_tx` varchar(255) DEFAULT NULL,
  `progress_blob` longtext DEFAULT NULL,
  `decision_blob` longtext DEFAULT NULL,
  `follow_up_uid` int(10) unsigned DEFAULT NULL,
  `originator_uid` int(10) unsigned DEFAULT NULL,
  `approve_cd` varchar(2) DEFAULT NULL,
  `owner_nm` varchar(45) DEFAULT NULL,
  `originator_nm` varchar(45) DEFAULT NULL,
  `pm_nm` varchar(45) DEFAULT NULL,
  `workplan_present_date` datetime DEFAULT NULL,
  `proposed_solution_blob` text DEFAULT NULL,
  `implementation_date` datetime DEFAULT NULL,
  `communication_date` datetime DEFAULT NULL,
  `mitigated_steps_blob` text DEFAULT NULL,
  `workplan_recv_date` datetime DEFAULT NULL,
  `recommend_present_date` datetime DEFAULT NULL,
  `submitted_nm` varchar(45) DEFAULT NULL,
  `docushare_link_tx` varchar(128) DEFAULT NULL,
  `assigned_nm` varchar(45) DEFAULT NULL,
  `recommend_recv_date` datetime DEFAULT NULL,
  `sbar_present_date` datetime DEFAULT NULL,
  `facility_action_blob` longtext DEFAULT NULL,
  `discussion_blob` longtext DEFAULT NULL,
  PRIMARY KEY (`sbar_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsbar`
--

LOCK TABLES `tsbar` WRITE;
/*!40000 ALTER TABLE `tsbar` DISABLE KEYS */;
INSERT INTO `tsbar` VALUES (4,1,37,NULL,37,37,NULL,NULL,NULL,0,NULL,NULL,'','001',NULL,'O','L','0',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2009-12-17 05:10:00','2009-12-18 09:40:00',NULL,NULL,NULL,'SBAR 1',NULL,NULL,NULL,'Issue descriptions.......','',NULL,'','Across NCAL Med Surg and Tele units are used interchangeably\r\n KPHC offers both Med Surg and Telemetry/Med Surg as options for Level of Care\r\nSome facilities are considering eliminating their TCU/SDUs and using Tele units as next level of Care down from ICU\r\nTelemetry is currently not recognized as a unique Level of Care.  \r\nLocation of unit/bed drives hospital bed charges today\r\nOrder entry in KPHC notifies Admitting / Bed Control / House Sup when Tele is ordered through Transfer Level of Care, but not when Tele is discontinued\r\nImpacts:\r\nStaffing\r\nCensus Reconciliation\r\nBed Management\r\nBilling\r\nCompliance\r\nWorkflows\r\n\r\n','','','','','','',0,0,'U',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,1,37,NULL,37,37,NULL,NULL,NULL,0,NULL,NULL,'','001',NULL,'0','0','0',NULL,NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'2009-12-17 07:08:00','2010-06-14 04:19:00',NULL,NULL,NULL,'SBAR 5',NULL,NULL,NULL,'bar 5','',NULL,'','','','','','','','',0,0,'0','',NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','http://www.yahoo.com','','0000-00-00 00:00:00','0000-00-00 00:00:00','',''),(6,1,37,37,37,37,NULL,NULL,NULL,0,NULL,NULL,'','001',NULL,'C','M','0',NULL,NULL,'2009-12-17 00:00:00','2009-03-01 00:00:00','2009-12-18 00:00:00','2009-12-18 09:06:00','2010-02-23 11:25:00',NULL,NULL,NULL,'ED Diagnosis',NULL,NULL,NULL,'blah.','',NULL,'','Across NCAL Med Surg and Tele units are used interchangeably\r\n KPHC offers both Med Surg and Telemetry/Med Surg as options for Level of Care\r\nSome facilities are considering eliminating their TCU/SDUs and using Tele units as next level of Care down from ICU\r\nTelemetry is currently not recognized as a unique Level of Care.  \r\nLocation of unit/bed drives hospital bed charges today\r\nOrder entry in KPHC notifies Admitting / Bed Control / House Sup when Tele is ordered through Transfer Level of Care, but not when Tele is discontinued\r\nImpacts:\r\nStaffing\r\nCensus Reconciliation\r\nBed Management\r\nBilling\r\nCompliance\r\nWorkflows\r\n\r\n','Staffing\r\nNursing / patient ratio: CADPH regulations in Title 22; Nursing Contracts\r\nTCU is 1:3, Tele is 1:4, Med Surg is 1:5. \r\n\r\nCensus Reconciliation / Bed Management\r\nCensus Reconciliation is a struggle as the Level of Care designation may not match the care a patient is receiving\r\nIf there is no change in Level of Care per physician order, then the appropriate accommodations may not be utilized\r\n\r\nPotential Changes to Bed Charge Billing Tables\r\nWith new Epic functionality, potential exists to revamp bed billing table to drop charges off of Level of Care field, versus location of unit/bed\r\n\r\nWorkflows\r\nWorkflows differ amongst the facilities depending upon how they are recognizing TCU/ MedSurg Tele and Med Surg designations\r\n','Current Impact / Resolution Considerations\r\n\r\n Option # 1:  Designate Telemetry as a Separate Level of Care which ensures:\r\nconsistent workflow throughout the region\r\nnotification of key stakeholders when Telemetry is discontinued\r\nappropriately allocated resources and correct billing charges are captured.\r\nWill require a change to MD workflow\r\nFull transfer workflow including Order Reconciliation\r\nSupports potential change in KPHC bed charge build\r\n\r\nOption # 2:  Telemetry is not a separate Level of Care ? Maintain current functionality and workflows\r\nFacilities need to design internal communication system to ensure proper bed management with current workflows\r\n\r\nOption # 3:  Telemetry is not a separate Level of Care ? Adapt KPHC functionality and workflows to provide better communication when Level of Care is changed\r\n\r\n','Business decision is required\r\n\r\nClarify whether Telemetry represents the same as or a different Level of Care than Med Surg\r\nSystem and workflows to be adjusted based on decision\r\nRealignment of operations to maintain consistency across NCAL\r\n','','5/12/2009 - Reviewed situation and inital problem solution.','Decision........\r\n\r\n\r\n\r\n\r\nunlimited text.\r\n',0,103,'U','',NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL),(7,1,0,NULL,272,37,NULL,NULL,NULL,0,NULL,NULL,'','001',NULL,'O','M','0',NULL,NULL,'2009-12-17 00:00:00','2010-03-03 00:00:00',NULL,'2009-12-18 09:49:00','2010-06-14 04:24:00',NULL,NULL,NULL,'ED Diagnosis',NULL,NULL,NULL,'test test','',NULL,'','','','','','','','',262,0,'N','',NULL,'','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','');
/*!40000 ALTER TABLE `tsbar` ENABLE KEYS */;
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
