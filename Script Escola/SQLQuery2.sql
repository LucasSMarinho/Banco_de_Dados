-- Comando que cria um novo banco de dados --

CREATE DATABASE db_escola_T;

--Esse comando usa o DB--

Use db_escola_T;

--Este comando cria uma nova tabela--

CREATE TABLE tb_escola(
   id	INT IDENTITY(1, 1) PRIMARY KEY,
   nome	NVARCHAR(255) NOT NULL,
   endereco NVARCHAR(255) NOT NULL,
);

CREATE TABLE tb_turma(
   id	INT IDENTITY(1, 1) PRIMARY KEY,
   serie INT NOT NULL,
   periodo NCHAR(5) NOT NULL,
   numero_sala TINYINT NOT NULL,
   nome_turma NVARCHAR(100) NOT NULL
);

CREATE TABLE tb_prova(
id INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(255) NOT NULL,
materia NVARCHAR (255) NOT NULL,
data_prova DATE NOT NULL,
nota DECIMAL(3,2) NOT NULL
);

CREATE TABLE tb_aluno(
id INT IDENTITY(1,1) PRIMARY KEY,
nome NVARCHAR(255) NOT NULL,
cpf NCHAR(14) UNIQUE NOT NULL,
data_nasc DATE NOT NULL,
matricula NVARCHAR(10) NOT NULL,
id_escola INT NOT NULL FOREIGN KEY REFERENCES tb_escola(id) --Referencia o id da tabela escola (tb_escola)
);

CREATE TABLE tb_turma_prova(
id_turma INT NOT NULL,
id_prova INT NOT NULL,

PRIMARY KEY (id_turma, id_prova)
);

DROP TABLE tb_turma;

--DQL realiza consultas nas tabelas de um respectivo banco

SELECT * FROM tb_aluno;