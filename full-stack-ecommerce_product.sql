-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.23.04.1

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(38,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `units_in_stock` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'BOOK-TECH-1000','Blue Box vol.4','Blue Box',9.99,'https://m.media-amazon.com/images/I/51dS8NnA+AL._SX331_BO1,204,203,200_.jpg',_binary '',100,'2023-09-06 17:17:55.000000',NULL,1),(2,'BOOK-TECH-1001','Slam Dunk vol.7','Slam Dunk',9.99,'https://m.media-amazon.com/images/I/81-LCJGW7EL._AC_UL400_.jpg',_binary '',100,'2023-09-06 17:17:55.000000',NULL,1),(3,'BOOK-TECH-1002','Jujutsu Kaisen vol.1','Jujutsu Kaisen',7.98,'https://m.media-amazon.com/images/I/71PBZJaSmAL._AC_UL400_.jpg',_binary '',100,'2023-09-06 17:17:55.000000',NULL,1),(4,'BOOK-TECH-1003','Goobye Eri','Goodbye Eri',11.69,'https://m.media-amazon.com/images/I/71fgXFnzayL._AC_UL400_.jpg',_binary '',100,'2023-09-06 17:17:55.000000',NULL,1),(5,'BOOK-TECH-1004','Akane-banashi vol.1','Akane-banashi',9.99,'https://m.media-amazon.com/images/I/81dpQGga2nL._AC_UL400_.jpg',_binary '',100,'2023-09-06 17:17:55.000000',NULL,1),(6,'BOOK-TECH-1005','Zetman vol.9 ','Zetman',20.00,'https://m.media-amazon.com/images/I/51w48gMOpqL._SX347_BO1,204,203,200_.jpg',_binary '',100,'2023-09-09 13:28:25.148000',NULL,1),(7,'BOOK-TECH-1006','Dragon Ball Z - Son Goku (Crash! Battle for The Universe)','Goku',60.00,'/assets/images/products/f1.png',_binary '',100,'2023-09-09 13:28:25.148000',NULL,2),(8,'BOOK-TECH-1007','Slam Dunk - One and Only Hanamichi Sakuragi','Hanamichi',93.94,'/assets/images/products/f2.png',_binary '',100,'2023-09-09 13:28:25.148000',NULL,2),(10,'BOOK-TECH-1008',' Dragon Ball Z - Majin Buu (Vs Omnibus Beast)','Buu',89.99,'assets/images/products/f3.png',_binary '',100,'2023-09-09 13:28:25.148000','2023-09-09 13:28:25.148000',2),(11,'BOOK-TECH-1009','Hunter x Hunter: Killua Zaoldyeck Pop Up Parade','Killua',31.99,'assets/images/products/f4.png',_binary '',100,'2023-09-09 13:28:25.178000','2023-09-09 13:28:25.178000',2),(12,'BOOK-TECH-10010','Bleach: Soul Entered Model-Ichigo Kurosaki','Ichigo',17.74,'assets/images/products/f5.png',_binary '',100,'2023-09-09 13:28:25.186000','2023-09-09 13:28:25.186000',2),(13,'BOOK-TECH-10011','Kaguya-Sama: Love is War - Krunites Kaguya Shinomiya','Kaguya',19.95,'assets/images/products/f6.png',_binary '',100,'2023-09-09 13:28:25.192000','2023-09-09 13:28:25.192000',2),(14,'BOOK-TECH-10012','Spy x Family: Yor Forger Premium Figure Thorn Princess','Yor',31.95,'assets/images/products/f7.png',_binary '',100,'2023-09-09 13:28:25.199000','2023-09-09 13:28:25.199000',2),(15,'BOOK-TECH-10013','My Hero Academia - Izuku Midoriya B (Will)','Midoriya',60.00,'assets/images/products/f8.png',_binary '',100,'2023-09-09 13:28:25.206000','2023-09-09 13:28:25.206000',2),(16,'BOOK-TECH-10014','Re:Zero -Starting Life in Another World- Rem (Military Ver.)','Rem',259.99,'assets/images/products/f9.png',_binary '',100,'2023-09-09 13:28:25.213000','2023-09-09 13:28:25.213000',2),(17,'BOOK-TECH-10015','Monkey.D.Luffy -The Raid on Onigashima','Luffy',34.96,'assets/images/products/f10.png',_binary '',100,'2023-09-09 13:28:25.220000','2023-09-09 13:28:25.220000',2),(18,'BOOK-TECH-10016','Roronoa Zoro The Raid On Onigashima','Zoro',67.99,'assets/images/products/f11.png',_binary '',100,'2023-09-09 13:28:25.226000','2023-09-09 13:28:25.226000',2),(19,'BOOK-TECH-10017','Reincarnated as a Slime, Shion','Shion',46.40,'assets/images/products/f12.png',_binary '',100,'2023-09-09 13:28:25.232000','2023-09-09 13:28:25.232000',2),(20,'BOOK-TECH-10018','Jigokuraku vol.10','Jigokuraku',12.99,'https://m.media-amazon.com/images/I/810M3riMHvL._AC_UY218_.jpg',_binary '',100,'2023-09-09 13:28:25.239000','2023-09-09 13:28:25.239000',1),(21,'BOOK-TECH-10019','Chainsawman vol.4','Chainsawman',9.99,'https://m.media-amazon.com/images/I/81LNUVbUk4L._AC_UL400_.jpg',_binary '',100,'2023-09-09 13:28:25.245000','2023-09-09 13:28:25.245000',1),(22,'BOOK-TECH-10020','Bleach vol.57','Bleach',9.99,'https://m.media-amazon.com/images/I/71wrrAFlKzL._AC_UL400_.jpg',_binary '',100,'2023-09-09 13:28:25.251000','2023-09-09 13:28:25.251000',1),(23,'BOOK-TECH-10021','Dragon Ball Super vol.18','Dragon Ball Super',9.99,'https://m.media-amazon.com/images/I/81zS5yuP2mL._AC_UL400_.jpg',_binary '',100,'2023-09-09 13:28:25.259000','2023-09-09 13:28:25.259000',1),(24,'BOOK-TECH-10022','JoJo\'s Bizarre Adventure: Part 5--Golden Wind vol. 8','Jojo Part 5',15.30,'https://m.media-amazon.com/images/I/81uj1Y9qXzL._AC_UL400_.jpg',_binary '',100,'2023-09-09 13:28:25.265000','2023-09-09 13:28:25.265000',1),(25,'BOOK-TECH-10023','One Punch Man vol.26','One Punch Man',8.96,'https://m.media-amazon.com/images/I/81vrRWv6tSL._AC_UL400_.jpg',_binary '',100,'2023-09-09 13:28:25.271000','2023-09-09 13:28:25.271000',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-27 21:17:55
