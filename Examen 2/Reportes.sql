CREATE DATABASE  IF NOT EXISTS `reporte` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `reporte`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: reporte
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `caccesorios`
--

DROP TABLE IF EXISTS `caccesorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caccesorios` (
  `id_accesorios` int NOT NULL AUTO_INCREMENT,
  `descripcion` text NOT NULL,
  `Mequipo_id_equipo` varchar(7) NOT NULL,
  PRIMARY KEY (`id_accesorios`),
  KEY `fk_Caccesorios_Mequipo1_idx` (`Mequipo_id_equipo`),
  CONSTRAINT `fk_Caccesorios_Mequipo1` FOREIGN KEY (`Mequipo_id_equipo`) REFERENCES `mequipo` (`id_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caccesorios`
--

LOCK TABLES `caccesorios` WRITE;
/*!40000 ALTER TABLE `caccesorios` DISABLE KEYS */;
/*!40000 ALTER TABLE `caccesorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casignatura`
--

DROP TABLE IF EXISTS `casignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `casignatura` (
  `asig` varchar(60) NOT NULL,
  `id_asignatura` int NOT NULL,
  PRIMARY KEY (`asig`),
  UNIQUE KEY `id_asignatura_UNIQUE` (`id_asignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casignatura`
--

LOCK TABLES `casignatura` WRITE;
/*!40000 ALTER TABLE `casignatura` DISABLE KEYS */;
INSERT INTO `casignatura` VALUES ('Programacióm orientada a objeto',2),('Lab. de Proy. de Tecnologías de la Infor. I',3),('Admón. de Proy. de Tecnologías de la Infor. I',4),('Programación y Servicios Web',5),('Bases de Datos',6),('Admón. de Proy. de Tecnologías de la Infor. II',7),('Lab. de Proy. de Tecnologías de la Infor. II',8),('Téc. de Programación Personal con Calidad',9),('Seguridad Web y Aplicaciones',10),('Introducción a la Ingeniería de Pruebas',11),('Automatización de Pruebas',12),('Lab. de Proy. de Tecnologías de la Infor. III',13),('Introducción a los Sistemas Distribuidos',14),('Desarrollo Humano y Personal',15),('Métodos Ágiles de Programación',16),('Soporte de Software',17),('Plan de Negocios',18),('Lab. de Proy. de Tecnologías de la Infor. IV',19),('Ingeniería de Software Básica',20),('Proyecto Integrador',21),('Inglés I',22),('Inglés II',23),('Inglés III',24),('Inglés IV',25),('Inglés V',26),('Inglés VI',27),('Computación Básica I',28),('Computación Básica II',29);
/*!40000 ALTER TABLE `casignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cestadoreporte`
--

DROP TABLE IF EXISTS `cestadoreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cestadoreporte` (
  `id_cer` int NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`tipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cestadoreporte`
--

LOCK TABLES `cestadoreporte` WRITE;
/*!40000 ALTER TABLE `cestadoreporte` DISABLE KEYS */;
INSERT INTO `cestadoreporte` VALUES (1,'Pendiente'),(2,'Proceso'),(3,'Resulto');
/*!40000 ALTER TABLE `cestadoreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgrupo`
--

DROP TABLE IF EXISTS `cgrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cgrupo` (
  `id_grupo` int NOT NULL,
  `grupo` varchar(10) NOT NULL,
  PRIMARY KEY (`grupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgrupo`
--

LOCK TABLES `cgrupo` WRITE;
/*!40000 ALTER TABLE `cgrupo` DISABLE KEYS */;
INSERT INTO `cgrupo` VALUES (11,'1IM1'),(20,'1IM10'),(12,'1IM2'),(13,'1IM3'),(14,'1IM4'),(15,'1IM5'),(16,'1IM6'),(17,'1IM7'),(18,'1IM8'),(19,'1IM9'),(1,'1IV1'),(10,'1IV10'),(2,'1IV2'),(3,'1IV3'),(4,'1IV4'),(5,'1IV5'),(6,'1IV6'),(7,'1IV7'),(8,'1IV8'),(9,'1IV9'),(31,'2IM1'),(40,'2IM10'),(32,'2IM2'),(33,'2IM3'),(34,'2IM4'),(35,'2IM5'),(36,'2IM6'),(37,'2IM7'),(38,'2IM8'),(39,'2IM9'),(21,'2IV1'),(30,'2IV10'),(22,'2IV2'),(23,'2IV3'),(24,'2IV4'),(25,'2IV5'),(26,'2IV6'),(27,'2IV7'),(28,'2IV8'),(29,'2IV9'),(51,'3IM1'),(60,'3IM10'),(52,'3IM2'),(53,'3IM3'),(54,'3IM4'),(55,'3IM5'),(56,'3IM6'),(57,'3IM7'),(58,'3IM8'),(59,'3IM9'),(41,'3IV1'),(50,'3IV10'),(42,'3IV2'),(43,'3IV3'),(44,'3IV4'),(45,'3IV5'),(46,'3IV6'),(47,'3IV7'),(48,'3IV8'),(49,'3IV9'),(71,'4IM1'),(90,'4IM10'),(72,'4IM2'),(73,'4IM3'),(74,'4IM4'),(75,'4IM5'),(76,'4IM6'),(77,'4IM7'),(78,'4IM8'),(79,'4IM9'),(61,'4IV1'),(70,'4IV10'),(62,'4IV2'),(63,'4IV3'),(64,'4IV4'),(65,'4IV5'),(66,'4IV6'),(67,'4IV7'),(68,'4IV8'),(69,'4IV9'),(101,'5IM1'),(110,'5IM10'),(102,'5IM2'),(103,'5IM3'),(104,'5IM4'),(105,'5IM5'),(106,'5IM6'),(107,'5IM7'),(108,'5IM8'),(109,'5IM9'),(91,'5IV1'),(100,'5IV10'),(92,'5IV2'),(93,'5IV3'),(94,'5IV4'),(95,'5IV5'),(96,'5IV6'),(97,'5IV7'),(98,'5IV8'),(99,'5IV9'),(121,'6IM1'),(130,'6IM10'),(122,'6IM2'),(123,'6IM3'),(124,'6IM4'),(125,'6IM5'),(126,'6IM6'),(127,'6IM7'),(128,'6IM8'),(129,'6IM9'),(111,'6IV1'),(120,'6IV10'),(112,'6IV2'),(113,'6IV3'),(114,'6IV4'),(115,'6IV5'),(116,'6IV6'),(117,'6IV7'),(118,'6IV8'),(119,'6IV9');
/*!40000 ALTER TABLE `cgrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claboratorio`
--

DROP TABLE IF EXISTS `claboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claboratorio` (
  `id_lab` int NOT NULL AUTO_INCREMENT,
  `tipo_lab` varchar(45) NOT NULL,
  PRIMARY KEY (`id_lab`,`tipo_lab`),
  UNIQUE KEY `tipo_lab_UNIQUE` (`tipo_lab`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claboratorio`
--

LOCK TABLES `claboratorio` WRITE;
/*!40000 ALTER TABLE `claboratorio` DISABLE KEYS */;
INSERT INTO `claboratorio` VALUES (4,'4.0'),(1,'LBD'),(2,'LDS'),(3,'LNT');
/*!40000 ALTER TABLE `claboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprioridad`
--

DROP TABLE IF EXISTS `cprioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprioridad` (
  `id_prioridad` int NOT NULL,
  `prioridad` varchar(15) NOT NULL,
  PRIMARY KEY (`prioridad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprioridad`
--

LOCK TABLES `cprioridad` WRITE;
/*!40000 ALTER TABLE `cprioridad` DISABLE KEYS */;
INSERT INTO `cprioridad` VALUES (1,'Alta'),(3,'Baja'),(2,'Media');
/*!40000 ALTER TABLE `cprioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cprivilegio`
--

DROP TABLE IF EXISTS `cprivilegio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cprivilegio` (
  `id_privilegio` int NOT NULL AUTO_INCREMENT,
  `tipo_privilegio` text NOT NULL,
  `Mpersona_id_persona` int NOT NULL,
  `Mpersona_Crol_id_rol` int NOT NULL,
  PRIMARY KEY (`id_privilegio`),
  KEY `fk_Cprivilegio_Mpersona1_idx` (`Mpersona_id_persona`,`Mpersona_Crol_id_rol`),
  CONSTRAINT `fk_Cprivilegio_Mpersona1` FOREIGN KEY (`Mpersona_id_persona`) REFERENCES `mpersona` (`id_persona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cprivilegio`
--

LOCK TABLES `cprivilegio` WRITE;
/*!40000 ALTER TABLE `cprivilegio` DISABLE KEYS */;
/*!40000 ALTER TABLE `cprivilegio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crol`
--

DROP TABLE IF EXISTS `crol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crol` (
  `id_rol` int NOT NULL,
  `tipo_rol` varchar(45) NOT NULL,
  PRIMARY KEY (`tipo_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crol`
--

LOCK TABLES `crol` WRITE;
/*!40000 ALTER TABLE `crol` DISABLE KEYS */;
INSERT INTO `crol` VALUES (3,'Administrador'),(1,'Alumno'),(2,'Docente');
/*!40000 ALTER TABLE `crol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dreporte`
--

DROP TABLE IF EXISTS `dreporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dreporte` (
  `idreporte` int NOT NULL AUTO_INCREMENT,
  `lab` varchar(45) NOT NULL,
  `fecha` varchar(15) NOT NULL,
  `hora` varchar(20) NOT NULL,
  `idmaquina` varchar(10) NOT NULL,
  `idequipo` varchar(7) NOT NULL,
  `problema` varchar(45) NOT NULL,
  `idpersona` int NOT NULL,
  `rol` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `appat` varchar(45) NOT NULL,
  `apmat` varchar(45) NOT NULL,
  `grupo` varchar(10) NOT NULL,
  `asig` varchar(45) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `prioridad` varchar(15) NOT NULL,
  PRIMARY KEY (`idreporte`),
  KEY `fk_Dreporte_Mequipo1_idx` (`idequipo`,`idmaquina`,`lab`),
  KEY `fk_Dreporte_Casignatura1_idx` (`asig`),
  KEY `fk_Dreporte_CestadoReporte1_idx` (`estado`),
  KEY `fk_Dreporte_Cgrupo1_idx` (`grupo`),
  KEY `fk_Dreporte_Cprioridad1_idx` (`prioridad`),
  KEY `fk_Dreporte_Mpersona1_idx` (`idpersona`,`rol`,`nombre`,`appat`,`apmat`),
  CONSTRAINT `fk_Dreporte_Casignatura1` FOREIGN KEY (`asig`) REFERENCES `casignatura` (`asig`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Dreporte_CestadoReporte1` FOREIGN KEY (`estado`) REFERENCES `cestadoreporte` (`tipo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Dreporte_Cgrupo1` FOREIGN KEY (`grupo`) REFERENCES `cgrupo` (`grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Dreporte_Cprioridad1` FOREIGN KEY (`prioridad`) REFERENCES `cprioridad` (`prioridad`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Dreporte_Mequipo1` FOREIGN KEY (`idequipo`, `idmaquina`, `lab`) REFERENCES `mequipo` (`id_equipo`, `MCPU_id_maquina`, `Claboratorio_tipo_lab`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Dreporte_Mpersona1` FOREIGN KEY (`idpersona`, `rol`, `nombre`, `appat`, `apmat`) REFERENCES `mpersona` (`id_persona`, `Crol_tipo_rol`, `nombre`, `appat`, `apmat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dreporte`
--

LOCK TABLES `dreporte` WRITE;
/*!40000 ALTER TABLE `dreporte` DISABLE KEYS */;
INSERT INTO `dreporte` VALUES (1,'LBD','24/04/2022 ',' 02:18 p.m ','8005674AB ','LBD1 ','No prende',2021048943,'Alumno ','Juan','Martinez','Rosa','4IV8','Programacióm orientada a objeto','Pendiente','Baja'),(2,'LNT','24/04/2022 ',' 02:18 p.m ','8005725AB','LNT1','No prende',2021048943,'Alumno ','Juan','Martinez','Rosa','4IV8','Programacióm orientada a objeto','Pendiente','Baja'),(3,'4.0','25/04/2022','07:14 p.m','8005750AB','4.01','No tiene internet',2021048943,'Alumno ','Juan','Martinez','Rosa','4IV7','Bases de Datos','Pendiente','Media'),(4,'LDS','25/04/2022','07:14 p.m','8005713AB','LDS14','No tiene internet',2021048943,'Alumno ','Juan','Martinez','Rosa','4IV7','Bases de Datos','Pendiente','Media'),(5,'LBD','24/04/2022','02:18 p.m','8005675AB','LBD2','No prende',2021048943,'Alumno','Juan','Martinez','Rosa','4IV8','Programacióm orientada a objeto','Pendiente','Baja');
/*!40000 ALTER TABLE `dreporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mconfiguracion`
--

DROP TABLE IF EXISTS `mconfiguracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mconfiguracion` (
  `id_configuracion` int NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_configuracion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mconfiguracion`
--

LOCK TABLES `mconfiguracion` WRITE;
/*!40000 ALTER TABLE `mconfiguracion` DISABLE KEYS */;
INSERT INTO `mconfiguracion` VALUES (1,'No tiene Tomcat'),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL),(20,NULL),(21,NULL),(22,NULL),(23,NULL),(24,NULL),(25,NULL),(26,NULL),(27,NULL),(28,NULL),(29,NULL),(30,NULL),(31,NULL),(32,NULL),(33,NULL),(34,NULL),(35,NULL),(36,NULL),(37,NULL),(38,NULL),(39,NULL),(40,NULL),(41,NULL),(42,NULL),(43,NULL),(44,NULL),(45,NULL),(46,NULL),(47,NULL),(48,NULL),(49,NULL),(50,NULL),(51,NULL),(52,NULL),(53,NULL),(54,NULL),(55,NULL),(56,NULL),(57,NULL),(58,NULL),(59,NULL),(60,NULL),(61,NULL),(62,NULL),(63,NULL),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,NULL),(70,NULL),(71,NULL),(72,NULL),(73,NULL),(74,NULL),(75,NULL),(76,NULL),(77,NULL),(78,NULL),(79,NULL),(80,NULL),(81,NULL),(82,NULL),(83,NULL),(84,NULL),(85,NULL),(86,NULL),(87,NULL),(88,NULL),(89,NULL),(90,NULL),(91,NULL),(92,NULL),(93,NULL),(94,NULL),(95,NULL),(96,NULL),(97,NULL),(98,NULL),(99,NULL),(100,NULL);
/*!40000 ALTER TABLE `mconfiguracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mcpu`
--

DROP TABLE IF EXISTS `mcpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mcpu` (
  `id_maquina` varchar(10) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_maquina`),
  UNIQUE KEY `id_maquina_UNIQUE` (`id_maquina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mcpu`
--

LOCK TABLES `mcpu` WRITE;
/*!40000 ALTER TABLE `mcpu` DISABLE KEYS */;
INSERT INTO `mcpu` VALUES ('8005674AB','Todo en orden'),('8005675AB',NULL),('8005676AB',NULL),('8005677AB',NULL),('8005678AB',NULL),('8005679AB',NULL),('8005680AB',NULL),('8005681AB',NULL),('8005682AB',NULL),('8005683AB',NULL),('8005684AB',NULL),('8005685AB',NULL),('8005686AB',NULL),('8005687AB',NULL),('8005688AB',NULL),('8005689AB',NULL),('8005690AB',NULL),('8005691AB',NULL),('8005692AB',NULL),('8005693AB',NULL),('8005694AB',NULL),('8005695AB',NULL),('8005696AB',NULL),('8005697AB',NULL),('8005698AB',NULL),('8005699AB',NULL),('8005701AB',NULL),('8005702AB',NULL),('8005703AB',NULL),('8005704AB',NULL),('8005705AB',NULL),('8005706AB',NULL),('8005707AB',NULL),('8005708AB',NULL),('8005709AB',NULL),('8005710AB',NULL),('8005711AB',NULL),('8005712AB',NULL),('8005713AB',NULL),('8005714AB',NULL),('8005715AB',NULL),('8005716AB',NULL),('8005717AB',NULL),('8005718AB',NULL),('8005719AB',NULL),('8005720AB',NULL),('8005721AB',NULL),('8005722AB',NULL),('8005723AB',NULL),('8005724AB',NULL),('8005725AB',NULL),('8005726AB',NULL),('8005727AB',NULL),('8005728AB',NULL),('8005729AB',NULL),('8005730AB',NULL),('8005731AB',NULL),('8005732AB',NULL),('8005733AB',NULL),('8005734AB',NULL),('8005735AB',NULL),('8005736AB',NULL),('8005737AB',NULL),('8005738AB',NULL),('8005739AB',NULL),('8005740AB',NULL),('8005741AB',NULL),('8005742AB',NULL),('8005743AB',NULL),('8005744AB',NULL),('8005745AB',NULL),('8005746AB',NULL),('8005747AB',NULL),('8005748AB',NULL),('8005749AB',NULL),('8005750AB',NULL),('8005751AB',NULL),('8005752AB',NULL),('8005753AB',NULL),('8005754AB',NULL),('8005755AB',NULL),('8005756AB',NULL),('8005757AB',NULL),('8005758AB',NULL),('8005759AB',NULL),('8005760AB',NULL),('8005761AB',NULL),('8005762AB',NULL),('8005763AB',NULL),('8005764AB',NULL),('8005765AB',NULL),('8005766AB',NULL),('8005767AB',NULL),('8005768AB',NULL),('8005769AB',NULL),('8005770AB',NULL),('8005771AB',NULL),('8005772AB',NULL),('8005773AB',NULL),('8005774AB',NULL);
/*!40000 ALTER TABLE `mcpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mequipo`
--

DROP TABLE IF EXISTS `mequipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mequipo` (
  `id_equipo` varchar(7) NOT NULL,
  `Mmonitor_id_monitor` int NOT NULL,
  `Mconfiguracion_id_configuracion` int NOT NULL,
  `MCPU_id_maquina` varchar(10) NOT NULL,
  `Claboratorio_id_lab1` int NOT NULL,
  `Claboratorio_tipo_lab` varchar(45) NOT NULL,
  PRIMARY KEY (`id_equipo`,`MCPU_id_maquina`,`Claboratorio_tipo_lab`),
  UNIQUE KEY `MCPU_id_maquina_UNIQUE` (`MCPU_id_maquina`),
  KEY `fk_Mequipo_Mmonitor1_idx` (`Mmonitor_id_monitor`),
  KEY `fk_Mequipo_Mconfiguracion1_idx` (`Mconfiguracion_id_configuracion`),
  KEY `fk_Mequipo_MCPU1_idx` (`MCPU_id_maquina`),
  KEY `fk_Mequipo_Claboratorio2_idx` (`Claboratorio_id_lab1`,`Claboratorio_tipo_lab`),
  CONSTRAINT `fk_Mequipo_Claboratorio2` FOREIGN KEY (`Claboratorio_id_lab1`, `Claboratorio_tipo_lab`) REFERENCES `claboratorio` (`id_lab`, `tipo_lab`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Mequipo_Mconfiguracion1` FOREIGN KEY (`Mconfiguracion_id_configuracion`) REFERENCES `mconfiguracion` (`id_configuracion`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Mequipo_MCPU1` FOREIGN KEY (`MCPU_id_maquina`) REFERENCES `mcpu` (`id_maquina`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Mequipo_Mmonitor1` FOREIGN KEY (`Mmonitor_id_monitor`) REFERENCES `mmonitor` (`id_monitor`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mequipo`
--

LOCK TABLES `mequipo` WRITE;
/*!40000 ALTER TABLE `mequipo` DISABLE KEYS */;
INSERT INTO `mequipo` VALUES ('4.01',76,76,'8005750AB',4,'4.0'),('4.010',85,85,'8005759AB',4,'4.0'),('4.011',86,86,'8005760AB',4,'4.0'),('4.012',87,87,'8005761AB',4,'4.0'),('4.013',88,88,'8005762AB',4,'4.0'),('4.014',89,89,'8005763AB',4,'4.0'),('4.015',90,90,'8005764AB',4,'4.0'),('4.016',91,91,'8005765AB',4,'4.0'),('4.017',92,92,'8005766AB',4,'4.0'),('4.018',93,93,'8005767AB',4,'4.0'),('4.019',94,94,'8005768AB',4,'4.0'),('4.02',77,77,'8005751AB',4,'4.0'),('4.020',95,95,'8005769AB',4,'4.0'),('4.021',96,96,'8005770AB',4,'4.0'),('4.022',97,97,'8005771AB',4,'4.0'),('4.023',98,98,'8005772AB',4,'4.0'),('4.024',99,99,'8005773AB',4,'4.0'),('4.025',100,100,'8005774AB',4,'4.0'),('4.03',78,78,'8005752AB',4,'4.0'),('4.04',79,79,'8005753AB',4,'4.0'),('4.05',80,80,'8005754AB',4,'4.0'),('4.06',81,81,'8005755AB',4,'4.0'),('4.07',82,82,'8005756AB',4,'4.0'),('4.08',83,83,'8005757AB',4,'4.0'),('4.09',84,84,'8005758AB',4,'4.0'),('LBD1',1,1,'8005674AB',1,'LBD'),('LBD10',10,10,'8005683AB',1,'LBD'),('LBD11',11,11,'8005684AB',1,'LBD'),('LBD12',12,12,'8005685AB',1,'LBD'),('LBD13',13,13,'8005686AB',1,'LBD'),('LBD14',14,14,'8005687AB',1,'LBD'),('LBD15',15,15,'8005688AB',1,'LBD'),('LBD16',16,16,'8005689AB',1,'LBD'),('LBD17',17,17,'8005690AB',1,'LBD'),('LBD18',18,18,'8005691AB',1,'LBD'),('LBD19',19,19,'8005692AB',1,'LBD'),('LBD2',2,2,'8005675AB',1,'LBD'),('LBD20',20,20,'8005693AB',1,'LBD'),('LBD21',21,21,'8005694AB',1,'LBD'),('LBD22',22,22,'8005695AB',1,'LBD'),('LBD23',23,23,'8005696AB',1,'LBD'),('LBD24',24,24,'8005697AB',1,'LBD'),('LBD25',25,25,'8005698AB',1,'LBD'),('LBD3',3,3,'8005676AB',1,'LBD'),('LBD4',4,4,'8005677AB',1,'LBD'),('LBD5',5,5,'8005678AB',1,'LBD'),('LBD6',6,6,'8005679AB',1,'LBD'),('LBD7',7,7,'8005680AB',1,'LBD'),('LBD8',8,8,'8005681AB',1,'LBD'),('LBD9',9,9,'8005682AB',1,'LBD'),('LDS1',26,26,'8005699AB',2,'LDS'),('LDS10',35,35,'8005709AB',2,'LDS'),('LDS11',36,36,'8005710AB',2,'LDS'),('LDS12',37,37,'8005711AB',2,'LDS'),('LDS13',38,38,'8005712AB',2,'LDS'),('LDS14',39,39,'8005713AB',2,'LDS'),('LDS15',40,40,'8005714AB',2,'LDS'),('LDS16',41,41,'8005715AB',2,'LDS'),('LDS17',42,42,'8005716AB',2,'LDS'),('LDS18',43,43,'8005717AB',2,'LDS'),('LDS19',44,44,'8005718AB',2,'LDS'),('LDS2',27,27,'8005701AB',2,'LDS'),('LDS20',45,45,'8005719AB',2,'LDS'),('LDS21',46,46,'8005720AB',2,'LDS'),('LDS22',47,47,'8005721AB',2,'LDS'),('LDS23',48,48,'8005722AB',2,'LDS'),('LDS24',49,49,'8005723AB',2,'LDS'),('LDS25',50,50,'8005724AB',2,'LDS'),('LDS3',28,28,'8005702AB',2,'LDS'),('LDS4',29,29,'8005703AB',2,'LDS'),('LDS5',30,30,'8005704AB',2,'LDS'),('LDS6',31,31,'8005705AB',2,'LDS'),('LDS7',32,32,'8005706AB',2,'LDS'),('LDS8',33,33,'8005707AB',2,'LDS'),('LDS9',34,34,'8005708AB',2,'LDS'),('LNT1',51,51,'8005725AB',3,'LNT'),('LNT10',60,60,'8005734AB',3,'LNT'),('LNT11',61,61,'8005735AB',3,'LNT'),('LNT12',62,62,'8005736AB',3,'LNT'),('LNT13',63,63,'8005737AB',3,'LNT'),('LNT14',64,64,'8005738AB',3,'LNT'),('LNT15',65,65,'8005739AB',3,'LNT'),('LNT16',66,66,'8005740AB',3,'LNT'),('LNT17',67,67,'8005741AB',3,'LNT'),('LNT18',68,68,'8005742AB',3,'LNT'),('LNT19',69,69,'8005743AB',3,'LNT'),('LNT2',52,52,'8005726AB',3,'LNT'),('LNT20',70,70,'8005744AB',3,'LNT'),('LNT21',71,71,'8005745AB',3,'LNT'),('LNT22',72,72,'8005746AB',3,'LNT'),('LNT23',73,73,'8005747AB',3,'LNT'),('LNT24',74,74,'8005748AB',3,'LNT'),('LNT25',75,75,'8005749AB',3,'LNT'),('LNT3',53,53,'8005727AB',3,'LNT'),('LNT4',54,54,'8005728AB',3,'LNT'),('LNT5',55,55,'8005729AB',3,'LNT'),('LNT6',56,56,'8005730AB',3,'LNT'),('LNT7',57,57,'8005731AB',3,'LNT'),('LNT8',58,58,'8005732AB',3,'LNT'),('LNT9',59,59,'8005733AB',3,'LNT');
/*!40000 ALTER TABLE `mequipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmonitor`
--

DROP TABLE IF EXISTS `mmonitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mmonitor` (
  `id_monitor` int NOT NULL AUTO_INCREMENT,
  `descripcion` text,
  PRIMARY KEY (`id_monitor`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmonitor`
--

LOCK TABLES `mmonitor` WRITE;
/*!40000 ALTER TABLE `mmonitor` DISABLE KEYS */;
INSERT INTO `mmonitor` VALUES (1,'presenta rayas verdes'),(2,NULL),(3,NULL),(4,NULL),(5,NULL),(6,NULL),(7,NULL),(8,NULL),(9,NULL),(10,NULL),(11,NULL),(12,NULL),(13,NULL),(14,NULL),(15,NULL),(16,NULL),(17,NULL),(18,NULL),(19,NULL),(20,NULL),(21,NULL),(22,NULL),(23,NULL),(24,NULL),(25,NULL),(26,NULL),(27,NULL),(28,NULL),(29,NULL),(30,NULL),(31,NULL),(32,NULL),(33,NULL),(34,NULL),(35,NULL),(36,NULL),(37,NULL),(38,NULL),(39,NULL),(40,NULL),(41,NULL),(42,NULL),(43,NULL),(44,NULL),(45,NULL),(46,NULL),(47,NULL),(48,NULL),(49,NULL),(50,NULL),(51,NULL),(52,NULL),(53,NULL),(54,NULL),(55,NULL),(56,NULL),(57,NULL),(58,NULL),(59,NULL),(60,NULL),(61,NULL),(62,NULL),(63,NULL),(64,NULL),(65,NULL),(66,NULL),(67,NULL),(68,NULL),(69,NULL),(70,NULL),(71,NULL),(72,NULL),(73,NULL),(74,NULL),(75,NULL),(76,NULL),(77,NULL),(78,NULL),(79,NULL),(80,NULL),(81,NULL),(82,NULL),(83,NULL),(84,NULL),(85,NULL),(86,NULL),(87,NULL),(88,NULL),(89,NULL),(90,NULL),(91,NULL),(92,NULL),(93,NULL),(94,NULL),(95,NULL),(96,NULL),(97,NULL),(98,NULL),(99,NULL),(100,NULL);
/*!40000 ALTER TABLE `mmonitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mpersona`
--

DROP TABLE IF EXISTS `mpersona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mpersona` (
  `id_persona` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `appat` varchar(45) NOT NULL,
  `apmat` varchar(45) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fecha_nacimiento` varchar(15) NOT NULL,
  `user` text NOT NULL,
  `pass` text NOT NULL,
  `foto` longblob,
  `Crol_tipo_rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id_persona`,`Crol_tipo_rol`,`nombre`,`appat`,`apmat`),
  KEY `fk_Mpersona_Crol1_idx` (`Crol_tipo_rol`),
  CONSTRAINT `fk_Mpersona_Crol1` FOREIGN KEY (`Crol_tipo_rol`) REFERENCES `crol` (`tipo_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mpersona`
--

LOCK TABLES `mpersona` WRITE;
/*!40000 ALTER TABLE `mpersona` DISABLE KEYS */;
INSERT INTO `mpersona` VALUES (2021048943,'Juan','Martinez','Rosa','masculino','26/05/2005','juansda','1234',NULL,'Alumno');
/*!40000 ALTER TABLE `mpersona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'reporte'
--

--
-- Dumping routines for database 'reporte'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 23:20:38
