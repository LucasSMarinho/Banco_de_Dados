USE db_escola_T;

SELECT * FROM tb_turma

DELETE FROM tb_aluno
WHERE id = 8;

INSERT INTO tb_aluno (nome, cpf, data_nasc, matricula, id_escola)
VALUES
('Marcela Giovanna', '225.968.008-96', '2008-03-09', 1, 1),
('Arthur Murilo Assis', '444.528.018-62', '2005-01-12', 2, 1),
('Otávio Rafael', '718.044.228-35', '2004-07-09', 3, 1),
('Kevin Anthony', '095.013.798-76', '2009-01-29', 4, 1),
('Luciana Isabelle', '723.536.528-59', '2010-04-30', 5, 1),
('Agatha Mariah', '199.520.368-84', '2009-01-29', 6, 1),
('Isabelly Helena', '538.157.578-51', '2011-11-21', 1, 2);


UPDATE tb_aluno
SET data_nasc = '2005-12-09'
WHERE id = 6;

INSERT INTO tb_turma (serie, periodo, numero_sala, nome_turma)
VALUES
(2, 'Manhã', 18, 'SEDUC');