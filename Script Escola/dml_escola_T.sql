--COMANDO PARA USAR BANCO J� CRIADO

USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA 

INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni' , 'Estradas das L�grimas, 579 - S�o Jos�');

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES(2, 'Manh�', 17, '2S-DI-TORLONI');

INSERT INTO tb_prova (nome, materia, data_prova, nota)
VALUES('E' , 'quimica' , '2025-10-12' , 9);

SELECT * FROM tb_prova;