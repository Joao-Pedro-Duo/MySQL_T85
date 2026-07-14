-- 1 Criar o Banco de dados db_pizzaria_legal
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- 2 Criar a tabela tb_categorias
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(50) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
CONSTRAINT pk_categorias PRIMARY KEY (id)
);


-- 3 Criar a tabela tb_pizzas
CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT,
sabor VARCHAR(100) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
borda_recheada BOOLEAN NOT NULL,
ingredientes VARCHAR(255) NOT NULL,
categoria_id BIGINT,
CONSTRAINT pk_pizzas PRIMARY KEY (id),
CONSTRAINT fk_tb_categorias FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


-- 4 Insere 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (tipo, tamanho)
VALUES
("Salgada", "Grande"),
("Doce", "Média"),
("Vegetariana", "Grande"),
("Vegana", "Média"),
("Especial", "Família");


-- 5 Insere 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (sabor, preco, borda_recheada, ingredientes, categoria_id)
VALUES
("Calabresa", 49.90, TRUE, "Calabresa, cebola e mussarela", 1),
("Mussarela", 45.90, FALSE, "Mussarela, tomate e orégano", 1),
("Chocolate", 39.90, TRUE, "Chocolate ao leite e granulado", 2),
("Brigadeiro", 42.90, FALSE, "Chocolate, brigadeiro e granulado", 2),
("Vegetariana Especial", 54.90, TRUE, "Brócolis, milho, tomate e mussarela", 3),
("Vegana Supreme", 59.90, FALSE, "Queijo vegano, tomate, cebola e rúcula", 4),
("Portuguesa Especial", 62.90, TRUE, "Presunto, ovos, cebola, ervilha e mussarela", 5),
("Frango com Catupiry", 56.90, TRUE, "Frango desfiado, Catupiry e orégano", 1);


-- 6 Faça um SELECT que retorne todas as pizzas cujo valor seja maior
-- do que R$ 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;


-- 7 Faça um SELECT que retorne todas as pizzas cujo valor esteja no
-- intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;


-- 8 Faça um SELECT utilizando o operador LIKE, buscando todas as
-- pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE sabor LIKE "%M%";


-- 9 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados
-- da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;


-- 10 Faça um SELECT utilizando a cláusula INNER JOIN, unindo os
-- dados da tabela tb_pizzas com os dados da tabela tb_categorias,
-- onde traga apenas as pizzas que pertençam a uma categoria
-- específica (Exemplo: Todas as pizzas que são doce).
SELECT *
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Doce";









