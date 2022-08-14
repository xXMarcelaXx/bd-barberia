-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: barberia
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cat_productos`
--

DROP TABLE IF EXISTS `cat_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_productos` (
  `id_catproducto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_catproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_productos`
--

LOCK TABLES `cat_productos` WRITE;
/*!40000 ALTER TABLE `cat_productos` DISABLE KEYS */;
INSERT INTO `cat_productos` VALUES (1,'Espumas'),(2,'Geles'),(3,'Mascarillas'),(4,'Peines'),(5,'Ceras'),(6,'popo');
/*!40000 ALTER TABLE `cat_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `id_citas` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_C` varchar(40) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora_cita` int(11) DEFAULT NULL,
  `Status` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_citas`),
  KEY `fk_usuarioC` (`Usuario_C`),
  KEY `fk_horarios` (`hora_cita`),
  CONSTRAINT `fk_horarios` FOREIGN KEY (`hora_cita`) REFERENCES `horarios` (`id_horario`),
  CONSTRAINT `fk_usuarioC` FOREIGN KEY (`Usuario_C`) REFERENCES `cuenta` (`nombre_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES (1,'Hira','2022-10-11',1,'Pendiente'),(2,'XxAbelardoxX','2022-10-11',2,'Cancelada'),(3,'XxCarlosxX','2022-10-12',3,'FInalizada'),(4,'XxCristianxX','2022-10-12',4,'Finalizada');
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta`
--

DROP TABLE IF EXISTS `cuenta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cuenta` (
  `nombre_usuario` varchar(40) NOT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `ap_paterno` varchar(30) DEFAULT NULL,
  `ap_materno` varchar(30) DEFAULT NULL,
  `direccion` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `telefono` char(10) CHARACTER SET utf8 DEFAULT NULL,
  `correo` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `imagen_cuenta` varchar(500) DEFAULT NULL,
  `tipo_cuenta` char(20) DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`nombre_usuario`),
  UNIQUE KEY `UQ_correo` (`correo`),
  CONSTRAINT `fk_tipocuenta` CHECK (`tipo_cuenta` = 'Administrador' or `tipo_cuenta` = 'Usuario' or `tipo_cuenta` = 'Barbero')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta`
--

LOCK TABLES `cuenta` WRITE;
/*!40000 ALTER TABLE `cuenta` DISABLE KEYS */;
INSERT INTO `cuenta` VALUES ('Hira','1234','Pedro','Vazques','Garcia','Calle Lerdo #1089','8765219800','Hira@gmail.com',NULL,'Usuario','2022-10-12'),('Invitado','1234','Invitado','Invitado','Invitado','','8711003401','Invitado@gmail.com',NULL,'Usuario','2022-10-12'),('Juan387l','12345','Juan Manuel','Juarez','Lopez','Calle Congre','8714739810','Manuel@gmail.com',NULL,'Usuario','2022-11-12'),('SarahiVaz','sarahi557','Sarahi','Vazques','Viezca','Villa Colonos','8711003892','sarahi@gmail.com',NULL,'Usuario','2022-09-12'),('XxAbelardoxX','1234','Abelardo','Garcia','Reyes','Lerdo #45','8714364526','garciam@gmail.com',NULL,'Administrador','2022-09-12'),('XxCarlosxX','1234','Carlos','Duron','Rodriguez','Nuez de castilla #254','8714364524','duronm@gmail.com',NULL,'Usuario','2022-08-12'),('XxCristianxX','1234','Cristian','Avitia','Maturino','Circuito valle suda #','8714364522','avitiam@gmail.com',NULL,'Usuario','2022-10-12'),('XxMarcelaxX','1234','Marcela','Castorena','Escandon','Raul lopez sanchez #89','8714364518','castorenam@gmail.com',NULL,'Usuario','2022-12-12'),('XxNadiaxX','1234','Nadia','Salazar','Rodriguez','Av Juarez #7000','8714364520','salazarm@gmail.com',NULL,'Usuario','2022-12-12');
/*!40000 ALTER TABLE `cuenta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ovproductos`
--

DROP TABLE IF EXISTS `detalle_ovproductos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ovproductos` (
  `id_DetalleProductos` int(11) NOT NULL AUTO_INCREMENT,
  `producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `ov_productos` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_DetalleProductos`),
  KEY `fk_orproducto` (`producto`),
  KEY `fk_ovproducto` (`ov_productos`),
  CONSTRAINT `fk_orproducto` FOREIGN KEY (`producto`) REFERENCES `productos` (`id_producto`),
  CONSTRAINT `fk_ovproducto` FOREIGN KEY (`ov_productos`) REFERENCES `orden_ventas_producto` (`id_ovproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ovproductos`
--

LOCK TABLES `detalle_ovproductos` WRITE;
/*!40000 ALTER TABLE `detalle_ovproductos` DISABLE KEYS */;
INSERT INTO `detalle_ovproductos` VALUES (1,1,2,1),(2,2,2,1),(3,3,3,2),(4,4,2,3),(5,3,1,4),(6,1,4,5),(7,5,2,5);
/*!40000 ALTER TABLE `detalle_ovproductos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios` (
  `id_horario` int(11) NOT NULL AUTO_INCREMENT,
  `horarios` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_horario`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,'12:00:00'),(2,'13:00:00'),(3,'14:00:00'),(4,'15:00:00'),(5,'16:00:00'),(6,'17:00:00'),(7,'18:00:00'),(8,'19:00:00'),(9,'20:00:00');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orden_ventas_producto`
--

DROP TABLE IF EXISTS `orden_ventas_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orden_ventas_producto` (
  `id_ovproducto` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario_ovp` varchar(40) DEFAULT NULL,
  `ovp_fecha` date DEFAULT NULL,
  `Status` char(20) DEFAULT NULL,
  PRIMARY KEY (`id_ovproducto`),
  KEY `fk_usuario_ovp` (`Usuario_ovp`),
  CONSTRAINT `fk_usuario_ovp` FOREIGN KEY (`Usuario_ovp`) REFERENCES `cuenta` (`nombre_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orden_ventas_producto`
--

LOCK TABLES `orden_ventas_producto` WRITE;
/*!40000 ALTER TABLE `orden_ventas_producto` DISABLE KEYS */;
INSERT INTO `orden_ventas_producto` VALUES (1,'Hira','2022-10-12','Finalizada'),(2,'Hira','2022-08-12','Finalizada'),(3,'XxCarlosxX','2022-08-13','Pendiente'),(4,'XxCristianxX','2022-08-11','Cancelada'),(5,'XxCarlosxX','2022-08-12','Cancelada'),(6,'XxCristianxX','2022-08-13','Pendiente'),(7,'SarahiVaz','2022-10-16','Finalizada'),(9,'SarahiVaz','2022-08-13','Pendiente');
/*!40000 ALTER TABLE `orden_ventas_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) DEFAULT NULL,
  `cat_producto` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  `precio_compra` decimal(10,0) DEFAULT NULL,
  `img_producto` varchar(500) DEFAULT NULL,
  `existencia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_cproductos` (`cat_producto`),
  CONSTRAINT `fk_cproductos` FOREIGN KEY (`cat_producto`) REFERENCES `cat_productos` (`id_catproducto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'gel imperial',2,'gel marca imperial',480,350,'',50),(2,'peine ecowood',4,'peine marca ecowood',220,150,'',10),(3,'cera melbros',5,'cera marca melbros',285,180,'',20),(4,'mascarilla',3,'mascarilla para la cara',90,50,'',25),(5,'espumaa nivea',1,'espuma marca nivea',80,40,'',23),(6,'espuma ',1,'espuma fuder',12,12,'',20),(7,'papel baño',1,'papel para tu yoyis',10,5,'',5),(8,'papel 2',1,'vfdss',122,12,'',122),(9,'Papel v9',1,'gfdsa',1212,12,'Imagpro/papel.jpg',12),(10,'papds',1,'HGFDSA',12,12,'Imagpro/papel.jpg',122);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quejas`
--

DROP TABLE IF EXISTS `quejas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quejas` (
  `id_quejas` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(100) DEFAULT NULL,
  `fk_usuario` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_quejas`),
  KEY `fk_quejas` (`fk_usuario`),
  CONSTRAINT `fk_quejas` FOREIGN KEY (`fk_usuario`) REFERENCES `cuenta` (`nombre_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quejas`
--

LOCK TABLES `quejas` WRITE;
/*!40000 ALTER TABLE `quejas` DISABLE KEYS */;
/*!40000 ALTER TABLE `quejas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio_cita`
--

DROP TABLE IF EXISTS `servicio_cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio_cita` (
  `id_ovcita` int(11) NOT NULL AUTO_INCREMENT,
  `dt_cita` int(11) DEFAULT NULL,
  `servicio_sc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ovcita`),
  KEY `fk_dtcita` (`dt_cita`),
  KEY `fk_servicio_sv` (`servicio_sc`),
  CONSTRAINT `fk_dtcita` FOREIGN KEY (`dt_cita`) REFERENCES `citas` (`id_citas`),
  CONSTRAINT `fk_servicio_sv` FOREIGN KEY (`servicio_sc`) REFERENCES `servicios` (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio_cita`
--

LOCK TABLES `servicio_cita` WRITE;
/*!40000 ALTER TABLE `servicio_cita` DISABLE KEYS */;
INSERT INTO `servicio_cita` VALUES (1,1,1),(2,1,2),(3,4,4),(4,2,4),(5,3,6);
/*!40000 ALTER TABLE `servicio_cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_servicio` varchar(100) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `costo` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'corte escolar','El corte escolar es un corte de cabello cool y fino que es perfecto para cabello corto. Lo usa todo ',90),(2,'desvanecido','Se trata de un tipo de corte de pelo degradado, generalmente masculino, donde el cabello está muy re',100),(3,'desvanecido con diseños','se trata de el corte de pelo dredadado con el  diseños que pida el cliente pueden ser desde figuras,',120),(4,'corte con tijera','Sin duda la manera más artesana y sana de cortarse el pelo pues se hace a peine y tijera lo cual log',80),(5,'ceja','se trata de una mejor difinicion de ceja al igual que darle una mejor forma y contorno, tambien se p',20),(6,'corte militar','Corte con la maquina #1',70);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 17:56:59
