-- 1 - Crie um banco de dados para um registro de uma escola, onde o
-- sistema trabalhará com as informações dos estudantes deste
-- registro dessa escola.
CREATE DATABASE IF NOT EXISTS db_escola;

USE db_escola;


-- 2 - Crie uma tabela estudantes e utilizando a habilidade de
-- abstração e determine 5 atributos relevantes dos estudantes
-- para se trabalhar com o serviço dessa escola.
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    data_matricula DATE NOT NULL,
     CONSTRAINT pk_estudantes PRIMARY KEY (id)
);


-- 3 - Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_estudantes (nome, idade, turma, nota, data_matricula)
VALUES
("Ana Souza", 15, "1º Ano A", 5.5, "2025-02-10"),
("Bruno Lima", 16, "2º Ano B", 7.8, "2024-02-15"),
("Carla Mendes", 14, "9º Ano A", 9.2, "2025-02-12"),
("Diego Santos", 17, "3º Ano A", 6.9, "2023-02-08"),
("Eduarda Oliveira", 15, "1º Ano B", 8.8, "2025-02-11"),
("Felipe Costa", 16, "2º Ano A", 7.5, "2024-02-14"),
("Gabriela Rocha", 14, "9º Ano B", 9.7, "2025-02-13"),
("Henrique Alves", 17, "3º Ano B", 8.1, "2023-02-09");

SELECT * FROM tb_estudantes;


-- 4 - Faça um SELECT que retorne todes o/a(s) estudantes com a nota
-- maior do que 7.0.
SELECT * FROM tb_estudantes WHERE nota > 7.0;


-- 5 - Faça um SELECT que retorne todes o/a(s) estudantes com a nota
-- menor do que 7.0.
SELECT * FROM tb_estudantes WHERE nota < 7.0;


-- 6 - Ao término atualize um registro desta tabela através de uma
-- query de atualização.
UPDATE tb_estudantes
SET nota = 5.3,
    turma = "1º Ano C"
WHERE id = 5;

SELECT * FROM tb_estudantes;





