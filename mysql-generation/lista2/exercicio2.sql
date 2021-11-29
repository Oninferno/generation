create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria (
	id_categ bigint(5) auto_increment,
    produto varchar(20) not null,
    tipo varchar(20),
    disponibilidade boolean,
    primary key(id_categ)
);

create table tb_pizza (
	id_pizza bigint(5) auto_increment,
    nome varchar(20),
    tamanho varchar(20),
    ingredientes varchar(20),
    massa varchar(20),
    preco decimal(10,2),
    id_categ bigint(5),
    primary key(id_pizza),
    foreign key(id_categ) references tb_categoria(id_categ)
);

select * from tb_categoria;
select * from tb_pizza;

ALTER TABLE tb_pizza MODIFY ingredientes varchar(100);
ALTER TABLE tb_pizza MODIFY nome varchar(100);
    
INSERT INTO tb_categoria(produto, tipo, disponibilidade) VALUES
	("Bebida","Coca-cola",true),
    ("Bebida","Sprite",false),
    ("Bebida","Guaraná",true),
    ("Pizza","Salgada",true),
    ("Pizza","Doce",true);
    
INSERT INTO tb_pizza(nome, tamanho, ingredientes, massa, preco, id_categ) VALUES
	("Calabresa", "Grande", "Calabresa, Queijo e Cebola", "Fina", 25.99, 4),
    ("Romeu e Julieta", "Brotinho", "Queijo e Goiabada", "Tradicional", 29.99, 5), 
    ("Frango c/ Catupiry", "Grande", "Frango, Catupiry e Azeitona Preta", "Tradicional", 29.99, 4), 
    ("Calabresa", "Brotinho", "Calabresa, Queijo e Cebola", "Tradicional", 19.99, 4), 
    ("Portuguesa", "Grande", "Presunto, Queijo, Ervilha e Ovo", "Fina", 25.99, 4), 
    ("Estrogonofe de Frango", "Grande", "Estrogonofe de Frango e Batata Palha", "Tradicional", 29.99, 4), 
    ("Banana c/ Canela", "Grande", "Banana e Canela", "Fina", 25.99, 5), 
    ("Chocolate c/ Morango", "Brotinho", "Chocolate e Morango", "Tradicional", 29.99, 5); 
    
SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29 AND 60;
SELECT * FROM tb_pizza WHERE nome LIKE "%C%";

SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categ = tb_pizza.id_categ;
SELECT * FROM tb_categoria INNER JOIN tb_pizza ON tb_categoria.id_categ = tb_pizza.id_categ
	WHERE tipo = "Doce";
