-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: blooddonationdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin_details`
--

DROP TABLE IF EXISTS `admin_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_details` (
  `admin_details` int NOT NULL AUTO_INCREMENT,
  `admin_pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`admin_details`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_details`
--

LOCK TABLES `admin_details` WRITE;
/*!40000 ALTER TABLE `admin_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactus`
--

DROP TABLE IF EXISTS `contactus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactus` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `question` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactus`
--

LOCK TABLES `contactus` WRITE;
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` VALUES (1,'Chandra Prakash','ashishkumar434767@gmail.com','9696556298','Please contact to me ','2023-04-27'),(2,'Ajay Gupta','ajaygupta232@gmail.com','8527419632','Please contact to me ','2023-05-19');
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `sro` int NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `doctor_password` varchar(45) NOT NULL,
  PRIMARY KEY (`sro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'Ashish','ashish');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donar`
--

DROP TABLE IF EXISTS `donar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donar` (
  `donar_id` varchar(10) NOT NULL,
  `donar_pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `city` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`donar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donar`
--

LOCK TABLES `donar` WRITE;
/*!40000 ALTER TABLE `donar` DISABLE KEYS */;
INSERT INTO `donar` VALUES ('abhishek4','abhishek','Abhishek Anand',21,'abhishekanandr6933@gmail.com','male','7415829614','O+','Orai','2023-05-03'),('ajay25','ajay','Ajay Gupta',22,'ajaygupta7485@gmai.com','male','1593574862','A+','Gorakhpur','2023-06-03'),('amit16','amit','Amit Kumar',21,'amitkumar4538@gmail.com','male','9414789254','O+','Gorakhpur','2023-05-03'),('pradeep45','pradeep','Pradeep Kumar',21,'pradeepkumar9658@gmail.com','male','1478455263','O+','Kanpur','2023-05-03');
/*!40000 ALTER TABLE `donar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donar_donateblood`
--

DROP TABLE IF EXISTS `donar_donateblood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donar_donateblood` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `donar_name` varchar(45) NOT NULL,
  `donar_phone` varchar(45) NOT NULL,
  `donar_disease` varchar(45) NOT NULL,
  `donar_age` int NOT NULL,
  `donar_unitblood` int NOT NULL,
  `donar_blooddetails` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donar_donateblood`
--

LOCK TABLES `donar_donateblood` WRITE;
/*!40000 ALTER TABLE `donar_donateblood` DISABLE KEYS */;
INSERT INTO `donar_donateblood` VALUES (1,'Amit Kumar','4785961235','Nothing',19,8,'O+'),(2,'Ajay Gupta','4785961235','No disease',22,9,'A+');
/*!40000 ALTER TABLE `donar_donateblood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `rating` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'Chandra Prakash','ashishkumar434767@gmail.com','your service is good','5','2023-04-27'),(2,'Amit Kumar','amitkumar23@gmail.com','Please contact me.','5','2023-06-08'),(3,'Ritesh Maurya','riteshmaurya342@gmail.com','Great Services','4','2023-05-04');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patient_id` varchar(10) NOT NULL,
  `patient_pass` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `blood_group` varchar(3) NOT NULL,
  `city` varchar(45) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('Ritesh502','Ritesh','Ritesh Maurya',22,'riteshmaurya342@gmail.com','male','7418527532','O+','Sultanpur','2023-05-03');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_requestblood`
--

DROP TABLE IF EXISTS `patient_requestblood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_requestblood` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(45) NOT NULL,
  `patient_phone` varchar(45) NOT NULL,
  `patient_reason` varchar(45) NOT NULL,
  `patient_age` int NOT NULL,
  `patient_unitblood` int NOT NULL,
  `patient_blooddetails` varchar(45) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_requestblood`
--

LOCK TABLES `patient_requestblood` WRITE;
/*!40000 ALTER TABLE `patient_requestblood` DISABLE KEYS */;
INSERT INTO `patient_requestblood` VALUES (1,'Ritesh Maurya','8547123695','Traumatic injuries',21,5,'A+');
/*!40000 ALTER TABLE `patient_requestblood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-20 17:53:11
