create database dbinfox;
use dbinfox;
create table tbusuarios(
iduser int primary key auto_increment,
nome varchar(50) not null,
sobrenome varchar(50) not null,
cpf varchar(11) not null unique,
telefone varchar(15),
login varchar(15) not null unique,
senha varchar(15) not null,
matricula int unique,
nivelHierarquico int
);

describe tbusuarios;

-- CRUD
-- insere dados 

insert into dbpadaria.tbusuarios(iduser, nome, cpf, telefone, login, senha, matricula, nivelHierarquico)
values (1, 'Anderson Ataide', '04723649441', '996662744', 'persel', 'persel00', 123, 1); 

insert into dbinfox.tbusuarios(iduser, nome, cpf, telefone, login, senha, matricula, nivelHierarquico)
values (2, 'Susy Gabrielle', '05515905482', '995215268', 'sussu', 'persel00', 124, 1);
insert into dbinfox.tbusuarios(iduser, nome, sobrenome, cpf, telefone, login, senha, matricula, nivelHierarquico)
values (3, 'Administrador', '99999999999', '999999999', 'admin', 'admin', 1, 3);
insert into dbinfox.tbusuarios(nome, sobrenome, cpf, telefone, login, senha, matricula, nivelHierarquico)
values ('teste', '11111111111', '999999999', 'admin2', 'admin', 2, 3);

-- exibe dados

select * from tbusuarios;

-- edicão de dados

update tbusuarios set telefone='98888-8888' where iduser=2;

-- deleção de dados

delete from tbusuarios  where iduser=2;

create table tbclientes(
idcliente int primary key auto_increment,
nomecliente varchar(50) not null,
endcliente varchar(100),
fonecliente varchar(50) not null,
emailcliente varchar(50)
);

insert into tbclientes(nomecliente, endcliente, fonecliente, emailcliente)
values('cliente de teste', 'rua de teste, n xxx', '922222222', 'testedeclientes@gmail.com');

use dbinfox;
create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar(150) not null,
defeito varchar(150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcliente int not null,
foreign key(idcliente) references tbclientes(idcliente)
);

describe tbos;

insert into tbos (equipamento, defeito, servico, tecnico, valor, idcliente)
values('notebook','não liga','troca de fonte','zé', 87.50,1);

-- O código abaixo traz informações de duas tabelas

select
O.os,equipamento,defeito,servico,valor,
C.nomecliente,fonecliente
from tbos as O
inner join tbclientes as C
on(O.idcliente = C.idcliente);

select * from tbusuarios where login='admin' and senha='admin';

ALTER TABLE tbusuarios DROP COLUMN sobrenome;

ALTER TABLE tbusuarios ADD endereco varchar(150) not null;

ALTER TABLE tbusuarios ADD bairro varchar(50) not null;

ALTER TABLE tbusuarios ADD cidade varchar(50) not null;

ALTER TABLE tbusuarios ADD estado varchar(50) not null;

ALTER TABLE tbusuarios ADD cep varchar(50) not null;

ALTER TABLE tbusuarios MODIFY cpf varchar(14);
