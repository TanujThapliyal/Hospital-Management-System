CREATE DATABASE  IF NOT EXISTS `loyal_hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `loyal_hospital`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: loyal_hospital
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `channelno` varchar(255) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `patientname` varchar(255) DEFAULT NULL,
  `roomno` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`channelno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES ('CH001','DS001','PS001',1,'2023-12-21'),('CH002','DS003','PS003',3,'2023-12-20'),('CH003','DS002','PS002',2,'2023-12-22'),('CH004','DS003','PS003',4,'2023-12-21'),('CH005','DS001','PS004',10,'2023-12-25'),('CH006','DS003','PS001',10,'2023-12-22'),('CH007','DS001','PS005',8,'2023-12-29'),('CH008','DS001','PS006',13,'2024-01-26'),('CH009','DS003','PS005',2,'2024-04-12');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `doctorno` varchar(255) NOT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `specialization` varchar(255) DEFAULT NULL,
  `qualification` varchar(255) DEFAULT NULL,
  `channelfee` int DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `room` int DEFAULT NULL,
  `log_id` int DEFAULT NULL,
  PRIMARY KEY (`doctorno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('DS001',' Ankit','Cardiology ',' MBBS',10000,78945632,1,2),('DS002','Aviskshit','Nephrology','MBBS',1200,98534522,2,2),('DS003','Vikas Dogra','Dermatalogist','BAMS',5000,4685268,3,2);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemid` varchar(255) NOT NULL,
  `itemname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `sellprice` int DEFAULT NULL,
  `buyprice` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('IU001',' Dolo',' Fever',50,48,100),('IU002','Crocin ',' Headache',100,98,2000),('IU003','Omyfyl ','For gastric Problem',100,98,100),('IU004','HCQS',' For kidney diseases',120,118,200),('IU005',' HCQS',' kidney',100,86,100);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientno` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patientno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('PS001','Ravi',98754682,'New Delhi'),('PS002','Akash',78452898,'Rajasthan'),('PS003','Gunjan ',78964512,'B-1 Aya Nagar'),('PS004','Payal',4586285,'Rajiv Nagar Gurgaon'),('PS005','Jack',78954765,'New York'),('PS006','Aman',895679,'New Delhi');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `pid` varchar(255) NOT NULL,
  `channelid` varchar(255) DEFAULT NULL,
  `doctorname` varchar(255) DEFAULT NULL,
  `dtype` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('PC001','CH001',' Ankit',' Fever','Dolo 500mg'),('PC002','CH005',' Ankit',' Headache','Crocin'),('PC003','CH007',' Ankit',' Kidney problem','Infection in kidney'),('PC004','CH006','Vikas Dogra','Cough','xyx'),('PC005','CH008',' Ankit',' Cancer','Infection');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sale_product`
--

DROP TABLE IF EXISTS `sale_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sale_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sales_id` int DEFAULT NULL,
  `prod_id` varchar(255) DEFAULT NULL,
  `sellprice` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_product`
--

LOCK TABLES `sale_product` WRITE;
/*!40000 ALTER TABLE `sale_product` DISABLE KEYS */;
INSERT INTO `sale_product` VALUES (1,7,'IU001',50,2,100),(2,8,'IU002',100,5,500),(3,9,'IU004',120,0,0),(4,9,'IU004',120,5,600),(5,10,'IU001',50,2,100),(6,11,'IU002',100,5,500),(7,12,'IU001',50,1,50),(8,13,'IU001',50,5,250),(9,14,'IU001',50,2,100);
/*!40000 ALTER TABLE `sale_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `subtotal` int DEFAULT NULL,
  `pay` int DEFAULT NULL,
  `balance` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'2023-12-19',500,1000,500),(2,'2023-12-19',100,200,100),(3,'2023-12-19',100,200,100),(4,'2023-12-19',100,200,100),(5,'2023-12-19',50,100,50),(6,'2023-12-19',100,300,200),(7,'2023-12-19',100,300,200),(8,'2023-12-20',500,600,100),(9,'2023-12-21',600,600,0),(10,'2024-01-02',100,200,100),(11,'2024-01-03',500,600,100),(12,'2024-01-03',50,2000,1950),(13,'2024-04-10',250,1000,750),(14,'2024-04-25',100,200,100);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `utype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Ajay','Ajay','1234','Receptionist'),(2,'Ankit','Ankit','8095','Doctor'),(3,'Vipul','Vipul','106317','Pharmacist'),(4,'Inderjeet','Inderjeet','1234','Doctor'),(5,'Deepak Juneja','Deepak Juneja','1234','Doctor'),(6,'Tanuj',' Tanuj','1234','Pharmacist'),(7,'Ak','Ak','56','Doctor'),(8,'xyz','xyz','100','Receptionist');
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

-- Dump completed on 2024-04-25 12:22:40
