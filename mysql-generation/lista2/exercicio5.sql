CREATE DATABASE db_construindo_a_nossa_vida;
USE db_construindo_a_nossa_vida;

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
    chegada DATE,
    saida DATE,
    qntd BIGINT(5),
    valor DECIMAL(10,2),
    id_categ BIGINT(5),
    PRIMARY KEY(id_produto),
    FOREIGN KEY(id_categ) REFERENCES tb_categoria(id_categ)
);

select * from tb_categoria;
select * from tb_produto;

INSERT INTO tb_categoria(fornecedor, categoria, estoque) VALUES
	("VILLARES", "Hidráulicos", true),
    ("BILL&CO", "Azulejos", false),
    ("AZKABAN", "Insumos", true),
    ("FERRAGENS DO ZÉ", "Ferramentas", true),
    ("MINECRAFT", "Blocos", true);
    
INSERT INTO tb_produto(nome, chegada, saida, qntd, valor, id_categ) VALUES
	("Chuveiro Lorenzetti ", '2021-08-04', '2021-11-08', 6, 80.00, 1),
	("Areia", '2021-02-14', '2021-03-01', 10, 180.90, 3),
    ("Joelho 90º", '2021-03-30', '2021-04-02', 2, 14.00, 1),
    ("Cerâmico", '2021-06-04', '2021-07-08', 250, 200.25, 5),
    ("Gesso", '2021-01-02', '2021-02-01', 2, 42.96, 3),
    ("Tijolinho AB", '2021-11-28', '2021-11-29', 1, 1.19, 5),
    ("Chave de Fenda", '2021-07-12', '2021-12-12', 2, 7.89, 4),
    ("Caixa d'água", '2021-07-07', '2021-07-27', 1, 649.90, 1);
    
SELECT * FROM tb_produto WHERE valor > 50.00;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%C%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_categ = tb_categoria.id_categ;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_produto.id_categ = tb_categoria.id_categ
	WHERE categoria = "Blocos";