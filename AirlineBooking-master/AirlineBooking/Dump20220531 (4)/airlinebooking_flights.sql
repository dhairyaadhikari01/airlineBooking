-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: airlinebooking
-- ------------------------------------------------------
-- Server version	5.7.36-log

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
-- Table structure for table `flights`
--

DROP TABLE IF EXISTS `flights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flights` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `seats` varchar(5) DEFAULT NULL,
  `flightnumber` varchar(45) DEFAULT NULL,
  `departure` varchar(20) DEFAULT NULL,
  `arrival` varchar(20) DEFAULT NULL,
  `price` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flights`
--

LOCK TABLES `flights` WRITE;
/*!40000 ALTER TABLE `flights` DISABLE KEYS */;
INSERT INTO `flights` VALUES (1,'New Delhi','Chennai','5','SpiceJet','08:40','14:25','5000'),(2,'New Delhi','Kolkata','5','IndiGo','15:22','22:15','6000'),(3,'New Delhi','Mumbai','5','Vistara','15:22','22:15','2200'),(4,'Kolkata','Mumbai','5','SpiceJet','08:40','14:25','4000'),(5,'Kolkata','Chennai','5','IndiGo','08:40','14:25','10000'),(6,'Kolkata','New Delhi','5','Vistara','15:22','22:15','7000'),(7,'Chennai','Kolkata','5','SpiceJet','08:40','14:25','8000'),(8,'Chennai','Mumbai','5','IndiGo','15:22','22:15','5000'),(9,'Chennai','New Delhi','5','Vistara','15:22','22:15','3000'),(10,'Mumbai','Kolkata','5','SpiceJet','08:40','14:25','9000'),(11,'Mumbai','Chennai','5','IndiGo','15:22','22:15','12200'),(12,'Mumbai','New Delhi','5','Vistara','08:40','14:25','7000'),(13,'New Delhi','Chennai','5','Vistara','04:20','14:25','3000'),(14,'New Delhi','Kolkata','5','spiceJet','13:55','19:20','7000'),(15,'New Delhi','Mumbai','5','IndiGo','12:30','12:30','5550'),(16,'Kolkata','Mumbai','5','Vistara','02:30','10:20','9000'),(17,'Kolkata','Chennai','5','spiceJet','07:40','12:00','8000'),(18,'Kolkata','New Delhi','5','IndiGo','12:00','18:15','4000'),(19,'Chennai','Kolkata','5','Vistara','04:20','14:25','6000'),(20,'Chennai','Mumbai','5','spiceJet','11:25','22:15','2000'),(21,'Chennai','New Delhi','5','IndiGo','01:00','03:20','7000'),(22,'Mumbai','Kolkata','5','Vistara','05:20','10:25','8500'),(23,'Mumbai','Chennai','5','spiceJet','14:20','20:15','8400'),(24,'Mumbai','New Delhi','5','IndiGo','04:10','07:25','6400');
/*!40000 ALTER TABLE `flights` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31 12:46:32
