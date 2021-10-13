CREATE DATABASE  IF NOT EXISTS `academia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `academia`;
-- MySQL dump 10.13  Distrib 5.7.33, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: academia
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `cliente_cpf` varchar(11) NOT NULL,
  `cliente_nome` varchar(100) NOT NULL,
  `cliente_telefone_1` varchar(30) DEFAULT NULL,
  `cliente_telefone_2` varchar(30) DEFAULT NULL,
  `cliente_endereco` varchar(50) NOT NULL,
  `cliente_altura` varchar(4) NOT NULL,
  `cliente_peso` varchar(6) NOT NULL,
  `cliente_avaliacao_medica` text DEFAULT NULL,
  PRIMARY KEY (`cliente_cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('11111111111','Fabio Nascimento','998167854','','Residencial UFRPE, Bloco Bcc, Numero 01','1,74','85,00','Apto para realizar qualquer atividade física'),('12121212121','Amanda Santos','990145429','45297618','Residencial UFRPE, Bloco Bcc, Numero 09','1,83','83,54','Apto para realizar qualquer atividade física'),('13131313131','Roberta Ferraz','989124413','','Residencial UFRPE, Bloco Bcc, Numero 10','1,50','57,28','Apto para realizar qualquer atividade física'),('22222222222','Fernanda Meire','987183467','34471298','Residencial UFRPE, Bloco Bcc, Numero 02','1,83','100,00','Possui hipertensão'),('33333333333','Caio Vasconcelos','996172589','998761256','Residencial UFRPE, Bloco Bcc, Numero 03','1,90','110,00','diabetes tipo A'),('44444444444','Igor Vianna','985182168','32210986','Residencial UFRPE, Bloco Bcc, Numero 04','1,55','82,00','Apto para realizar qualquer atividade física'),('66666666666','Edna Alves','994136459','','Residencial UFRPE, Bloco Bcc, Numero 05','1,67','53,20','Apto para realizar qualquer atividade física'),('77777777777','Edmilson Medeiros','983143384','32984567','Residencial UFRPE, Bloco Bcc, Numero 06','1,88','71,50','Sedentário'),('88888888888','Julia Albuquerque','992150813','985721620','Residencial UFRPE, Bloco Bcc, Numero 07','1,79','79,00','Apto para realizar qualquer atividade física'),('99999999999','Thiago Tavares','981193625','48961322','Residencial UFRPE, Bloco Bcc, Numero 08','2,05','180,00','Paciente com obesidade grave');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercicios`
--

DROP TABLE IF EXISTS `exercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercicios` (
  `exercicios_registro` bigint(20) NOT NULL AUTO_INCREMENT,
  `exercicios_data` varchar(10) NOT NULL,
  `exercicios_minutos` int(3) NOT NULL,
  `exercicios_tipo` varchar(30) NOT NULL,
  `cliente_cpf` varchar(11) NOT NULL,
  `func_matricula` varchar(11) NOT NULL,
  PRIMARY KEY (`exercicios_registro`),
  KEY `cliente_cpf` (`cliente_cpf`),
  KEY `func_matricula` (`func_matricula`),
  CONSTRAINT `exercicios_ibfk_1` FOREIGN KEY (`cliente_cpf`) REFERENCES `cliente` (`cliente_cpf`),
  CONSTRAINT `exercicios_ibfk_2` FOREIGN KEY (`func_matricula`) REFERENCES `funcionario` (`func_matricula`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercicios`
--

LOCK TABLES `exercicios` WRITE;
/*!40000 ALTER TABLE `exercicios` DISABLE KEYS */;
INSERT INTO `exercicios` VALUES (1,'16-02-2021',90,'Braços','11111111111','1'),(2,'16-02-2021',30,'Pernas','11111111111','1'),(3,'17-02-2021',30,'Cardio','33333333333','2'),(4,'17-02-2021',30,'Esteira','33333333333','1'),(5,'18-02-2021',45,'Esteira','44444444444','2'),(6,'18-02-2021',60,'Cardio','22222222222','2'),(7,'19-02-2021',60,'Cardio','22222222222','2');
/*!40000 ALTER TABLE `exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `func_matricula` varchar(11) NOT NULL,
  `func_data_admissao` varchar(10) NOT NULL,
  `func_nome` varchar(100) NOT NULL,
  `func_endereco` varchar(50) NOT NULL,
  `func_salario` varchar(8) NOT NULL,
  `func_funcao` varchar(30) NOT NULL,
  `func_identidade` varchar(10) NOT NULL,
  `func_telefone_1` varchar(30) DEFAULT NULL,
  `func_telefone_2` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`func_matricula`),
  UNIQUE KEY `func_identidade` (`func_identidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('1','20-10-2007','Rodrigo Paz','Residencial UFRPE, Bloco Bcc, Numero 11','10000,00','Personal','6666666','333333333','222222222'),('2','20-02-2007','Eleonor Paz','Residencial UFRPE, Bloco Bcc, Numero 11','10000,00','Personal','9999999','999999999','888888888'),('3','14-07-2010','Madalena Cruz','Residencial UFRPE, Bloco Bcc, Numero 12','1500,00','Seviços Gerais','8888888','666666666','777777777'),('4','20-10-2015','Carlos Alberto','Residencial UFRPE, Bloco Bcc, Numero 13','1500,00','Serviços Gerais','4444444','333333333','222222222'),('5','20-10-2015','Patricia Nogueira','Residencial UFRPE, Bloco Bcc, Numero 14','3000,00','Nutricionista','3333333','55555555555','55555555555');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 16:48:58
