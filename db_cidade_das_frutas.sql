CREATE DATABASE db_cidade_das_frutas;

USE db_cidade_das_frutas;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    tipo varchar(255),
    preco double,
    quantidade int,
    promocao varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_produto;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tropicais varchar(255),
    citricas varchar(255),
    exoticas varchar(255),
    legumes varchar(255),
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_produto(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Abacaxi","Tropical", 3.75, 10, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Mamão","Tropical", 18.00, 8, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Limão Tahiti","Cítrica", 20.90, 20, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Laranja","Cítrica", 60.00, 30, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Lichia","Exótica", 80.00, 60, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Pitaya","Exótica", 30.00, 5, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Manga","Tropical", 19.90, 8, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Romã","Exótica", 16.50, 2, "Sim");

INSERT INTO tb_produto(nome,tipo,preco,quantidade,promocao)
VALUES("Abobrinha","Legumes", 5.25, 1,"Não");

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Sim","Não","Não","Não", 1);

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Sim","Não","Não", "Não",2);

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Não","Sim","Não","Não", 3);

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Não","Sim","Não", "Não",4);

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Não","Não","Sim","Não", 5);

INSERT INTO tb_categoria(tropicais, citricas, exoticas, legumes, classe_id)
VALUES("Não","Não","Não","Sim", 9);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.classe_id = tb_produto.id
WHERE legumes = "Sim";