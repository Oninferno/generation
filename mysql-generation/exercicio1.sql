create database db_RH_Anemone;

use db_RH_Anemone; 

create table tb_funcionarios(
	id bigint(5) auto_increment,
    nome varchar(20) not null,
    idade bigint(5) not null,
    cargo varchar(20) not null,
    salario decimal(10,2),
	ferias boolean,
    primary key(id)
);

select * from tb_funcionarios;

insert into tb_funcionarios(nome, idade, cargo, salario, ferias) values("Matheus Barros", 20, "Dev Java Jr.", 3000.00, false);
insert into tb_funcionarios(nome, idade, cargo, salario, ferias) values("Bezerra da Silva", 36, "Dev Java Senior", 8600.00, true);
insert into tb_funcionarios(nome, idade, cargo, salario, ferias) values("Douglas Adams", 42, "CEO", 12500.00, false);
insert into tb_funcionarios(nome, idade, cargo, salario, ferias) values("Luna Cardoso", 18, "Estagiarie", 850.00, false);
insert into tb_funcionarios(nome, idade, cargo, salario, ferias) values("Marina Machado", 21, "Social Media", 4300.00, true);

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;

update tb_funcionarios set ferias = false where id = 2;
update tb_funcionarios set salario = 1200.00 where id = 4;

