CREATE DATABASE Projeto2

USE Projeto2

CREATE TABLE usuario (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (255) NOT NULL,
    imagem VARCHAR (150) NOT NULL,
    nome_usuario VARCHAR (50) NOT NULL,
    data_de_cadastro DATE NOT NULL
) 

CREATE TABLE cartao (
	id INT NOT NULL AUTO_INCREMENT,
    numero INT (20) NOT NULL,
    cvv INT(3) NOT NULL,
    data_de_expiracao DATE NOT NULL,
    valido ENUM ("true", "false") NOT NULL,
    data_de_cadastro DATE NOT NULL,
    primary key (id)
) 

CREATE TABLE transacao (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_cartao INT NOT NULL,
	valor DECIMAL (10,2) NOT NULL,
    data_de_cadastro DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (id_cartao) REFERENCES cartao(id)
) 

INSERT INTO usuario VALUES
	(DEFAULT, "Eduardo Santos", "https://google.com", "@eduardo.santos", "2021-06-11"),
    (DEFAULT, "Marina Coelho", "https://google.com", "@marina.coelho", "2021-06-10"),
    (DEFAULT, "Marcia da Silva", "https://google.com", "@marcia.silva", "2021-06-09"),
	(DEFAULT, "Danilo", "https://google.com", "@danilo.goncalves", "2021-06-08")
    
SELECT * FROM usuario ORDER BY nome ASC;

INSERT INTO cartao VALUES
	(DEFAULT, "4287545", "333", "2023-07-14", "true", "2021-06-11"),
	(DEFAULT, "42875452", "444", "2023-07-13", "false", "2021-06-10"),
	(DEFAULT, "42875452", "555", "2023-07-12", "true","2021-06-09"),
	(DEFAULT, "42875452", "666", "2023-07-11", "false", "2021-06-08")
    
SELECT * FROM cartao WHERE valido = true ORDER BY data_de_cadastro ASC;

INSERT INTO transacao VALUES
	(DEFAULT, "1","1","25","2021-06-11"),
    (DEFAULT, "2","2","35","2021-06-10"),
    (DEFAULT, "3","3","45","2021-06-09"),
    (DEFAULT, "4","4","55","2021-06-08")
    
SELECT transacao.id, usuario.nome, usuario.nome_usuario, cartao.numero, cartao.cvv, cartao.data_de_expiracao, cartao.valido, transacao.valor, transacao.data_de_cadastro
FROM transacao JOIN usuario ON transacao.id_usuario = usuario.id JOIN cartao ON transacao.id_usuario = usuario.id;