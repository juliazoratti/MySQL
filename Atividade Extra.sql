CREATE DATABASE db_minha_casa_mais_bonita;

USE db_minha_casa_mais_bonita;

CREATE TABLE tb_categoria (
id_categoria BIGINT auto_increment,
nome VARCHAR (200),
ativo BOOLEAN,

PRIMARY KEY (id_categoria)
);

INSERT INTO tb_categoria (nome, ativo) VALUE ("Banheiro", true);
INSERT INTO tb_categoria (nome, ativo) VALUE ("Sala de Jantar", true);
INSERT INTO tb_categoria (nome, ativo) VALUE ("Cozinha", true);
INSERT INTO tb_categoria (nome, ativo) VALUE ("Quarto", true);
INSERT INTO tb_categoria (nome, ativo) VALUE ("Sala de estar", true);

SELECT * FROM tb_categoria;

USE db_minha_casa_mais_bonita;

CREATE TABLE tb_produto (
id_produto BIGINT auto_increment,
nome_produto VARCHAR (200),
valor DECIMAL (10,2),
quantidade BIGINT (10),
categoria_id BIGINT,

PRIMARY KEY (id_produto), 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id_categoria)
);

INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Vaso sanitário", 70.00, 3, 1);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Cuba para pia", 50.00, 5, 1);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Mesa de vidro redonda", 1000.00, 7, 2);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Cadeira", 50.00, 8, 2);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Fogão", 2000.00, 3, 3);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Kit facas profissional", 60.00, 3, 3);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Cama de casal", 70.00, 5, 4);
INSERT INTO tb_produto (nome_produto, valor, quantidade, categoria_id) VALUE ("Sofá", 55.00, 10, 5);

SELECT * FROM tb_produto;

USE db_minha_casa_mais_bonita;

CREATE TABLE tb_usuario (
id_usuario BIGINT AUTO_INCREMENT,
nome_completo VARCHAR (200),
idade INT (3),
email VARCHAR (100),
senha VARCHAR (100),

PRIMARY KEY (id_usuario)
);

INSERT INTO tb_usuario (nome_completo, idade, email, senha) VALUE ("Vanessa da Silva", 25, "vanessasilva@gmail.com", "vanessa133");
INSERT INTO tb_usuario (nome_completo, idade, email, senha) VALUE ("Ricardo Alves", 57, "ricardoalves@gmail.com", "2545658474");
INSERT INTO tb_usuario (nome_completo, idade, email, senha) VALUE ("Maria Clara Nunes", 21, "mcnunes@gmail.com", "vanessa133");
INSERT INTO tb_usuario (nome_completo, idade, email, senha) VALUE ("Gabriel Souza", 33, "gabrielsouza123@gmail.com", "gabriel123544588");
INSERT INTO tb_usuario (nome_completo, idade, email, senha) VALUE ("Roberta Macedo", 49, "RobertaMacedo@gmail.com", "roberta33");

SELECT * FROM tb_usuario;

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
SELECT * FROM tb_produto WHERE valor > 50.00;

-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
SELECT * FROM tb_produto WHERE valor BETWEEN 3.00 AND 60.00;

-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
SELECT * FROM tb_produto WHERE nome_produto LIKE "%B%";

-- Faça um select utilizando LIKE buscando os Usuários com a letra C.
SELECT * FROM tb_usuario WHERE nome_completo LIKE "%C%";

-- Faça um um select com Inner join entre tabela categoria e produto.
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.categoria_id;

-- faça um select que retorne a média de preços dos produtos;
SELECT AVG (valor) AS media FROM tb_produto;

-- faça um select que quantidade de produtos cadastrados na tabela
SELECT COUNT(*) FROM tb_produto;

-- Faça um select onde traga todos os Produtos de uma categoria específica
SELECT * FROM tb_produto WHERE tb_produto.categoria_id = 3;
