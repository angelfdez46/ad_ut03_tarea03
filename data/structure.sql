CREATE DATABASE IF NOT EXISTS `game_of_thrones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `game_of_thrones`;

-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (x86_64)
--
-- Host: localhost    Database: game_of_thrones
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Table structure for table `castles`
--

DROP TABLE IF EXISTS `castles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `castles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `towers_number` int NOT NULL DEFAULT '0',
  `halls_number` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `castle_region` (`region_id`),
  CONSTRAINT `fk_castle_region` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `great_lords`
--

DROP TABLE IF EXISTS `great_lords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `great_lords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lord_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `great_lord_lord` (`lord_id`),
  CONSTRAINT `fk_great_lord_lord` FOREIGN KEY (`lord_id`) REFERENCES `lords` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `houses`
--

DROP TABLE IF EXISTS `houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `houses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `colors` varchar(255) NOT NULL,
  `words` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inheritances`
--

DROP TABLE IF EXISTS `inheritances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inheritances` (
  `noble_id` int NOT NULL,
  `house_id` int NOT NULL,
  PRIMARY KEY (`noble_id`,`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kingdoms`
--

DROP TABLE IF EXISTS `kingdoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kingdoms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kings`
--

DROP TABLE IF EXISTS `kings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noble_id` int NOT NULL,
  `heir_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `king_noble` (`noble_id`),
  KEY `fk_king_heir` (`heir_id`),
  CONSTRAINT `fk_king_heir` FOREIGN KEY (`heir_id`) REFERENCES `nobles` (`id`),
  CONSTRAINT `fk_king_noble` FOREIGN KEY (`noble_id`) REFERENCES `nobles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `knights`
--

DROP TABLE IF EXISTS `knights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knights` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  `sworn_to` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `knight_person` (`person_id`),
  KEY `fk_knight_noble` (`sworn_to`),
  CONSTRAINT `fk_knight_noble` FOREIGN KEY (`sworn_to`) REFERENCES `nobles` (`id`),
  CONSTRAINT `fk_knight_person` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lords`
--

DROP TABLE IF EXISTS `lords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noble_id` int NOT NULL,
  `heir_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lord_noble` (`noble_id`),
  KEY `fk_lord_heir` (`heir_id`),
  CONSTRAINT `fk_lord_heir` FOREIGN KEY (`heir_id`) REFERENCES `nobles` (`id`),
  CONSTRAINT `fk_lord_noble` FOREIGN KEY (`noble_id`) REFERENCES `nobles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lords_castles`
--

DROP TABLE IF EXISTS `lords_castles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lords_castles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lord_id` int NOT NULL,
  `castle_id` int NOT NULL,
  `rule_begin_date` date DEFAULT NULL,
  `rule_end_date` date DEFAULT NULL,
  `is_current_ruler` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_lord_castle` (`castle_id`),
  KEY `lord_castle` (`lord_id`,`castle_id`),
  CONSTRAINT `fk_castle_lord` FOREIGN KEY (`lord_id`) REFERENCES `lords` (`id`),
  CONSTRAINT `fk_lord_castle` FOREIGN KEY (`castle_id`) REFERENCES `castles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `marriages`
--

DROP TABLE IF EXISTS `marriages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marriages` (
  `husband_id` int NOT NULL,
  `wife_id` int NOT NULL,
  `still_married` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`husband_id`,`wife_id`),
  KEY `fk_marriage_wife` (`wife_id`),
  CONSTRAINT `fk_marriage_husband` FOREIGN KEY (`husband_id`) REFERENCES `people` (`id`),
  CONSTRAINT `fk_marriage_wife` FOREIGN KEY (`wife_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nobles`
--

DROP TABLE IF EXISTS `nobles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nobles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `person_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `noble_person` (`person_id`),
  CONSTRAINT `fk_noble_person` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mother_id` int DEFAULT NULL,
  `father_id` int DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `death_date` date DEFAULT NULL,
  `is_alive` tinyint(1) NOT NULL DEFAULT '1',
  `gender` char(1) NOT NULL,
  `biography` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_person_mother` (`mother_id`),
  KEY `fk_person_father` (`father_id`),
  KEY `fk_person_region` (`region_id`),
  CONSTRAINT `fk_person_father` FOREIGN KEY (`father_id`) REFERENCES `people` (`id`),
  CONSTRAINT `fk_person_mother` FOREIGN KEY (`mother_id`) REFERENCES `people` (`id`),
  CONSTRAINT `fk_person_region` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `regions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kingdom_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `climate` varchar(516) DEFAULT NULL,
  `stretch` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_region_kingdom` (`kingdom_id`),
  CONSTRAINT `fk_region_kingdom` FOREIGN KEY (`kingdom_id`) REFERENCES `kingdoms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reigns`
--

DROP TABLE IF EXISTS `reigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reigns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `king_id` int NOT NULL,
  `kingdom_id` int NOT NULL,
  `rule_begin_date` date DEFAULT NULL,
  `rule_end_date` date DEFAULT NULL,
  `is_current_ruler` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_kingdom_king` (`king_id`),
  KEY `fk_king_kingdom` (`kingdom_id`),
  CONSTRAINT `fk_king_kingdom` FOREIGN KEY (`kingdom_id`) REFERENCES `kingdoms` (`id`),
  CONSTRAINT `fk_kingdom_king` FOREIGN KEY (`king_id`) REFERENCES `kings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `small_lords`
--

DROP TABLE IF EXISTS `small_lords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `small_lords` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lord_id` int NOT NULL,
  `sovereign_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `small_lord_lord` (`lord_id`),
  KEY `small_lord_sovereign` (`sovereign_id`),
  CONSTRAINT `fk_small_lord_lord` FOREIGN KEY (`lord_id`) REFERENCES `lords` (`id`),
  CONSTRAINT `fk_small_lord_sovereign` FOREIGN KEY (`sovereign_id`) REFERENCES `great_lords` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wardens`
--

DROP TABLE IF EXISTS `wardens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wardens` (
  `lord_id` int NOT NULL,
  `region_id` int NOT NULL,
  `rule_begin_date` date DEFAULT NULL,
  `rule_end_date` date DEFAULT NULL,
  `is_current_ruler` tinyint(1) NOT NULL,
  PRIMARY KEY (`lord_id`,`region_id`),
  KEY `fk_wardens_region` (`region_id`),
  CONSTRAINT `fk_wardens_lord` FOREIGN KEY (`lord_id`) REFERENCES `great_lords` (`id`),
  CONSTRAINT `fk_wardens_region` FOREIGN KEY (`region_id`) REFERENCES `regions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-22  7:32:17
