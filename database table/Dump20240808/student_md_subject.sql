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
-- Table structure for table `md_subject`
--

DROP TABLE IF EXISTS `md_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_subject` (
  `subjectid` int NOT NULL AUTO_INCREMENT,
  `subjectname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_subject`
--

LOCK TABLES `md_subject` WRITE;
/*!40000 ALTER TABLE `md_subject` DISABLE KEYS */;
INSERT INTO `md_subject` VALUES (161,'Fundamental Programming'),(162,'Engineering Chemistry'),(163,'Functional English'),(174,'string'),(185,'Mathematics I'),(186,'Physics I'),(187,'Chemistry I'),(188,'Engineering Mechanics'),(189,'Engineering Drawing'),(190,'Computer Programming'),(191,'Electronics I'),(192,'Mathematics II'),(193,'Physics II'),(194,'Chemistry II'),(195,'Electrical Engineering'),(196,'Thermodynamics'),(197,'Fluid Mechanics'),(198,'Material Science'),(199,'Electronics II'),(200,'Control Systems'),(201,'Signal Processing'),(202,'Mechanical Vibrations'),(203,'Heat Transfer'),(204,'Engineering Economics'),(205,'Artificial Intelligences'),(206,'Big Data');
/*!40000 ALTER TABLE `md_subject` ENABLE KEYS */;
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
