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
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `sno` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'dhairya','hi','dhairya@gmail.com'),(2,'dhairya','hi,well done','dhairya@gmail.com'),(3,'','',''),(4,'','',''),(5,'','',''),(6,'','',''),(7,'','',''),(8,'','',''),(9,'','',''),(10,'','',''),(11,'','',''),(12,'','',''),(13,'','',''),(14,'','',''),(15,'','',''),(16,'','',''),(17,'','',''),(18,'','',''),(19,'','',''),(20,'','',''),(21,'','',''),(22,'','',''),(23,'','',''),(24,'','',''),(25,'','',''),(26,'','',''),(27,'','',''),(28,'','',''),(29,'','',''),(30,'','',''),(31,'','',''),(32,'','',''),(33,'','',''),(34,'','',''),(35,'','',''),(36,'','',''),(37,'','',''),(38,'','',''),(39,'','',''),(40,'','',''),(41,'','',''),(42,'','',''),(43,'','',''),(44,'','',''),(45,'','',''),(46,'','',''),(47,'','',''),(48,'','',''),(49,'','',''),(50,'','',''),(51,'','',''),(52,'','',''),(53,'','',''),(54,'','',''),(55,'','',''),(56,'','',''),(57,'','',''),(58,'','',''),(59,'','',''),(60,'','',''),(61,'','',''),(62,'','',''),(63,'Dhairya','good','Dhairya@gmail.com'),(64,'','',''),(65,'Dhairya','hi','d@gmail.com'),(66,'','',''),(67,'Dhairya','hi','dhairya@gmail.com'),(68,'','',''),(69,'heena','hena','heena'),(70,'','',''),(71,'','',''),(72,'','',''),(73,'','',''),(74,'','',''),(75,'','',''),(76,'','',''),(77,'','',''),(78,'','',''),(79,'','',''),(80,'','',''),(81,'','',''),(82,'','',''),(83,'','',''),(84,'','',''),(85,'Dhairya','wd','Q@gmail.com'),(86,'Dhairya','da','dhairya'),(87,'dhairya','good work','d@gmai.com'),(88,'Dhairua','good work','d@gmail.com'),(89,'Dhairya','hi','dai@gmai.com'),(90,'','',''),(91,'','',''),(92,'','',''),(93,'','',''),(94,'daha','2','dad'),(95,'das','ads','das');
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

-- Dump completed on 2022-05-31 12:46:33
