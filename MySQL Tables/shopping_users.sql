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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `enabled` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jonas','Jonaitis','$2a$10$q9ttPOBYFCtvybPjUzepx.rrY4aZJkmwsMa2M4WXo/5uUXnS0e69a','jonas@jonas.lt',1),(2,'Petras','Petraitis','$2a$10$Rsx.Re7K7Rz7DwFuxFI/e.lfoQYEQuN3zpQbSitl0iP9PxYKTZrG2','petras@petras.lt',1),(3,'Agne','Agnaite','$2a$10$wP0rK25q886PhZygDsKPOeSJKsUEZRbt5CjsOl7KIjpUhn0zhEGRu','agne@agne.lt',1),(4,'Egle','Balčiunaitė','$2a$10$zu7cd4c/TMxOt5NHmNMPkeM1h0csYcbGuwSMBED2ooLHbDDZcpt.u','egle@egle.lt',1),(5,'Simas','Vala','$2a$10$144JJHVEf/.jmMrLNi..q.ABIDK2ARgwMHI2jHqt3N/ZF6qCDIDXa','simas@simas.lt',1),(6,'Antanas','Antanaitis','$2a$10$b1yLKrsyfJ3mQJWDy4cSUOHd.gcM5Z3LI7lkphIDCRMCRJinwL33S','antanas@antanas.lt',1),(13,'a','a','$2a$10$IaOkjX3sZk5UbZ66aNW2du1k5AS/N2EAaOhJwETvzWCjfA6C5247m','a@a',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29 11:10:04
