-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: zjw
-- ------------------------------------------------------
-- Server version	5.7.26

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `productId` int(200) NOT NULL,
  `num` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (101,'celia568',675,3);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlist`
--

DROP TABLE IF EXISTS `userlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlist` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `tel` bigint(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlist`
--

LOCK TABLES `userlist` WRITE;
/*!40000 ALTER TABLE `userlist` DISABLE KEYS */;
INSERT INTO `userlist` VALUES (6,'study',15911116666,'123456'),(5,'celia',13511116666,'123456'),(7,'celia568',15926019832,'123456'),(8,'celia123',13523413234,'123456');
/*!40000 ALTER TABLE `userlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zjwitems`
--

DROP TABLE IF EXISTS `zjwitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zjwitems` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `productId` mediumint(30) NOT NULL,
  `shopId` int(10) NOT NULL,
  `imageUrl` char(128) NOT NULL,
  `url` char(128) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `salePrice` decimal(10,2) NOT NULL,
  `num` int(20) NOT NULL,
  `cartImg` char(128) NOT NULL,
  `is_select` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zjwitems`
--

LOCK TABLES `zjwitems` WRITE;
/*!40000 ALTER TABLE `zjwitems` DISABLE KEYS */;
INSERT INTO `zjwitems` VALUES (1,95390,0,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/95390/1_220.png','https://www.zhongjiu.cn/productdetail/95390.htm','42度天佑德青稞酒小黑125ml×4',119.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/95390/1_50.png',0),(2,1319,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/1319/1_220.png','https://www.zhongjiu.cn/productdetail/1319.htm','53°茅台酒股份公司王子酒500ml',238.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/1319/1_50.png',0),(3,112463,2,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/112463/1_220.png','https://www.zhongjiu.cn/productdetail/112463.htm','42°天佑德17版海拔2800红盒500ml',168.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/112463/1_50.png',0),(4,331883,3,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331883/1_220.png','https://www.zhongjiu.cn/productdetail/331883.htm','53°习酒窖藏1988雅致版500ml',788.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331883/1_50.png',0),(5,331870,4,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331870/1_220.png','https://www.zhongjiu.cn/productdetail/331870.htm','53°重沙经典酒500ml',299.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/331870/1_50.png',0),(6,675,5,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/675/1_220.png','https://www.zhongjiu.cn/productdetail/675.htm','52°剑南春500ml',469.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/675/1_50.png',0),(7,205986,6,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/588/Products/205986/1_220.png','https://www.zhongjiu.cn/productdetail/205986.htm','53°红旗十九酒500ml',439.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/588/Products/205986/1_50.png',0),(8,2538,7,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2538/1_220.png','https://www.zhongjiu.cn/productdetail/2538.htm','43°红星蓝瓶八年陈酿 500ml （12瓶装）',360.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2538/1_50.png',0),(9,2953,8,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2953/1_220.png','https://www.zhongjiu.cn/productdetail/2953.htm','温莎12年调配苏格兰威士忌 700ml',109.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/2953/1_50.png',0),(10,437,9,'http://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/437/1_220.png','https://www.zhongjiu.cn/productdetail/437.htm','40°马爹利名士700ml',599.00,1,'https://img6.zhongjiu.cn/resourceb2b2c/Storage/Shop/1/Products/437/1_50.png',0);
/*!40000 ALTER TABLE `zjwitems` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-27  9:09:59
