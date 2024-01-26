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
-- Table structure for table `newcustomeid`
--

DROP TABLE IF EXISTS `newcustomeid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newcustomeid` (
  `n_customerID` int NOT NULL,
  `n_customeref` int NOT NULL,
  PRIMARY KEY (`n_customerID`),
  KEY `n_customeref_idx` (`n_customeref`),
  CONSTRAINT `n_customeref` FOREIGN KEY (`n_customeref`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newcustomeid`
--

LOCK TABLES `newcustomeid` WRITE;
/*!40000 ALTER TABLE `newcustomeid` DISABLE KEYS */;
INSERT INTO `newcustomeid` VALUES (16,1),(53,1),(18,3),(44,3),(71,3),(80,3),(6,5),(74,6),(95,6),(33,7),(39,9),(65,9),(82,9),(17,11),(62,11),(88,14),(27,15),(40,15),(32,16),(5,18),(10,18),(94,18),(4,19),(50,19),(21,20),(100,23),(59,24),(20,28),(30,31),(34,31),(48,31),(56,31),(84,31),(19,33),(78,33),(7,37),(29,37),(51,38),(31,39),(3,43),(93,43),(98,44),(83,45),(55,46),(81,46),(96,46),(64,47),(77,48),(72,50),(76,50),(35,54),(58,54),(26,55),(52,55),(14,58),(38,59),(8,61),(13,61),(73,61),(41,64),(68,65),(69,65),(46,66),(25,68),(63,68),(66,68),(43,69),(67,70),(97,70),(22,71),(70,71),(47,74),(57,74),(90,75),(42,77),(24,78),(15,79),(54,79),(37,80),(45,81),(87,81),(36,82),(75,82),(99,83),(2,84),(86,85),(60,86),(61,86),(9,90),(12,91),(1,92),(49,92),(23,94),(85,94),(91,95),(79,96),(92,97),(11,98),(89,99),(28,100);
/*!40000 ALTER TABLE `newcustomeid` ENABLE KEYS */;
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
