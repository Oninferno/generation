CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categ BIGINT(5) auto_increment,
	fabricante VARCHAR(20),
    tipo VARCHAR(20),
    receita BOOLEAN,
    PRIMARY KEY(id_categ)
);

CREATE TABLE tb_produto (
	id_produto BIGINT(5) auto_increment,
    nome VARCHAR(20),
    vencimento BIGINT(10),
    descricao VARCHAR(100),
    quantidade BIGINT(5),
    valor DECIMAL(10,2),
    id_categ BIGINT(5),
    PRIMARY KEY(id_produto),
    FOREIGN KEY(id_categ) REFERENCES tb_categoria(id_categ)
);

select * from tb_categoria;
select * from tb_produto;

INSERT INTO tb_categoria(fabricante, tipo, receita) VALUES
	("Naut", "Pilula", true),
    ("VAR", "Supositorio", false),
    ("Naut", "Pomada", false),
    ("VAR", "Pilula", false),
    ("Joplin", "Sublingual", true);
    
INSERT INTO tb_produto(nome, vencimento, descricao, quantidade, valor, id_categ) VALUES
	("Xaropinho", 020699, "Para o pulmão", 1, 4.00, 5),
	("Retcon", 220423, "Bom para a memória", 31, 120.99, 1),
    ("Rebillet", 151124, "Tratamento das hemorroidas", 1, 49.90, 3),
    ("Fantano", 311222, "Tratamento intensivo", 16, 250.00, 5),
    ("Catoli", 300525, "Remedio de uso rápido", 1, 25.90, 2),
    ("Stauber", 080828, "Antiacido", 2, 7.00, 4),
    ("Istupendo", 071124, "Antidepressivo", 28, 300.00, 1),
    ("Basstown", 290499, "Sinta-se bem Inc.", 12, 48.00, 4);
    
SELECT * FROM tb_produto WHERE valor > 50.00;
SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%B%";

SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categ = tb_produto.id_categ;
SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categ = tb_produto.id_categ
	WHERE tipo = "Pilula";
    