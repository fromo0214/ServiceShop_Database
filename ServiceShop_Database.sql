CREATE DATABASE  IF NOT EXISTS `ars` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ars`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ars
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `employeeservice_t`
--

DROP TABLE IF EXISTS `employeeservice_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeservice_t` (
  `EmployeeID` char(10) NOT NULL,
  `ServiceCode` char(4) NOT NULL,
  PRIMARY KEY (`EmployeeID`,`ServiceCode`),
  KEY `EmployeeService_FK2` (`ServiceCode`),
  CONSTRAINT `EmployeeService_FK1` FOREIGN KEY (`EmployeeID`) REFERENCES `mechanic_t` (`EmployeeID`),
  CONSTRAINT `EmployeeService_FK2` FOREIGN KEY (`ServiceCode`) REFERENCES `service_t` (`ServiceCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeservice_t`
--

LOCK TABLES `employeeservice_t` WRITE;
/*!40000 ALTER TABLE `employeeservice_t` DISABLE KEYS */;
INSERT INTO `employeeservice_t` VALUES ('1','0001'),('2','0001'),('3','0001'),('4','0001'),('5','0001'),('6','0001'),('7','0001'),('8','0001'),('9','0001'),('2','0002'),('4','0002'),('7','0002'),('8','0002'),('9','0002'),('1','0003'),('2','0003'),('3','0003'),('4','0003'),('5','0003'),('6','0004'),('7','0004'),('8','0004'),('9','0004'),('3','0005'),('4','0005'),('8','0005'),('1','0006'),('2','0006'),('3','0006'),('4','0006'),('5','0006'),('6','0006'),('7','0006'),('8','0006'),('9','0006'),('8','0007'),('9','0007'),('1','0008'),('2','0008'),('3','0008'),('4','0008'),('5','0008'),('6','0008'),('7','0008'),('8','0008'),('9','0008'),('4','0009'),('5','0009'),('7','0009'),('9','0009');
/*!40000 ALTER TABLE `employeeservice_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mechanic_t`
--

DROP TABLE IF EXISTS `mechanic_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mechanic_t` (
  `EmployeeID` char(10) NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `LastName` varchar(30) NOT NULL,
  `DateHired` date NOT NULL,
  `Pay` float NOT NULL,
  `Address` varchar(30) NOT NULL,
  `City` varchar(30) NOT NULL,
  `State` char(2) NOT NULL,
  `PostalCode` varchar(10) NOT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mechanic_t`
--

LOCK TABLES `mechanic_t` WRITE;
/*!40000 ALTER TABLE `mechanic_t` DISABLE KEYS */;
INSERT INTO `mechanic_t` VALUES ('1','John','White','2023-12-01',16.05,'13421 Main St.','Vermont','CA','90250'),('10','Chee','Kumon','2019-11-12',20.5,'902 Tommorow Blvd','Lawndale','CA','90210'),('2','Maria','Hernandez','2022-11-02',16,'1552 Crenshaw BLVD','Manchester','CA','90290'),('3','Madeline','Maddy','2021-10-03',16.5,'7764 Living','Manauel','CA','8920'),('4','John','Doe','2020-11-06',16.5,'902 French ave','Maville','CA','34543'),('5','Harper','Wick','2019-05-23',17.5,'1899 El Segundo blvd','El Segundo','CA','90556'),('6','Josh','Parker','2018-10-04',17.5,'2929 Broadway ave','El Segundo','CA','90556'),('7','Kane','Boom','2020-10-19',18.5,'3432 Tuyonuestro Blvd','Manhattan Beach','CA','90567'),('8','Mayve','Right','2017-12-30',19.5,'6281 Tyrant Road','Throne','CA','33924'),('9','Kali','Uno','2020-03-19',20,'1902 Dimelo ave','Inglewood','CA','90332');
/*!40000 ALTER TABLE `mechanic_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_t`
--

DROP TABLE IF EXISTS `part_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_t` (
  `PartID` char(5) NOT NULL,
  `PartCount` int NOT NULL,
  `PartSalePrice` float NOT NULL,
  `PartName` varchar(30) NOT NULL,
  PRIMARY KEY (`PartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_t`
--

LOCK TABLES `part_t` WRITE;
/*!40000 ALTER TABLE `part_t` DISABLE KEYS */;
INSERT INTO `part_t` VALUES ('0001',50,20.05,'Oil'),('0002',25,100,'Head Gasket'),('0003',15,60,'Tires'),('0004',20,100,'Transmission Fluid'),('0005',30,50,'Brakes'),('0006',50,100,'Car Battery'),('0007',10,15,'Air Filter'),('0008',10,10000,'Main Car Battery'),('0009',5,10,'Coolant'),('0010',10,250,'Rotor');
/*!40000 ALTER TABLE `part_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_t`
--

DROP TABLE IF EXISTS `service_t`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_t` (
  `ServiceCode` char(4) NOT NULL,
  `ServiceName` varchar(40) NOT NULL,
  `ServiceDescription` varchar(200) NOT NULL,
  `TimeAllocated` float NOT NULL,
  PRIMARY KEY (`ServiceCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_t`
--

LOCK TABLES `service_t` WRITE;
/*!40000 ALTER TABLE `service_t` DISABLE KEYS */;
INSERT INTO `service_t` VALUES ('0001','Oil Change','Change the oil of the car',30),('0002','Tire Rotation','Rotate the tires of the car to make sure they spin',200),('0003','Transmission Fliuid Change','Flush the tranmission and replace it with new fluid',120),('0004','Tire Change','Check the tread of a tire and if it is too low change it',30),('0005','Engine Rebuild','Rebuild the engine of a car from the ground up',1000),('0006','Change Car Battery','Change the battery to a car regardless if it is bad or not',60),('0007','Change Car Battery(EV)','Change car battry of electric car which has died',300),('0008','Change Cabin Air Filter','Replace cabin air filter',10),('0009','Replace head gasket','Find and replace a broken head gasket',20),('0010','Brake Replacement','Replace brakes on all 4 wheels',300);
/*!40000 ALTER TABLE `service_t` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicevehicle`
--

DROP TABLE IF EXISTS `servicevehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicevehicle` (
  `ServiceCode` char(4) NOT NULL,
  `VEHICLEID` char(4) NOT NULL,
  PRIMARY KEY (`ServiceCode`,`VEHICLEID`),
  KEY `ServiceVehicle_FK2` (`VEHICLEID`),
  CONSTRAINT `ServiceVehicle_FK1` FOREIGN KEY (`ServiceCode`) REFERENCES `service_t` (`ServiceCode`),
  CONSTRAINT `ServiceVehicle_FK2` FOREIGN KEY (`VEHICLEID`) REFERENCES `vehicle` (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicevehicle`
--

LOCK TABLES `servicevehicle` WRITE;
/*!40000 ALTER TABLE `servicevehicle` DISABLE KEYS */;
INSERT INTO `servicevehicle` VALUES ('0001','0001'),('0002','0001'),('0004','0001'),('0006','0001'),('0008','0001'),('0001','0002'),('0002','0002'),('0003','0002'),('0004','0002'),('0005','0002'),('0006','0002'),('0008','0002'),('0009','0002'),('0001','0003'),('0002','0003'),('0003','0003'),('0004','0003'),('0005','0003'),('0006','0003'),('0008','0003'),('0009','0003'),('0002','0004'),('0004','0004'),('0006','0004'),('0007','0004'),('0008','0004'),('0002','0005'),('0004','0005'),('0006','0005'),('0007','0005'),('0008','0005'),('0001','0006'),('0002','0006'),('0003','0006'),('0004','0006'),('0005','0006'),('0006','0006'),('0007','0006'),('0008','0006'),('0009','0006'),('0001','0007'),('0002','0007'),('0003','0007'),('0004','0007'),('0005','0007'),('0006','0007'),('0008','0007'),('0009','0007'),('0002','0008'),('0004','0008'),('0006','0008'),('0007','0008'),('0008','0008'),('0002','0009'),('0004','0009'),('0006','0009'),('0007','0009'),('0008','0009'),('0002','0010'),('0004','0010'),('0006','0010'),('0007','0010'),('0008','0010'),('0001','0011'),('0002','0011'),('0003','0011'),('0004','0011'),('0005','0011'),('0006','0011'),('0008','0011'),('0009','0011'),('0001','0012'),('0002','0012'),('0003','0012'),('0004','0012'),('0005','0012'),('0006','0012'),('0008','0012'),('0009','0012'),('0001','0013'),('0002','0013'),('0003','0013'),('0004','0013'),('0005','0013'),('0006','0013'),('0008','0013'),('0009','0013'),('0001','0014'),('0002','0014'),('0003','0014'),('0004','0014'),('0005','0014'),('0006','0014'),('0008','0014'),('0009','0014');
/*!40000 ALTER TABLE `servicevehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `VehicleID` char(4) NOT NULL,
  `VehicleManu` varchar(40) NOT NULL,
  `VehicleMake` varchar(40) NOT NULL,
  `VehicleYear` int NOT NULL,
  `EngineType` varchar(30) NOT NULL,
  `CarType` varchar(20) NOT NULL,
  PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES ('0001','Porsche','911',2021,'ICE','Coupe'),('0002','Porsche','Macan',2021,'ICE','SUV'),('0003','Honda','Civic',2018,'ICE','Sedan'),('0004','Tesla','Model 3',2019,'EV','Sedan'),('0005','Tesla','Model S',2019,'EV','Sedan'),('0006','Toyota','Corrolla',2017,'ICE','Sedan'),('0007','Ford','F150',2020,'ICE','Truck'),('0008','Tesla','Model 3',2019,'EV','Sedan'),('0009','PoleStar','1',2020,'EV','Sedan'),('0010','PoleStar','2',2020,'EV','Sedan'),('0011','Honda','CRV',2020,'ICE','SUV'),('0012','Porsche','Cayenne',2023,'ICE','SUV'),('0013','Porsche','Panamera',2023,'ICE','SUV'),('0014','Toyota','Prius',2018,'Hybrid','Sedan'),('0015','Mapple','Prius Super Charger',2019,'Hybrid','Truck');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiclepart`
--

DROP TABLE IF EXISTS `vehiclepart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiclepart` (
  `VEHICLEID` char(4) NOT NULL,
  `PARTID` char(5) NOT NULL,
  PRIMARY KEY (`VEHICLEID`,`PARTID`),
  KEY `VehiclePart_FK2` (`PARTID`),
  CONSTRAINT `VehiclePart_FK1` FOREIGN KEY (`VEHICLEID`) REFERENCES `vehicle` (`VehicleID`),
  CONSTRAINT `VehiclePart_FK2` FOREIGN KEY (`PARTID`) REFERENCES `part_t` (`PartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiclepart`
--

LOCK TABLES `vehiclepart` WRITE;
/*!40000 ALTER TABLE `vehiclepart` DISABLE KEYS */;
INSERT INTO `vehiclepart` VALUES ('0001','0001'),('0002','0001'),('0003','0001'),('0006','0001'),('0007','0001'),('0011','0001'),('0012','0001'),('0013','0001'),('0014','0001'),('0001','0002'),('0002','0002'),('0003','0002'),('0006','0002'),('0007','0002'),('0011','0002'),('0012','0002'),('0013','0002'),('0014','0002'),('0001','0003'),('0002','0003'),('0003','0003'),('0004','0003'),('0005','0003'),('0006','0003'),('0007','0003'),('0008','0003'),('0009','0003'),('0010','0003'),('0011','0003'),('0012','0003'),('0013','0003'),('0014','0003'),('0001','0004'),('0002','0004'),('0003','0004'),('0006','0004'),('0007','0004'),('0011','0004'),('0012','0004'),('0013','0004'),('0014','0004'),('0001','0005'),('0002','0005'),('0003','0005'),('0004','0005'),('0005','0005'),('0006','0005'),('0007','0005'),('0008','0005'),('0009','0005'),('0010','0005'),('0011','0005'),('0012','0005'),('0013','0005'),('0014','0005'),('0004','0006'),('0005','0006'),('0008','0006'),('0009','0006'),('0010','0006'),('0001','0007'),('0002','0007'),('0003','0007'),('0004','0007'),('0005','0007'),('0006','0007'),('0007','0007'),('0008','0007'),('0009','0007'),('0010','0007'),('0011','0007'),('0012','0007'),('0013','0007'),('0014','0007'),('0001','0008'),('0002','0008'),('0003','0008'),('0004','0008'),('0005','0008'),('0006','0008'),('0007','0008'),('0008','0008'),('0009','0008'),('0010','0008'),('0011','0008'),('0012','0008'),('0013','0008'),('0014','0008');
/*!40000 ALTER TABLE `vehiclepart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-04 11:27:56
