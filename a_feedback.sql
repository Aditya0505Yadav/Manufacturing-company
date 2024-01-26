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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `feedback` (
  `f_customerID` int NOT NULL,
  `feedbackType` varchar(45) DEFAULT NULL,
  KEY `f_customerID_idx` (`f_customerID`),
  CONSTRAINT `f_customerID` FOREIGN KEY (`f_customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (97,'Negative Feedback'),(73,'Positive Feedback'),(98,'Negative Feedback'),(75,'No Feedback'),(58,'No Feedback'),(88,'No Feedback'),(73,'No Feedback'),(83,'No Feedback'),(82,'No Feedback'),(80,'No Feedback'),(42,'No Feedback'),(81,'Positive Feedback'),(41,'Negative Feedback'),(20,'Negative Feedback'),(57,'Negative Feedback'),(9,'Negative Feedback'),(61,'Positive Feedback'),(57,'Positive Feedback'),(81,'Negative Feedback'),(39,'No Feedback'),(36,'No Feedback'),(76,'Positive Feedback'),(8,'No Feedback'),(46,'No Feedback'),(65,'No Feedback'),(10,'No Feedback'),(40,'Positive Feedback'),(60,'No Feedback'),(58,'Positive Feedback'),(5,'Positive Feedback'),(8,'No Feedback'),(48,'Negative Feedback'),(37,'Negative Feedback'),(10,'Negative Feedback'),(83,'Positive Feedback'),(12,'Positive Feedback'),(79,'No Feedback'),(77,'Positive Feedback'),(65,'Positive Feedback'),(50,'Positive Feedback'),(60,'No Feedback'),(75,'Positive Feedback'),(71,'No Feedback'),(95,'Negative Feedback'),(6,'Negative Feedback'),(58,'Positive Feedback'),(74,'Positive Feedback'),(84,'Negative Feedback'),(25,'No Feedback'),(42,'Positive Feedback'),(78,'Negative Feedback'),(61,'Positive Feedback'),(65,'Negative Feedback'),(20,'No Feedback'),(8,'No Feedback'),(58,'Negative Feedback'),(14,'No Feedback'),(44,'Negative Feedback'),(92,'No Feedback'),(11,'No Feedback'),(65,'No Feedback'),(83,'Positive Feedback'),(23,'Negative Feedback'),(6,'Negative Feedback'),(32,'No Feedback'),(91,'Positive Feedback'),(57,'Negative Feedback'),(57,'No Feedback'),(68,'No Feedback'),(67,'No Feedback'),(79,'Positive Feedback'),(21,'No Feedback'),(47,'Positive Feedback'),(48,'Negative Feedback'),(37,'No Feedback'),(50,'No Feedback'),(53,'Negative Feedback'),(100,'No Feedback'),(44,'No Feedback'),(87,'No Feedback'),(77,'No Feedback'),(7,'Positive Feedback'),(81,'Positive Feedback'),(83,'No Feedback'),(43,'Negative Feedback'),(9,'No Feedback'),(43,'Negative Feedback'),(13,'Negative Feedback'),(72,'Negative Feedback'),(87,'No Feedback'),(50,'Positive Feedback'),(37,'Negative Feedback'),(33,'No Feedback'),(93,'No Feedback'),(85,'No Feedback'),(78,'Positive Feedback'),(20,'Positive Feedback'),(43,'Negative Feedback'),(11,'No Feedback'),(75,'Negative Feedback'),(85,'No Feedback'),(19,'Negative Feedback'),(45,'Negative Feedback'),(40,'Negative Feedback'),(84,'Positive Feedback'),(90,'Negative Feedback'),(85,'No Feedback'),(51,'Positive Feedback'),(17,'No Feedback'),(77,'Positive Feedback'),(91,'Negative Feedback'),(11,'Negative Feedback'),(40,'No Feedback'),(72,'No Feedback'),(49,'Negative Feedback'),(83,'Positive Feedback'),(43,'Negative Feedback'),(17,'Negative Feedback'),(86,'No Feedback'),(90,'No Feedback'),(95,'Negative Feedback'),(88,'Positive Feedback'),(68,'Positive Feedback'),(12,'No Feedback'),(83,'Negative Feedback'),(86,'No Feedback'),(55,'Negative Feedback'),(66,'Positive Feedback'),(47,'Positive Feedback'),(3,'No Feedback'),(47,'Positive Feedback'),(40,'Positive Feedback'),(24,'Negative Feedback'),(28,'Negative Feedback'),(44,'Negative Feedback'),(99,'Positive Feedback'),(63,'Negative Feedback'),(25,'No Feedback'),(29,'Negative Feedback'),(18,'No Feedback'),(20,'Positive Feedback'),(10,'Positive Feedback'),(38,'Positive Feedback'),(13,'No Feedback'),(65,'No Feedback'),(99,'Negative Feedback'),(70,'Negative Feedback'),(95,'No Feedback'),(68,'Positive Feedback'),(5,'No Feedback'),(85,'Positive Feedback'),(44,'No Feedback'),(99,'No Feedback'),(80,'Positive Feedback'),(17,'Negative Feedback'),(77,'Negative Feedback'),(49,'No Feedback'),(20,'Negative Feedback'),(21,'Negative Feedback'),(24,'Negative Feedback'),(89,'Negative Feedback'),(99,'No Feedback'),(80,'No Feedback'),(22,'Negative Feedback'),(93,'No Feedback'),(57,'Positive Feedback'),(6,'No Feedback'),(53,'Negative Feedback'),(47,'No Feedback'),(87,'Positive Feedback'),(93,'Positive Feedback'),(31,'No Feedback'),(57,'No Feedback'),(79,'Positive Feedback'),(37,'No Feedback'),(97,'No Feedback'),(96,'No Feedback'),(58,'Positive Feedback'),(30,'Negative Feedback'),(69,'No Feedback'),(31,'Positive Feedback'),(40,'Negative Feedback'),(61,'Positive Feedback'),(25,'No Feedback'),(48,'No Feedback'),(87,'No Feedback'),(74,'No Feedback'),(57,'No Feedback'),(60,'Positive Feedback'),(99,'No Feedback'),(37,'Negative Feedback'),(100,'Positive Feedback'),(49,'No Feedback'),(65,'Positive Feedback'),(68,'No Feedback'),(54,'Negative Feedback'),(21,'No Feedback'),(26,'Positive Feedback'),(78,'Negative Feedback'),(18,'Positive Feedback');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
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
