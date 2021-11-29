CREATE DATABASE db_cidade_das_frutas;
USE db_cidade_das_frutas;

CREATE TABLE tb_categoria (
	id_categ BIGINT(5) auto_increment,
	fornecedor VARCHAR(20),
    categoria VARCHAR(20),
    estoque BOOLEAN,
    PRIMARY KEY(id_categ)
);

CREATE TABLE tb_produto (
	id_produto BIGINT(5) auto_increment,
    nome VARCHAR(20),
    fabricacao DATE NOT NULL,
    vencimento DATE NOT NULL,
    qntd BIGINT(5),
    valor DECIMAL(10,2),
    id_categ BIGINT(5),
    PRIMARY KEY(id_produto),
    FOREIGN KEY(id_categ) REFERENCES tb_categoria(id_categ)
);

select * from tb_categoria;
select * from tb_produto;

INSERT INTO tb_categoria(fornecedor, categoria, estoque) VALUES
	("HORTICOOL", "Frutas", true),
    ("HORTICOOL", "Legumes", false),
    ("BROCKHAMPTON", "Legumes", true),
    ("DELVALLE", "Verduras", true),
    ("RIBEIRO", "Cogumelos", true);
    
INSERT INTO tb_produto(nome, fabricacao, vencimento, qntd, valor, id_categ) VALUES
	("Maça", '2021-06-04', '2021-07-08', 6, 8.00, 1),
	("Cenoura", '2021-06-04', '2021-07-08', 5, 15.90, 3),
    ("Melancia", '2021-06-04', '2021-07-08', 1, 12.90, 1),
    ("Shimeji", '2021-06-04', '2021-07-08', 250, 85.90, 5),
    ("Batata", '2021-06-04', '2021-07-08', 8, 17.35, 3),
    ("Champignon", '2021-06-04', '2021-07-08', 300, 62.80, 5),
    ("Alface", '2021-06-04', '2021-07-08', 4, 6.78, 4),
    ("Tomate", '2021-06-04', '2021-07-08', 20, 26.47, 1);
    
SELECT * FROM tb_produto WHERE valor > 50.00;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_categ = tb_categoria.id_categ;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_categ = tb_categoria.id_categ
	WHERE categoria = "Legumes";