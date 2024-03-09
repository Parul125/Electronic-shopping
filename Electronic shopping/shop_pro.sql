CREATE DATABASE  IF NOT EXISTS `shop_pro` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `shop_pro`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: shop_pro
-- ------------------------------------------------------
-- Server version	5.5.25a

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `p_id` int(30) DEFAULT NULL,
  `p_name` varchar(40) DEFAULT NULL,
  `qty` int(40) DEFAULT NULL,
  `price` int(40) DEFAULT NULL,
  `image` blob,
  `user_id` int(40) DEFAULT NULL,
  `user_email` varchar(40) DEFAULT NULL,
  `a_price` int(20) DEFAULT NULL,
  `product_detail` varchar(100) DEFAULT NULL,
  `discount` int(30) DEFAULT NULL,
  `i_discount` int(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `p_id` int(20) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `qty` int(30) DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `image` blob,
  `user_id` int(30) DEFAULT NULL,
  `user_email` varchar(40) DEFAULT NULL,
  `a_price` int(40) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,'Laptop',1,35000,'laptop.jpg',2,'7140rs@gmail.com',35000,'Cancelled'),(3,'Washing Machine',1,10000,'wm.jpg',2,'7140rs@gmail.com',10000,'Delivered'),(3,'Dell Laptop',1,25000,'laptop.jpg',2,'7140rs@gmail.com',25000,'Delivered'),(14,'HP Envey',1,32000,'hp1.jpg',2,'7140rs@gmail.com',32000,'Dispatched');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(30) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(20) DEFAULT NULL,
  `price` int(30) DEFAULT NULL,
  `Product_details` varchar(40) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Air Conditioner',20000,'LG AC with full features ','AC and Fan','ac.jpg'),(18,'Fan',3000,'A white fan of high quality','AC and Fan','fan.jpg'),(3,'Dell Laptop',25000,'Dell Inspiron-1532','Laptops','laptop.jpg'),(4,'Washing Machine',4000,'Front Door Machine','Washing Machines','wm.jpg'),(5,'LG Referigerators',13000,'Multiple Doors Refrigerator','Refrigerators','ref2.jpg'),(6,'LG Referigerator',20000,'Refrigerator With 10 years warranty','Refrigerators','ref1.jpg'),(7,'Referigerator',10000,'Single Door ','Refrigerators','ref3.jpg'),(8,'Keyboard',500,'Logitech Wireless Keyboard','Computer and Peripherals','keyboard.jpg'),(9,'Wired Mouse',300,'Delux Brand Mouse','Computer and Peripherals','mouse.jpg'),(10,'Scannner',5000,'HP scanner','Computer and Peripherals','scanners.jpg'),(11,'Redmi Note 4',12999,'Redmi Note 4','Mobiles','m2.jpg'),(12,'iPhone 6s',29999,'Apple iPhone 6s','Mobiles','m3.jpg'),(13,'Apple Laptop ',60000,'Apple Laptop with i7 ','Laptops','a6.jpg'),(14,'HP Envey',32000,'HP 14 inches Laptop','Laptops','hp1.jpg'),(15,'Acer Laptop',30000,'Acer 15 inches Laptop','Laptops','acer.jpg'),(16,'L.C.D',12000,'Sony 32 inches LCD','T.V.','lcd.jpg'),(17,'Apple ',20000,'Apple Laptop with i7 5th Gen','Laptops','a4.jpg'),(19,'azsx',12,'NA','T.V.','bg.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(30) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `admin_name` varchar(30) DEFAULT NULL,
  `admin_pass` varchar(30) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `image` blob,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'admin','admin','admin1@admin.com','9800000000','a.jpg'),(2,'Rohit','Sharma','Rohit','Sharma','7140rs@gmail.com','9800000001','a2.jpg'),(6,'User1','user1',NULL,NULL,'user1@gmail.com','9800000003','a2.jpg'),(5,'Tajinder Singh','tajinder',NULL,NULL,'singhtajinder654@gmail.com','8196082888','a1.jpg'),(7,'user2','user2',NULL,NULL,'user2@gmail.com','9800000099','a3.jpg'),(8,'kamal','kamal',NULL,NULL,'kamal@123.com','1238906590','a.jpg'),(10,'user3','user3',NULL,NULL,'user3@gmail.com','9888888888','a2.jpg');
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

-- Dump completed on 2017-05-17 12:33:28
