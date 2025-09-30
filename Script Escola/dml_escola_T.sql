--COMANDO PARA USAR BANCO JÁ CRIADO

USE db_escola_T;

--INSERIR UM REGISTRO NA TABELA 

INSERT INTO tb_escola (nome, endereco)
VALUES('Torloni' , 'Estradas das Lágrimas, 579 - São José');

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES(2, 'Manhã', 17, '2S-DI-TORLONI');

INSERT INTO tb_prova (nome, materia, data_prova, nota)
VALUES('E' , 'quimica' , '2025-10-12' , 9);

SELECT * FROM tb_prova;