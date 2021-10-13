CREATE DATABASE IF NOT EXISTS academia DEFAULT CHARACTER SET utf8;
USE academia;

DROP TABLE IF EXISTS cliente;

create table cliente(
	cliente_cpf varchar(11) PRIMARY KEY NOT NULL,
    cliente_nome varchar(100) NOT NULL,
    cliente_telefone_1 varchar(30) DEFAULT NULL, 
    cliente_telefone_2 varchar(30) DEFAULT NULL,
    cliente_endereco varchar(50) NOT NULL,
    cliente_altura varchar(4) NOT NULL,
    cliente_peso varchar(6) NOT NULL,
    cliente_avaliacao_medica text
) DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS funcionario;

create table funcionario(
	func_matricula varchar(11) PRIMARY KEY NOT NULL,
    func_data_admissao varchar(10) NOT NULL,
	func_nome varchar(100) NOT NULL,
	func_endereco varchar(50) NOT NULL,
    func_salario varchar(8) NOT NULL,
    func_funcao varchar(30) NOT NULL,
    func_identidade varchar(10) UNIQUE KEY NOT NULL,
    func_telefone_1 varchar(30) DEFAULT NULL, 
    func_telefone_2 varchar(30) DEFAULT NULL
) DEFAULT CHARSET = utf8;

DROP TABLE IF EXISTS exercicios;

create table exercicios(
	exercicios_registro bigint PRIMARY KEY AUTO_INCREMENT,
	exercicios_data varchar(10) NOT NULL,
    exercicios_minutos int (3) NOT NULL,
    exercicios_tipo varchar(30) NOT NULL, 
    cliente_cpf varchar(11) NOT NULL,
    func_matricula varchar(11) NOT NULL,
    
    FOREIGN KEY(cliente_cpf) REFERENCES cliente(cliente_cpf),
    FOREIGN KEY(func_matricula) REFERENCES funcionario(func_matricula)
) DEFAULT CHARSET = utf8;

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('11111111111','Fabio Nascimento', '998167854', '','Residencial UFRPE, Bloco Bcc, Numero 01', '1,74', '85,00', 'Apto para realizar qualquer atividade física'); 

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('22222222222','Fernanda Meire', '987183467', '34471298','Residencial UFRPE, Bloco Bcc, Numero 02', '1,83', '100,00', 'Possui hipertensão');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('33333333333','Caio Vasconcelos', '996172589', '998761256','Residencial UFRPE, Bloco Bcc, Numero 03', '1,90', '110,00', 'diabetes tipo A');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('44444444444','Igor Vianna', '985182168', '32210986','Residencial UFRPE, Bloco Bcc, Numero 04', '1,55', '82,00', 'Apto para realizar qualquer atividade física');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('66666666666','Edna Alves', '994136459', '','Residencial UFRPE, Bloco Bcc, Numero 05', '1,67', '53,20', 'Apto para realizar qualquer atividade física');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('77777777777','Edmilson Medeiros', '983143384', '32984567','Residencial UFRPE, Bloco Bcc, Numero 06', '1,88', '71,50', 'Sedentário');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('88888888888','Julia Albuquerque', '992150813', '985721620','Residencial UFRPE, Bloco Bcc, Numero 07', '1,79', '79,00', 'Apto para realizar qualquer atividade física');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('99999999999','Thiago Tavares', '981193625', '48961322','Residencial UFRPE, Bloco Bcc, Numero 08', '2,05', '180,00', 'Paciente com obesidade grave');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('12121212121','Amanda Santos', '990145429', '45297618','Residencial UFRPE, Bloco Bcc, Numero 09', '1,83', '83,54', 'Apto para realizar qualquer atividade física');

INSERT INTO academia.cliente(cliente_cpf, cliente_nome, cliente_telefone_1, cliente_telefone_2, cliente_endereco, cliente_altura, cliente_peso, cliente_avaliacao_medica)
VALUES('13131313131','Roberta Ferraz', '989124413', '','Residencial UFRPE, Bloco Bcc, Numero 10', '1,50', '57,28', 'Apto para realizar qualquer atividade física');

INSERT INTO academia.funcionario(func_matricula, func_data_admissao, func_nome, func_endereco, func_salario, func_funcao, func_identidade, func_telefone_1, func_telefone_2)
VALUES('1', '20-10-2007', 'Rodrigo Paz','Residencial UFRPE, Bloco Bcc, Numero 11', '10000,00', 'Personal', '6666666', '333333333', '222222222');

INSERT INTO academia.funcionario(func_matricula, func_data_admissao, func_nome, func_endereco, func_salario, func_funcao, func_identidade, func_telefone_1, func_telefone_2)
VALUES('2', '20-02-2007', 'Eleonor Paz','Residencial UFRPE, Bloco Bcc, Numero 11', '10000,00', 'Personal', '9999999', '999999999', '888888888');

INSERT INTO academia.funcionario(func_matricula, func_data_admissao, func_nome, func_endereco, func_salario, func_funcao, func_identidade, func_telefone_1, func_telefone_2)
VALUES('3', '14-07-2010', 'Madalena Cruz','Residencial UFRPE, Bloco Bcc, Numero 12', '1500,00', 'Seviços Gerais', '8888888', '666666666', '777777777');

INSERT INTO academia.funcionario(func_matricula, func_data_admissao, func_nome, func_endereco, func_salario, func_funcao, func_identidade, func_telefone_1, func_telefone_2)
VALUES('4', '20-10-2015', 'Carlos Alberto','Residencial UFRPE, Bloco Bcc, Numero 13', '1500,00', 'Serviços Gerais', '4444444', '333333333', '222222222');

INSERT INTO academia.funcionario(func_matricula, func_data_admissao, func_nome, func_endereco, func_salario, func_funcao, func_identidade, func_telefone_1, func_telefone_2)
VALUES('5', '20-10-2015', 'Patricia Nogueira','Residencial UFRPE, Bloco Bcc, Numero 14', '3000,00', 'Nutricionista', '3333333', '555555555', '555555555');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('16-02-2021', 90, 'Braços','11111111111', '1');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('16-02-2021', 30, 'Pernas','11111111111', '1');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('17-02-2021', 30, 'Cardio','33333333333', '2');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('17-02-2021', 30, 'Esteira','33333333333', '1');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('18-02-2021', 45, 'Esteira','44444444444', '2');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('18-02-2021', 60, 'Cardio','22222222222', '2');

INSERT INTO academia.exercicios(exercicios_data, exercicios_minutos, exercicios_tipo, cliente_cpf, func_matricula)
VALUES('19-02-2021', 60, 'Cardio','22222222222', '2');
