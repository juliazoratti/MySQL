-- criando banco de dados
CREATE DATABASE db_farmacia_do_bem;

-- informando qual banco de dados vou usar
USE db_farmacia_do_bem;

-- criando tabela
CREATE TABLE tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

-- populando tabela 
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Cosméticos", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Manipulados", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Analgésicos", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Higiene", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Vitaminas", true);

SELECT * FROM tb_categoria;

-- informando banco de dados que irei usar
USE db_farmacia_do_bem;

-- criando tabela
CREATE TABLE tb_produto (
id_produto BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (100),
marca VARCHAR (100),
preco DECIMAL (10,2),
categoria_id BIGINT,

PRIMARY KEY (id_produto),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

-- populando tabela 
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Shampoo", "Pantene", 25.00, 1);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Condicionador", "Pantene", 25.00, 1);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Parcetamol", "original", 10.00, 3);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Vitamina", "original", 8.99, 2);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Lenço umidecido", "Pumpers", 25.99, 4);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Bepantol", "Bayer", 25.00, 1);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Escova de dente", "Colgate", 55.00, 4);
INSERT INTO tb_produto (nome, marca, preco, categoria_id) VALUE ("Iboprofeno", "original", 15.20, 3);

SELECT * FROM tb_produto;

-- Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE preco > 50.00;

-- Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

-- utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome LIKE "%Be%";

-- Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria;

-- todas os produtos que são de cosméticos
SELECT tb_produto.nome FROM tb_produto WHERE tb_produto.categoria_id = 1;
