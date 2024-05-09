-- Devemos selecionar funcionários que sejam ou do departamento 111 ou do departamento 444 e que tenham um salario maior que 1500.00
SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE (id_departamento = 111
OR id_departamento = 444)
AND salario > 1500.00; 

SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE id_departamento = 111
OR id_departamento = 444
AND salario > 1500.00; 

SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE salario > 1500.00
OR id_departamento = 444
AND id_departamento = 111; 

SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE id_departamento = 111
AND id_departamento = 444
AND salario > 1500.00; 