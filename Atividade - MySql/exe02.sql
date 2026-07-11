-- 1 - Crie um banco de dados para um e-commerce, onde o sistema
-- trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE IF NOT EXISTS db_ecommerce;

USE db_ecommerce;


-- 2 - Crie uma tabela de produtos e determine 5 atributos relevantes
-- dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    marca VARCHAR(255) NOT NULL,
    CONSTRAINT pk_produtos PRIMARY KEY (id)
);


-- 3 - Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos (nome, categoria, preco, estoque, marca)
VALUES
("Notebook Dell Inspiron", "Informática", 4299.90, 10, "Dell"),
("Mouse Gamer G502", "Periféricos", 299.90, 35, "Logitech"),
("Teclado Mecânico K552", "Periféricos", 249.90, 20, "Redragon"),
("Monitor LG 24 Polegadas", "Monitores", 899.90, 15, "LG"),
("Headset HyperX Cloud II", "Áudio", 499.90, 18, "HyperX"),
("Smartphone Galaxy A56", "Celulares", 1899.90, 12, "Samsung"),
("Smart TV 50 Polegadas", "Televisores", 2599.90, 8, "Philips"),
("SSD Kingston NV2 1TB", "Armazenamento", 429.90, 30, "Kingston");

SELECT * FROM tb_produtos;


-- 4 - Faça um SELECT que retorne todes os produtos com o valor
-- maior do que 500.
SELECT * FROM tb_produtos WHERE preco > 500;


-- 5 - Faça um SELECT que retorne todes os produtos com o valor
-- menor do que 500.
SELECT * FROM tb_produtos WHERE preco < 500;


-- 6 - Ao término atualize um registro desta tabela através de uma
-- query de atualização.
UPDATE tb_produtos
SET preco = 279.90,
    estoque = 25
WHERE id = 3;

SELECT * FROM tb_produtos;
