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
-- Table structure for table `oldcustomer`
--

DROP TABLE IF EXISTS `oldcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `oldcustomer` (
  `oo_customeref` int NOT NULL,
  `o_customerID` int NOT NULL,
  PRIMARY KEY (`o_customerID`),
  KEY `oo_customerID_idx` (`oo_customeref`),
  CONSTRAINT `oo_customeref` FOREIGN KEY (`oo_customeref`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oldcustomer`
--

LOCK TABLES `oldcustomer` WRITE;
/*!40000 ALTER TABLE `oldcustomer` DISABLE KEYS */;
INSERT INTO `oldcustomer` VALUES (4,94),(5,13),(5,26),(5,99),(6,16),(6,18),(6,77),(7,33),(8,84),(9,9),(10,85),(11,52),(11,55),(11,63),(14,62),(16,37),(17,100),(18,8),(19,95),(21,93),(22,72),(24,7),(24,45),(24,58),(25,29),(26,15),(26,17),(33,25),(35,36),(35,51),(36,82),(37,30),(38,14),(38,60),(38,66),(40,20),(40,67),(41,19),(42,61),(42,64),(43,35),(44,44),(45,75),(46,31),(46,79),(47,89),(48,38),(48,49),(50,43),(51,22),(52,40),(52,88),(55,54),(55,71),(56,39),(56,56),(56,81),(57,42),(57,74),(57,98),(58,68),(58,76),(59,12),(60,3),(61,24),(62,5),(64,46),(64,48),(66,21),(66,90),(67,50),(70,23),(70,59),(78,57),(78,69),(78,96),(79,80),(81,6),(82,83),(82,87),(83,28),(84,34),(85,65),(86,86),(87,92),(87,97),(88,2),(89,47),(89,73),(90,4),(92,10),(92,70),(94,53),(94,78),(96,41),(96,91),(97,27),(100,1),(100,11),(100,32);
/*!40000 ALTER TABLE `oldcustomer` ENABLE KEYS */;
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
