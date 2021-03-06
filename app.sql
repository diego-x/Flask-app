-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: app
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
-- Table structure for table `private_text`
--

DROP TABLE IF EXISTS `private_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `private_text` (
  `id` int(11) DEFAULT NULL,
  `from_userid` int(11) DEFAULT NULL,
  `to_userid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `massage` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `private_text`
--

LOCK TABLES `private_text` WRITE;
/*!40000 ALTER TABLE `private_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `private_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `public_text`
--

DROP TABLE IF EXISTS `public_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `public_text` (
  `id` int(11) DEFAULT NULL,
  `from_userid` int(11) DEFAULT NULL,
  `from_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `massage` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `public_text`
--

LOCK TABLES `public_text` WRITE;
/*!40000 ALTER TABLE `public_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `public_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','pbkdf2:sha256:150000$L5VIK6xs$dbcec8f400525d960da56e593bc8fef5ac3fea71ba4c0d461b217b58ee166def',NULL),(2,'diego','pbkdf2:sha256:150000$jojTnaq2$42c6fa2daf53db42f5a0dfaf6b679ac4e6483b7b249242b30d745e488577c3cb',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_massage`
--

DROP TABLE IF EXISTS `user_massage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_massage` (
  `userid` int(11) DEFAULT NULL,
  `real_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_massage`
--

LOCK TABLES `user_massage` WRITE;
/*!40000 ALTER TABLE `user_massage` DISABLE KEYS */;
INSERT INTO `user_massage` VALUES (1,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `user_massage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tou`
--

DROP TABLE IF EXISTS `user_tou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tou` (
  `userid` int(11) DEFAULT NULL,
  `address` varchar(70) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tou`
--

LOCK TABLES `user_tou` WRITE;
/*!40000 ALTER TABLE `user_tou` DISABLE KEYS */;
INSERT INTO `user_tou` VALUES (1,'/up_file_tou/images/mmmmmmmmmmmm.jpg'),(2,'/up_file_tou/images/f68f35625d820b2f0d73d557ede6a629.png');
/*!40000 ALTER TABLE `user_tou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_write_text`
--

DROP TABLE IF EXISTS `user_write_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_write_text` (
  `id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `time` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_write_text`
--

LOCK TABLES `user_write_text` WRITE;
/*!40000 ALTER TABLE `user_write_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_write_text` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-11 11:47:13
