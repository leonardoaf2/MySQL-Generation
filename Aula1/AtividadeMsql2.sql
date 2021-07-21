create database db_loja;

use db_loja;

create table tb_estoque(
id bigint auto_increment,
Tipodeproduto varchar(255),
marcadoproduto varchar(255),
quantidade int,
preço decimal,
primary key (id)
);

insert into tb_estoque (tipodeproduto, marcadoproduto, quantidade, preço) values ("celular", "Samsung",50,1000);
insert into tb_estoque (tipodeproduto, marcadoproduto, quantidade, preço) values ("celular", "Lg",70,1300);
insert into tb_estoque (tipodeproduto, marcadoproduto, quantidade, preço) values ("computador", "lenovo",30,2000);
insert into tb_estoque (tipodeproduto, marcadoproduto, quantidade, preço) values ("caixa de som", "Multilaser",50,200);
insert into tb_estoque (tipodeproduto, marcadoproduto, quantidade, preço) values ("mouse", "multilaser",30,150);

select * from tb_estoque where preço < 500;

select * from tb_estoque where preço > 500;

update tb_estoque set preço = 1500 where id = 1;

select * from tb_estoque;