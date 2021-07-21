create database db_empresa;

use db_empresa;

create table tb_rh(
id bigint auto_increment,
nome varchar(255),
idade int,
salario double(8,2),
cargo varchar(255),
genero varchar(255),
primary key (id)
);

insert into tb_rh (nome, idade, salario, cargo, genero) values ("Robert", 24, 1500,"DevJunior","Masculino");
insert into tb_rh (nome, idade, salario, cargo, genero) values ("Roberta", 23, 1500,"DevJunior","Feminino");
insert into tb_rh (nome, idade, salario, cargo, genero) values ("Mataus", 30, 4500,"Senior","Masculino");
insert into tb_rh (nome, idade, salario, cargo, genero) values ("Willian", 27, 3900,"Gerente","Masculino");
insert into tb_rh (nome, idade, salario, cargo, genero) values ("Raquel", 35, 5000,"Empresaria","Feminino");

-- selecionado salarios menor que 2000
select * from tb_rh where salario < 2000;

-- selecionado salarios maior que 2000
select * from tb_rh where salario > 2000;

-- atualização de dados
update tb_rh set salario = 5000 where id = 4;

select * from tb_rh;
