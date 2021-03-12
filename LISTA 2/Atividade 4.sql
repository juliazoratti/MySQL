-- criando banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- informando qual banco de dados vou usar
USE db_cidade_das_carnes;

-- criando tabela
CREATE TABLE tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

-- populando tabela 
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Aves", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Suinos", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Imbutidos", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Bovino", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Outros", true);

SELECT * FROM tb_categoria;

-- informando banco de dados que irei usar
USE db_cidade_das_carnes;

-- criando tabela
CREATE TABLE tb_produto (
id_produto BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (100),
quantidade INT (100),
preco DECIMAL (10,2),
categoria_id BIGINT,

PRIMARY KEY (id_produto),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

-- populando tabela 
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Asa", 5, 25.00, 1);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Picanha", 7, 25.00, 4);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Contra filé", 10, 10.00, 4);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Coração de Galinha", 5, 8.99, 1);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Fígado de boi", 6, 25.99, 4);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Orelha de porco", 2, 10.00, 5);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Salame", 5, 20, 3);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Presunto", 8, 50, 3);

SELECT * FROM tb_produto;

-- Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE preco > 50.00;

-- Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

-- utilizando LIKE buscando os Produtos com a letra C.
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

-- Inner join entre tabela categoria e produto.
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_produto.categoria_id = tb_categoria.id_categoria;

-- todas os produtos que são de aves
SELECT tb_produto.nome FROM tb_produto WHERE tb_produto.categoria_id = 1;
