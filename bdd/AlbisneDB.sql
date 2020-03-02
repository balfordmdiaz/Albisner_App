-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema albisnedb
--

CREATE DATABASE IF NOT EXISTS albisne_bdd;
USE albisne_bdd;

--
-- Definition of table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idcat` int(2) unsigned zerofill NOT NULL auto_increment,
  `nombre` varchar(45) character set latin1 NOT NULL,
  `descripcion` varchar(200) character set latin1 NOT NULL,
  `fotocat` varchar(100) character set latin1 NOT NULL,
  PRIMARY KEY  (`idcat`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categorias`
--

/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`idcat`,`nombre`,`descripcion`,`fotocat`) VALUES 
 (01,'VEHÍCULOS','Busque aquí todos carros, camionetas, buses, camiones, motocicletas, cuadraciclos, etc.','images/vehiculos.jpg'),
 (02,'COMPUTADORAS','Busque aquí todos los productos relacionados con computadoras portátiles y de escritorio.','images/computadoras.jpg'),
 (03,'CELULARES','Busque aquí todos los productos relacionados con celulares y tabletas.','images/celulares.jpg'),
 (04,'ELECTRODOMÉSTICOS','Busque aquí electrodomésticos con precio de bisne.','images/electrodomesticos.png'),
 (05,'BIENES RAÍCES','Si anda buscando casas, terrenos, quintas, fincas este es el mejor lugar.','images/bienesraices.jpg'),
 (06,'MASCOTAS','¿Quiéres regalarle a tu ser querido una mascota este es el lugar ideal.','images/mascotas.jpg'),
 (07,'JUGUETES','En esta sección encontrarás artículos relacionados con jueguetes','images/juguetes.jpg');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;


--
-- Definition of table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `idpro` int(5) unsigned zerofill NOT NULL auto_increment,
  `idcat` int(2) unsigned zerofill NOT NULL,
  `nompro` varchar(45) character set latin1 NOT NULL,
  `descripcionpro` varchar(200) character set latin1 NOT NULL,
  `precio` decimal(8,2) NOT NULL,
  `foto` varchar(100) character set latin1 NOT NULL,
  `contactonom` varchar(50) character set latin1 NOT NULL,
  `contactoemail` varchar(50) character set latin1 NOT NULL,
  `telefono` varchar(8) character set latin1 NOT NULL,
  `ciudad` varchar(45) character set latin1 NOT NULL,
  `fotocontacto` varchar(100) character set latin1 NOT NULL,
  `moneda` char(3) character set latin1 NOT NULL,
  PRIMARY KEY  (`idpro`),
  KEY `FK_productos_categorias` (`idcat`),
  CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcat`) REFERENCES `categorias` (`idcat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productos`
--

/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` (`idpro`,`idcat`,`nompro`,`descripcionpro`,`precio`,`foto`,`contactonom`,`contactoemail`,`telefono`,`ciudad`,`fotocontacto`,`moneda`) VALUES 
 (00001,01,'Toyota Corolla','Toyota Corolla Año 2005 en perfectas condiciones.','5000.00','uploads/carro1.jpg','Raúl González','raul@gmail.com','85214010','Matagalpa','images/vehiculos.jpg','US$'),
 (00002,01,'Motocicleta Pulsar','Motocipleta Pulsar año 2010 en excelente estado físico y mecánico.','1700.00','uploads/moto1.jpg','Luis Valladares','lvalladares@gmail.com','86502958','Estelí','contactos/foto2.jpg','US$'),
 (00003,02,'Laptop HP 4550','Preciosa HP, microprocesador Core i5 con 8GB RAM, HDD de 500GB de 15.6.','375.00','uploads/laptop1.jpg','Enrique López','elopez@hotmail.com','86533358','Matagalpa','contactos/foto3.jpg','US$'),
 (00004,03,'Galaxy S5','Vendo precioso smartphone Samsung Galaxy S5.','275.00','uploads/galaxy1.jpg','Ana Cárdenas','acardenas@yahoo.com','82202888','Jinotega','contactos/foto4.jpg','US$');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
