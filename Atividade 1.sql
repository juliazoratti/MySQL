-- criando banco de dados
CREATE DATABASE db_ecommerce;

-- informando o banco de dados
USE db_ecommerce;

-- criando tabela
CREATE TABLE tb_produtos (
id BIGINT (8) AUTO_INCREMENT,
nome VARCHAR (100),
tipo VARCHAR (20),
marca VARCHAR (30),
preco BIGINT (10),

PRIMARY KEY (id)
);

-- populando tabela 
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Camiseta", "Roupa", "NIKE", 100);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Tenis", "Calçado", "PUMA", 200);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Boné", "Acessório", "ADIDAS", 30);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Relógio", "Acessório", "CHAMPION", 400);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Chinelo", "Calçado", "NIKE", 50);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Óculos de sol", "Acessório", "CHILLI BEANS", 500);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Tiara", "Acessório", "Renner", 5);
INSERT INTO tb_produtos (nome, tipo, marca, preco) VALUE ("Calça", "Roupa", "GAP", 100);

-- preços maiores que 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- preços menores que 500
SELECT * FROM tb_produtos WHERE preco < 500;

-- atualizando dado de uma query
UPDATE tb_produtos SET marca = "C&A" WHERE id = 7;