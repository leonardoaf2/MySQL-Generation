create database db_escola; 

use db_escola;

create table tb_Alunos (
id bigint auto_increment,
nome varchar(30),
serie varchar (3),
matematica decimal(4,2),
portuges decimal(4,2),
faltas smallint(3),
PRIMARY KEY (id)
);

alter table tb_Alunos modify matematica decimal(3,1);

alter table tb_Alunos change portuges portugues decimal(3,1);

insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Ronaldo","8ºA", 6.7 , 8.9, 10);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Fernades","1ºC",7.0, 10, 4);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Davis","2ºD",10 ,3.5, 20);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Ivy","5ºA",9.0 , 7.8, 8);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Nora","4ºE",6.7 ,3.2, 3);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Otaldo","6ºF",8.9 ,7.9, 9);
insert into tb_Alunos(nome, serie, matematica, portugues, faltas) values("Umberto","7ºD",4.7 ,7.9, 5);

select *from tb_Alunos where matematica >=7;
select *from tb_Alunos where portugues>=7;

select *from tb_Alunos where matematica <7;
select *from tb_Alunos where portugues <7;