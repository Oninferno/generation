create database db_registro;

use db_registro;

create table estudantes(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint(5) not null,
    ano bigint(5) not null,
    turma varchar(20) not null,
    responsavel varchar(20),
    primary key(id)
);

alter table estudantes
add nota decimal(10,2);
 
select * from estudantes;

insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Ricardo Barbosa", 11, 6, "B", "Maria Veiga", 7.9);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Ana Oliveira", 13, 7, "A", "Joaninha Bacchi", 8.8);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Augusto Cardoso", 14, 9, "A", "Eiichiro Oda", 4.5);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Otavio Vassao", 12, 7, "B", "Lucia Carvalho", 7.2);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Mariah Americano", 12, 7, "B", "Juliana Yume", 5.3);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Matheus Ono", 14, 9, "A", "Cristina Ono", 6.7);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Ideraldo Xavier", 10, 6, "A", "Maria Veiga", 1.9);
insert into estudantes(nome, idade, ano, turma, responsavel,nota) Values("Thom Yorke", 13, 8, "A", "David Byrne Silva", 9.8);

select * from estudantes where nota > 7;
select * from estudantes where nota < 7;

update estudantes set idade=11 where id=1;