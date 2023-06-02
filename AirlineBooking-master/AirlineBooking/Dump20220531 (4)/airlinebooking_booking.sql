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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `noofpassenger` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `flightno` varchar(45) DEFAULT NULL,
  `source` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'das','11','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Chennai',NULL),(2,'aa','22','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(3,'aa','22','d@gmail.com','1','2022-05-11',NULL,'New Delhi','Kolkata',NULL),(4,'aa','22','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(5,'dada','2','g@gmail.com','1','2022-05-16',NULL,'Mumbai','New Delhi',NULL),(6,'dada','2','g@gmail.com','1','2022-05-16',NULL,'Mumbai','New Delhi',NULL),(7,'aa','22','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(8,'aa','22','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(9,'sadas','12','dad@gmail.oc','1','2022-05-16',NULL,'Mumbai','New Delhi',NULL),(10,'sada','2','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(11,'sad','2','d@gmail.com','1','2022-05-16',NULL,'Mumbai','Kolkata',NULL),(12,'sadsa','22','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(13,'Dhairya','24','d@gmail.com','1','2022-05-16',NULL,'Mumbai','New Delhi',NULL),(14,'dhairya','24','j@gmail.com','1','2022-05-16',NULL,'New Delhi','Chennai',NULL),(15,'Dhairya','2','q@gmail.com','1','2022-05-16',NULL,'Chennai','Kolkata',NULL),(16,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(17,'a','24','q@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(18,'a','24','q@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(19,'dsa','2','a@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(20,'d','222','d@gmail.com','1','2022-05-16',NULL,'Kolkata','New Delhi',NULL),(21,'da','2','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(22,'sa','11','d@GMAIL.COM','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(23,'dsa','2','d@gmail.com','1','2022-05-16',NULL,'New Delhi','New Delhi',NULL),(24,'dsa','2','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(25,'Dhairya','25','d@gmail.com','2','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(26,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(27,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(28,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(29,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(30,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(31,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(32,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(33,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(34,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(35,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(36,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(37,'dhairya','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(38,'das','25','w@gmail.com','6','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(39,'Dhairya Adhikari','24','dhairya.adhikari1@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(40,'Dhairya Adhikari','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Chennai',NULL),(41,'ds2','2','dsa@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(42,'sad','24','d@gmail.com','1','2022-05-17',NULL,'New Delhi','Chennai',NULL),(43,'sad','24','d@gmail.com','1','2022-05-17',NULL,'Chennai','Mumbai',NULL),(44,'sad','24','w@gmail.com','1','2022-05-17',NULL,'New Delhi','Mumbai',NULL),(45,'sa','25','d@gmail.com','3','2022-05-19',NULL,'New Delhi','Mumbai',NULL),(46,'sad','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(47,'sad','24','d@gmail.com','1','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(48,'Dhairya Adhikari','25','Dhairya@gmail.com','2','2022-05-16',NULL,'New Delhi','Mumbai',NULL),(49,'dairya','25','d@gmail.com','1','2022-05-17',NULL,'New Delhi','Mumbai',NULL),(50,'dn','2','don@gmail.com','1','2022-05-17',NULL,'Mumbai','New Delhi',NULL),(51,'Dhairya','24','dhairy@gmal.com','1','2022-05-18',NULL,'New Delhi','Chennai',NULL),(52,'Dhairya','24','dhairy@gmal.com','1','2022-05-27',NULL,'New Delhi','Chennai',NULL),(53,'Dhairya','24','dhairy@gmal.com','1','2022-05-18',NULL,'New Delhi','Chennai',NULL),(54,'dhairya','25','dhaiya@gmail.com','1','2022-05-28',NULL,'New Delhi','Kolkata',NULL),(55,'dhairya','25','dhaiya@gmail.com','1','2022-05-28',NULL,'New Delhi','Kolkata',NULL),(56,'dhairya','25','dhaiya@gmail.com','1','2022-05-16',NULL,'New Delhi','Kolkata',NULL),(57,'Dhairya','22','d@gmail.com','1','2022-05-19',NULL,'New Delhi','Mumbai',NULL),(58,'dhairya','25','q@gmail.com','1','2022-05-01',NULL,'New Delhi','Chennai',NULL),(59,'Dhairya adhikari','24','d@gmail.com','1','2022-05-02',NULL,'Chennai','New Delhi',NULL),(60,'das','2','w@gmail.com','1','2022-05-03',NULL,'Mumbai','New Delhi',NULL),(61,'ha','25','d@gmail.com','1','2022-03-03',NULL,'New Delhi','Mumbai',NULL),(62,'d','2','a@gmail.com','1','2022-05-04',NULL,'Mumbai','Kolkata',NULL);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
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
