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

-- Aula 2 
-- Atualizando registros da tabela 

/*
update NomedaTabela set coluna1 = 'valor', coluna2 = 'valor' where camapo3 = 'valor';
*/

update alunos set nome = 'Elias', idade = 20 where id = 1;

-- excluir registro da tabela 
/*
delete from NomeDaTabela where coluna = 'valor';
*/

delete from alunos where id = 1;

-- Operadores lógicos 

-- selecionar o registro com nome de joao e idade igual a 14
select * from alunos where nome = 'joao' and idade = 14;

-- selecionar todos os registros que tenham o nome igual a joao ou idade igual a 11
select * from alunos where nome = 'joao' or idade = 10;

-- selecionar todos os registros que não tenham o nome igual a joao
select * from alunos where not nome = 'joao';

-- Count
-- Contar todas as ocorrências de uma coluna na tabela 
-- somente conta o preenchido

select count(idade) from alunos;

select avg(idade) from alunos;

select sum(idade) from alunos;

select min(idade) from alunos;

select max(idade) from alunos;

-- LIKE
select * from alunos where nome like '%joao%';

-- Teste 

insert into alunos (nome, idade, nascimento) values ('juliano Silva', 20, '2000-10-04');

insert into alunos (nome, idade, nascimento) values ('joao Pereira dos Santos', 42, '1979-03-04');

insert into alunos (nome, idade, nascimento) values ('fernanda da silva dos santos', 22, '1999-04-17');

insert into alunos (nome, idade, nascimento) values ('frederico pereira da silva', 10, '2011-07-23');

insert into alunos (nome, idade, nascimento) values ('flora martins', 10, '2011-03-04');

select * from alunos where nome like '%santos%';

select * from alunos where nome like '%silva%';

select * from alunos where nome like '%j%';

-- coringas
-- % - representa qualquer numero ou multiplos caracteres
-- _ - um único caracter
























