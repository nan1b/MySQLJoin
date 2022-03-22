CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id bigint auto_increment,
    nivel int,
    classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_classes;

CREATE TABLE tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_classes(id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classes(nivel, classe, habilidade, arma)
VALUES(99 , "Guerreiro", "Pericis em armas", "Espada de duas mãos");

INSERT INTO tb_classes(nivel, classe, habilidade, arma)
VALUES(200,"Mago","Resistência a magia","Cajado");

INSERT INTO tb_classes(nivel, classe, habilidade, arma)
VALUES(100,"Ladino","Mãos Leves","Adaga");

INSERT INTO tb_classes(nivel, classe, habilidade, arma)
VALUES(149,"Arqueiro","Arquerismo","Arco e flecha");

INSERT INTO tb_classes(nivel, classe, habilidade, arma)
VALUES(50,"Bardo","Lábia","Alaude");

DELETE FROM tb_classes WHERE id = 1;

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Cleison", "Anão", 1500, 3000, 12000, 2);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Josias", "Elfo Negro", 1000, 1200, 3000, 6);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Vanuza", "Centauro", 5000, 700, 7500,3);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Cleide", "Humana", 500, 6000, 2000, 4);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Ariel", "Construto", 2000, 8800, 4000, 5);

INSERT INTO tb_personagem(nome, raca, vida, defesa, ataque, classe_id)
VALUES("Anitta", "Elfa", 2500, 6000, 8000, 4);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000;

-- outra forma de fazer a query da consulta de defesa
SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
-- se contém usa %%, se quiser saber se começa com a letra c por exemplo usa c%, os que terminam com a letra %c
SELECT * FROM tb_personagem WHERE nome LIKE "%c%";

SELECT * FROM tb_personagem
-- faz junçao do dado que as duas tabelas tem em comum
INNER JOIN tb_classes on tb_classes.id = tb_personagem.id;

SELECT * FROM tb_classes
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classes.id
WHERE classe_id = 4;