-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `md_teacher`
--

DROP TABLE IF EXISTS `md_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_teacher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `username` varchar(70) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `mobile` bigint DEFAULT NULL,
  `qualifications` varchar(100) DEFAULT NULL,
  `profileImage` longtext,
  `districtcode` int DEFAULT NULL,
  `districtname` varchar(100) DEFAULT NULL,
  `statename` varchar(100) DEFAULT NULL,
  `statecode` int DEFAULT NULL,
  `createdate` datetime DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `isActive` tinyint DEFAULT NULL,
  `type` int DEFAULT NULL,
  `departmentid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `md_state_ibfk_1_idx` (`statecode`),
  KEY `md_district_ibfk_2_idx` (`districtcode`),
  KEY `md_departmentid_ibfk_4_idx` (`departmentid`),
  CONSTRAINT `md_departmentid_ibfk_4` FOREIGN KEY (`departmentid`) REFERENCES `md_course` (`id`),
  CONSTRAINT `md_district_ibfk_2` FOREIGN KEY (`districtcode`) REFERENCES `md_district` (`districtcode`),
  CONSTRAINT `md_state_ibfk_1` FOREIGN KEY (`statecode`) REFERENCES `md_state` (`statecode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_teacher`
--

LOCK TABLES `md_teacher` WRITE;
/*!40000 ALTER TABLE `md_teacher` DISABLE KEYS */;
INSERT INTO `md_teacher` VALUES (1,'Dr. V.K.','Gupta','drvkgupta','vk8732@gmail.com','Male',8978675,'Ph.D',NULL,81,'North East','Delhi',7,NULL,NULL,1,3,20),(2,'Anjali','Sharma','anjalisharma','anjali.sharma@example.com','Female',9876543211,'M.A, B.Ed',NULL,102,'Mumbai','Maharashtra',27,'2024-01-02 11:00:00','2024-01-02 11:00:00',1,3,2),(3,'Suresh','Patel','sureshpatel','suresh.patel@example.com','Male',9876543212,'M.Sc, B.Ed',NULL,103,'Ahmedabad','Gujarat',24,'2024-01-03 12:00:00','2024-01-03 12:00:00',1,3,4),(4,'Priya','Reddy','priyareddy','priya.reddy@example.com','Female',9876543213,'M.A, B.Ed',NULL,104,'Hyderabad','Telangana',36,'2024-01-04 13:00:00','2024-01-04 13:00:00',1,3,20),(5,'Amit','Singh','amitsingh','amit.singh@example.com','Male',9876543214,'M.Sc, B.Ed',NULL,105,'Lucknow','Uttar Pradesh',9,'2024-01-05 14:00:00','2024-01-05 14:00:00',1,3,34),(6,'Deepa','Iyer','deepaiyer','deepa.iyer@example.com','Female',9876543215,'M.A, B.Ed',NULL,106,'Kochi','Kerala',32,'2024-01-06 15:00:00','2024-01-06 15:00:00',1,3,3),(7,'Vijay','Desai','vijaydesai','vijay.desai@example.com','Male',9876543216,'M.Sc, B.Ed',NULL,107,'Bangalore','Karnataka',29,'2024-01-07 16:00:00','2024-01-07 16:00:00',1,3,21),(8,'Meena','Verma','meenaverma','meena.verma@example.com','Female',9876543217,'M.A, B.Ed',NULL,108,'Jaipur','Rajasthan',8,'2024-01-08 17:00:00','2024-01-08 17:00:00',1,3,20),(9,'Ravi','Nair','ravinair','ravi.nair@example.com','Male',9876543218,'M.Sc, B.Ed',NULL,109,'Thiruvananthapuram','Kerala',32,'2024-01-09 18:00:00','2024-01-09 18:00:00',1,3,34),(10,'Lakshmi','Rao','lakshmirao','lakshmi.rao@example.com','Female',9876543219,'M.A, B.Ed',NULL,110,'Visakhapatnam','Andhra Pradesh',28,'2024-01-10 19:00:00','2024-01-10 19:00:00',1,3,21);
/*!40000 ALTER TABLE `md_teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 16:41:16
