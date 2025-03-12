-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (x86_64)
--
-- Host: localhost    Database: hotel
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `billingId` int NOT NULL AUTO_INCREMENT,
  `guestId` int NOT NULL,
  `paid` int NOT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `paymentTime` datetime DEFAULT NULL,
  PRIMARY KEY (`billingId`),
  KEY `fk_billing_guest_idx` (`guestId`),
  CONSTRAINT `fk_billing_guest` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES (1,73,0,NULL,NULL),(2,50,0,NULL,NULL),(3,65,0,NULL,NULL),(4,7,0,NULL,NULL),(5,33,0,NULL,NULL),(6,29,0,NULL,NULL),(7,79,1,'credit card','2023-12-31 00:00:00'),(8,44,0,NULL,NULL),(9,5,1,'credit card','2023-12-31 00:00:00'),(10,67,0,NULL,NULL),(11,84,0,NULL,NULL),(12,8,1,'debit card','2023-12-31 00:00:00'),(13,54,1,'credit card','2023-12-31 00:00:00'),(14,46,1,'debit card','2023-12-31 00:00:00'),(15,65,1,'debit card','2023-12-31 00:00:00'),(16,98,1,'cash','2023-12-31 00:00:00'),(17,22,0,NULL,NULL),(18,30,0,NULL,NULL),(19,46,0,NULL,NULL),(20,40,1,'credit card','2023-12-31 00:00:00'),(21,29,0,NULL,NULL),(22,92,0,NULL,NULL),(23,77,1,'credit card','2023-12-31 00:00:00'),(24,34,1,'cash','2023-12-31 00:00:00'),(25,61,0,NULL,NULL),(26,9,1,'debit card','2023-12-31 00:00:00'),(27,31,1,'credit card','2023-12-31 00:00:00'),(28,64,0,NULL,NULL),(29,51,1,'cash','2023-12-31 00:00:00'),(30,60,0,NULL,NULL),(31,99,1,'cash','2023-12-31 00:00:00'),(32,64,1,'debit card','2023-12-31 00:00:00'),(33,25,0,NULL,NULL),(34,50,0,NULL,NULL),(35,71,0,NULL,NULL),(36,37,0,NULL,NULL),(37,66,0,NULL,NULL),(38,25,1,'debit card','2023-12-31 00:00:00'),(39,83,1,'debit card','2023-12-31 00:00:00'),(40,60,0,NULL,NULL),(41,77,0,NULL,NULL),(42,9,0,NULL,NULL),(43,10,0,NULL,NULL),(44,16,0,NULL,NULL),(45,41,0,NULL,NULL),(46,42,1,'debit card','2023-12-31 00:00:00'),(47,89,1,'debit card','2023-12-31 00:00:00'),(48,80,0,NULL,NULL),(49,100,0,NULL,NULL),(50,68,1,'credit card','2023-12-31 00:00:00'),(51,66,0,NULL,NULL),(52,47,0,NULL,NULL),(53,84,1,'cash','2023-12-31 00:00:00'),(54,35,1,'cash','2023-12-31 00:00:00'),(55,55,0,NULL,NULL),(56,18,1,'credit card','2023-12-31 00:00:00'),(57,7,1,'credit card','2023-12-31 00:00:00'),(58,77,0,NULL,NULL),(59,70,1,'credit card','2023-12-31 00:00:00'),(60,11,1,'credit card','2023-12-31 00:00:00');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booker`
--

DROP TABLE IF EXISTS `booker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booker` (
  `bookerId` int NOT NULL AUTO_INCREMENT,
  `bookerName` varchar(45) DEFAULT NULL,
  `bookerContactInfo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bookerId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booker`
--

LOCK TABLES `booker` WRITE;
/*!40000 ALTER TABLE `booker` DISABLE KEYS */;
INSERT INTO `booker` VALUES (1,'John Thomas','john.thomas558@example.com'),(2,'Olivia White','olivia.white300@example.com'),(3,'Robert Wilson','robert.wilson584@example.com'),(4,'Jane Miller','jane.miller800@example.com'),(5,'Chris Jackson','chris.jackson891@example.com'),(6,'Emily Miller','emily.miller392@example.com'),(7,'Olivia Thomas','olivia.thomas42@example.com'),(8,'Sophia Brown','sophia.brown441@example.com'),(9,'Lucas Zhou','lucas.zhou129@example.com'),(10,'Jane Jackson','jane.jackson101@example.com'),(11,'Michael Jackson','michael.jackson954@example.com'),(12,'Sophia Wilson','sophia.wilson217@example.com'),(13,'David Johnson','david.johnson652@example.com'),(14,'Emily Anderson','emily.anderson900@example.com'),(15,'David Wilson','david.wilson105@example.com'),(16,'Sophia Jackson','sophia.jackson463@example.com'),(17,'Emily Thomas','emily.thomas567@example.com'),(18,'Sophia Brown','sophia.brown845@example.com'),(19,'Sophia Moore','sophia.moore215@example.com'),(20,'Emily Taylor','emily.taylor672@example.com'),(21,'David Smith','david.smith64@example.com'),(22,'Olivia Thomas','olivia.thomas257@example.com'),(23,'Michael Dick','michael.dick969@example.com'),(24,'Sophia Wilson','sophia.wilson851@example.com'),(25,'Robert Wilson','robert.wilson690@example.com'),(26,'John Brown','john.brown55@example.com'),(27,'Robert Jackson','robert.jackson374@example.com'),(28,'Sophia Wilson','sophia.wilson532@example.com'),(29,'Jane Thomas','jane.thomas641@example.com'),(30,'Chris Smith','chris.smith664@example.com'),(31,'Emily Brown','emily.brown340@example.com'),(32,'John Taylor','john.taylor24@example.com'),(33,'Anna Thomas','anna.thomas541@example.com'),(34,'Jane Taylor','jane.taylor741@example.com'),(35,'Olivia Thomas','olivia.thomas317@example.com'),(36,'Chris Miller','chris.miller583@example.com'),(37,'Olivia Brown','olivia.brown55@example.com'),(38,'Liam Brown','liam.brown760@example.com'),(39,'Sophia Moore','sophia.moore288@example.com'),(40,'Emily Thomas','emily.thomas383@example.com'),(41,'Anna Smith','anna.smith37@example.com'),(42,'Michael Smith','michael.smith418@example.com'),(43,'Robert Taylor','robert.taylor763@example.com'),(44,'Olivia Anderson','olivia.anderson340@example.com'),(45,'Sophia Johnson','sophia.johnson322@example.com'),(46,'Sophia Johnson','sophia.johnson762@example.com'),(47,'Robert Smith','robert.smith733@example.com'),(48,'Jane Moore','jane.moore390@example.com'),(49,'Emily Taylor','emily.taylor136@example.com'),(50,'David Anderson','david.anderson493@example.com'),(51,'Anna Taylor','anna.taylor331@example.com'),(52,'John Smith','john.smith37@example.com'),(53,'Robert Thomas','robert.thomas673@example.com'),(54,'Chris Johnson','chris.johnson33@example.com'),(55,'Bill Zhou','bill.zhou877@example.com'),(56,'Jane Smith','jane.smith439@example.com'),(57,'Robert Jackson','robert.jackson339@example.com'),(58,'Jane Smith','jane.smith573@example.com'),(59,'David Smith','david.smith503@example.com'),(60,'Emily Thomas','emily.thomas920@example.com'),(61,'Bill Dai','bill.dai112@example.com'),(62,'Cedric Jiang','cedric.jiang243@example.com'),(63,'Jimmy Song','jimmy.song667@example.com');
/*!40000 ALTER TABLE `booker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building` (
  `buildingId` int NOT NULL AUTO_INCREMENT,
  `hotelId` int NOT NULL,
  `wingsNum` int NOT NULL,
  `buildingName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`buildingId`),
  KEY `hotelId_idx` (`hotelId`),
  CONSTRAINT `hotelId` FOREIGN KEY (`hotelId`) REFERENCES `hotel` (`hotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (1,1,2,'Skyline Tower'),(2,2,3,'Golden Horizaon'),(3,2,1,'Emerald Heights');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card_room`
--

DROP TABLE IF EXISTS `card_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card_room` (
  `cardPin` int NOT NULL AUTO_INCREMENT,
  `roomId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cardPin`),
  KEY `roomId` (`roomId`),
  CONSTRAINT `card_room_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `combined_room` (`roomId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card_room`
--

LOCK TABLES `card_room` WRITE;
/*!40000 ALTER TABLE `card_room` DISABLE KEYS */;
INSERT INTO `card_room` VALUES (1,'MR002'),(2,'MR004'),(3,'MR005'),(4,'MR006'),(5,'MR007'),(6,'MR008'),(7,'MR009'),(8,'MR010'),(9,'MR011'),(10,'MR012'),(11,'MR013'),(12,'MR014'),(13,'MR015'),(14,'MR016'),(15,'MR017'),(16,'MR018'),(17,'MR019'),(18,'MR020'),(19,'MR021'),(20,'MR022'),(21,'MR023'),(22,'MR024'),(23,'MR025'),(24,'MR026'),(25,'MR028'),(26,'MR029'),(27,'MR030'),(28,'MR031'),(29,'MR032'),(30,'MR033'),(31,'MR034'),(32,'MR035'),(33,'MR036'),(34,'MR037'),(35,'MR038'),(36,'MR039'),(37,'MR040'),(38,'MR041'),(39,'MR042'),(40,'MR043'),(41,'MR044'),(42,'MR045'),(43,'MR046'),(44,'MR047'),(45,'MR048'),(46,'MR049'),(47,'MR050'),(48,'SR001'),(49,'SR002'),(50,'SR003'),(51,'SR004'),(52,'SR005'),(53,'SR006'),(54,'SR007'),(55,'SR008'),(56,'SR009'),(57,'SR010'),(58,'SR011'),(59,'SR012'),(60,'SR013'),(61,'SR014'),(62,'SR015'),(63,'SR016'),(64,'SR017'),(65,'SR018'),(66,'SR019'),(67,'SR020'),(68,'SR021'),(69,'SR022'),(70,'SR023'),(71,'SR024'),(72,'SR025'),(73,'SR026'),(74,'SR027'),(75,'SR028'),(76,'SR029'),(77,'SR030'),(78,'SR031'),(79,'SR032'),(80,'SR033'),(81,'SR034'),(82,'SR035'),(83,'SR036'),(84,'SR037'),(85,'SR038'),(86,'SR039'),(87,'SR040'),(88,'SR041'),(89,'SR042'),(90,'SR043'),(91,'SR044'),(92,'SR045'),(93,'SR046'),(94,'SR047'),(95,'SR048'),(96,'SR049'),(97,'SR050'),(98,'SR053'),(99,'SR054'),(100,'SR055'),(101,'SR056'),(102,'SR057'),(103,'SR058'),(104,'SR059'),(105,'SR060'),(106,'SR061'),(107,'SR062'),(108,'SR063'),(109,'SR064'),(110,'SR065'),(111,'SR066'),(112,'SR067'),(113,'SR068'),(114,'SR069'),(115,'SR070');
/*!40000 ALTER TABLE `card_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combined_room`
--

DROP TABLE IF EXISTS `combined_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `combined_room` (
  `roomId` varchar(45) NOT NULL,
  `roomType` enum('sleeping','meeting') NOT NULL,
  PRIMARY KEY (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combined_room`
--

LOCK TABLES `combined_room` WRITE;
/*!40000 ALTER TABLE `combined_room` DISABLE KEYS */;
INSERT INTO `combined_room` VALUES ('MR001','meeting'),('MR002','meeting'),('MR003','meeting'),('MR004','meeting'),('MR005','meeting'),('MR006','meeting'),('MR007','meeting'),('MR008','meeting'),('MR009','meeting'),('MR010','meeting'),('MR011','meeting'),('MR012','meeting'),('MR013','meeting'),('MR014','meeting'),('MR015','meeting'),('MR016','meeting'),('MR017','meeting'),('MR018','meeting'),('MR019','meeting'),('MR020','meeting'),('MR021','meeting'),('MR022','meeting'),('MR023','meeting'),('MR024','meeting'),('MR025','meeting'),('MR026','meeting'),('MR027','meeting'),('MR028','meeting'),('MR029','meeting'),('MR030','meeting'),('MR031','meeting'),('MR032','meeting'),('MR033','meeting'),('MR034','meeting'),('MR035','meeting'),('MR036','meeting'),('MR037','meeting'),('MR038','meeting'),('MR039','meeting'),('MR040','meeting'),('MR041','meeting'),('MR042','meeting'),('MR043','meeting'),('MR044','meeting'),('MR045','meeting'),('MR046','meeting'),('MR047','meeting'),('MR048','meeting'),('MR049','meeting'),('MR050','meeting'),('SR001','sleeping'),('SR002','sleeping'),('SR003','sleeping'),('SR004','sleeping'),('SR005','sleeping'),('SR006','sleeping'),('SR007','sleeping'),('SR008','sleeping'),('SR009','sleeping'),('SR010','sleeping'),('SR011','sleeping'),('SR012','sleeping'),('SR013','sleeping'),('SR014','sleeping'),('SR015','sleeping'),('SR016','sleeping'),('SR017','sleeping'),('SR018','sleeping'),('SR019','sleeping'),('SR020','sleeping'),('SR021','sleeping'),('SR022','sleeping'),('SR023','sleeping'),('SR024','sleeping'),('SR025','sleeping'),('SR026','sleeping'),('SR027','sleeping'),('SR028','sleeping'),('SR029','sleeping'),('SR030','sleeping'),('SR031','sleeping'),('SR032','sleeping'),('SR033','sleeping'),('SR034','sleeping'),('SR035','sleeping'),('SR036','sleeping'),('SR037','sleeping'),('SR038','sleeping'),('SR039','sleeping'),('SR040','sleeping'),('SR041','sleeping'),('SR042','sleeping'),('SR043','sleeping'),('SR044','sleeping'),('SR045','sleeping'),('SR046','sleeping'),('SR047','sleeping'),('SR048','sleeping'),('SR049','sleeping'),('SR050','sleeping'),('SR051','sleeping'),('SR052','sleeping'),('SR053','sleeping'),('SR054','sleeping'),('SR055','sleeping'),('SR056','sleeping'),('SR057','sleeping'),('SR058','sleeping'),('SR059','sleeping'),('SR060','sleeping'),('SR061','sleeping'),('SR062','sleeping'),('SR063','sleeping'),('SR064','sleeping'),('SR065','sleeping'),('SR066','sleeping'),('SR067','sleeping'),('SR068','sleeping'),('SR069','sleeping'),('SR070','sleeping');
/*!40000 ALTER TABLE `combined_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventId` int NOT NULL AUTO_INCREMENT,
  `meetingRoomId` varchar(45) DEFAULT NULL,
  `hostId` int NOT NULL,
  `eventDate` datetime NOT NULL,
  `facilitiesUsed` varchar(200) DEFAULT NULL,
  `slot` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  KEY `fk_event_to_host` (`hostId`),
  KEY `fk_event_to_slot` (`slot`),
  KEY `fk_event_to_combined_room_idx` (`meetingRoomId`),
  CONSTRAINT `fk_event_to_combined_room` FOREIGN KEY (`meetingRoomId`) REFERENCES `combined_room` (`roomId`),
  CONSTRAINT `fk_event_to_host` FOREIGN KEY (`hostId`) REFERENCES `host` (`hostId`),
  CONSTRAINT `fk_event_to_slot` FOREIGN KEY (`slot`) REFERENCES `slot` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'MR040',24,'2023-11-28 00:00:00','Bathroom, Whiteboard','morning'),(2,'MR006',23,'2023-06-23 00:00:00','Sound System, Chair','supper'),(3,'MR029',26,'2023-03-28 00:00:00','Whiteboard, Table, Sound System','evening'),(4,'MR035',2,'2023-01-27 00:00:00','Chair, Table, Sound System','evening'),(5,'MR022',21,'2023-01-13 00:00:00','Bathroom, Chair','lunch'),(6,'MR024',16,'2023-03-09 00:00:00','Sound System, Table, Projector','night'),(7,'MR049',30,'2023-03-08 00:00:00','Projector, Whiteboard, Table','morning'),(8,'MR019',11,'2023-08-09 00:00:00','Whiteboard, Sound System, Bathroom','evening'),(9,'MR047',8,'2023-06-05 00:00:00','Sound System, Projector','morning'),(10,'MR047',25,'2023-07-05 00:00:00','Whiteboard, Bathroom','lunch'),(11,'MR033',27,'2023-05-29 00:00:00','Table, Chair, Sound System','evening'),(12,'MR050',1,'2023-04-25 00:00:00','Sound System, Bathroom','afternoon'),(13,'MR038',19,'2023-04-17 00:00:00','Chair, Whiteboard, Projector','night'),(14,'MR043',24,'2023-02-03 00:00:00','Projector, Bathroom, Chair','morning'),(15,'MR035',5,'2023-07-31 00:00:00','Chair, Whiteboard','lunch'),(16,'MR020',26,'2023-08-09 00:00:00','Projector, Whiteboard','supper'),(17,'MR019',17,'2023-11-03 00:00:00','Projector, Whiteboard, Chair','evening'),(18,'MR014',26,'2023-04-18 00:00:00','Table, Sound System, Bathroom','afternoon'),(19,'MR003',14,'2023-09-01 00:00:00','Table, Sound System, Whiteboard, Projector','lunch'),(20,'MR033',6,'2023-02-23 00:00:00','Whiteboard, Sound System, Chair, Table','night'),(21,'MR009',28,'2023-01-07 00:00:00','Bathroom, Whiteboard, Sound System','afternoon'),(22,'MR023',1,'2023-09-05 00:00:00','Table, Chair, Bathroom','lunch'),(23,'MR007',20,'2023-11-13 00:00:00','Sound System, Bathroom, Chair','morning'),(24,'MR009',26,'2023-10-01 00:00:00','Bathroom, Sound System, Whiteboard, Table','night'),(25,'MR049',12,'2023-06-29 00:00:00','Chair, Whiteboard, Table','morning'),(26,'MR005',29,'2023-08-28 00:00:00','Projector, Bathroom, Chair','afternoon'),(27,'MR023',9,'2023-02-05 00:00:00','Sound System, Projector, Whiteboard','lunch'),(28,'MR039',16,'2023-12-17 00:00:00','Table, Chair, Bathroom','evening'),(29,'MR016',22,'2023-08-17 00:00:00','Bathroom, Sound System, Table','breakfast'),(30,'MR006',3,'2023-03-05 00:00:00','Whiteboard, Bathroom, Table','evening'),(31,'MR030',16,'2023-07-02 00:00:00','Bathroom, Whiteboard, Table, Sound System','breakfast'),(32,'MR042',15,'2023-05-06 00:00:00','Table, Projector','lunch'),(33,'MR010',4,'2023-07-14 00:00:00','Projector, Bathroom, Chair','morning'),(34,'MR020',18,'2023-07-26 00:00:00','Table, Chair, Bathroom, Sound System','lunch'),(35,'MR015',6,'2023-03-23 00:00:00','Whiteboard, Projector','breakfast'),(36,'MR009',7,'2023-02-08 00:00:00','Chair, Bathroom, Projector','supper'),(37,'MR029',23,'2023-07-15 00:00:00','Whiteboard, Projector','morning'),(38,'MR007',12,'2023-12-10 00:00:00','Chair, Table, Sound System','night'),(39,'MR020',13,'2023-03-22 00:00:00','Whiteboard, Chair, Table','afternoon'),(40,'MR022',10,'2023-07-20 00:00:00','Chair, Table, Whiteboard','breakfast');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `floor`
--

DROP TABLE IF EXISTS `floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `floor` (
  `floorId` int NOT NULL AUTO_INCREMENT,
  `wingId` int NOT NULL,
  `smoke` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`floorId`),
  KEY `wingId_idx` (`wingId`),
  CONSTRAINT `wingId` FOREIGN KEY (`wingId`) REFERENCES `wing` (`wingId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `floor`
--

LOCK TABLES `floor` WRITE;
/*!40000 ALTER TABLE `floor` DISABLE KEYS */;
INSERT INTO `floor` VALUES (1,1,0,'Floor 1'),(2,1,0,'Floor 2'),(3,1,0,'Floor 3'),(4,2,1,'Floor 1'),(5,2,1,'Floor 2'),(6,2,0,'Floor 3'),(7,2,0,'Floor 4'),(8,3,1,'Floor 1'),(9,3,1,'Floor 2'),(10,3,1,'Floor 3'),(11,4,0,'Floor 1'),(12,4,1,'Floor 2'),(13,4,1,'Floor 3'),(14,5,1,'Floor 1'),(15,5,0,'Floor 2'),(16,5,1,'Floor 3'),(17,5,0,'Floor 4'),(18,5,1,'Floor 5'),(19,6,0,'Floor 1'),(20,6,1,'Floor 2'),(21,6,0,'Floor 3'),(22,6,0,'Floor 4');
/*!40000 ALTER TABLE `floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest`
--

DROP TABLE IF EXISTS `guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest` (
  `guestId` int NOT NULL AUTO_INCREMENT,
  `guestName` varchar(45) NOT NULL,
  `guestContactInfo` varchar(100) NOT NULL,
  PRIMARY KEY (`guestId`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest`
--

LOCK TABLES `guest` WRITE;
/*!40000 ALTER TABLE `guest` DISABLE KEYS */;
INSERT INTO `guest` VALUES (1,'Lucas Jackson','1613014119'),(2,'Lucas Dick','3845651235'),(3,'Sophia Johnson','9982492032'),(4,'Olivia White','7590009464'),(5,'Charlotte Dick','2588378651'),(6,'Michael Dick','1231527674'),(7,'Emma Zhou','3653407535'),(8,'Bill Anderson','4311848903'),(9,'Charlotte Zhou','1188707121'),(10,'Olivia Jackson','8090850463'),(11,'Charlotte Johnson','1538847224'),(12,'Emma White','9795628061'),(13,'James Smith','4960095184'),(14,'Liam Brown','6658017958'),(15,'Liam Dick','3279019699'),(16,'Olivia White','5691578409'),(17,'Lucas Zhou','6517183350'),(18,'Emma Smith','5986275666'),(19,'Liam Johnson','8255568546'),(20,'Lucas Smith','6010662247'),(21,'Olivia Smith','2540374476'),(22,'Ethan Thomas','5319973871'),(23,'Sophia Jackson','4200651728'),(24,'Ethan White','6561493963'),(25,'Bill Anderson','4215334050'),(26,'Charlotte Taylor','2388809026'),(27,'Charlotte Zhou','2158376370'),(28,'Bill Jackson','2043448033'),(29,'Charlotte Dick','8324194796'),(30,'James Jackson','9917112574'),(31,'Bill Thomas','1271237465'),(32,'Bill Jackson','7567600873'),(33,'Liam Taylor','8725458317'),(34,'Sophia Johnson','8008595737'),(35,'Liam White','9671304014'),(36,'Sophia Jackson','7854516696'),(37,'Charlotte Johnson','9302375664'),(38,'Michael Smith','5008946097'),(39,'Bill Zhou','1449153959'),(40,'Ethan Thomas','5277754899'),(41,'Liam Anderson','1755947412'),(42,'Lucas Jackson','6564993642'),(43,'Liam Dick','3119810147'),(44,'James Taylor','9554548739'),(45,'Charlotte Anderson','9532807716'),(46,'Olivia Jackson','2530947776'),(47,'Olivia Zhou','3199547964'),(48,'Ethan Thomas','3420319469'),(49,'Ethan Anderson','7472615755'),(50,'Michael Taylor','5089738464'),(51,'Emma Anderson','6957617634'),(52,'Olivia White','5740194049'),(53,'Michael White','3372715786'),(54,'Michael Jackson','4635080710'),(55,'Bill Brown','8512323153'),(56,'Bill Anderson','2361651197'),(57,'Ethan Dick','7574567391'),(58,'Lucas Zhou','6720896536'),(59,'Ethan Anderson','6810762378'),(60,'Olivia Dick','9281759557'),(61,'James Jackson','1956707042'),(62,'Emma Jackson','9036499269'),(63,'Emma Jackson','2427234263'),(64,'Liam Johnson','6257006624'),(65,'Sophia Thomas','3207095138'),(66,'Ethan Thomas','1830340928'),(67,'Bill White','1407111371'),(68,'Bill Thomas','4593568426'),(69,'Sophia Dick','6047495635'),(70,'Olivia Johnson','5634371559'),(71,'James Zhou','6771488957'),(72,'Olivia Dick','5912153907'),(73,'Michael Dick','6450280341'),(74,'Sophia Anderson','8003542256'),(75,'James Jackson','7320172665'),(76,'Charlotte Brown','1994646007'),(77,'Olivia Taylor','1127845103'),(78,'Bill Zhou','6747184008'),(79,'Lucas Dick','5757283702'),(80,'James Dick','4731027247'),(81,'Liam Anderson','7570092720'),(82,'Lucas Johnson','8187054080'),(83,'Sophia Thomas','1563769732'),(84,'Bill White','4070672312'),(85,'Ethan Anderson','4129804946'),(86,'Charlotte Taylor','9347689988'),(87,'Michael Brown','6552893863'),(88,'Charlotte Johnson','5678471099'),(89,'Charlotte Anderson','2635060806'),(90,'Bill Johnson','9612772365'),(91,'Olivia Thomas','5139066295'),(92,'James Taylor','7885830585'),(93,'Sophia Thomas','7117956028'),(94,'Michael Anderson','6499972974'),(95,'Olivia Jackson','7320731585'),(96,'Bill Dick','9557420928'),(97,'Ethan Taylor','2690497566'),(98,'Emma White','3939438244'),(99,'Ethan Thomas','1389937587'),(100,'Lucas Smith','4908653324');
/*!40000 ALTER TABLE `guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_event`
--

DROP TABLE IF EXISTS `guest_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_event` (
  `guestId` int NOT NULL,
  `eventId` int NOT NULL,
  PRIMARY KEY (`guestId`,`eventId`),
  KEY `fk_guest_event_to_event` (`eventId`),
  CONSTRAINT `fk_guest_event_to_event` FOREIGN KEY (`eventId`) REFERENCES `event` (`eventId`),
  CONSTRAINT `fk_guest_event_to_guest` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_event`
--

LOCK TABLES `guest_event` WRITE;
/*!40000 ALTER TABLE `guest_event` DISABLE KEYS */;
INSERT INTO `guest_event` VALUES (3,1),(9,1),(60,1),(75,1),(77,1),(78,1),(85,1),(97,1),(13,2),(16,2),(34,2),(82,2),(91,2),(100,2),(1,3),(50,3),(78,3),(85,3),(35,4),(49,4),(69,4),(1,5),(2,5),(5,5),(8,5),(10,5),(19,5),(77,5),(86,5),(13,6),(19,6),(22,6),(46,6),(50,6),(73,6),(80,6),(92,6),(22,7),(29,7),(35,7),(40,7),(55,7),(75,7),(78,7),(85,7),(94,7),(20,8),(27,8),(54,8),(67,8),(94,8),(16,9),(76,9),(84,9),(96,9),(97,9),(3,10),(7,10),(27,10),(28,10),(44,10),(57,10),(81,10),(9,11),(20,11),(38,11),(40,11),(55,11),(80,11),(83,11),(4,12),(34,12),(56,12),(11,13),(16,13),(24,13),(71,13),(75,13),(32,14),(44,14),(45,14),(50,14),(53,14),(61,14),(68,14),(77,14),(4,15),(25,15),(54,15),(55,15),(82,15),(2,16),(15,16),(17,16),(86,16),(88,16),(89,16),(91,16),(92,16),(2,17),(19,17),(46,17),(52,17),(80,17),(81,17),(89,17),(99,17),(24,18),(39,18),(50,18),(61,18),(89,18),(97,18),(8,19),(13,19),(22,19),(65,19),(82,19),(98,19),(16,20),(28,20),(41,20),(57,20),(59,20),(67,20),(75,20),(79,20),(98,20),(6,21),(11,21),(22,21),(24,21),(25,21),(27,21),(37,21),(69,21),(79,21),(84,21),(97,21),(12,22),(19,22),(20,22),(26,22),(40,22),(41,22),(54,22),(87,22),(96,22),(8,23),(26,23),(50,23),(74,23),(19,24),(48,24),(77,24),(11,25),(16,25),(28,25),(44,25),(46,25),(55,25),(82,25),(78,26),(99,26),(20,27),(41,27),(47,27),(48,27),(75,27),(77,27),(83,27),(85,27),(29,28),(45,28),(61,28),(72,28),(60,29),(64,29),(80,29),(90,29),(96,29),(22,30),(27,30),(42,30),(46,30),(54,30),(61,30),(86,30),(10,31),(19,31),(35,31),(41,31),(65,31),(94,31),(15,32),(40,32),(50,32),(62,32),(64,32),(81,32),(95,32),(37,33),(50,33),(75,33),(81,33),(86,33),(9,34),(17,34),(26,34),(27,34),(39,34),(61,34),(69,34),(74,34),(83,34),(89,34),(17,35),(35,35),(70,35),(76,35),(93,35),(3,36),(12,36),(35,36),(36,36),(40,36),(47,36),(76,36),(98,36),(6,37),(24,37),(42,37),(50,37),(66,37),(67,37),(79,37),(84,37),(6,38),(85,38),(90,38),(91,38),(14,39),(25,39),(67,39),(70,39),(74,39),(8,40),(27,40),(78,40),(95,40);
/*!40000 ALTER TABLE `guest_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `hostId` int NOT NULL AUTO_INCREMENT,
  `hostName` varchar(45) NOT NULL,
  `hostContactInfo` varchar(100) NOT NULL,
  PRIMARY KEY (`hostId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Michael Taylor','9770915227'),(2,'Ethan Taylor','2690497566'),(3,'Olivia Thomas','9112063998'),(4,'Bill Dick','9557420928'),(5,'Liam Jackson','2876860830'),(6,'Ethan Anderson','1172421771'),(7,'Charlotte White','9993275772'),(8,'Mason Green','4056745439'),(9,'Ella Martinez','2520114991'),(10,'Michael Anderson','6499972974'),(11,'Olivia Thomas','5139066295'),(12,'Amelia Brown','3449855380'),(13,'Ava Lee','7011988999'),(14,'Isabella Johnson','1116691920'),(15,'Noah Smith','1004610175'),(16,'Bill Johnson','9612772365'),(17,'Oliver Davis','9342724181'),(18,'Sophia Wilson','1933143049'),(19,'Michael Brown','6552893863'),(20,'Mia Lewis','6662239754'),(21,'Harper Walker','5668690194'),(22,'Lucas Johnson','8187054080'),(23,'John Carter','9538624172'),(24,'James Dick','4731027247'),(25,'Samuel Harris','7686383595'),(26,'Victoria Turner','3738863775'),(27,'Olivia Taylor','1127845103'),(28,'Henry Adams','9306509892'),(29,'Chloe Scott','2441550296'),(30,'Grace Morris','4963909255');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `hotelId` int NOT NULL AUTO_INCREMENT,
  `hotelName` varchar(100) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `buildingNumber` int DEFAULT NULL,
  PRIMARY KEY (`hotelId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (1,'Sunrise Paradise','NY',1),(2,'Ocean Breeze','NJ',2);
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meeting_room`
--

DROP TABLE IF EXISTS `meeting_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meeting_room` (
  `meetingRoomId` varchar(45) NOT NULL,
  `floorId` int DEFAULT NULL,
  `roomNumber` int DEFAULT NULL,
  `toiletFacility` varchar(45) DEFAULT NULL,
  `movableWall` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `suiteId` int DEFAULT NULL,
  `meetingRoomRate` int DEFAULT NULL,
  `furnitureDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`meetingRoomId`),
  UNIQUE KEY `meetingRoomId_UNIQUE` (`meetingRoomId`),
  KEY `floorId_idx` (`floorId`),
  KEY `suiteId_idx` (`suiteId`),
  CONSTRAINT `fk_meeting_room_to_combined_room` FOREIGN KEY (`meetingRoomId`) REFERENCES `combined_room` (`roomId`),
  CONSTRAINT `fk_meeting_room_to_sleeping_room` FOREIGN KEY (`floorId`) REFERENCES `floor` (`floorId`),
  CONSTRAINT `suiteId` FOREIGN KEY (`suiteId`) REFERENCES `suite` (`suiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meeting_room`
--

LOCK TABLES `meeting_room` WRITE;
/*!40000 ALTER TABLE `meeting_room` DISABLE KEYS */;
INSERT INTO `meeting_room` VALUES ('MR001',3,3001,'0','0','available',1,200,'Table and chairs, no rollaway bed'),('MR002',14,1002,'0','0','available',NULL,200,'Only chairs, no rollaway bed'),('MR003',11,1003,'1','1','not cleaned',3,100,'Table, chairs, and rollaway bed'),('MR004',3,3004,'1','0','available',NULL,200,'Table and chairs, no rollaway bed'),('MR005',7,4005,'1','0','available',5,300,'Table and chairs, no rollaway bed'),('MR006',16,3006,'0','0','available',NULL,300,'Table, no chairs, no rollaway bed'),('MR007',9,2007,'1','1','not cleaned',NULL,100,'Table, no chairs, no rollaway bed'),('MR008',7,4008,'0','0','not cleaned',NULL,200,'Table and chairs, no rollaway bed'),('MR009',11,1009,'1','0','available',NULL,300,'Table and chairs, no rollaway bed'),('MR010',15,2010,'0','1','not cleaned',NULL,200,'Only chairs, no rollaway bed'),('MR011',6,3011,'1','0','available',NULL,200,'Only chairs, no rollaway bed'),('MR012',12,2012,'0','0','available',NULL,300,'Only chairs, no rollaway bed'),('MR013',21,3013,'0','0','available',NULL,100,'Table, no chairs, no rollaway bed'),('MR014',21,3014,'1','0','available',NULL,200,'Table, no chairs, no rollaway bed'),('MR015',5,2015,'0','1','available',NULL,300,'Table, chairs, and rollaway bed'),('MR016',9,2016,'1','0','not cleaned',NULL,100,'Only chairs, no rollaway bed'),('MR017',19,1017,'0','0','not cleaned',NULL,100,'Table, chairs, and rollaway bed'),('MR018',2,2018,'1','1','available',NULL,100,'Table, chairs, and rollaway bed'),('MR019',22,4019,'0','1','available',NULL,300,'Table, chairs, and rollaway bed'),('MR020',15,2020,'1','0','not cleaned',NULL,100,'Only chairs, no rollaway bed'),('MR021',11,1021,'1','0','available',NULL,100,'Table and chairs, no rollaway bed'),('MR022',11,1022,'1','1','under maintenance',NULL,300,'Table, chairs, and rollaway bed'),('MR023',21,3023,'0','1','available',4,300,'Table, chairs, and rollaway bed'),('MR024',16,3024,'0','1','available',NULL,200,'Table and chairs, no rollaway bed'),('MR025',16,3025,'0','1','under maintenance',NULL,300,'Only chairs, no rollaway bed'),('MR026',19,1026,'1','0','available',NULL,100,'Only chairs, no rollaway bed'),('MR027',5,2027,'1','1','available',2,300,'Table, no chairs, no rollaway bed'),('MR028',3,3028,'0','1','available',NULL,100,'Table, chairs, and rollaway bed'),('MR029',5,2029,'1','1','available',NULL,300,'Table and chairs, no rollaway bed'),('MR030',8,1030,'0','0','available',NULL,200,'Only chairs, no rollaway bed'),('MR031',16,3031,'0','1','available',NULL,200,'Only chairs, no rollaway bed'),('MR032',18,5032,'0','1','available',NULL,200,'Table, chairs, and rollaway bed'),('MR033',15,2033,'1','1','not cleaned',NULL,200,'Table, chairs, and rollaway bed'),('MR034',19,1034,'1','0','not cleaned',NULL,200,'Table and chairs, no rollaway bed'),('MR035',14,1035,'0','0','available',NULL,300,'Table and chairs, no rollaway bed'),('MR036',22,4036,'1','0','available',NULL,200,'Table and chairs, no rollaway bed'),('MR037',12,2037,'1','1','available',NULL,100,'Table, no chairs, no rollaway bed'),('MR038',20,2038,'1','0','available',NULL,200,'Table, no chairs, no rollaway bed'),('MR039',10,3039,'0','1','available',NULL,200,'Only chairs, no rollaway bed'),('MR040',9,2040,'1','1','available',NULL,100,'Only chairs, no rollaway bed'),('MR041',16,3041,'0','1','under maintenance',NULL,200,'Table and chairs, no rollaway bed'),('MR042',4,1042,'0','1','available',NULL,300,'Table, no chairs, no rollaway bed'),('MR043',16,3043,'0','1','available',NULL,100,'Table, no chairs, no rollaway bed'),('MR044',19,1044,'1','1','available',NULL,300,'Table and chairs, no rollaway bed'),('MR045',7,4045,'0','1','available',NULL,100,'Table, chairs, and rollaway bed'),('MR046',2,2046,'1','0','under maintenance',NULL,100,'Table, chairs, and rollaway bed'),('MR047',11,1047,'0','0','available',NULL,100,'Table, chairs, and rollaway bed'),('MR048',20,2048,'1','0','available',NULL,300,'Table, chairs, and rollaway bed'),('MR049',20,2049,'1','1','not cleaned',NULL,100,'Only chairs, no rollaway bed'),('MR050',15,2050,'1','1','available',NULL,200,'Table, chairs, and rollaway bed');
/*!40000 ALTER TABLE `meeting_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservationId` int NOT NULL AUTO_INCREMENT,
  `roomId` varchar(45) DEFAULT NULL,
  `roomType` varchar(45) NOT NULL,
  `reservationDate` date NOT NULL,
  `deposit` decimal(10,2) NOT NULL,
  `specialRequest` varchar(45) DEFAULT NULL,
  `checkInDate` datetime DEFAULT NULL,
  `checkOutDate` datetime DEFAULT NULL,
  `bookerId` int NOT NULL,
  PRIMARY KEY (`reservationId`),
  KEY `bookerId_idx` (`bookerId`),
  KEY `fk_reservation_to_combined_room_idx` (`roomId`),
  CONSTRAINT `fk_reservation_to_booker` FOREIGN KEY (`bookerId`) REFERENCES `booker` (`bookerId`),
  CONSTRAINT `fk_reservation_to_combined_room` FOREIGN KEY (`roomId`) REFERENCES `combined_room` (`roomId`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,'SR001','sleeping room','2023-11-22',100.00,NULL,'2023-11-27 00:00:00','2023-11-30 00:00:00',20),(2,'SR002','sleeping room','2023-11-08',100.00,NULL,'2023-11-14 00:00:00','2023-11-21 00:00:00',29),(3,'SR002','sleeping room','2023-03-02',100.00,NULL,'2023-03-07 00:00:00','2023-03-11 00:00:00',23),(4,'SR003','sleeping room','2023-07-14',100.00,NULL,'2023-07-20 00:00:00','2023-07-24 00:00:00',9),(5,'SR006','sleeping room','2023-01-12',100.00,'Early check-in','2023-01-15 00:00:00','2023-01-20 00:00:00',15),(6,'SR006','sleeping room','2023-02-04',100.00,'Extra pillows','2023-02-05 00:00:00','2023-02-06 00:00:00',23),(7,'SR007','sleeping room','2023-05-16',100.00,'Sea view','2023-05-19 00:00:00','2023-05-26 00:00:00',3),(8,'MR007','meeting room','2023-09-13',200.00,NULL,'2023-09-20 00:00:00','2023-09-22 00:00:00',9),(9,'SR007','sleeping room','2023-07-26',100.00,'Extra pillows','2023-08-01 00:00:00','2023-08-06 00:00:00',40),(10,'SR007','sleeping room','2023-07-06',100.00,NULL,'2023-07-09 00:00:00','2023-07-13 00:00:00',11),(11,'SR008','sleeping room','2023-09-27',100.00,NULL,'2023-10-04 00:00:00','2023-10-11 00:00:00',39),(12,'SR009','sleeping room','2023-11-09',100.00,NULL,'2023-11-14 00:00:00','2023-11-17 00:00:00',50),(13,'SR009','sleeping room','2023-12-19',100.00,NULL,'2023-12-26 00:00:00','2023-12-28 00:00:00',5),(14,'MR009','meeting room','2023-04-14',200.00,NULL,'2023-04-17 00:00:00','2023-04-23 00:00:00',44),(15,'SR009','sleeping room','2023-08-09',100.00,NULL,'2023-08-15 00:00:00','2023-08-17 00:00:00',60),(16,'MR009','meeting room','2023-12-18',200.00,'Late check-out','2023-12-19 00:00:00','2023-12-21 00:00:00',59),(17,'SR011','sleeping room','2023-07-28',100.00,NULL,'2023-07-29 00:00:00','2023-08-03 00:00:00',32),(18,'SR011','sleeping room','2023-05-13',100.00,NULL,'2023-05-17 00:00:00','2023-05-19 00:00:00',6),(19,'MR011','meeting room','2023-05-25',200.00,NULL,'2023-05-29 00:00:00','2023-06-03 00:00:00',7),(20,'SR011','sleeping room','2023-10-08',100.00,'Early check-in','2023-10-09 00:00:00','2023-10-12 00:00:00',42),(21,'SR012','sleeping room','2023-02-03',100.00,'Late check-out','2023-02-10 00:00:00','2023-02-16 00:00:00',55),(22,'SR012','sleeping room','2023-09-05',100.00,'Early check-in','2023-09-12 00:00:00','2023-09-17 00:00:00',25),(23,'SR013','sleeping room','2023-09-19',100.00,NULL,'2023-09-21 00:00:00','2023-09-22 00:00:00',2),(24,'SR013','sleeping room','2023-12-17',100.00,NULL,'2023-12-21 00:00:00','2023-12-28 00:00:00',9),(25,'SR014','sleeping room','2023-05-06',100.00,NULL,'2023-05-12 00:00:00','2023-05-15 00:00:00',46),(26,'SR014','sleeping room','2023-05-20',100.00,NULL,'2023-05-24 00:00:00','2023-05-25 00:00:00',30),(27,'SR014','sleeping room','2023-02-15',100.00,NULL,'2023-02-17 00:00:00','2023-02-21 00:00:00',38),(28,'SR015','sleeping room','2023-10-19',100.00,NULL,'2023-10-21 00:00:00','2023-10-23 00:00:00',59),(29,'MR015','meeting room','2023-12-13',200.00,'Early check-in','2023-12-17 00:00:00','2023-12-23 00:00:00',41),(30,'SR015','sleeping room','2023-12-05',100.00,'Early check-in','2023-12-10 00:00:00','2023-12-14 00:00:00',27),(31,'SR016','sleeping room','2023-03-22',100.00,NULL,'2023-03-28 00:00:00','2023-04-01 00:00:00',42),(32,'SR016','sleeping room','2023-04-06',100.00,'Late check-out','2023-04-07 00:00:00','2023-04-14 00:00:00',37),(33,'SR017','sleeping room','2023-07-16',100.00,'Quiet room','2023-07-18 00:00:00','2023-07-23 00:00:00',47),(34,'SR018','sleeping room','2023-11-22',100.00,'Late check-out','2023-11-26 00:00:00','2023-11-29 00:00:00',47),(35,'SR019','sleeping room','2023-02-10',100.00,NULL,'2023-02-14 00:00:00','2023-02-19 00:00:00',55),(36,'SR019','sleeping room','2023-03-01',100.00,NULL,'2023-03-04 00:00:00','2023-03-10 00:00:00',37),(37,'SR020','sleeping room','2023-07-14',100.00,NULL,'2023-07-19 00:00:00','2023-07-25 00:00:00',22),(38,'SR020','sleeping room','2023-01-04',100.00,NULL,'2023-01-10 00:00:00','2023-01-11 00:00:00',11),(39,'SR021','sleeping room','2023-08-23',100.00,NULL,'2023-08-24 00:00:00','2023-08-30 00:00:00',16),(40,'SR022','sleeping room','2023-07-02',100.00,NULL,'2023-07-07 00:00:00','2023-07-10 00:00:00',9),(41,'SR024','sleeping room','2023-01-14',100.00,NULL,'2023-01-21 00:00:00','2023-01-22 00:00:00',23),(42,'SR024','sleeping room','2023-05-22',100.00,NULL,'2023-05-27 00:00:00','2023-05-28 00:00:00',45),(43,'SR026','sleeping room','2023-01-11',100.00,'Sea view','2023-01-16 00:00:00','2023-01-19 00:00:00',58),(44,'SR026','sleeping room','2023-07-22',100.00,NULL,'2023-07-27 00:00:00','2023-07-28 00:00:00',15),(45,'MR026','meeting room','2023-03-30',200.00,'Extra pillows','2023-04-02 00:00:00','2023-04-03 00:00:00',2),(46,'SR026','sleeping room','2022-12-31',100.00,NULL,'2023-01-01 00:00:00','2023-01-02 00:00:00',2),(47,'SR028','sleeping room','2023-11-03',100.00,NULL,'2023-11-07 00:00:00','2023-11-10 00:00:00',16),(48,'SR029','sleeping room','2023-08-26',100.00,NULL,'2023-09-01 00:00:00','2023-09-02 00:00:00',9),(49,'SR029','sleeping room','2023-06-02',100.00,'Early check-in','2023-06-04 00:00:00','2023-06-11 00:00:00',12),(50,'SR032','sleeping room','2023-05-02',100.00,'Late check-out','2023-05-08 00:00:00','2023-05-09 00:00:00',22),(51,'SR035','sleeping room','2023-08-19',100.00,NULL,'2023-08-25 00:00:00','2023-08-26 00:00:00',49),(52,'SR035','sleeping room','2023-02-05',100.00,'Late check-out','2023-02-09 00:00:00','2023-02-16 00:00:00',18),(53,'SR037','sleeping room','2023-10-29',100.00,'Extra pillows','2023-11-01 00:00:00','2023-11-06 00:00:00',51),(54,'SR038','sleeping room','2023-02-08',100.00,'Early check-in','2023-02-13 00:00:00','2023-02-19 00:00:00',13),(55,'SR039','sleeping room','2023-05-10',100.00,NULL,'2023-05-12 00:00:00','2023-05-18 00:00:00',4),(56,'SR041','sleeping room','2023-11-08',100.00,'Quiet room','2023-11-12 00:00:00','2023-11-18 00:00:00',9),(57,'SR041','sleeping room','2023-01-07',100.00,NULL,'2023-01-12 00:00:00','2023-01-13 00:00:00',9),(58,'SR042','sleeping room','2023-03-28',100.00,NULL,'2023-04-01 00:00:00','2023-04-08 00:00:00',57),(59,'MR042','meeting room','2023-10-22',200.00,'Early check-in','2023-10-26 00:00:00','2023-11-01 00:00:00',54),(60,'SR042','sleeping room','2023-06-02',100.00,NULL,'2023-06-04 00:00:00','2023-06-05 00:00:00',39),(61,'SR043','sleeping room','2023-02-21',100.00,NULL,'2023-02-24 00:00:00','2023-03-02 00:00:00',11),(62,'SR043','sleeping room','2023-03-24',100.00,'Sea view','2023-03-26 00:00:00','2023-03-27 00:00:00',57),(63,'SR044','sleeping room','2023-05-01',100.00,NULL,'2023-05-07 00:00:00','2023-05-11 00:00:00',24),(64,'SR044','sleeping room','2023-05-16',100.00,NULL,'2023-05-21 00:00:00','2023-05-26 00:00:00',2),(65,'SR046','sleeping room','2023-04-03',100.00,NULL,'2023-04-09 00:00:00','2023-04-10 00:00:00',9),(66,'SR047','sleeping room','2023-11-15',100.00,NULL,'2023-11-22 00:00:00','2023-11-24 00:00:00',27),(67,'SR048','sleeping room','2023-11-17',100.00,NULL,'2023-11-21 00:00:00','2023-11-28 00:00:00',27),(68,'SR048','sleeping room','2023-11-05',100.00,NULL,'2023-11-06 00:00:00','2023-11-12 00:00:00',2),(69,'SR049','sleeping room','2023-01-29',100.00,NULL,'2023-02-04 00:00:00','2023-02-09 00:00:00',21),(70,'SR049','sleeping room','2023-05-05',100.00,NULL,'2023-05-07 00:00:00','2023-05-10 00:00:00',44),(71,'SR050','sleeping room','2023-11-12',100.00,NULL,'2023-11-16 00:00:00','2023-11-17 00:00:00',23),(72,'SR052','sleeping room','2023-05-16',100.00,'Early check-in','2023-05-22 00:00:00','2023-05-28 00:00:00',49),(73,'SR054','sleeping room','2023-03-03',100.00,NULL,'2023-03-06 00:00:00','2023-03-09 00:00:00',51),(74,'SR055','sleeping room','2023-02-17',100.00,NULL,'2023-02-22 00:00:00','2023-02-25 00:00:00',25),(75,'SR056','sleeping room','2023-02-27',100.00,NULL,'2023-03-05 00:00:00','2023-03-10 00:00:00',8),(76,'SR058','sleeping room','2023-08-14',100.00,'Late check-out','2023-08-20 00:00:00','2023-08-26 00:00:00',23),(77,'SR058','sleeping room','2022-12-30',100.00,'Sea view','2023-01-04 00:00:00','2023-01-07 00:00:00',23),(78,'SR058','sleeping room','2023-07-18',100.00,NULL,'2023-07-22 00:00:00','2023-07-29 00:00:00',23),(79,'SR059','sleeping room','2023-08-01',100.00,'Late check-out','2023-08-03 00:00:00','2023-08-08 00:00:00',49),(80,'SR060','sleeping room','2023-08-07',100.00,NULL,'2023-08-10 00:00:00','2023-08-17 00:00:00',35),(81,'SR060','sleeping room','2023-07-21',100.00,NULL,'2023-07-22 00:00:00','2023-07-27 00:00:00',51),(82,'SR063','sleeping room','2023-07-21',100.00,'Early check-in','2023-07-24 00:00:00','2023-07-30 00:00:00',46),(83,'SR063','sleeping room','2023-09-01',100.00,NULL,'2023-09-08 00:00:00','2023-09-10 00:00:00',45),(84,'SR064','sleeping room','2023-05-05',100.00,NULL,'2023-05-12 00:00:00','2023-05-17 00:00:00',6),(85,'SR065','sleeping room','2023-02-22',100.00,NULL,'2023-02-25 00:00:00','2023-02-27 00:00:00',50),(86,'SR066','sleeping room','2023-09-28',100.00,'Early check-in','2023-10-03 00:00:00','2023-10-06 00:00:00',59),(87,'SR067','sleeping room','2023-02-27',100.00,NULL,'2023-03-04 00:00:00','2023-03-07 00:00:00',7),(88,'SR068','sleeping room','2023-10-31',100.00,'Quiet room','2023-11-07 00:00:00','2023-11-12 00:00:00',54),(89,'SR068','sleeping room','2023-03-24',100.00,NULL,'2023-03-30 00:00:00','2023-04-03 00:00:00',25),(90,'SR068','sleeping room','2023-07-04',100.00,NULL,'2023-07-05 00:00:00','2023-07-11 00:00:00',26),(91,'SR069','sleeping room','2023-02-25',100.00,NULL,'2023-02-26 00:00:00','2023-03-01 00:00:00',41),(92,'SR069','sleeping room','2023-06-23',100.00,NULL,'2023-06-28 00:00:00','2023-07-05 00:00:00',43),(93,'SR069','sleeping room','2023-12-22',100.00,NULL,'2023-12-28 00:00:00','2024-01-04 00:00:00',24),(94,'SR069','sleeping room','2023-08-15',100.00,NULL,'2023-08-18 00:00:00','2023-08-23 00:00:00',42),(95,'SR069','sleeping room','2023-04-13',100.00,'Extra pillows','2023-04-14 00:00:00','2023-04-19 00:00:00',59),(96,'SR069','sleeping room','2023-03-18',100.00,NULL,'2023-03-22 00:00:00','2023-03-28 00:00:00',35),(97,'SR070','sleeping room','2023-03-01',100.00,'Quiet room','2023-03-08 00:00:00','2023-03-14 00:00:00',6),(98,'SR070','sleeping room','2023-10-25',100.00,NULL,'2023-10-26 00:00:00','2023-10-30 00:00:00',30),(99,'SR070','sleeping room','2023-09-25',100.00,NULL,'2023-09-29 00:00:00','2023-10-05 00:00:00',11),(100,'SR070','sleeping room','2023-02-14',100.00,NULL,'2023-02-17 00:00:00','2023-02-20 00:00:00',23),(101,NULL,'sleeping room','2023-12-22',100.00,'Sea view','2024-03-05 00:00:00','2024-03-08 00:00:00',61),(102,NULL,'meeting room','2023-12-25',200.00,'big table','2024-01-03 00:00:00','2024-01-03 00:00:00',62),(103,NULL,'sleeping room','2023-12-30',100.00,NULL,'2024-02-09 00:00:00','2024-02-13 00:00:00',63);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_guest`
--

DROP TABLE IF EXISTS `room_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_guest` (
  `guestId` int NOT NULL,
  `roomId` varchar(45) NOT NULL,
  `moveInDateTime` datetime DEFAULT NULL,
  `moveOutDateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`guestId`,`roomId`),
  KEY `fk_room_guest_to_combined_room_idx` (`roomId`),
  CONSTRAINT `fk_room_guest_to_combined_room` FOREIGN KEY (`roomId`) REFERENCES `combined_room` (`roomId`),
  CONSTRAINT `fk_room_guest_to_guest` FOREIGN KEY (`guestId`) REFERENCES `guest` (`guestId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_guest`
--

LOCK TABLES `room_guest` WRITE;
/*!40000 ALTER TABLE `room_guest` DISABLE KEYS */;
INSERT INTO `room_guest` VALUES (1,'SR049','2023-02-04 00:00:00','2023-02-09 00:00:00'),(2,'MR009','2023-04-17 14:00:00','2023-04-23 14:00:00'),(4,'SR013','2023-09-21 10:00:00','2023-09-22 10:00:00'),(4,'SR044','2023-05-21 12:00:00','2023-05-26 12:00:00'),(4,'SR048','2023-11-06 10:00:00','2023-11-12 10:00:00'),(6,'SR024','2023-01-21 23:00:00','2023-01-22 23:00:00'),(6,'SR058','2023-07-22 22:00:00','2023-07-29 22:00:00'),(7,'SR028','2023-11-07 16:00:00','2023-11-10 16:00:00'),(8,'SR055','2023-02-22 02:00:00','2023-02-25 02:00:00'),(9,'SR007','2023-05-19 12:00:00','2023-05-26 12:00:00'),(11,'SR049','2023-05-07 06:00:00','2023-05-10 06:00:00'),(12,'SR026','2023-01-16 12:00:00','2023-01-19 12:00:00'),(12,'SR044','2023-05-07 02:00:00','2023-05-11 02:00:00'),(12,'SR063','2023-09-08 17:00:00','2023-09-10 17:00:00'),(13,'MR042','2023-10-26 18:00:00','2023-11-01 18:00:00'),(13,'SR059','2023-08-03 03:00:00','2023-08-08 03:00:00'),(14,'SR014','2023-02-17 20:00:00','2023-02-21 20:00:00'),(15,'SR009','2023-08-15 12:00:00','2023-08-17 12:00:00'),(15,'SR041','2023-01-12 20:00:00','2023-01-13 20:00:00'),(15,'SR069','2023-08-18 18:00:00','2023-08-23 18:00:00'),(17,'SR029','2023-09-01 09:00:00','2023-09-02 09:00:00'),(17,'SR046','2023-04-09 03:00:00','2023-04-10 03:00:00'),(19,'SR042','2023-04-01 19:00:00','2023-04-08 19:00:00'),(22,'SR026','2023-01-01 17:00:00','2023-01-02 17:00:00'),(23,'SR021','2023-08-24 04:00:00','2023-08-30 04:00:00'),(24,'SR054','2023-03-06 22:00:00','2023-03-09 22:00:00'),(27,'SR068','2023-07-05 22:00:00','2023-07-11 22:00:00'),(28,'MR009','2023-12-19 01:00:00','2023-12-21 01:00:00'),(28,'SR018','2023-11-26 07:00:00','2023-11-29 07:00:00'),(30,'SR068','2023-03-30 12:00:00','2023-04-03 12:00:00'),(31,'MR007','2023-09-20 23:00:00','2023-09-22 23:00:00'),(31,'MR011','2023-05-29 23:00:00','2023-06-03 23:00:00'),(31,'SR008','2023-10-04 08:00:00','2023-10-11 08:00:00'),(34,'SR024','2023-05-27 03:00:00','2023-05-28 03:00:00'),(35,'SR043','2023-03-26 08:00:00','2023-03-27 08:00:00'),(38,'SR016','2023-03-28 21:00:00','2023-04-01 21:00:00'),(39,'SR019','2023-02-14 14:00:00','2023-02-19 14:00:00'),(41,'SR060','2023-08-10 12:00:00','2023-08-17 12:00:00'),(42,'MR026','2023-04-02 09:00:00','2023-04-03 09:00:00'),(42,'SR032','2023-05-08 05:00:00','2023-05-09 05:00:00'),(42,'SR039','2023-05-12 05:00:00','2023-05-18 05:00:00'),(43,'SR069','2023-02-26 06:00:00','2023-03-01 06:00:00'),(44,'MR015','2023-12-17 02:00:00','2023-12-23 02:00:00'),(46,'SR011','2023-05-17 20:00:00','2023-05-19 20:00:00'),(46,'SR020','2023-07-19 08:00:00','2023-07-25 08:00:00'),(47,'SR037','2023-11-01 02:00:00','2023-11-06 02:00:00'),(48,'SR012','2023-09-12 01:00:00','2023-09-17 01:00:00'),(48,'SR042','2023-06-04 12:00:00','2023-06-05 12:00:00'),(50,'SR013','2023-12-21 00:00:00','2023-12-28 00:00:00'),(53,'SR006','2023-01-15 03:00:00','2023-01-20 03:00:00'),(53,'SR056','2023-03-05 19:00:00','2023-03-10 19:00:00'),(54,'SR007','2023-07-09 13:00:00','2023-07-13 13:00:00'),(54,'SR020','2023-01-10 06:00:00','2023-01-11 06:00:00'),(54,'SR043','2023-02-24 00:00:00','2023-03-02 00:00:00'),(54,'SR070','2023-09-29 05:00:00','2023-10-05 05:00:00'),(55,'SR014','2023-05-24 19:00:00','2023-05-25 19:00:00'),(56,'SR016','2023-04-07 17:00:00','2023-04-14 17:00:00'),(56,'SR060','2023-07-22 10:00:00','2023-07-27 10:00:00'),(58,'SR003','2023-07-20 21:00:00','2023-07-24 21:00:00'),(58,'SR022','2023-07-07 22:00:00','2023-07-10 22:00:00'),(58,'SR041','2023-11-12 16:00:00','2023-11-18 16:00:00'),(61,'SR011','2023-07-29 10:00:00','2023-08-03 10:00:00'),(61,'SR069','2023-12-28 15:00:00','2024-01-04 15:00:00'),(62,'SR029','2023-06-04 04:00:00','2023-06-11 04:00:00'),(63,'SR002','2023-11-14 00:00:00','2023-11-21 00:00:00'),(65,'SR048','2023-11-21 08:00:00','2023-11-28 08:00:00'),(65,'SR065','2023-02-25 11:00:00','2023-02-27 11:00:00'),(66,'SR047','2023-11-22 09:00:00','2023-11-24 09:00:00'),(66,'SR052','2023-05-22 19:00:00','2023-05-28 19:00:00'),(67,'SR038','2023-02-13 10:00:00','2023-02-19 10:00:00'),(69,'SR015','2023-10-21 06:00:00','2023-10-23 06:00:00'),(71,'SR011','2023-10-09 00:00:00','2023-10-12 00:00:00'),(71,'SR063','2023-07-24 02:00:00','2023-07-30 02:00:00'),(73,'SR002','2023-03-07 08:00:00','2023-03-11 08:00:00'),(73,'SR006','2023-02-05 16:00:00','2023-02-06 16:00:00'),(73,'SR070','2023-02-17 13:00:00','2023-02-20 13:00:00'),(75,'SR017','2023-07-18 17:00:00','2023-07-23 17:00:00'),(76,'SR066','2023-10-03 09:00:00','2023-10-06 09:00:00'),(76,'SR070','2023-03-08 02:00:00','2023-03-14 02:00:00'),(77,'SR069','2023-03-22 17:00:00','2023-03-28 17:00:00'),(79,'SR068','2023-11-07 10:00:00','2023-11-12 10:00:00'),(80,'SR012','2023-02-10 09:00:00','2023-02-16 09:00:00'),(82,'SR001','2023-11-27 16:00:00','2023-11-30 16:00:00'),(82,'SR019','2023-03-04 13:00:00','2023-03-10 13:00:00'),(85,'SR015','2023-12-10 10:00:00','2023-12-14 10:00:00'),(85,'SR050','2023-11-16 14:00:00','2023-11-17 14:00:00'),(86,'SR007','2023-08-01 01:00:00','2023-08-06 01:00:00'),(86,'SR058','2023-08-20 15:00:00','2023-08-26 15:00:00'),(87,'SR009','2023-11-14 19:00:00','2023-11-17 19:00:00'),(87,'SR069','2023-06-28 01:00:00','2023-07-05 01:00:00'),(89,'SR035','2023-02-09 13:00:00','2023-02-16 13:00:00'),(90,'SR009','2023-12-26 07:00:00','2023-12-28 07:00:00'),(91,'SR067','2023-03-04 04:00:00','2023-03-07 04:00:00'),(92,'SR035','2023-08-25 14:00:00','2023-08-26 14:00:00'),(92,'SR069','2023-04-14 09:00:00','2023-04-19 09:00:00'),(93,'SR026','2023-07-27 19:00:00','2023-07-28 19:00:00'),(95,'SR014','2023-05-12 15:00:00','2023-05-15 15:00:00'),(96,'SR070','2023-10-26 09:00:00','2023-10-30 09:00:00'),(97,'SR058','2023-01-04 02:00:00','2023-01-07 02:00:00'),(99,'SR064','2023-05-12 04:00:00','2023-05-17 04:00:00');
/*!40000 ALTER TABLE `room_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceId` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `charge` decimal(10,2) NOT NULL,
  `associatedRoomId` varchar(45) DEFAULT NULL,
  `billingId` int NOT NULL,
  PRIMARY KEY (`serviceId`),
  KEY `billingId` (`billingId`),
  KEY `fk_guest_event_to_combined_room_idx` (`associatedRoomId`),
  CONSTRAINT `fk_guest_event_to_combined_room` FOREIGN KEY (`associatedRoomId`) REFERENCES `combined_room` (`roomId`),
  CONSTRAINT `service_ibfk_3` FOREIGN KEY (`billingId`) REFERENCES `billing` (`billingId`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'others',20.00,'SR011',25),(2,'food & drinks',50.00,'SR055',12),(3,'extra cleaning',30.00,'SR011',19),(4,'food & drinks',50.00,'SR069',25),(5,'extra cleaning',30.00,'SR024',24),(6,'extra cleaning',30.00,'SR011',19),(7,'extra cleaning',30.00,'SR064',31),(8,'extra cleaning',30.00,'SR013',2),(9,'food & drinks',50.00,'MR015',8),(10,'food & drinks',50.00,'SR063',35),(11,'food & drinks',50.00,'SR007',42),(12,'food & drinks',50.00,'SR048',3),(13,'others',20.00,'MR015',8),(14,'food & drinks',50.00,'SR020',14),(15,'extra cleaning',30.00,'SR069',23),(16,'extra cleaning',30.00,'SR064',31),(17,'extra cleaning',30.00,'SR014',55),(18,'food & drinks',50.00,'SR052',51),(19,'extra cleaning',30.00,'SR037',52),(20,'extra cleaning',30.00,'SR028',4),(21,'extra cleaning',30.00,'SR070',1),(22,'others',20.00,'SR069',41),(23,'food & drinks',50.00,'SR069',58),(24,'extra cleaning',30.00,'SR013',34),(25,'others',20.00,'SR069',58),(26,'extra cleaning',30.00,'SR037',52),(27,'food & drinks',50.00,'SR039',46),(28,'extra cleaning',30.00,'SR007',26),(29,'extra cleaning',30.00,'SR063',35),(30,'food & drinks',50.00,'SR013',34);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sleeping_room`
--

DROP TABLE IF EXISTS `sleeping_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sleeping_room` (
  `sleepingRoomId` varchar(45) NOT NULL,
  `suiteId` int DEFAULT NULL,
  `roomNumber` int DEFAULT NULL,
  `floorId` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `sleepingRoomRate` int DEFAULT NULL,
  `furnitureDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sleepingRoomId`),
  UNIQUE KEY `sleepingRoomId_UNIQUE` (`sleepingRoomId`),
  KEY `suitId_idx` (`suiteId`),
  KEY `floorId_idx` (`floorId`),
  CONSTRAINT `fk_sleeping_room_to_combined_room` FOREIGN KEY (`sleepingRoomId`) REFERENCES `combined_room` (`roomId`),
  CONSTRAINT `floorId` FOREIGN KEY (`floorId`) REFERENCES `floor` (`floorId`),
  CONSTRAINT `suitId` FOREIGN KEY (`suiteId`) REFERENCES `suite` (`suiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sleeping_room`
--

LOCK TABLES `sleeping_room` WRITE;
/*!40000 ALTER TABLE `sleeping_room` DISABLE KEYS */;
INSERT INTO `sleeping_room` VALUES ('SR001',NULL,3567,6,'not cleaned',150,'2 Queens, 1 chair'),('SR002',NULL,1710,1,'available',150,'1 Queen, 1 chair'),('SR003',NULL,4271,17,'available',100,'1 King, 1 Queen, 1 chair'),('SR004',NULL,1273,1,'available',100,'1 Queen, 1 chair'),('SR005',NULL,1114,11,'available',100,'2 Queens, 1 chair'),('SR006',NULL,3323,3,'available',50,'1 Queen, 1 chair'),('SR007',NULL,1437,14,'available',100,'1 Queen, 1 chair'),('SR008',NULL,1014,8,'available',50,'1 Queen, 1 chair'),('SR009',NULL,2917,5,'available',150,'1 King, 2 chairs'),('SR010',NULL,3047,6,'available',150,'1 King, 1 Queen, 1 chair'),('SR011',NULL,3247,10,'available',150,'1 Queen, 1 chair'),('SR012',NULL,1672,11,'available',50,'2 Queens, 2 chairs'),('SR013',NULL,3301,6,'available',50,'2 Queens, 1 chair'),('SR014',NULL,1864,11,'available',150,'1 King, 2 chairs'),('SR015',NULL,1892,19,'available',50,'2 Queens, 2 chairs'),('SR016',NULL,3760,10,'available',100,'2 Queens, 1 chair'),('SR017',NULL,1632,14,'available',150,'1 King, 2 chairs'),('SR018',NULL,5746,18,'available',50,'2 Queens, 1 chair'),('SR019',NULL,3162,6,'available',100,'2 Queens, 2 chairs'),('SR020',NULL,1214,4,'available',50,'1 King, 2 chairs'),('SR021',NULL,1243,1,'available',100,'1 Queen, 1 chair'),('SR022',NULL,1765,8,'available',150,'2 Queens, 2 chairs'),('SR023',NULL,1031,4,'not cleaned',50,'1 King, 2 chairs'),('SR024',NULL,1396,1,'available',150,'2 Queens, 1 chair'),('SR025',1,3002,3,'not cleaned',150,'1 King, 1 Queen, 1 chair'),('SR026',NULL,1394,14,'not cleaned',50,'1 Queen, 1 chair'),('SR027',NULL,2201,12,'available',150,'1 Queen, 1 chair'),('SR028',NULL,1435,14,'available',150,'1 King, 1 Queen, 1 chair'),('SR029',NULL,3374,21,'available',50,'2 Queens, 2 chairs'),('SR030',NULL,1180,11,'available',100,'2 Queens, 1 chair'),('SR031',NULL,1769,14,'available',100,'1 King, 2 chairs'),('SR032',NULL,4875,22,'available',150,'1 King, 1 Queen, 1 chair'),('SR033',NULL,4477,17,'available',100,'2 Queens, 1 chair'),('SR034',2,2028,5,'available',100,'1 King, 1 Queen, 1 chair'),('SR035',NULL,3205,6,'available',150,'2 Queens, 2 chairs'),('SR036',NULL,2135,12,'available',50,'1 King, 2 chairs'),('SR037',NULL,1361,4,'available',50,'1 King, 2 chairs'),('SR038',NULL,3067,16,'available',100,'2 Queens, 1 chair'),('SR039',NULL,1347,4,'not cleaned',100,'2 Queens, 2 chairs'),('SR040',NULL,2623,9,'available',50,'2 Queens, 1 chair'),('SR041',3,1004,11,'available',100,'2 Queens, 1 chair'),('SR042',NULL,2040,20,'not cleaned',50,'1 King, 1 Queen, 1 chair'),('SR043',NULL,2140,12,'under maintenance',100,'1 King, 2 chairs'),('SR044',NULL,4328,17,'available',50,'1 King, 2 chairs'),('SR045',NULL,5008,18,'available',150,'2 Queens, 1 chair'),('SR046',NULL,3679,13,'available',100,'2 Queens, 2 chairs'),('SR047',NULL,1464,1,'available',150,'1 Queen, 1 chair'),('SR048',NULL,3796,3,'available',50,'1 Queen, 1 chair'),('SR049',NULL,3037,3,'not cleaned',100,'2 Queens, 2 chairs'),('SR050',NULL,2944,5,'under maintenance',50,'2 Queens, 2 chairs'),('SR051',4,3024,21,'available',50,'2 Queens, 2 chairs'),('SR052',5,4006,7,'available',50,'2 Queens, 2 chairs'),('SR053',NULL,3814,13,'available',100,'1 Queen, 1 chair'),('SR054',NULL,4455,22,'available',50,'1 King, 1 Queen, 1 chair'),('SR055',NULL,3696,16,'available',150,'1 King, 1 Queen, 1 chair'),('SR056',NULL,2216,12,'available',100,'2 Queens, 2 chairs'),('SR057',NULL,4199,7,'not cleaned',150,'2 Queens, 1 chair'),('SR058',NULL,1792,19,'not cleaned',100,'2 Queens, 2 chairs'),('SR059',NULL,4107,22,'not cleaned',100,'2 Queens, 1 chair'),('SR060',NULL,1354,8,'available',50,'1 King, 2 chairs'),('SR061',NULL,1666,4,'not cleaned',150,'2 Queens, 1 chair'),('SR062',NULL,1723,1,'not cleaned',50,'2 Queens, 1 chair'),('SR063',NULL,3244,10,'available',150,'1 King, 1 Queen, 1 chair'),('SR064',NULL,4682,22,'not cleaned',150,'1 Queen, 1 chair'),('SR065',NULL,1441,1,'not cleaned',150,'2 Queens, 2 chairs'),('SR066',NULL,3152,21,'available',150,'1 Queen, 1 chair'),('SR067',NULL,1946,4,'under maintenance',100,'1 King, 1 Queen, 1 chair'),('SR068',NULL,2752,5,'available',150,'2 Queens, 2 chairs'),('SR069',NULL,1418,4,'available',50,'1 Queen, 1 chair'),('SR070',NULL,2941,9,'available',100,'1 King, 2 chairs');
/*!40000 ALTER TABLE `sleeping_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot` (
  `slot` varchar(100) NOT NULL,
  `discount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES ('afternoon','0.5'),('breakfast','0'),('evening','0.5'),('lunch','0'),('morning','0.5'),('night','0.5'),('supper','0');
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suite`
--

DROP TABLE IF EXISTS `suite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suite` (
  `suiteId` int NOT NULL,
  `hallAccessingRoomId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`suiteId`),
  KEY `fk_suite_to_combined_room_idx` (`hallAccessingRoomId`),
  CONSTRAINT `fk_suite_to_combined_room` FOREIGN KEY (`hallAccessingRoomId`) REFERENCES `combined_room` (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suite`
--

LOCK TABLES `suite` WRITE;
/*!40000 ALTER TABLE `suite` DISABLE KEYS */;
INSERT INTO `suite` VALUES (5,'MR005'),(4,'MR023'),(1,'SR025'),(2,'SR034'),(3,'SR041');
/*!40000 ALTER TABLE `suite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wing`
--

DROP TABLE IF EXISTS `wing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wing` (
  `wingId` int NOT NULL AUTO_INCREMENT,
  `wingName` varchar(100) NOT NULL,
  `buildingId` int NOT NULL,
  `floorNum` int NOT NULL,
  PRIMARY KEY (`wingId`),
  KEY `buildingId_idx` (`buildingId`),
  CONSTRAINT `buildingId` FOREIGN KEY (`buildingId`) REFERENCES `building` (`buildingId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wing`
--

LOCK TABLES `wing` WRITE;
/*!40000 ALTER TABLE `wing` DISABLE KEYS */;
INSERT INTO `wing` VALUES (1,'West Wing',1,3),(2,'East Wing',1,4),(3,'East Wing',2,3),(4,'North Wing',2,3),(5,'South Wing',2,5),(6,'East Wing',3,4);
/*!40000 ALTER TABLE `wing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 22:14:08
