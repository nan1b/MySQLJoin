CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    dosagem int,
    preco double,
    funcao varchar(255),
    receituario varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_produto;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    tarja_preta varchar(255),
    generico varchar(255),
    alopatico varchar(255),
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_produto(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Dorflex", 300, 20.00,"Dor de cabeça", "Não precisa");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Alivium", 100, 55.00, "Febre e alívio de dores", "Não precisa");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Rivotril", 20, 25.00, "Distúrbios de ansiedade", "Necessário");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Valdoxan", 25, 175.50, "Depressão e ansiedade", "Necessário");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Desvenlafaxina", 100, 75.00, "Transtorno depressivo maior", "Necessário");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Allegra", 120, 80.00, "Antialérgico", "Não precisa");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Paco", 500, 50.00, "Alívio de dores de grau moderado a intenso", "Necessário");

INSERT INTO tb_produto(nome, dosagem, preco, funcao, receituario)
VALUES("Nimesulida", 100, 15.00, "Anti-inflamatório", "Não precisa");

INSERT INTO tb_categoria(tarja_preta,generico, alopatico, classe_id)
VALUES("Não","Não","Sim", 1);

INSERT INTO tb_categoria(tarja_preta,generico, alopatico, classe_id)
VALUES("Não","Não","Sim", 2);

INSERT INTO tb_categoria(tarja_preta,generico, alopatico, classe_id)
VALUES("Sim","Não","Não", 3);

INSERT INTO tb_categoria(tarja_preta,generico, alopatico, classe_id)
VALUES("Não","Não","Sim", 4);

INSERT INTO tb_categoria(tarja_preta,generico, alopatico, classe_id)
VALUES("Não","Não","Sim", 5);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%b%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.classe_id = tb_produto.id
WHERE tarja_preta = "Sim";
