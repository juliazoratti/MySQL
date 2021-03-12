-- criando banco de dados
CREATE DATABASE db_pizzaria_legal;

-- informando qual banco de dados vou usar
USE db_pizzaria_legal;

-- criando tabela
CREATE TABLE tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

-- populando tabela 
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Vegetariana", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Promoção", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Doce", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Tradicional", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Especial", true);

SELECT * FROM tb_categoria;

-- informando banco de dados que irei usar
USE db_pizzaria_legal;

-- criando tabela
CREATE TABLE tb_pizza (
id_pizza BIGINT (5) AUTO_INCREMENT,
nome VARCHAR (100),
sabor VARCHAR (100),
preco DECIMAL (10,2),
categoria_id BIGINT,

PRIMARY KEY (id_pizza),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

-- populando tabela 
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("4 Queijos", "Muzzarela, Provolone, Catupiry e Parmersão", 25.00, 1);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Portuguesa", "Ovo, Presunto, Queijo", 54.23, 4);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Chocolate", "Chocolate e Morango", 25.55, 3);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Calabresa", "Calabresa e Cebola", 47.58, 4);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Lombo", "Queijo e Lombo", 60.00, 2);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("3 Queijos", " Muzzarela, Parmesão e Catupiry", 39.99, 1);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Da casa", "Queijo, ovo, tomate, lombo, presunto e catupiry", 25.00, 5);
INSERT INTO tb_pizza (nome, sabor, preco, categoria_id) VALUE ("Romeu e Julieta", "Queijo e Goiabada" , 55.55, 3);

SELECT * FROM tb_pizza;

-- Pizzas com o valor maior do que 45 reais.
SELECT * FROM tb_pizza WHERE preco > 45.00;

-- Pizzas com valor entre 29 e 60 reais.
SELECT * FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;

-- utilizando LIKE buscando os Pizzas com a letra C.
SELECT * FROM tb_pizza WHERE nome LIKE "%C%";

-- Inner join entre tabela categoria e pizza.
SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.categoria_id = tb_categoria.id_categoria;

-- todas as pizzas que são doces
SELECT tb_pizza.nome FROM tb_pizza WHERE tb_pizza.categoria_id = 3;
