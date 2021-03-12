-- criando banco de dados
CREATE DATABASE db_cursoDaMinhaVida;

-- informando qual banco de dados vou usar
USE db_cursoDaMinhaVida;

-- criando tabela
CREATE TABLE tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

-- populando tabela 
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Java", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("SCRUM", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("JavaScript", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("HTTPS", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("CSS", true);

SELECT * FROM tb_categoria;

-- informando banco de dados que irei usar
USE db_cursoDaMinhaVida;

-- criando tabela
CREATE TABLE tb_curso (
id_curso BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (100),
vagas INT (100),
preco DECIMAL (10,2),
categoria_id BIGINT,

PRIMARY KEY (id_curso),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

-- populando tabela 
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("Introdução a java", 5, 25.00, 1);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("Metodologia SCRUM", 7, 25.00, 2);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("Aprenda JavaScript", 10, 10.00, 3);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("Java: Aprenda POO", 5, 8.99, 1);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("HTTPS de um jeito fácil!", 6, 25.99, 4);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("CSS básico", 2, 10.00, 5);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("JavaScript Avançado", 5, 20.00, 3);
INSERT INTO tb_curso (nome, vagas, preco, categoria_id) VALUE ("JavaScript Atualizações", 8, 50.00, 3);

SELECT * FROM tb_curso;

-- cursos com o valor maior do que 50 reais.
SELECT * FROM tb_curso WHERE preco > 50.00;

-- cursos com valor entre 3 e 60 reais.
SELECT * FROM tb_curso WHERE preco BETWEEN 3.00 AND 60.00;

-- utilizando LIKE buscando os cursos com a letra J.
SELECT * FROM tb_curso WHERE nome LIKE "%J%";

-- Inner join entre tabela categoria e produto.
SELECT * FROM tb_curso INNER JOIN tb_categoria ON tb_pcurso.categoria_id = tb_categoria.id_categoria;

-- todas os cursos de java
SELECT tb_curso.nome FROM tb_curso WHERE tb_curso.categoria_id = 1;
