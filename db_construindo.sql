CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

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
    construcao varchar(255),
    ferramentas varchar(255),
    hidraulico varchar(255),
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_produto(id)
);

SELECT * FROM tb_categoria;

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Parafusadeira","Ferramentas", 269.90, 1, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Kit acessórios para furadeira","Ferramentas", 173.00, 8, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Serra circular 1200w","Ferramentas", 639.99, 1, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Kit ferramentas 129 peças","Ferramentas", 69.99, 1, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Chuveiro elétrico","Material Hidráulico", 119.99, 1, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Revestimento impermeabilizante","Material Hidráulico", 49.99, 1, "Sim");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Cimento 50kg","Material de Construção", 29.90, 1, "Não");

INSERT INTO tb_produto(nome, tipo, preco, quantidade, promocao)
VALUES("Bloco de vidro ondulado","Material de Construção", 17.99, 2, "Sim");

INSERT INTO tb_categoria(construcao, ferramentas, hidraulico, classe_id)
VALUES("Não","Sim","Não", 1);

INSERT INTO tb_categoria(construcao, ferramentas, hidraulico, classe_id)
VALUES("Não","Sim","Não", 2);

INSERT INTO tb_categoria(construcao, ferramentas, hidraulico, classe_id)
VALUES("Não","Sim","Não", 3);

INSERT INTO tb_categoria(construcao, ferramentas, hidraulico, classe_id)
VALUES("Não","Sim","Não", 4);

INSERT INTO tb_categoria(construcao, ferramentas, hidraulico, classe_id)
VALUES("Não","Não","Sim", 5);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto WHERE nome LIKE "%c%";

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.id = tb_produto.id;

SELECT * FROM tb_produto
INNER JOIN tb_categoria on tb_categoria.classe_id = tb_produto.id
WHERE hidraulico = "Sim";