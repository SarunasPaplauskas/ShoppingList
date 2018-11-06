-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping
-- ------------------------------------------------------
-- Server version	8.0.12

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `products` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `amount` int(4) NOT NULL,
  `type` int(1) NOT NULL,
  `shop_id` int(4) NOT NULL,
  `on_purchase` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_shop_idx` (`shop_id`),
  CONSTRAINT `FK7kp8sbhxboponhx3lxqtmkcoj` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Arbuzas',1,1,3,NULL),(2,'Suris',1,1,1,'2018-10-23'),(3,'Ledai',12,1,1,NULL),(4,'Kefyras',2,1,2,'2018-10-25'),(5,'Šampūnas',1,2,2,'2018-10-22'),(6,'Dantų pasta',1,2,2,NULL),(7,'Jautiena',500,1,2,'2018-10-20'),(8,'Vištiena',800,1,3,NULL),(9,'Skūtimos peiliukai',1,2,1,NULL),(10,'Kėde',4,3,5,NULL),(11,'Stalas',1,3,5,'2018-10-26'),(12,'Batų raišteliai',1,4,4,'2018-10-26'),(13,'Gertuvė',1,4,2,'2018-10-26'),(14,'Ausinės',1,2,6,'2018-10-26'),(15,'Kumpis',500,1,6,'2018-10-26'),(16,'Batai',1,4,6,NULL),(17,'Šalikas',1,4,6,'2018-10-26'),(18,'Kojinės',4,4,2,NULL),(19,'Lazdino riešutai',200,1,3,NULL),(20,'Sultys',1,1,3,NULL),(21,'Šakutės',8,2,5,NULL),(22,'Degtukai',10,2,6,NULL),(23,'Cukrus',1,1,1,'2018-10-26'),(24,'Mielės',1,1,2,NULL),(25,'Ausų krapštukai',1,2,2,NULL),(26,'Kava',500,1,1,NULL),(27,'Arbata',100,1,6,NULL),(28,'Plaktukas',1,4,4,NULL),(29,'Kilimas',1,4,5,NULL),(30,'Kiaušiniai',10,1,3,'2018-10-26');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 11:10:03
