-- criando banco de dados
CREATE DATABASE db_escola;

-- informando o banco de dados
USE db_escola;

-- criando tabela
CREATE TABLE tb_alunos (
id BIGINT (8) AUTO_INCREMENT,
nome VARCHAR (100),
professor VARCHAR (20),
serie VARCHAR (30),
nota DECIMAL (10,2),

PRIMARY KEY (id)
);

-- populando tabela 
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Juliana", "Carlos", "5a - B", 10.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Carla", "Carlos", "5a - B", 2.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Luiz", "Maria", "5a - A", 5.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Roberto", "Carlos", "5a - B", 4.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Carolina", "Maria", "5a - A", 7.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Daniel", "Maria", "5a - A", 8.00);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Tatiana", "Carlos", "5a - B", 5.25);
INSERT INTO tb_alunos (nome, professor, serie, nota) VALUE ("Caio", "Maria", "5a - A", 10.00);

-- notass maiores que 7,00
SELECT * FROM tb_alunos WHERE nota > 7.00;

-- notas menores que 7,00
SELECT * FROM tb_alunos WHERE nota < 7.00;

-- atualizando dado de uma query
UPDATE tb_aulos SET nota = 10.00 WHERE id = 7;