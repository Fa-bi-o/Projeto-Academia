/*Consultar cliente (parte do nome)*/
SELECT cliente_nome FROM cliente WHERE cliente_nome LIKE '%Fabio%';
/*Consultar cliente (nome exato)*/
SELECT * FROM cliente WHERE cliente_nome = 'Julia Albuquerque';
/*Consultar cliente (CPF, chave primária)*/
SELECT * FROM cliente WHERE cliente_cpf = '66666666666';

/*Consultar horas Cliente*/
SELECT cliente_cpf, exercicios_tipo, exercicios_data, exercicios_minutos FROM exercicios WHERE cliente_cpf = '33333333333';
/*Consultar horas cliente (total de horas)*/
SELECT c.cliente_cpf, c.cliente_nome, e.cliente_cpf, SUM(e.exercicios_minutos) FROM cliente c JOIN exercicios e
ON c.cliente_cpf = e.cliente_cpf WHERE e.cliente_cpf = '33333333333';

/*Consultar cliente matricula, chave primária)*/
SELECT * FROM funcionario WHERE func_matricula = '1';
/*Consultar cliente (identidade, chave unica)*/
SELECT * FROM funcionario WHERE func_identidade = '3333333';

/*Consultar acesso (registro)*/
SELECT c.cliente_cpf, c.cliente_nome, e.exercicios_data FROM cliente c JOIN exercicios e 
ON c.cliente_cpf = e.cliente_cpf WHERE e.cliente_cpf = '22222222222' ORDER BY e.exercicios_registro DESC LIMIT 1 ;

/*Relatorio clientes (lista, por ordem alfabetica)*/
SELECT cliente_nome FROM cliente ORDER BY cliente_nome;
/*Relatorio clientes (montante, quantidade)*/
SELECT count(cliente_cpf) FROM cliente;


