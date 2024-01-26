-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: a
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `manufacturing`
--

DROP TABLE IF EXISTS `manufacturing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `manufacturing` (
  `manufacturingID` int NOT NULL,
  `m_plantID` int NOT NULL,
  PRIMARY KEY (`manufacturingID`),
  KEY `m_plantID_idx` (`m_plantID`),
  CONSTRAINT `m_plantID` FOREIGN KEY (`m_plantID`) REFERENCES `plant` (`plantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturing`
--

LOCK TABLES `manufacturing` WRITE;
/*!40000 ALTER TABLE `manufacturing` DISABLE KEYS */;
INSERT INTO `manufacturing` VALUES (35,1),(46,1),(3,2),(37,2),(17,3),(27,3),(43,3),(10,4),(15,4),(49,4),(24,5),(19,6),(29,8),(41,8),(45,8),(2,9),(20,9),(16,10),(47,11),(7,12),(33,12),(40,12),(44,12),(38,13),(42,13),(26,14),(36,14),(21,15),(31,15),(5,16),(13,17),(23,17),(39,17),(8,18),(4,21),(11,23),(18,25),(25,27),(30,27),(50,27),(1,28),(6,28),(12,28),(14,28),(22,29),(32,29),(9,30),(28,30),(34,30),(48,30);
/*!40000 ALTER TABLE `manufacturing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-26 15:29:33
