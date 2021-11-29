create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	class_id bigint(5) auto_increment,
	nome_classe varchar(20) not null,
    vida bigint(5),
    energia bigint(5),
    atk bigint(5),
    def bigint(5),
    primary key(class_id)
);
    
    create table tb_personagem(
		char_id bigint(5) auto_increment,
		nome varchar(20) not null,
        nivel bigint(5),
        xp_atual decimal(10,1),
        servidor varchar(20),
        vivo boolean,
        class_id bigint(5),
        primary key(char_id),
        foreign key(class_id) references tb_classe(class_id)
);
    
select * from tb_classe;
select * from tb_personagem;

insert into tb_classe(nome_classe, vida, energia, atk, def) values
	("Arqueiro", 225, 375, 8000, 2000),
    ("Guerreiro", 300, 300, 4000, 6000),
    ("Barbaro", 400, 200, 6000, 4000),
    ("Ladino", 200, 400, 7000, 3000),
    ("Mago", 150, 450, 9999, 1);
    
insert into tb_personagem(nome, nivel, xp_atual, servidor, vivo, class_id) values
	("Ashe", 2, 150.4, "Runeterra", true, 1),
    ("MonkeyDLuffy", 10, 0.4, "GrandLine", true, 2),
    ("Karthus", 18, 0, "Runeterra", false, 5),
    ("ZeldaS2LinkS2", 25, 24.3, "Ocarina", true, 3),
    ("Gon", 13, 20.4, "Chimera", false, 2),
    ("Killua", 27, 130.1, "Chimera", true, 4),
    ("Urgot", 12, 8.0, "Runeterra", false, 3),
    ("ZzRogerinho", 40, 0, "GrandLine", true, 5);
    
-- delete from tb_personagem where char_id<9;

select * from tb_classe where atk>2000;
select * from tb_classe where def>1000 and def<2000;
select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.class_id = tb_classe.class_id;
select * from tb_personagem inner join tb_classe on tb_personagem.class_id = tb_classe.class_id
	where nome_classe="Mago";
    
/*
alter table tb_personagem
add constraint fk_classe foreign key (class_id) references tb_classe (class_id);
    
alter table tb_classe 
add constraint fk_personagem foreign key (class_id) references tb_personagem (class_id);
*/