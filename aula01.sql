create database bd3;
use bd3;
create table alunos (
	id int auto_increment primary key,
    nome varchar(50),
    idade int(3),
    nascimento date default null
);

-- insert

insert alunos (nome, idade, nascimento) values ('leo', 10, '2010-03-04');
insert into alunos (nome, idade, nascimento) values ('juju', 11, '2009-10-08');
insert into alunos (nome, idade, nascimento) values ('fred', 13, '2007-05-12');
insert into alunos (nome, idade, nascimento) values ('joao', null, null);
insert into alunos (nome, idade, nascimento) values ('joao', 14, '2006-07-05');
insert alunos (nome, idade, nascimento) values ('Ana', 42, '1979-03-05');
insert into alunos (nome, idade, nascimento) values ('Cássio', 22, '1999-04-17');
insert into alunos (nome, idade, nascimento) values ('Emily', 20, '2000-09-20');
insert into alunos (nome, idade, nascimento) values ('Carla', null, null);
insert into alunos (nome, idade, nascimento) values ('Isadora',31 , '1990-07-05');

-- Selecionar todos os campos de uma tabela 
select * from alunos;

-- Filtrar o resultado por campos nulos e não nulos 
select nome, idade from alunos where idade is null;

-- Selecionar os registros ignorando os registros duplicados
select distinct nome from alunos;

-- Ordenar o resultado de uma consulta 
select *from alunos order by nome asc;

-- Limitar o número de registros retornado por uma consulta
select * from alunos limit 3;




