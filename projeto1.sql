CREATE DATABASE Projeto1

USE Projeto1

CREATE TABLE transacao (
	id INT NOT NULL auto_increment,
    tipo VARCHAR (10) not null,
    nome VARCHAR (150) not null,
    valor VARCHAR (15) not null,
    data_de_cadastro DATE,
    primary key (id)
)
INSERT INTO transacao ( tipo, nome,valor, data_de_cadastro)VALUES
("compra", "A revolta de Atlas", "64,89", "2021-06-08")

INSERT INTO transacao ( tipo, nome,valor, data_de_cadastro)VALUES
("compra","Ação humana", "122,99", "2021-06-07")

INSERT INTO transacao ( tipo, nome,valor, data_de_cadastro)VALUES
("compra", "One piece", "999,99", "2021-06-06")

select * from transacao order by data_de_cadastro asc

SELECT SUM(valor) FROM transacao;

DELETE from transacao 


