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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `supplier` (
  `s_tradingID` int NOT NULL,
  `supplierName` varchar(45) NOT NULL,
  `supplierID` int NOT NULL,
  PRIMARY KEY (`supplierID`),
  KEY `s_tradingID_idx` (`s_tradingID`),
  CONSTRAINT `s_tradingID` FOREIGN KEY (`s_tradingID`) REFERENCES `trading` (`tradingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (41,'Berry, Collins and Johnson',1),(43,'Winters-Fritz',2),(28,'Jones Inc',3),(26,'Smith-Rogers',4),(2,'Moore, Melton and Campbell',5),(48,'Nunez Group',6),(40,'Kennedy Inc',7),(13,'Massey, Valencia and Cox',8),(29,'Hurst-Casey',9),(38,'Snyder Inc',10),(28,'Stark, Alvarado and Miles',11),(25,'Marshall and Sons',12),(1,'Hickman LLC',13),(46,'Barker-Potter',14),(14,'Reyes LLC',15),(14,'Pratt, Dickson and Powell',16),(18,'Morgan-Rivera',17),(49,'Smith Inc',18),(46,'White-Frye',19),(5,'Hartman, Acosta and Patrick',20),(37,'Bentley-Mckinney',21),(7,'Miller, Banks and Wells',22),(35,'Villanueva, Parker and Coleman',23),(12,'Leach Inc',24),(24,'Hansen-Perez',25),(21,'Long-Griffith',26),(13,'Adams, Mann and Waters',27),(30,'Butler, Johnson and Decker',28),(8,'Lawrence PLC',29),(17,'Shaw-Diaz',30),(43,'Williams-Pacheco',31),(32,'Nunez, Jordan and Hurst',32),(34,'Mathews-Knapp',33),(41,'Reynolds-Adams',34),(21,'Gallegos-Burke',35),(39,'Kim Ltd',36),(25,'Roberts Inc',37),(40,'Patterson LLC',38),(26,'Williams-Jacobson',39),(38,'Henry, Burns and Smith',40),(8,'Clark and Sons',41),(23,'Dickerson Group',42),(23,'Mills-Gray',43),(30,'Jones, Hamilton and Thomas',44),(40,'Griffin, Flores and Norton',45),(12,'Vaughn-Eaton',46),(44,'Hall, Goodwin and Norman',47),(46,'Cooper Ltd',48),(20,'Ryan-Tucker',49),(40,'Palmer-Estrada',50),(38,'Miller, Hill and Wood',51),(6,'Gibbs-Ho',52),(44,'Johnson-Bailey',53),(9,'Morris-Moreno',54),(21,'Willis-Hernandez',55),(8,'Schmidt PLC',56),(16,'Jackson and Sons',57),(20,'White-Smith',58),(8,'Bell, Stewart and Alexander',59),(12,'Gonzales Ltd',60),(24,'Bowman, Patrick and Leon',61),(45,'Mason-Cox',62),(10,'Smith-Moss',63),(33,'Turner and Sons',64),(25,'Smith, Anderson and Bryant',65),(27,'Larsen-Cook',66),(39,'Thomas Inc',67),(9,'Farmer, Page and Bailey',68),(37,'Miller-Becker',69),(25,'Lam PLC',70),(28,'Adams Group',71),(12,'Jones, Vang and Knight',72),(32,'Orr, Robinson and Curtis',73),(41,'Luna, Anderson and Richardson',74),(35,'Jordan-Hull',75),(45,'White PLC',76),(42,'Williamson-Huber',77),(12,'West and Sons',78),(36,'Blevins-Lambert',79),(11,'Duncan, Douglas and Johnson',80);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
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
