USE db_escola_T

--Listar os 3 primeiros alunos


SELECT TOP 3 nome FROM tb_aluno 
ORDER BY id ASC;

--Listar os alunos  

SELECT nome, cpf, data_nasc, id_escola
FROM tb_aluno
WHERE id_escola = 1
ORDER BY id ASC;

--Listar os alunos da escola Torloni

SELECT nome
FROM tb_escola
WHERE nome = 'Torloni';

--Mostre as turmas que tem o nome SEDUC

SELECT *
FROM tb_turma
WHERE nome_turma = 'SEDUC';

--Mostre quantos alunos existe na base
SELECT COUNT(*) AS qtd_alunos FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_nova FROM tb_aluno;

--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velha FROM tb_aluno;

--Exiba a idade mais velha e a idade mais nova em uma unica consulta
SELECT MIN(data_nasc) AS idade_mais_velha, MAX(data_nasc) AS idade_mais_nova FROM tb_aluno;


--Media de nota por aluno

SELECT AVG(nota) AS media_da_prova FROM tb_prova;

--Exiba sima dos id's dos alunos

SELECT SUM(id) FROM tb_aluno;

--Mostre os alunos mais novos
SELECT MAX(data_nasc) AS idade_mais_novo, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_novo DESC;

--Mostre os alunos mais velhos
SELECT MIN(data_nasc) AS idade_mais_velho, nome
FROM tb_aluno
GROUP BY nome
ORDER BY idade_mais_velho DESC;

--Mostre quantos turmas existem
SELECT COUNT(*) AS qtd_turmas FROM tb_turma;