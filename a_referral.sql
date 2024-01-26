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
-- Table structure for table `referral`
--

DROP TABLE IF EXISTS `referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `referral` (
  `nr_customerID` int NOT NULL,
  `or_customerID` int NOT NULL,
  `discountAmount` int NOT NULL,
  KEY `nr_customerID_idx` (`nr_customerID`),
  KEY `or_customerID_idx` (`or_customerID`),
  CONSTRAINT `nr_customerID` FOREIGN KEY (`nr_customerID`) REFERENCES `newcustomeid` (`n_customerID`),
  CONSTRAINT `or_customerID` FOREIGN KEY (`or_customerID`) REFERENCES `oldcustomer` (`o_customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral`
--

LOCK TABLES `referral` WRITE;
/*!40000 ALTER TABLE `referral` DISABLE KEYS */;
INSERT INTO `referral` VALUES (71,97,82),(84,95,63),(88,18,74),(44,89,32),(33,93,42),(98,11,49),(63,65,36),(93,96,51),(83,45,47),(95,7,15),(63,13,73),(59,56,26),(22,30,76),(94,10,70),(46,44,24),(22,78,88),(18,99,99),(93,79,71),(70,77,4),(63,51,94),(24,100,60),(70,42,91),(83,4,27),(8,82,57),(68,35,38),(5,58,89),(10,63,9),(86,30,53),(7,46,87),(98,71,64),(1,49,18),(53,56,82),(18,24,39),(81,88,31),(30,75,33),(9,85,85),(91,49,20),(20,11,92),(2,99,55),(28,80,49),(65,38,10),(59,32,58),(48,92,77),(8,10,62),(80,11,75),(82,35,52),(86,20,69),(79,49,65),(62,92,89),(85,82,54),(63,20,70),(3,95,5),(1,50,47),(69,41,90),(71,47,69),(53,14,77),(2,12,82),(3,1,11),(68,40,14),(93,57,99),(36,47,32),(69,98,85),(37,35,86),(3,14,46),(65,17,22),(90,12,83),(87,24,79),(56,56,6),(23,58,73),(14,72,83),(13,72,87),(68,66,83),(20,53,52),(31,14,97),(25,4,43),(80,12,56),(68,46,14),(33,71,2),(46,12,13),(35,77,34),(51,77,29),(11,42,66),(48,50,96),(52,2,67),(59,38,72),(73,53,75),(32,50,89),(90,100,74),(29,11,29),(39,93,58),(88,72,48),(11,32,51),(84,74,60),(84,67,99),(98,22,87),(5,88,76),(12,49,89),(52,22,65),(49,18,20),(49,35,45),(71,39,4),(61,35,62),(8,64,14),(82,19,38),(2,9,54),(90,22,11),(22,56,15),(11,36,94),(64,54,19),(56,39,45),(83,62,40),(43,10,44),(73,47,59),(13,33,27),(68,32,67),(6,93,62),(30,81,45),(28,64,61),(89,77,13),(73,79,57),(61,26,93),(35,59,90),(6,14,58),(10,18,41),(88,39,9),(36,1,39),(70,51,6),(73,43,91),(85,80,15),(5,49,3),(23,43,44),(41,57,83),(3,43,14),(27,56,87),(76,84,22),(19,77,95),(97,18,32),(92,39,67),(51,42,23),(10,78,71),(39,89,21),(21,26,43),(73,62,72),(31,41,55),(73,23,60),(50,51,30),(87,41,52),(70,38,81),(43,95,24),(50,89,24);
/*!40000 ALTER TABLE `referral` ENABLE KEYS */;
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
