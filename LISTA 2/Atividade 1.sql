-- criando banco de dados
CREATE DATABASE db_generation_game_online;

-- informando o banco de dados
USE db_generation_game_online;

-- criando tabela
CREATE TABLE tb_classe (
id_classe BIGINT (8) AUTO_INCREMENT,
habilidade VARCHAR (100),
ativo BOOLEAN,

PRIMARY KEY (id_classe)
);

-- populando tabela 
INSERT INTO tb_classe (habilidade, ativo) VALUE ("Atirador", true);
INSERT INTO tb_classe (habilidade, ativo) VALUE ("Lutador", true);
INSERT INTO tb_classe (habilidade, ativo) VALUE ("Arqueiro", true);
INSERT INTO tb_classe (habilidade, ativo) VALUE ("Poder Mágico", true);
INSERT INTO tb_classe (habilidade, ativo) VALUE ("Super Força", true);

SELECT * FROM tb_classe;

-- indicando qual banco de dados irei usar
USE db_generation_game_online;

-- criando tabela
CREATE TABLE tb_personagem (
id_personagem BIGINT (8) AUTO_INCREMENT,
nome VARCHAR (100),
defesa BIGINT (10),
ataque BIGINT (10),
classe_id BIGINT (1),

PRIMARY KEY (id_personagem),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id_classe)
);

-- Populando tabela
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("KYRA", 1000, 2000, 1);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("CAIRO", 5000, 4000, 2);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("LIRA", 4000, 2000, 4);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("TYNG", 3500, 5000, 5);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("GYN MÍRYAN", 1200, 2000, 3);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("ROHEE", 15600, 1500, 3);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("CAYRAN", 6000, 8000, 4);
INSERT INTO tb_personagem (nome, defesa, ataque, classe_id) VALUE ("KYRO", 5400, 7000, 2);

SELECT * FROM tb_personagem;

-- Recuperar personagens com ataque maior que 2000
SELECT * FROM tb_personagem WHERE ataque > 2000;

-- recuperar personagens com defesa entre 1000 e 2000
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 and 2000;

-- recuperar personagens com a letra c
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";

-- inner join entre tabelas
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id_classe;

-- todos os personagens arqueiros
SELECT tb_personagem.nome, tb_classe.id_classe FROM tb_personagem RIGHT JOIN tb_classe ON tb_personagem.classe_id = tb_classe.id_classe;