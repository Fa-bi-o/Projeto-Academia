CREATE DATABASE FORNECEDORES;
USE FORNECEDORES;

CREATE TABLE FORNECEDOR(
FORNECEDOR_ID CHAR(10) PRIMARY KEY NOT NULL,
FORNECEDOR_NOME CHAR(50) NOT NULL,
FORNECEDOR_STATUS INTEGER(3),
FORNECEDOR_CIDADE VARCHAR(50) NOT NULL
);

CREATE TABLE PECAS(
PECAS_ID CHAR(10) PRIMARY KEY,
PECAS_NOME CHAR(50) NOT NULL,
PECAS_COR CHAR(50) NOT NULL,
PECAS_PESO INTEGER(3) NOT NULL,
PECAS_CIDADE VARCHAR(50) NOT NULL
);

CREATE TABLE REMESSAS_PECAS(
FORNECEDOR_ID CHAR(10) NOT NULL,
PECAS_ID CHAR(10) NOT NULL,
QUANTIDADE INTEGER(3),
FOREIGN KEY(FORNECEDOR_ID) REFERENCES FORNECEDOR(FORNECEDOR_ID),
FOREIGN KEY(PECAS_ID) REFERENCES PECAS(PECAS_ID)
);

INSERT INTO FORNECEDORES.FORNECEDOR(FORNECEDOR_ID, FORNECEDOR_NOME, FORNECEDOR_STATUS, FORNECEDOR_CIDADE) VALUES ('F1','Pedro', 20, 'Recife'); 
INSERT INTO FORNECEDORES.FORNECEDOR(FORNECEDOR_ID, FORNECEDOR_NOME, FORNECEDOR_STATUS, FORNECEDOR_CIDADE) VALUES ('F2','Maria', 10, 'Fortaleza'); 
INSERT INTO FORNECEDORES.FORNECEDOR(FORNECEDOR_ID, FORNECEDOR_NOME, FORNECEDOR_STATUS, FORNECEDOR_CIDADE) VALUES ('F3','Sônia', 30, 'João Pessoa'); 
INSERT INTO FORNECEDORES.FORNECEDOR(FORNECEDOR_ID, FORNECEDOR_NOME, FORNECEDOR_STATUS, FORNECEDOR_CIDADE) VALUES ('F4','José', 20, 'Recife'); 
INSERT INTO FORNECEDORES.FORNECEDOR(FORNECEDOR_ID, FORNECEDOR_NOME, FORNECEDOR_STATUS, FORNECEDOR_CIDADE) VALUES ('F5','Afrânio', 30, 'Natal'); 

INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P1','Porca', 'Vermelho', 08, 'Recife'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P2','Pino', 'Verde', 17, 'Fortaleza'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P3','Parafuso_1', 'Azul', 10, 'Natal'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P4','Parafuso_2', 'Vermelho', 14, 'Recife'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P5','Cano', 'Azul', 18, 'Fortaleza'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P6','Mola', 'Preto', 16, 'Natal'); 
INSERT INTO FORNECEDORES.PECAS(PECAS_ID, PECAS_NOME, PECAS_COR, PECAS_PESO, PECAS_CIDADE) VALUES ('P7','Tubo', 'Vermelho', 15, 'Recife'); 

INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P1', 300); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P2', 200); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P3', 220); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P4', 200); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P5', 100); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F1','P6', 100); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F2','P1', 300); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F2','P2', 400); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F2','P2', 070); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F4','P2', 200); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F4','P4', 060); 
INSERT INTO FORNECEDORES.REMESSAS_PECAS(FORNECEDOR_ID, PECAS_ID,QUANTIDADE) VALUES ('F4','P5', 050); 

#NÃO ENTENDI COMO FAZER MESMO OLHANDO OS VÍDEOS, NÃO CONSEGUI FAZER A TEMPO, TEM COMO ENVIAR OU COLOCAR A RESPOSTA DESSE EXERCÍCIO EM ALGUM LOCAL PARA QUE TODOS POSSAM VER?
#SELECT QUANTIDADE, FROM REMESSAS_PECAS WHERE(SELECT COUNT(*) FROM FORNECEDOR WHERE FORNECEDOR_ID = FORNECEDOR_ID) > 500 AND <= 2600;

