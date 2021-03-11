-- criando banco de dados
CREATE DATABASE db_informacoes;

-- informando o banco de dados
USE db_informacoes;

-- criando tabela
CREATE TABLE tb_funcionarios (
id BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (100),
cpf VARCHAR (20),
funcao VARCHAR (30),
salario BIGINT (10),

PRIMARY KEY (id)
);

-- populando tabela 
INSERT INTO tb_funcionarios (nome, cpf, funcao, salario) VALUE ("Rodrigo", "111.111.111-11", "Recepcionista", 1000);
INSERT INTO tb_funcionarios (nome, cpf, funcao, salario) VALUE ("Roberto", "222.222.222-22", "Atendimento ao cliente", 2000);
INSERT INTO tb_funcionarios (nome, cpf, funcao, salario) VALUE ("Maria Fernanda", "333.333.333-33", "TI", 3000);
INSERT INTO tb_funcionarios (nome, cpf, funcao, salario) VALUE ("Fábia", "444.444.444-44", "Administração", 4000);
INSERT INTO tb_funcionarios (nome, cpf, funcao, salario) VALUE ("Jéssica", "555.555.555-55", "Marketing", 5000);

-- salarios maiores que 2000
SELECT * FROM tb_funcionarios WHERE salario > 2000;

-- salarios menores que 2000
SELECT * FROM tb_funcionarios WHERE salario < 2000;

-- atualizando dado de uma query
UPDATE tb_funcionarios SET cpf = "111.222.333-44" WHERE id = 3;