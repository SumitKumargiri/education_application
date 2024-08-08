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
-- Table structure for table `md_state`
--

DROP TABLE IF EXISTS `md_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `md_state` (
  `statecode` int NOT NULL,
  `statename` text,
  PRIMARY KEY (`statecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `md_state`
--

LOCK TABLES `md_state` WRITE;
/*!40000 ALTER TABLE `md_state` DISABLE KEYS */;
INSERT INTO `md_state` VALUES (1,'Jammu & Kashmir'),(2,'Himachal Pradesh'),(3,'Punjab'),(4,'Chandigarh'),(5,'Uttarakhand'),(6,'Haryana'),(7,'Delhi'),(8,'Rajasthan'),(9,'Uttar Pradesh'),(10,'Bihar'),(11,'Sikkim'),(12,'Arunachal Pradesh'),(13,'Nagaland'),(14,'Manipur'),(15,'Mizoram'),(16,'Tripura'),(17,'Meghalaya'),(18,'Assam'),(19,'West Bengal'),(20,'Jharkhand'),(21,'Odisha'),(22,'Chhattisgarh'),(23,'Madhya Pradesh'),(24,'Gujarat'),(25,'Daman And Diu'),(26,'Dadra and Nagar Haveli and Daman And Diu'),(27,'Maharashtra'),(28,'Andhra Pradesh'),(29,'Karnataka'),(30,'Goa'),(31,'Lakshadweep'),(32,'Kerala'),(33,'Tamil Nadu'),(34,'Puducherry'),(35,'Andaman And Nicobar Islands'),(36,'Telangana'),(37,'Ladakh'),(38,'The Dadra and Nagar Haveli and Daman And Diu');
/*!40000 ALTER TABLE `md_state` ENABLE KEYS */;
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
