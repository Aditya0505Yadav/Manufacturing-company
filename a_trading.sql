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
-- Table structure for table `trading`
--

DROP TABLE IF EXISTS `trading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trading` (
  `tradingID` int NOT NULL,
  `t_plantID` int NOT NULL,
  PRIMARY KEY (`tradingID`),
  KEY `t_plantID_idx` (`t_plantID`),
  CONSTRAINT `t_plantID` FOREIGN KEY (`t_plantID`) REFERENCES `plant` (`plantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading`
--

LOCK TABLES `trading` WRITE;
/*!40000 ALTER TABLE `trading` DISABLE KEYS */;
INSERT INTO `trading` VALUES (12,1),(33,1),(9,2),(38,2),(31,3),(3,5),(14,5),(4,6),(30,6),(43,6),(15,7),(36,8),(40,8),(39,9),(2,10),(37,10),(42,10),(5,11),(11,12),(17,13),(22,14),(25,14),(7,15),(28,15),(45,15),(1,16),(13,16),(21,16),(24,16),(29,16),(50,16),(19,17),(18,18),(41,18),(32,19),(46,19),(8,20),(20,21),(23,22),(26,23),(47,24),(35,25),(44,25),(48,25),(49,25),(34,26),(6,27),(16,27),(27,27),(10,28);
/*!40000 ALTER TABLE `trading` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-26 15:29:34
