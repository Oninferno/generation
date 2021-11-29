CREATE DATABASE db_cursoDaMinhaVida;
USE db_cursoDaMinhaVida;


CREATE TABLE tb_categoria (
	id_categ BIGINT(5) auto_increment,
	departamento VARCHAR(100),
    categoria VARCHAR(100),
    pago BOOLEAN,
    PRIMARY KEY(id_categ)
);

CREATE TABLE tb_curso (
	id_curso BIGINT(5) auto_increment,
    nome VARCHAR(100),
    inicio DATE,
    fim DATE,
    horas BIGINT(5),
    valor DECIMAL(10,2),
    id_categ BIGINT(5),
    PRIMARY KEY(id_curso),
    FOREIGN KEY(id_categ) REFERENCES tb_categoria(id_categ)
);

SELECT * FROM tb_categoria;
SELECT * FROM tb_curso;

INSERT INTO tb_categoria(departamento, categoria, pago) VALUES
	("TECNOLOGIA", "JAVA", false),
    ("CIENCIAS HUMANAS", "Geografia", true),
    ("CIENCIAS DA NATUREZA", "Biologia", false),
    ("LINGUISTICA", "Interpretação textual", true),
    ("ARTES", "Modelagem", true);
    
INSERT INTO tb_curso(nome, inicio, fim, horas, valor, id_categ) VALUES
	("JAVA I: Introdução", '2021-08-04', '2021-11-08', 40, 0.0, 1),
	("Biologia II: Reino Monera", '2021-02-14', '2021-03-14', 50, 0.0, 3),
    ("Logica II: Laços condicionais", '2021-03-30', '2021-04-02', 15, 0.0, 1),
    ("Cerâmica III: Vasos inquebraveis", '2021-06-04', '2021-07-08', 35, 180.45, 5),
    ("Química I: Introdução", '2021-01-02', '2021-02-01', 37, 0.0, 3),
    ("Geologia I: O que são pedras?", '2021-11-28', '2021-11-29', 6, 25.00, 2),
    ("Machado de Assis", '2021-07-12', '2021-12-12', 200, 800.00, 4),
    ("Geografia Política: Imperialismo", '2021-07-07', '2021-09-27', 120, 449.90, 2);
    
SELECT * FROM tb_curso WHERE valor > 50.00;
SELECT * FROM tb_curso WHERE valor BETWEEN 3 AND 60;
SELECT * FROM tb_curso WHERE nome LIKE "%J%";

SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_curso.id_categ = tb_categoria.id_categ;
SELECT * FROM tb_categoria INNER JOIN tb_curso ON tb_curso.id_categ = tb_categoria.id_categ
	WHERE categoria = "Geografia";