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
-- Table structure for table `mp_attendance`
--

DROP TABLE IF EXISTS `mp_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `id` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `md_teacher_ibfk_2_idx` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_attendance`
--

LOCK TABLES `mp_attendance` WRITE;
/*!40000 ALTER TABLE `mp_attendance` DISABLE KEYS */;
INSERT INTO `mp_attendance` VALUES (1,1,2,'2024-06-25','present'),(2,1,2,'2024-07-01','Present'),(3,2,2,'2024-07-01','Present'),(4,1,3,'2024-07-01','Present'),(5,2,3,'2024-07-01','Absent'),(6,1,3,'2024-07-02','Present'),(7,1,3,'2024-07-03','Present'),(8,2,3,'2024-07-03','Present'),(9,1,3,'2024-07-03','Absent'),(10,1,2,'2024-07-04','Present'),(11,1,3,'2024-07-05','Absent'),(80,1,3,'2024-07-08','Present'),(81,1,3,'2024-07-08','Present'),(82,2,2,'2024-07-09','Absent'),(83,2,2,'2024-07-18','Absent'),(84,1,2,'2024-08-01','Present'),(85,2,2,'2024-08-01','Present'),(86,2,2,'2024-08-02','Present'),(87,3,2,'2024-08-02','Absent');
/*!40000 ALTER TABLE `mp_attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-08 16:41:17
