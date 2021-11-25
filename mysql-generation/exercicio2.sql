create database db_estoque;

use db_estoque;

create table produtos(
	id bigint(5) auto_increment,
    tipo varchar(20) not null,
    marca varchar(20) not null,
    tamanho varchar(20) not null,
    preco decimal(10,2) not null,
    disponivel boolean,
	primary key(id)
);

select * from produtos;

insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Calçados", "Adidas", "41-42", 120.00, false);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Camiseta", "Vomited", "GG", 81.90, true);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Chinelo", "Havaianas", "36-37", 25.90, true);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Calçados", "Melissa", "36-37", 130.90, false);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Sapato", "Vans", "40-41", 180.00, true);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Casaco", "Adidas", "M", 220.00, false);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Camiseta", "Lacoste", "P", 99.99, true);
insert into produtos(tipo, marca, tamanho, preco, disponivel) values("Vestido", "Fenty", "G", 330.00, true);

select * from produtos where preco > 500;
select * from produtos where preco < 500;

update produtos set preco=825.90 where id=4;
update produtos set preco=999.99 where id=8;
update produtos set disponivel=true where id=7;