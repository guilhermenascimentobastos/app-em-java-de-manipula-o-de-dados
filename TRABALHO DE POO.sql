create database trabalho_bd1;

use trabalho_bd1;

create table nome(
	nome varchar(200),
    cpf varchar(15),
    nasc numeric,
    endereco varchar(200),
    sexo varchar(15),
    salario float,
    superv varchar(200),
    dept varchar(200),
    primary key(cpf),
    foreign key(dept)
    references departamento(dnum)
);
create table endereço(
	dnome varchar(200),
    dnum numeric,
    gerente varchar(200),
    primary key(dnum),
    foreign key(gerente)
    references empregado(cpf)
);
create table telefone(
	emp varchar(200),
    nomedepend varchar(200),
    sexo varchar(15),
    nasc date,
    parentesco varchar(200),
    primary key(emp),
    foreign key(emp)
    references empregado(cpf)
);
