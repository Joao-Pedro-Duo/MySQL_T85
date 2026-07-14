-- 1 Criar o Banco de dados db_generation_game_online
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


-- 2 Criar a tabela tb_classes
CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_classe varchar(255) NOT NULL,
especialidade varchar(255) NOT NULL,
CONSTRAINT pk_classes PRIMARY KEY (id)
);


-- 3 Criar a tabela tb_personagens 
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
classe_id BIGINT,
CONSTRAINT pk_personagens PRIMARY KEY (id),
CONSTRAINT fk_tb_classes FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);


-- 4 Insere 5 registros na tabela tb_classes
INSERT INTO tb_classes (nome_classe, especialidade)
VALUES
("Guerreiro", "Combate corpo a corpo"),
("Mago", "Magias elementais"),
("Arqueiro", "Ataques à distância"),
("Assassino", "Ataques furtivos"),
("Paladino", "Defesa e cura");


-- 5 Insere 8 registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, nivel, ataque, defesa, classe_id)
VALUES
("Thor", 25, 3200, 1800, 1),
("Merlin", 30, 4100, 1200, 2),
("Legolas", 22, 2800, 1500, 3),
("Ezio", 27, 3600, 1400, 4),
("Arthur", 35, 3000, 2500, 5),
("Conan", 20, 2600, 1700, 1),
("Gandalf", 40, 5000, 1600, 2),
("Robin", 18, 2300, 1300, 3);


-- 6 Visualiza todos os dados da tabela tb_personagens com poder de ataque
-- maior do que 2000
SELECT * FROM tb_personagens WHERE ataque > 2000;


-- 7 Visualiza todos os dados da tabela tb_personagens com poder de
-- defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;


-- 8 Visualiza todos os dados da tabela, buscando todes os personagens
-- que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";


-- 9 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados
-- da tabela tb_personagens com os dados da tabela tb_classes.
SELECT *
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;


-- 10 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados
-- da tabela tb_personagens com os dados da tabela tb_classes, onde
-- traga apenas os personagens que pertençam a uma classe específica
-- (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT *
FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome_classe = "Arqueiro";



