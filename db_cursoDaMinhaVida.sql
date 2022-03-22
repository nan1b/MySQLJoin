CREATE DATABASE db_cursoDaMinhaVida;

USE db_cursoDaMinhaVida;

CREATE TABLE tb_curso(
	id bigint auto_increment,
    nome varchar(255),
    tipo varchar(255),
    preco double,
    duracao_em_meses int,
    promocao varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_curso;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tecnologia varchar(255),
    design varchar(255),
    logica_programacao varchar(255),
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_curso(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Lógica de Programação","logica_programacao", 39.90, 1, "Não");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Fundamentos Javascript","Tecnologia", 99.90, 2, "Sim");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Java e MongoDB","Tecnologia", 113.90, 5, "Sim");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Java JRE e JDK","Tecnologia", 46.50, 1, "Não");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("UI Design Patterns","Design", 120.50, 4, "Não");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Adobe XD","Design", 84.90, 2, "Não");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("After Effects","Design", 219.90, 8, "Não");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("UX Research","Design", 94.90, 2, "Sim");

INSERT INTO tb_curso(nome, tipo, preco, duracao_em_meses, promocao)
VALUES("Kotlin","Tecnologia", 110.00, 3, "Sim");

INSERT INTO tb_categoria(tecnologia, design, logica_programacao, classe_id)
VALUES("Não","Não","Sim", 1);

INSERT INTO tb_categoria(tecnologia, design, logica_programacao, classe_id)
VALUES("Sim","Não","Não", 2);

INSERT INTO tb_categoria(tecnologia, design, logica_programacao, classe_id)
VALUES("Sim","Não","Não", 3);

INSERT INTO tb_categoria(tecnologia, design, logica_programacao, classe_id)
VALUES("Sim","Não","Não", 4);

INSERT INTO tb_categoria(tecnologia, design, logica_programacao, classe_id)
VALUES("Não","Sim","Não", 5);

SELECT * FROM tb_curso WHERE preco > 50.00;
SELECT * FROM tb_curso WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_curso WHERE nome LIKE "%j%";

SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.id = tb_curso.id;

SELECT * FROM tb_curso
INNER JOIN tb_categoria on tb_categoria.classe_id = tb_curso.id
WHERE tecnologia = "Sim";