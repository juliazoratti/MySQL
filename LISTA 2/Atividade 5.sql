-- criando banco de dados
CREATE DATABASE db_construindo_a_nossa_vida;

-- informando qual banco de dados vou usar
USE db_construindo_a_nossa_vida;

-- criando tabela
CREATE TABLE tb_categoria (
id_categoria BIGINT (5) auto_increment,
tipo VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

-- populando tabela 
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Hidráulica", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Elétrico", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Material de construção", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Fitas", true);
INSERT INTO tb_categoria (tipo, ativo) VALUE ("Ferramentas", true);

SELECT * FROM tb_categoria;

-- informando banco de dados que irei usar
USE db_construindo_a_nossa_vida;

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
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Chuveiro", 5, 25.00, 1);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Tomada", 7, 25.00, 2);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Areia", 10, 10.00, 3);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Torneira", 5, 8.99, 1);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Dupla Face", 6, 25.99, 4);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Martelo", 2, 10.00, 5);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Chave de Fenda", 5, 20.00, 3);
INSERT INTO tb_produto (nome, quantidade, preco, categoria_id) VALUE ("Cimento", 8, 50.00, 3);

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
SELECT tb_produto.nome FROM tb_produto WHERE tb_produto.categoria_id = 2;
