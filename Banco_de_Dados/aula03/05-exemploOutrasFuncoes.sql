-- para sabermos o total de pessoas que tem o mesmo cargo, podemos escrever uma consulta como esta
SELECT COUNT(id_colaborador) 
FROM colaborador 
WHERE funcao = 'GERENTE';

-- para sabermos o funcionário com maior valor de salário de cada categoria de cargo, podemos escrever uma consulta como esta
SELECT funcao, MAX(salario) 
FROM colaborador 
GROUP BY funcao;


-- lista o maior salário de cada categoria, incluindo apenas os funcionários com salários acima de 1000
SELECT funcao, MAX(salario) 
FROM colaborador 
GROUP BY funcao 
HAVING MAX(salario) > 1000;


-- alias para a coluna da seleção do salario maximo
SELECT job, MAX(sal) AS maximo_salario 
FROM emp 
GROUP BY job HAVING MAX(sal) > 1000;


-- selecionar os empregados que tenham o nome iniciado pela letra A
SELECT * FROM colaborador 
WHERE nome LIKE 'A%';

SELECT * FROM colaborador 
WHERE SUBSTR (nome, 1, 1) = 'A'

-- selecionar os empregados com a 2a letra do nome igual a A
SELECT * FROM colaborador 
WHERE nome LIKE '_A%';

SELECT * FROM colaborador 
WHERE SUBSTR(nome, 2, 1) = 'A';

-- concatenar colunas
SELECT nome || ' TEM TRABALHA COMO:'|| funcao AS "Funcionarios" 
FROM colaborador;

-- deixar seleçao em caixa alta
SELECT UPPER('jonatas') FROM dual;

-- deixar seleçao em caixa baixa
SELECT LOWER('JONATAS') FROM dual;

-- trecho de uma string
SELECT SUBSTR('jonatas', 2, 5) FROM dual;

-- tamanho de uma string
SELECT LENGTH('jonatas') FROM dual;