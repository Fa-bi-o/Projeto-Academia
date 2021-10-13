CREATE DATABASE IF NOT EXISTS cadastro DEFAULT CHARACTER SET utf8;
USE cadastro;

DROP TABLE IF EXISTS cursos;

create table cursos(
	idcurso int(11) PRIMARY KEY NOT NULL DEFAULT '0',
    nome varchar(30) UNIQUE KEY NOT NULL,
    descricao text, 
    carga int(10) unsigned DEFAULT NULL,
    totalaulas int (10) unsigned DEFAULT NULL,
    ano year(4) DEFAULT '2021'    
) DEFAULT CHARSET = utf8;

INSERT INTO cursos VALUES
(1, 'HTML5', 'Curso de HTML5', 40, 37, 2014),
(2, 'Algotirimos', 'Lógica de Programação', 20, 15, 2014),
(3, 'Photoshop', 'Dicas de Photoshop CC', 10, 8, 2014),
(4, 'PHP', 'Curso de PHP para iniciantes', 40, 20, 2015),
(5, 'Java', 'Introdução a linguagem Java', 40, 29, 2015),
(6, 'MySQL', 'Banco de Dados MySQL', 30, 15, 2016),
(7, 'Word', 'Curso completo de Word', 40, 30, 2016);

DROP TABLE IF EXISTS gafanhotos;

create table gafanhotos(
	id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome varchar(30) NOT NULL,
    profissao varchar(30), 
    nascimento date DEFAULT NULL,
    sexo enum('M','F') DEFAULT NULL,
    peso decimal(5,2) DEFAULT NULL,
    altura decimal (3,2) DEFAULT NULL,
    nascionalidade varchar (20) DEFAULT 'Brasil'        
) DEFAULT CHARSET = utf8;

INSERT INTO gafanhotos VALUES
(1, 'Godofredo', '', '1984-01-02','M',78.50,1.83,'Brasil'),
(2, 'Maria', '', '1999-12-30','F',55.20,1.65,'Portugal'),
(3, 'Creuza', '', '1920-12-30','F',50.50,1.65,'Brasil'),
(4, 'Adalgiza', '', '1930-11-02','F',63.20,1.75,'Irlanda'),
(5, 'Cláudio', '', '1975-04-22','M',99.00,2.15,'Brasil'),
(6, 'Pedro', '', '1999-12-03','M',87.00,2.00,'Brasil'),
(7, 'Janaina', '', '1987-11-12','F',75.40,1.66,'EUA');