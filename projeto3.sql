CREATE DATABASE Projeto3

USE Projeto3

CREATE TABLE squad (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(1000) NOT NULL,
    perfil_git VARCHAR(150) NOT NULL,
    perfil_linkedin VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    imagem VARCHAR(150) NOT NULL
)

INSERT INTO squad ( nome, descricao, perfil_git, perfil_linkedin, email, imagem) VALUES
("Rafael", "Adorei fazer esse projeto em grupo, aumentou minhas skills e gitflow", "https://github.com/rafael-coding","https://www.linkedin.com/in/rafaeldeabreuferreira/", "rafael.abreu.ferreira10@gmail.com","https://google.com/image");

SELECT * FROM squad;

CREATE TABLE usuario (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(150) NOT NULL,
    senha VARCHAR(100) NOT NULL
)

INSERT INTO usuario ( email, senha) VALUES
	("contato@newtab.academy", "123456");
    
SELECT * FROM usuario;