-- 1- Crie um banco de dados para um serviço de RH de uma empresa,
-- onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
CREATE DATABASE IF NOT EXISTS db_servico_RH;

USE db_servico_RH;


-- 2 - Crie uma tabela de colaboradores e determine 5 atributos
-- relevantes dos colaboradores para se trabalhar com o serviço deste RH.
CREATE TABLE tb_colaboradores (
	id bigint AUTO_INCREMENT,
    nome varchar(255) NOT NULL,
    cargo varchar(255) NOT NULL,
    salario decimal(10, 2) NOT NULL,
    departamento varchar(255) NOT NULL,
    data_admissao date NOT NULL,
    CONSTRAINT pk_colaboradores PRIMARY KEY (id)
);


-- 3 - Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES 
("Carlos Eduardo", "Desenvolvedor Júnior", 3500.00, "Tecnologia", "2025-03-10"),
("Ana Souza", "Analista de RH", 4200.00, "Recursos Humanos", "2023-08-15"),
("Marcos Lima", "Assistente Administrativo", 2500.00, "Administrativo", "2024-01-22"),
("Juliana Santos", "Gerente Financeiro", 7800.00, "Financeiro", "2022-05-03"),
("Pedro Oliveira", "Suporte Técnico", 3000.00, "Tecnologia", "2024-11-18");

SELECT * FROM tb_colaboradores;


-- 4 - Faça um SELECT que retorne todes os colaboradores com o
-- salário maior do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000;


-- 5 - Faça um SELECT que retorne todes os colaboradores com o
-- salário menor do que 2000.
INSERT INTO tb_colaboradores(nome, cargo, salario, departamento, data_admissao)
VALUES 
("Jorge Oliveira", "Suporte Técnico", 1700.00, "Tecnologia", "2024-05-12");

SELECT * FROM tb_colaboradores WHERE salario < 2000;


-- 6 - Ao término atualize um registro desta tabela através de uma 
-- query de atualização.
UPDATE tb_colaboradores
SET salario = 4000.00
WHERE id = 1;

SELECT * FROM tb_colaboradores;
