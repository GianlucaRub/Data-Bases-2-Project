CREATE DATABASE  IF NOT EXISTS `db2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db2`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db2
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `activation_scheduler_optionalproduct`
--

DROP TABLE IF EXISTS `activation_scheduler_optionalproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activation_scheduler_optionalproduct` (
  `activationId` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `startTime` timestamp NOT NULL,
  `endTime` timestamp NOT NULL,
  `username` varchar(64) NOT NULL,
  PRIMARY KEY (`activationId`),
  KEY `activation_scheduler_optionalproduct_productId` (`productId`),
  KEY `activation_scheduler_optionalproduct_username` (`username`),
  CONSTRAINT `activation_scheduler_optionalproduct_productId` FOREIGN KEY (`productId`) REFERENCES `optionalproduct` (`productID`),
  CONSTRAINT `activation_scheduler_optionalproduct_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activation_scheduler_optionalproduct`
--

LOCK TABLES `activation_scheduler_optionalproduct` WRITE;
/*!40000 ALTER TABLE `activation_scheduler_optionalproduct` DISABLE KEYS */;
INSERT INTO `activation_scheduler_optionalproduct` VALUES (133,4,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(134,5,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(135,6,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(136,7,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca');
/*!40000 ALTER TABLE `activation_scheduler_optionalproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activation_scheduler_service`
--

DROP TABLE IF EXISTS `activation_scheduler_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activation_scheduler_service` (
  `activationId` int NOT NULL AUTO_INCREMENT,
  `serviceId` int NOT NULL,
  `startTime` timestamp NOT NULL,
  `endTime` timestamp NOT NULL,
  `username` varchar(64) NOT NULL,
  PRIMARY KEY (`activationId`),
  KEY `activation_scheduler_service_serviceId` (`serviceId`),
  KEY `activation_scheduler_service_username` (`username`),
  CONSTRAINT `activation_scheduler_service_serviceId` FOREIGN KEY (`serviceId`) REFERENCES `service` (`serviceId`),
  CONSTRAINT `activation_scheduler_service_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activation_scheduler_service`
--

LOCK TABLES `activation_scheduler_service` WRITE;
/*!40000 ALTER TABLE `activation_scheduler_service` DISABLE KEYS */;
INSERT INTO `activation_scheduler_service` VALUES (140,1,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(141,2,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(142,3,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(143,4,'2022-06-24 22:00:00','2023-06-24 22:00:00','gianluca'),(147,1,'2022-07-08 22:00:00','2023-01-08 23:00:00','gianluca'),(148,4,'2022-07-08 22:00:00','2023-01-08 23:00:00','gianluca'),(150,1,'2022-06-23 22:00:00','2022-12-23 23:00:00','gianluca'),(151,4,'2022-06-23 22:00:00','2022-12-23 23:00:00','gianluca'),(153,1,'2022-06-11 22:00:00','2022-12-11 23:00:00','gianluca'),(154,4,'2022-06-11 22:00:00','2022-12-11 23:00:00','gianluca'),(156,1,'2022-07-09 22:00:00','2023-01-09 23:00:00','gianluca'),(157,4,'2022-07-09 22:00:00','2023-01-09 23:00:00','gianluca'),(159,1,'2022-06-25 22:00:00','2022-12-25 23:00:00','gianluca'),(160,4,'2022-06-25 22:00:00','2022-12-25 23:00:00','gianluca'),(162,1,'2022-06-10 22:00:00','2022-12-10 23:00:00','gianluca'),(163,4,'2022-06-10 22:00:00','2022-12-10 23:00:00','gianluca'),(165,1,'2022-06-09 22:00:00','2022-12-09 23:00:00','gianluca'),(166,4,'2022-06-09 22:00:00','2022-12-09 23:00:00','gianluca');
/*!40000 ALTER TABLE `activation_scheduler_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alert`
--

DROP TABLE IF EXISTS `alert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alert` (
  `alertId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `amount` float NOT NULL,
  `lastRejectionDateTime` timestamp NOT NULL,
  `email` varchar(64) NOT NULL,
  PRIMARY KEY (`alertId`),
  KEY `username_idx` (`username`),
  CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alert`
--

LOCK TABLES `alert` WRITE;
/*!40000 ALTER TABLE `alert` DISABLE KEYS */;
/*!40000 ALTER TABLE `alert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `average_sales_optionalproduct_per_servicepackage`
--

DROP TABLE IF EXISTS `average_sales_optionalproduct_per_servicepackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `average_sales_optionalproduct_per_servicepackage` (
  `packageId` int NOT NULL AUTO_INCREMENT,
  `averageOptionalProducts` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`packageId`),
  CONSTRAINT `average_sales_optionalproduct_per_servicepackage_servicepackage` FOREIGN KEY (`packageId`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `average_sales_optionalproduct_per_servicepackage`
--

LOCK TABLES `average_sales_optionalproduct_per_servicepackage` WRITE;
/*!40000 ALTER TABLE `average_sales_optionalproduct_per_servicepackage` DISABLE KEYS */;
INSERT INTO `average_sales_optionalproduct_per_servicepackage` VALUES (15,0),(16,4),(17,0),(18,0);
/*!40000 ALTER TABLE `average_sales_optionalproduct_per_servicepackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bestseller_optionalproduct`
--

DROP TABLE IF EXISTS `bestseller_optionalproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bestseller_optionalproduct` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `productID` int DEFAULT NULL,
  `sales` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `bestseller_optionalproduct_optionalproduct` (`productID`),
  CONSTRAINT `bestseller_optionalproduct_optionalproduct` FOREIGN KEY (`productID`) REFERENCES `optionalproduct` (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bestseller_optionalproduct`
--

LOCK TABLES `bestseller_optionalproduct` WRITE;
/*!40000 ALTER TABLE `bestseller_optionalproduct` DISABLE KEYS */;
INSERT INTO `bestseller_optionalproduct` VALUES (1,4,1);
/*!40000 ALTER TABLE `bestseller_optionalproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Password` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'1234'),(2,'5678');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insolvent_users`
--

DROP TABLE IF EXISTS `insolvent_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insolvent_users` (
  `username` varchar(64) NOT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `insolvent_users_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insolvent_users`
--

LOCK TABLES `insolvent_users` WRITE;
/*!40000 ALTER TABLE `insolvent_users` DISABLE KEYS */;
INSERT INTO `insolvent_users` VALUES ('gianluca');
/*!40000 ALTER TABLE `insolvent_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `optionalproduct`
--

DROP TABLE IF EXISTS `optionalproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `optionalproduct` (
  `productID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `monthlyFee` float NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `optionalproduct`
--

LOCK TABLES `optionalproduct` WRITE;
/*!40000 ALTER TABLE `optionalproduct` DISABLE KEYS */;
INSERT INTO `optionalproduct` VALUES (4,'Sport',20),(5,'Film & Serie TV',10),(6,'Documentaries',5),(7,'Serie A',15);
/*!40000 ALTER TABLE `optionalproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_optionalproduct`
--

DROP TABLE IF EXISTS `order_optionalproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_optionalproduct` (
  `order_id` int NOT NULL,
  `optionalproduct_id` int NOT NULL,
  UNIQUE KEY `order_optionalproduct_unique` (`order_id`,`optionalproduct_id`),
  KEY `order_optionalproduct_service` (`optionalproduct_id`),
  CONSTRAINT `order_optionalproduct_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orderId`),
  CONSTRAINT `order_optionalproduct_service` FOREIGN KEY (`optionalproduct_id`) REFERENCES `optionalproduct` (`productID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_optionalproduct`
--

LOCK TABLES `order_optionalproduct` WRITE;
/*!40000 ALTER TABLE `order_optionalproduct` DISABLE KEYS */;
INSERT INTO `order_optionalproduct` VALUES (125,4),(125,5),(125,6),(125,7);
/*!40000 ALTER TABLE `order_optionalproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_bestseller_optionalproduct` AFTER INSERT ON `order_optionalproduct` FOR EACH ROW begin
declare optionalproduct_Id2 int;
declare total int;
SELECT optionalproduct_Id, count(*)
into optionalproduct_Id2, total
    FROM order_optionalproduct
    GROUP BY optionalproduct_Id
    ORDER BY count(*) DESC
    LIMIT 1;
	update bestseller_optionalproduct
	set productID = optionalproduct_Id2, sales = total where ID = 1;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_bridge_average_sales_optionalproduct_per_servicepackage` AFTER INSERT ON `order_optionalproduct` FOR EACH ROW begin
declare packageId2 int;
declare totalPackage int;
declare totalProducts int;
	select packageId into packageId2 from period where  ID = (select periodId from orders where orderId = new.order_id);
    select count(*) into totalPackage from orders where periodId in (select ID from period where packageId = packageId2) and orderState <=> "Paid";
    select count(*) into totalProducts from order_optionalproduct where order_Id in (select orderId from orders where periodId in (select ID from period where packageId = packageId2)  and orderState <=> "Paid");
	if (select orderState from orders where orderId = new.order_id) <=> "Paid" then
		update average_sales_optionalproduct_per_servicepackage
		set averageOptionalProducts = totalProducts/totalpackage
		where packageId = packageId2;
    end if;    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `creationDateTime` timestamp NOT NULL,
  `totalFee` float NOT NULL,
  `startTime` timestamp NOT NULL,
  `endTime` timestamp NOT NULL,
  `orderState` char(20) NOT NULL,
  `username` varchar(64) NOT NULL,
  `periodId` int NOT NULL,
  PRIMARY KEY (`orderId`),
  KEY `periodId_idx` (`periodId`),
  CONSTRAINT `periodID` FOREIGN KEY (`periodId`) REFERENCES `period` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (125,'2022-06-02 19:09:45',1800,'2022-06-24 22:00:00','2023-06-24 22:00:00','PAID','gianluca',8),(126,'2022-06-02 19:15:04',120,'2022-07-08 22:00:00','2023-01-08 23:00:00','PAID','gianluca',4),(127,'2022-06-02 19:15:09',120,'2022-06-23 22:00:00','2022-12-23 23:00:00','PAID','gianluca',4),(128,'2022-06-02 19:15:15',120,'2022-06-11 22:00:00','2022-12-11 23:00:00','PAID','gianluca',4),(129,'2022-06-02 19:16:01',120,'2022-07-09 22:00:00','2023-01-09 23:00:00','PAID','gianluca',4),(130,'2022-06-02 19:26:29',120,'2022-06-25 22:00:00','2022-12-25 23:00:00','PAID','gianluca',4),(131,'2022-06-02 19:26:43',120,'2022-06-10 22:00:00','2022-12-10 23:00:00','PAID','gianluca',4),(132,'2022-06-02 19:26:50',120,'2022-06-09 22:00:00','2022-12-09 23:00:00','PAID','gianluca',4),(133,'2022-06-02 19:26:55',120,'2022-06-24 22:00:00','2022-12-24 23:00:00','REJECTED','gianluca',4);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_paid_total_purchases_per_package` AFTER INSERT ON `orders` FOR EACH ROW begin
	if new.orderstate <=> "Paid" then
		update total_purchases_per_package
		set total_purchases = total_purchases + 1
		where packageId in (select packageId from period where new.periodId = ID);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_paid_total_purchases_per_package_validityperiod` AFTER INSERT ON `orders` FOR EACH ROW begin
	if new.orderstate <=> "Paid" then
		update total_purchases_per_package_validityperiod
		set total_purchases = total_purchases + 1
		where periodID = new.periodId;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_sales_purchases_per_package` AFTER INSERT ON `orders` FOR EACH ROW begin
declare packageId2 int;
declare monthlyFee2 float;
declare validityPeriod2 int;
		select
			packageId,
			monthlyFee,
			validityPeriod
            into
            packageId2, monthlyFee2, validityPeriod2
		from period where new.periodId = ID;
	if new.orderstate <=> "Paid" then
		update total_sales_per_package
		set totalSales = totalSales + monthlyFee2*validityPeriod2,
			totalSalesWithOptionalProduct = totalSalesWithOptionalProduct + new.totalFee
		where packageId = packageId2;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_suspended_orders` AFTER INSERT ON `orders` FOR EACH ROW begin
	if new.orderState <=> "Rejected" then
	insert into suspended_orders(orderId) values (new.orderId);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_failed_attempt` AFTER INSERT ON `orders` FOR EACH ROW begin
declare attempts int;
declare email2 varchar(64);
	select FailedAttempts,email into attempts,email2 from users where username = new.username limit 1;
	if new.orderState <=> "Rejected" and attempts <=> 2 then
	insert into alert(username,amount,lastRejectionDateTime,email) values (new.username,new.totalFee,current_timestamp(),email2);
    end if;
    if new.orderState <=>"Rejected" then
    update users
    set FailedAttempts = attempts + 1, isInsolvent = 1 where username = new.username;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_scheduler_service` AFTER INSERT ON `orders` FOR EACH ROW begin

	insert into activation_scheduler_service(serviceId,startTime,endTime,username) select
    servicepackage_service.service_id, orders.startTime, orders.endTime, orders.username
	from servicepackage_service join period on servicepackage_service.servicepackage_id = period.packageId
    join orders on orders.periodId = period.ID where orders.orderState = "Paid" and orders.orderId = new.orderId;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_scheduler_optionalproduct` AFTER INSERT ON `orders` FOR EACH ROW begin
	insert into activation_scheduler_optionalproduct(productId,startTime,endTime,username) select
    servicepackage_optionalproduct.optionalproduct_productID, orders.startTime, orders.endTime, orders.username
	from servicepackage_optionalproduct join period on servicepackage_id = period.packageId 
	join orders on orders.periodId = period.ID where orders.orderState = "Paid" and orders.orderId = new.orderId;

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_average_sales_optionalproduct_per_servicepackage` AFTER INSERT ON `orders` FOR EACH ROW begin
declare packageId2 int;
declare totalPackage int;
declare totalProducts int;
	select packageId into packageId2 from period where new.periodId = ID;
    select count(*) into totalPackage from orders where periodId in (select ID from period where packageId = packageId2) and orderState <=> "Paid";
    select count(*) into totalProducts from order_optionalproduct where order_Id in (select orderId from orders where periodId in (select ID from period where packageId = packageId2)  and orderState <=> "Paid");
	if new.orderstate <=> "Paid" then
		update average_sales_optionalproduct_per_servicepackage
		set averageOptionalProducts = totalProducts/totalpackage
		where packageId = packageId2;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_total_purchases_per_package` AFTER UPDATE ON `orders` FOR EACH ROW begin
	if not(old.orderState <=> new.orderstate) and new.orderstate <=> "Paid" then
		update total_purchases_per_package
		set total_purchases = total_purchases + 1
		where packageId in (select packageId from period where new.periodId = ID);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_total_purchases_per_package_validityperiod` AFTER UPDATE ON `orders` FOR EACH ROW begin
	if not(old.orderState <=> new.orderstate) and new.orderstate <=> "Paid" then
		update total_purchases_per_package_validityperiod
		set total_purchases = total_purchases + 1
		where periodID = new.periodId;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_sales_purchases_per_package` AFTER UPDATE ON `orders` FOR EACH ROW begin
declare packageId2 int;
declare monthlyFee2 float;
declare validityPeriod2 int;
		select
			packageId,
			monthlyFee,
			validityPeriod
            into
            packageId2, monthlyFee2, validityPeriod2
		from period where new.periodId = ID;
	if not(old.orderState <=> new.orderstate) and new.orderstate <=> "Paid" then
		update total_sales_per_package
		set totalSales = totalSales + monthlyFee2*validityPeriod2,
			totalSalesWithOptionalProduct = totalSalesWithOptionalProduct + new.totalFee
		where packageId = packageId2;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_suspended_orders` AFTER UPDATE ON `orders` FOR EACH ROW begin
	if new.orderState <=> "Paid" and old.orderState <=>"Rejected" then
	delete from suspended_orders where orderId = new.orderId;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_scheduler_service` AFTER UPDATE ON `orders` FOR EACH ROW begin

	insert into activation_scheduler_service(serviceId,startTime,endTime,username) select
    servicepackage_service.service_id, orders.startTime, orders.endTime, orders.username
	from servicepackage_service join period on servicepackage_service.servicepackage_id = period.packageId
    join orders on orders.periodId = period.ID where orders.orderState = "Paid" and orders.orderId = new.orderId 
    and old.orderState = "Rejected";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_scheduler_optionalproduct` AFTER UPDATE ON `orders` FOR EACH ROW begin
	insert into activation_scheduler_optionalproduct(productId,startTime,endTime,username) select
    servicepackage_optionalproduct.optionalproduct_productID, orders.startTime, orders.endTime, orders.username
	from servicepackage_optionalproduct join period on servicepackage_id = period.packageId 
	join orders on orders.periodId = period.ID where orders.orderState = "Paid" and orders.orderId = new.orderId
    and old.orderState = "Rejected";
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_average_sales_optionalproduct_per_servicepackage` AFTER UPDATE ON `orders` FOR EACH ROW begin

declare packageId2 int;
declare totalPackage int;
declare totalProducts int;
	select packageId into packageId2 from period where new.periodId = ID;
    select count(*) into totalPackage from orders where periodId in (select ID from period where packageId = packageId2) and orderState <=> "Paid";
    select count(*) into totalProducts from order_optionalproduct where order_Id in (select orderId from orders where periodId in (select ID from period where packageId = packageId2)  and orderState <=> "Paid");
	if  not(old.orderState <=> new.orderstate) and new.orderstate <=> "Paid" then
		update average_sales_optionalproduct_per_servicepackage
		set averageOptionalProducts = totalProducts/totalpackage
		where packageId = packageId2;
    end if;    
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_failed_attempt` AFTER UPDATE ON `orders` FOR EACH ROW begin
declare attempts int;
declare email2 varchar(64);
	select FailedAttempts,email into attempts,email2 from users where username;
	if new.orderState <=> "Rejected" and attempts <=> 2 then
	insert into alert(username,amount,lastRejectionDateTime,email) values (new.username,new.totalFee,current_timestamp(),email2);
    end if;
    if new.orderState <=>"Rejected" and old.orderState <=>"Rejected" then
    update users
--     set FailedAttempts = attempts + 1, isInsolvent = 1 where username = new.username;
    set FailedAttempts = 9, isInsolvent = 1 where username = new.username;

    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `period`
--

DROP TABLE IF EXISTS `period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `period` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `validityPeriod` int NOT NULL,
  `monthlyFee` float NOT NULL,
  `packageId` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `period_servicepackage` (`packageId`),
  CONSTRAINT `period_servicepackage` FOREIGN KEY (`packageId`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `period`
--

LOCK TABLES `period` WRITE;
/*!40000 ALTER TABLE `period` DISABLE KEYS */;
INSERT INTO `period` VALUES (4,6,20,15),(5,12,15,15),(6,18,10,15),(7,24,5,15),(8,12,100,16),(9,24,80,16),(10,36,70,16),(11,12,15,17),(12,24,8,17),(13,12,30,18),(14,24,20,18);
/*!40000 ALTER TABLE `period` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_new_total_purchases_per_package_validityperiod` AFTER INSERT ON `period` FOR EACH ROW begin
	insert into total_purchases_per_package_validityperiod(periodID, total_purchases) values (new.ID,0);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceId` int NOT NULL AUTO_INCREMENT,
  `serviceType` char(20) NOT NULL,
  `includedMinutes` int DEFAULT NULL,
  `includedSms` int DEFAULT NULL,
  `feeMinutes` float DEFAULT NULL,
  `feeSms` float DEFAULT NULL,
  `includedGb` int DEFAULT NULL,
  `feeGb` float DEFAULT NULL,
  PRIMARY KEY (`serviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'MOBILE_PHONE',3,5,7,10,0,0),(2,'MOBILE_INTERNET',0,0,0,0,20,1),(3,'FIXED_INTERNET',0,0,0,0,80,3),(4,'FIXED_PHONE',0,0,0,0,0,0);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicepackage`
--

DROP TABLE IF EXISTS `servicepackage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicepackage` (
  `packageId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicepackage`
--

LOCK TABLES `servicepackage` WRITE;
/*!40000 ALTER TABLE `servicepackage` DISABLE KEYS */;
INSERT INTO `servicepackage` VALUES (15,'Only Phone'),(16,'All Inclusive'),(17,'Internet & Serie A'),(18,'Home Internet &  Super TV');
/*!40000 ALTER TABLE `servicepackage` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_new_total_sales_per_package` AFTER INSERT ON `servicepackage` FOR EACH ROW begin
	insert into total_sales_per_package(packageId, totalSales,totalSalesWithOptionalProduct) values (new.packageId, 0,0);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_new_average_sales_optionalproduct_per_servicepackage` AFTER INSERT ON `servicepackage` FOR EACH ROW begin
	insert into average_sales_optionalproduct_per_servicepackage(packageId, averageOptionalProducts) values (new.packageId, 0);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_new_total_purchases_per_package` AFTER INSERT ON `servicepackage` FOR EACH ROW begin
	insert into total_purchases_per_package(packageId, total_purchases) values (new.packageId, 0);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `servicepackage_optionalproduct`
--

DROP TABLE IF EXISTS `servicepackage_optionalproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicepackage_optionalproduct` (
  `servicepackage_id` int NOT NULL,
  `optionalproduct_productID` int NOT NULL,
  UNIQUE KEY `servicepackage_optionalproduct_unique` (`servicepackage_id`,`optionalproduct_productID`),
  KEY `servicepackage_optionalproduct_optionalproduct` (`optionalproduct_productID`),
  CONSTRAINT `servicepackage_optionalproduct_optionalproduct` FOREIGN KEY (`optionalproduct_productID`) REFERENCES `optionalproduct` (`productID`),
  CONSTRAINT `servicepackage_optionalproduct_servicepackage` FOREIGN KEY (`servicepackage_id`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicepackage_optionalproduct`
--

LOCK TABLES `servicepackage_optionalproduct` WRITE;
/*!40000 ALTER TABLE `servicepackage_optionalproduct` DISABLE KEYS */;
INSERT INTO `servicepackage_optionalproduct` VALUES (16,4),(18,4),(16,5),(18,5),(16,6),(18,6),(16,7),(17,7),(18,7);
/*!40000 ALTER TABLE `servicepackage_optionalproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicepackage_service`
--

DROP TABLE IF EXISTS `servicepackage_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicepackage_service` (
  `servicepackage_id` int NOT NULL,
  `service_id` int NOT NULL,
  UNIQUE KEY `servicepackage_service_unique` (`servicepackage_id`,`service_id`),
  KEY `servicepackage_service_service` (`service_id`),
  CONSTRAINT `servicepackage_service_service` FOREIGN KEY (`service_id`) REFERENCES `service` (`serviceId`),
  CONSTRAINT `servicepackage_service_servicepackage` FOREIGN KEY (`servicepackage_id`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicepackage_service`
--

LOCK TABLES `servicepackage_service` WRITE;
/*!40000 ALTER TABLE `servicepackage_service` DISABLE KEYS */;
INSERT INTO `servicepackage_service` VALUES (15,1),(16,1),(16,2),(17,2),(16,3),(17,3),(18,3),(15,4),(16,4);
/*!40000 ALTER TABLE `servicepackage_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suspended_orders`
--

DROP TABLE IF EXISTS `suspended_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suspended_orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`orderId`),
  CONSTRAINT `suspended_orders_orders` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suspended_orders`
--

LOCK TABLES `suspended_orders` WRITE;
/*!40000 ALTER TABLE `suspended_orders` DISABLE KEYS */;
INSERT INTO `suspended_orders` VALUES (133);
/*!40000 ALTER TABLE `suspended_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_insolvence` AFTER DELETE ON `suspended_orders` FOR EACH ROW begin
declare username2 varchar(64);
declare unpaid int;
	select username into username2 from orders where orderId = old.orderId limit 1;
    select count(*) into unpaid from orders where username = username2 and orderState = "Rejected";
	if unpaid <=> 0 then
    update users
    set isInsolvent = 0 , FailedAttempts = 0 where username = username2;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `total_purchases_per_package`
--

DROP TABLE IF EXISTS `total_purchases_per_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_purchases_per_package` (
  `packageId` int NOT NULL AUTO_INCREMENT,
  `total_purchases` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`packageId`),
  CONSTRAINT `total_purchases_per_package_servicepackage` FOREIGN KEY (`packageId`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_purchases_per_package`
--

LOCK TABLES `total_purchases_per_package` WRITE;
/*!40000 ALTER TABLE `total_purchases_per_package` DISABLE KEYS */;
INSERT INTO `total_purchases_per_package` VALUES (15,7),(16,1),(17,0),(18,0);
/*!40000 ALTER TABLE `total_purchases_per_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_purchases_per_package_validityperiod`
--

DROP TABLE IF EXISTS `total_purchases_per_package_validityperiod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_purchases_per_package_validityperiod` (
  `periodID` int NOT NULL AUTO_INCREMENT,
  `total_purchases` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`periodID`),
  CONSTRAINT `total_purchases_per_package_validityperiod_period` FOREIGN KEY (`periodID`) REFERENCES `period` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_purchases_per_package_validityperiod`
--

LOCK TABLES `total_purchases_per_package_validityperiod` WRITE;
/*!40000 ALTER TABLE `total_purchases_per_package_validityperiod` DISABLE KEYS */;
INSERT INTO `total_purchases_per_package_validityperiod` VALUES (4,7),(5,0),(6,0),(7,0),(8,1),(9,0),(10,0),(11,0),(12,0),(13,0),(14,0);
/*!40000 ALTER TABLE `total_purchases_per_package_validityperiod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total_sales_per_package`
--

DROP TABLE IF EXISTS `total_sales_per_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_sales_per_package` (
  `packageId` int NOT NULL AUTO_INCREMENT,
  `totalSales` int NOT NULL DEFAULT '0',
  `totalSalesWithOptionalProduct` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`packageId`),
  CONSTRAINT `total_sales_per_package_servicepackage` FOREIGN KEY (`packageId`) REFERENCES `servicepackage` (`packageId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_sales_per_package`
--

LOCK TABLES `total_sales_per_package` WRITE;
/*!40000 ALTER TABLE `total_sales_per_package` DISABLE KEYS */;
INSERT INTO `total_sales_per_package` VALUES (15,840,840),(16,1200,1800),(17,0,0),(18,0,0);
/*!40000 ALTER TABLE `total_sales_per_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `isInsolvent` tinyint NOT NULL DEFAULT '0',
  `FailedAttempts` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('gianluca','1234','gianluca@ruberto.tricase',1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insert_insolvent_users` AFTER UPDATE ON `users` FOR EACH ROW begin
	if not(new.isInsolvent <=> old.isInsolvent) and new.isInsolvent <=> 1 then
	insert into insolvent_users(username) values (new.username);
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `delete_insolvent_users` AFTER UPDATE ON `users` FOR EACH ROW begin
	if not(new.isInsolvent <=> old.isInsolvent) and new.isInsolvent <=> 0 then
	delete from insolvent_users where username = new.username;
    end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-02 21:33:19
