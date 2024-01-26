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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `customerName` varchar(145) DEFAULT NULL,
  `customerAddress` varchar(145) DEFAULT NULL,
  `customerContact` bigint DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Alicia Davila','5364 Kelly Valleys, Devonton, OK 05839',4786547466),(2,'Francisco Smith','13266 Valerie Summit Apt. 055, North Karentown, NH 32458',7483472021),(3,'Stephanie Turner','3203 Mccann Well Suite 111, Jamesburgh, GU 45975',4840725959),(4,'Brian Gomez','USNS Bailey, FPO AP 97911',9399563060),(5,'Jason Wilson','591 Mitchell Manors, Wayneborough, WA 81658',2849036977),(6,'Katelyn Martinez','4296 Bell Square, Maldonadoville, KY 73898',9382976402),(7,'Douglas Browning','496 Brooks Station, Katelynville, AK 04919',1612000805),(8,'Kimberly Weaver','3132 Lucero Rapid Apt. 172, Port Kathleenmouth, WY 84468',1935423062),(9,'Ebony Knight','464 Brandi Tunnel Apt. 734, Lopezmouth, MT 18808',4290135149),(10,'Benjamin Jones','Unit 6946 Box 8773, DPO AP 30779',1970319526),(11,'Brianna Mcdonald','18300 Graham Prairie Suite 531, South Richard, DC 97762',3859084372),(12,'Lynn Baker','3436 Pollard Villages Suite 375, Hawkinsmouth, SC 73307',7087455568),(13,'James Davis','5760 Torres Greens, Harringtonland, WY 71062',3517300837),(14,'Kelly Nelson','PSC 6811, Box 5207, APO AA 78365',5119142671),(15,'Dennis Hoffman','233 Jennifer Extensions, Bishopberg, WY 48204',4185867677),(16,'Jacob Edwards','08252 Cain Centers Suite 809, Lake Ashleyfurt, RI 85923',8407497073),(17,'Mario Summers','350 Ferguson Drives Suite 542, Lake Nicholasshire, TN 13214',9957508765),(18,'Joshua Chavez','16141 Thomas Lights, East Nicholasland, MI 49108',7914700007),(19,'Victoria Gregory','6385 Kevin Causeway, West Michelleton, AK 35597',9304056492),(20,'Alexandria Williams','2633 Debbie Grove Apt. 631, Miketown, NC 30655',7431541616),(21,'Jeffery Parker','916 Jeremiah Glen, North Stacy, CT 55114',5704466619),(22,'Valerie Robinson','572 Berry Rest, Michaelchester, IA 82032',1477818448),(23,'Tonya Nelson DVM','334 Tina Rapids, South Tracymouth, HI 69760',7079318479),(24,'Curtis Mullins','60417 Foster Oval Apt. 297, Tonymouth, FL 82417',7839472691),(25,'Terry Martin','PSC 0981, Box 0228, APO AE 17713',3634711490),(26,'John Wright','947 Nancy Wells, Lake Daryl, VI 52654',5036585630),(27,'Renee Garcia','PSC 0519, Box 7756, APO AA 83681',7082520388),(28,'Katrina Sanders','7265 Santos Lane, Cookhaven, MT 59918',8422290820),(29,'Eric Mccoy','0336 Gerald Ranch, Lake Charles, AR 43820',1767061642),(30,'Angelica Weeks','0535 Gary Mews, West Olivia, KS 90746',9835504030),(31,'Ashley Avila','21398 Fisher Trafficway, New Erichaven, AS 13811',8439501933),(32,'Joanna Lee','53094 Andrew Lodge, Lake Mitchellborough, NH 31225',7835257431),(33,'Debra Maldonado','88701 Oscar Haven, Tylerton, SC 53710',1260957526),(34,'Patrick Thomas','USNV Rodriguez, FPO AE 78666',3211346306),(35,'Amanda Solis','006 William Streets Apt. 063, Downshaven, WA 63170',2376135994),(36,'Brandon Mitchell','95834 Jones Parkways Suite 811, Hicksfurt, DC 97076',4751186677),(37,'Jessica Bishop','076 Paul Mountain, East Ashley, WI 41970',147528644),(38,'Sandra Hinton','232 Michael Rue, Jonesburgh, TX 15100',4159133953),(39,'Justin Long','5670 Obrien Trace Apt. 777, Robertshire, AZ 50218',4680897630),(40,'Paul Calderon','78093 Cunningham Roads Apt. 462, Linburgh, MH 38233',9223752363),(41,'Alan Miller','24775 Brittany Trace, Johnsonstad, IA 46415',4133028212),(42,'Tonya Costa','36618 Tom Lock, Reginafort, MS 61187',9640809729),(43,'Michael Black','958 Raymond Track, East Andrea, MD 77530',4104724510),(44,'David Caldwell','7286 Sara Village, West Lisa, VI 27727',2286788416),(45,'Billy Orozco','6718 Campbell Harbors, Lake Tina, AK 09374',5166105170),(46,'Gregory Lawrence','742 Young Dale, North Christybury, IL 22516',1622247457),(47,'Patricia Curtis','65093 Kenneth Points, Port Francisco, KS 36706',7289650656),(48,'Jasmine Padilla','USNS Stevens, FPO AP 40756',1575609466),(49,'Sarah Rivas','899 Marcus Spur Apt. 789, Port Heatherton, FM 51064',934885685),(50,'Karen Hill','097 Kyle Locks Suite 170, Hendrickstown, IL 36889',6483037085),(51,'David Flowers','81821 Welch Glens, Stevenland, AS 00897',2200092570),(52,'Jordan Christensen','08541 Berger Brook, Kathleenville, AS 94823',9485043311),(53,'Alejandra Bird','330 Tina Haven, Tinafurt, MA 24228',5572767006),(54,'Nicholas Roberts','155 Brooks Vista, Maryshire, MS 18644',4376211547),(55,'Judy Blackburn','640 Larson Orchard, Port Timothyside, MH 66613',1268898201),(56,'Tiffany Gonzalez','PSC 6709, Box 7090, APO AA 96401',3950930655),(57,'Steven Scott','43078 Gail Walk, West Beckyland, OK 15356',1962716572),(58,'James Cain','247 Sarah Greens Apt. 394, South Alexander, IA 76697',9993463179),(59,'Zachary White','378 Rush Parks, New Dawnton, IN 16221',1450504525),(60,'Anthony Duke','29853 Simmons Junction, Johnmouth, GA 70270',7834770519),(61,'Amy Proctor','33489 Mandy Roads Apt. 362, South Taylorport, MI 05152',1033056202),(62,'Ryan Booth','35161 Joanne Pines Apt. 521, Lake Alyssafort, VA 25281',2698844358),(63,'Joseph Perkins','125 Bryan Field Suite 478, Wilsonview, IL 74208',3279784570),(64,'Kevin Cherry','38676 Sara Glen Suite 581, North Melanie, TX 44364',7050034580),(65,'Jenny Fernandez','164 Kyle Route Suite 076, Mannmouth, NH 88791',4577497323),(66,'Hannah Yates','0291 Richardson Bypass Suite 997, West Katherinechester, NM 22546',1501426208),(67,'Jacqueline Ruiz','USNV Phillips, FPO AE 05335',4482800497),(68,'James Stewart','62577 Arnold Crossing, West Henry, OH 43974',2043622901),(69,'Lisa Brewer','USNV Gill, FPO AP 21601',465681050),(70,'Curtis Huang','090 Kimberly Coves Apt. 518, Brandonmouth, MN 20011',4660030711),(71,'Kristin Rosario','824 David Gardens Apt. 507, Port Jacquelineview, AS 66052',3085536047),(72,'Jennifer Wilcox','7921 Erika Trace Apt. 524, South Keith, GU 44562',3716401157),(73,'Rebecca Gillespie','80980 Williams Lakes Suite 877, Gaymouth, TN 58328',7823536998),(74,'Jonathan Jimenez','19789 Justin Skyway, Everettberg, AK 18154',5265262489),(75,'Christina Greene','684 Collier Terrace, Howeside, KY 78040',1688633828),(76,'Cheyenne Brown','762 Schneider Expressway Suite 066, North Martinland, ME 69228',6572964932),(77,'Matthew Myers','2447 Matthew Square Suite 641, South Mary, CA 77185',8818755967),(78,'Lisa Schmidt','9941 Morales Valley, Aliciahaven, AS 85495',3892379574),(79,'Amanda Cruz','PSC 4103, Box 1062, APO AA 07989',1439845034),(80,'Bradley Smith','78117 Owens Track Suite 999, West Jessicachester, AK 09436',8213246590),(81,'Mr. Cristian Davis','9427 Tyler Shoal, Farleymouth, MA 99745',7058309251),(82,'Karen Pearson','6195 Fisher Plain Suite 729, Brandtton, MN 11019',3341552340),(83,'Sara Lee','79178 Francis Groves Suite 039, Williamsfort, PA 34523',4407921698),(84,'Eric Velez','61061 Reynolds Overpass, West Jennifermouth, WY 31500',6317103166),(85,'Michaela Chandler','469 Hampton Stravenue Suite 675, Lake Bryanstad, CT 30599',9439689544),(86,'Jonathan Callahan','732 Mark Greens, Obrienberg, MD 80407',801104141),(87,'Sabrina Wilson','418 Baldwin Plain Apt. 504, Jadefurt, PW 23144',4216261519),(88,'Michelle Campbell','98098 Latasha Points Suite 328, Robersonport, LA 01047',5733382920),(89,'Kristin Taylor','72331 Hudson Common, Rickyland, NC 10835',8325823071),(90,'Monica Jones','PSC 6259, Box 8453, APO AA 31145',5497417780),(91,'Glenda Mckenzie','3323 Robert Street, South Stephen, ID 84466',9965941055),(92,'Brian Peters','61247 Jennifer Junctions, East Keithstad, PR 10188',8280498221),(93,'Jason Owens','Unit 4602 Box 4755, DPO AA 79928',3431594894),(94,'Rachel Gonzalez','PSC 3875, Box 7987, APO AA 75848',4511334299),(95,'Jason Graham','641 Wendy Land Apt. 223, Bishopmouth, MD 47831',8145614683),(96,'Ernest Morales','2896 Johnson Center, Lake Belinda, VI 76843',5588653561),(97,'Mr. Jared Lewis IV','397 Frank Gateway, Whiteville, VA 50488',7767468689),(98,'Matthew Smith','6809 Joshua Mall, East Danamouth, DE 34729',4568899158),(99,'Stephanie Gilbert','Unit 8984 Box 3755, DPO AA 94135',8769842212),(100,'Patrick Pierce','620 Aaron Crest, South Annside, NH 66135',8448891504);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-26 15:29:32
