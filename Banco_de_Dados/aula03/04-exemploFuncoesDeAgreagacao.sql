
-- a função MAX analisa um conjunto de valores e retorna o maior entre eles
SELECT MAX(salario) 
FROM colaborador;

-- MIN analisa um grupo de valores e retorna o menor entre eles
SELECT MIN(salario) 
FROM colaborador;

-- a função SUM realiza a soma dos valores em uma única coluna e retorna esse resultado.
SELECT SUM(salario) 
FROM colaborador 
WHERE funcao='GERENTE';

SELECT SUM(salario) 
FROM colaborador 
WHERE funcao='DBA';

-- com a função AVG podemos calcular a média aritmética dos valores em uma única coluna.
SELECT AVG(salario) 
FROM colaborador;


