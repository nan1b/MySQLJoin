CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_pizza(
	id bigint auto_increment,
    nome varchar(255),
	ingrediente varchar(255),
    tamanho varchar(255),
    borda varchar(255),
    preco double,
    
    primary key(id)
);

SELECT * FROM tb_pizza;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    salgada double,
    doce double,
    vegana double,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_pizza(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Oriental","Molho de tomate, mix de shitake e shimeji, cogumelo, pimenta biquinho","Grande","Com Catupiry vegano", 25.90);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Portuguesa","Queijo, azeitona preta, ovo cozido, presunto cozido, cebola, ervilha, milho verde","Média","Com Cheddar", 35.00);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Marguerita","Queijo muçarela, rodelas de tomate, manjericão e orégano","Grande","Sem borda", 25.00);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Frango Chileno","Frango desfiado,catupiry, bacon, milho verde","Grande","Catupiry", 60.00);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Mexicana","Carne moída apimentada, nachos, queijos cheddar muçarela e requeijão","Média","Cheddar", 55.00);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Rúcula com tomate seco","Queijo muçarela, tomate seco, rúcula, orégano","Brotinho","Sem borda", 37.90);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Prestígio","Chocolate meio amargo, creme de leite, coco ralado","Grande","Chocolate", 36.90);

INSERT INTO tb_pizza(nome, ingrediente, tamanho, borda, preco)
VALUES("Romeu e Julieta","Muçarela, goiabada, creme de leite","Brotinho","Sem borda", 40.00);

INSERT INTO tb_categoria(salgada, doce, vegana, classe_id)
VALUES(1 , 0, 1, 1);

INSERT INTO tb_categoria(salgada, doce, vegana, classe_id)
VALUES(1 , 0, 0, 2);

INSERT INTO tb_categoria(salgada, doce, vegana, classe_id)
VALUES(1 , 0, 0, 3);

INSERT INTO tb_categoria(salgada, doce, vegana, classe_id)
VALUES(1 , 0, 0, 4);

INSERT INTO tb_categoria(salgada, doce, vegana, classe_id)
VALUES(1 , 0, 0, 5);

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;

SELECT * FROM tb_pizza WHERE nome LIKE "%c%";

SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.id = tb_pizza.id;

SELECT * FROM tb_pizza
INNER JOIN tb_categoria on tb_categoria.classe_id = tb_pizza.id
WHERE salgada = 1;