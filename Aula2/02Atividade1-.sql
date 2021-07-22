create database db_generationGameOnline;
use db_generationGameOnline;

create table tb_classe(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

insert into tb_classe (descricao, ativo) values ("Mago", true);
insert into tb_classe (descricao, ativo) values ("Arqueiro", true);
insert into tb_classe (descricao, ativo) values ("Caçador", true);
insert into tb_classe (descricao, ativo) values ("Soldado", true);
insert into tb_classe (descricao, ativo) values ("Atirador", true);

create table tb_personagem (
id bigint auto_increment,
nome varchar (255) not null,
defesa double(6,2) not null,
ataque double(6,2) not null,
guilda varchar(255),
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("XxKilxX", 3000, 2750, "Surrenders", 1);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Fitipal", 1200, 1600, "Clube do Bolinha", 5);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("OtaldoXX", 900, 1780, "Surrenders", 3);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Willdousmith", 1200, 2700, "BeyHive", 2);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Vagner_games", 1800, 1150, "BeyHive", 4);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Lewan_doski", 900, 1850, "Clueless", 3);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Jogador1023", 1600, 2350, "Surrenders", 2);
insert into tb_personagem (nome, defesa, ataque, guilda, classe_id) values ("Matadorahaha", 2000, 3150, "BeyHive", 1);

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "C%";

select tb_personagem.nome, tb_personagem.guilda, tb_classe.descricao 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select tb_personagem.nome, tb_classe.descricao 
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id and tb_classe.descricao = "Mago";
