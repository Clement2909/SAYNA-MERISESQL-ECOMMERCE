-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Victorin',21),(2,'Marie',22);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'electronics'),(2,'clothes'),(3,'books'),(4,'sport'),(5,'toy'),(6,'home');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custommer`
--

DROP TABLE IF EXISTS `custommer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `custommer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip_code` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `custommer_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custommer`
--

LOCK TABLES `custommer` WRITE;
/*!40000 ALTER TABLE `custommer` DISABLE KEYS */;
INSERT INTO `custommer` VALUES (1,'John','Doe','john.doe@example.com','123-456-7890','USA','New York','10001','123 Main St',1),(2,'Jane','Smith','jane.smith@example.com','987-654-3210','USA','Los Angeles','90001','456 Elm St',2),(3,'Alice','Johnson','alice.johnson@example.com','555-555-5555','USA','Chicago','60601','789 Oak St',3),(4,'Bob','Williams','bob.williams@example.com','111-222-3333','USA','Houston','77001','567 Pine St',4),(5,'Eva','Martin','eva.martin@example.com','777-888-9999','USA','Miami','33101','234 Beach Rd',5),(6,'Kwesi','Amissah-Arthur','kwesi.arthur@example.com','233-244-567890','Ghana','Cape Coast','00233','Pedu Rd',6),(7,'Isabel','Dos Santos','isabel.dos.santos@example.com','244-926-123456','Angola','Luanda','1000','Miramar',7),(8,'Idriss','Déby','idriss.deby@example.com','235-662-111222','Chad','NDjamena','01 BP 109','Presidential Palace',8),(9,'Marc','Ravalomanana','marc.ravalomanana@example.com','261-20-1234567','Madagascar','Antananarivo','101','Iavoloha',9),(10,'Ntsay','Christian','christian.ntsay@example.com','261-20-9876543','Madagascar','Antananarivo','101','Ambohitsorohitra',10),(11,'Jean','Rajaonarimampianina','jean.rajaonarimampianina@example.com','261-20-5555555','Madagascar','Antananarivo','101','Iavoloha',11),(12,'Andry','Rajoelina','andry.rajoelina@example.com','261-20-7777777','Madagascar','Antananarivo','101','Ambohitsorohitra',12),(13,'Hery','Rajaonarimampianina','hery.rajaonarimampianina@example.com','261-20-8888888','Madagascar','Antananarivo','101','Iavoloha',13),(14,'Didier','Ratsiraka','didier.ratsiraka@example.com','261-53-1234567','Madagascar','Toamasina','501','Toamasina I',14),(15,'Kwame','Nkrumah','kwame.nkrumah@example.com','233-244-123456','Ghana','Accra','GA1','1 Independence Ave',15),(16,'Nelson','Mandela','nelson.mandela@example.com','27-123-456789','South Africa','Johannesburg','2000','46664 Vilakazi St',16),(17,'Haile','Selassie','haile.selassie@example.com','251-911-987654','Ethiopia','Addis Ababa','1000','Imperial Palace',17),(18,'Wangari','Maathai','wangari.maathai@example.com','254-722-555555','Kenya','Nairobi','00100','Karura Forest',18),(19,'Léopold','Sédar Senghor','leopold.senghor@example.com','221-777-111222','Senegal','Dakar','BP 98','Avenue Léopold Sédar Senghor',19),(20,'Clement','Randria','clement@gmail.com','225-757-111222','Madagascar','Ambohijanaka','BP 100','Avenue Lord',20);
/*!40000 ALTER TABLE `custommer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ordered_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `amount` int NOT NULL,
  `custommer_id` int DEFAULT NULL,
  `statu_id` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `custommer_id` (`custommer_id`),
  KEY `statu_id` (`statu_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custommer_id`) REFERENCES `custommer` (`id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`statu_id`) REFERENCES `statu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-08-01 10:00:00','2023-08-02 15:00:00',1450,1,4),(2,'2023-08-02 11:30:00','2023-08-03 14:45:00',200,2,4),(3,'2023-08-03 09:15:00','2023-08-04 12:30:00',50,3,4),(4,'2023-08-04 13:00:00','2023-08-05 16:15:00',30320,4,4),(5,'2023-08-05 14:30:00','2023-08-06 18:30:00',100,5,4),(6,'2023-08-06 10:45:00','2023-08-07 13:45:00',725,6,4),(7,'2023-08-07 12:00:00','2023-08-08 15:15:00',2240,7,4),(8,'2023-08-08 08:15:00','2023-08-09 11:30:00',180,8,4),(9,'2023-08-09 14:00:00','2023-08-10 17:30:00',9054,9,4),(10,'2023-08-10 09:30:00','2023-08-11 12:45:00',120,10,4),(11,'2023-08-11 11:45:00','2023-08-12 14:30:00',2350,11,4),(12,'2023-08-12 13:30:00','2023-08-13 16:15:00',7450,12,4),(13,'2023-08-13 15:00:00','2023-08-14 18:30:00',180,13,4),(14,'2023-08-14 10:15:00','2023-08-15 13:45:00',160,14,4),(15,'2023-08-15 12:30:00','2023-08-16 15:15:00',9540,15,4),(16,'2023-08-16 08:45:00','2023-08-17 11:30:00',200,16,4),(17,'2023-08-17 14:15:00','2023-08-18 17:30:00',1310,17,4),(18,'2023-08-18 09:00:00','2023-08-19 12:45:00',130,18,4),(19,'2023-08-19 10:45:00','2023-08-20 13:30:00',750,19,4),(20,'2023-08-20 13:30:00','2023-08-21 16:15:00',2050,20,4),(21,'2023-08-21 10:00:00','2023-08-22 15:00:00',130,7,4),(22,'2023-08-22 11:30:00','2023-08-23 14:45:00',180,8,4),(23,'2023-08-23 09:15:00','2023-08-24 12:30:00',90,9,4),(24,'2023-08-24 13:00:00','2023-08-25 16:15:00',300,10,4),(25,'2023-08-25 14:30:00','2023-08-26 18:30:00',120,5,4),(26,'2023-08-26 10:45:00','2023-08-27 13:45:00',100,8,4),(27,'2023-08-27 12:00:00','2023-08-28 15:15:00',220,6,4),(28,'2023-08-28 08:15:00','2023-08-29 11:30:00',140,6,4),(29,'2023-08-29 14:00:00','2023-08-30 17:30:00',160,2,4),(30,'2023-08-30 09:30:00','2023-08-31 12:45:00',110,20,4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` int NOT NULL,
  `stock` int NOT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Smartphone','High-quality smartphone with advanced features',600,100,1),(2,'Laptop','Powerful laptop for work and entertainment',900,50,1),(3,'T-shirt','Comfortable cotton t-shirt for everyday wear',20,200,2),(4,'Jeans','Stylish denim jeans for a casual look',40,100,2),(5,'Novel','Bestselling novel by a renowned author',13,150,3),(6,'Textbook','Educational textbook for students',50,80,3),(7,'Football','Official size and weight football for matches',30,50,4),(8,'Running Shoes','Lightweight and durable running shoes',80,120,4),(9,'Action Figure','Popular action figure from a famous franchise',15,80,5),(10,'Board Game','Engaging board game for family fun',25,100,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'admin'),(2,'custommer');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statu`
--

DROP TABLE IF EXISTS `statu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statu`
--

LOCK TABLES `statu` WRITE;
/*!40000 ALTER TABLE `statu` DISABLE KEYS */;
INSERT INTO `statu` VALUES (1,'pending'),(2,'in_progress'),(3,'shipped'),(4,'delivered'),(5,'canceled');
/*!40000 ALTER TABLE `statu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'John','John123;',2),(2,'Jane','Jane123;',2),(3,'Alice','Alice123;',2),(4,'Bob','Bob123;',2),(5,'Eva','Eva123;',2),(6,'Kwesi','Kwesi',2),(7,'Isabel','Isabel',2),(8,'Idriss','Idriss',2),(9,'Marc','Marc',2),(10,'Ntsay','Ntsay',2),(11,'Jean','Jean',2),(12,'Andry','Andry',2),(13,'Hery','Hery',2),(14,'Didier','Didier',2),(15,'Kwane','Kwane',2),(16,'Nelson','Nelson',2),(17,'Haile','Haile',2),(18,'Wangari','Wangari',2),(19,'Leopold','Leopold',2),(20,'Clement','Clement',2),(21,'Victorin','Victorin',1),(22,'Marie','Marie',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-25 10:12:36
