-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: school5
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'C'),(2,'JAVA'),(3,'SQL');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_id` int NOT NULL AUTO_INCREMENT,
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  `value` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`grade_id`),
  KEY `fk_grade_student_course` (`course_id`,`student_id`),
  CONSTRAINT `fk_grade_student_course` FOREIGN KEY (`course_id`, `student_id`) REFERENCES `student_course` (`course_id`, `student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES (2,1,1,80.00),(6,1,2,40.00);
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hobby` (
  `hobby_name` varchar(45) NOT NULL,
  PRIMARY KEY (`hobby_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES ('cycling'),('hiking'),('programming');
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'cohen','moshe'),(2,'levi','david'),(3,'cohen','moshe'),(4,'cohen','lea'),(5,'azulai','lea'),(6,'levi','rachel'),(7,'azulai','shlomo');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_address`
--

DROP TABLE IF EXISTS `student_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `street_number` int DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  UNIQUE KEY `student_id` (`student_id`),
  CONSTRAINT `fk_student_address_ref_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_address`
--

LOCK TABLES `student_address` WRITE;
/*!40000 ALTER TABLE `student_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `student_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `course_id` int NOT NULL,
  `student_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`student_id`),
  KEY `fk_student_course_ref_student_id` (`student_id`),
  CONSTRAINT `fk_student_course_ref_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_student_course_ref_student_id` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (1,1),(2,1),(1,2),(2,2);
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_hobby`
--

DROP TABLE IF EXISTS `student_hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_hobby` (
  `student_id` int NOT NULL,
  `hobby_name` varchar(45) NOT NULL,
  PRIMARY KEY (`student_id`,`hobby_name`),
  KEY `fk_student_hobby_ref_hobby` (`hobby_name`),
  CONSTRAINT `fk_student_hobby_ref_hobby` FOREIGN KEY (`hobby_name`) REFERENCES `hobby` (`hobby_name`),
  CONSTRAINT `fk_student_hobby_ref_student` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_hobby`
--

LOCK TABLES `student_hobby` WRITE;
/*!40000 ALTER TABLE `student_hobby` DISABLE KEYS */;
INSERT INTO `student_hobby` VALUES (1,'cycling'),(1,'hiking'),(2,'hiking'),(2,'programming'),(3,'programming');
/*!40000 ALTER TABLE `student_hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp1`
--

DROP TABLE IF EXISTS `temp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `value` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp1`
--

LOCK TABLES `temp1` WRITE;
/*!40000 ALTER TABLE `temp1` DISABLE KEYS */;
INSERT INTO `temp1` VALUES (1,123),(2,456);
/*!40000 ALTER TABLE `temp1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-11 22:25:53
