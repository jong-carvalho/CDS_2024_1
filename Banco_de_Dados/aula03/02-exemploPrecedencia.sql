-- Primeiro o operador AND depois o operador OR, ou seja, primeiro vai localizar os salários maior que 15.000 e depois job_id igual a ‘AD_PRES’
SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE id_departamento = 111
OR id_departamento = 444
AND salario > 1500.00; 


-- Agora com o uso de parênteses () entre a condição com o operador OR ele passa a ser analisado primeiro depois o operador AND
SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE (id_departamento = 111
OR id_departamento = 444)
AND salario > 1500.00; 

-- Selecionar todos os empregados que ganhem mais de 2500 e trabalhem no depto 555;
SELECT * FROM colaborador WHERE id_departamento = 555 AND salario > 2500;


-- Selecionar todos os empregados que ganhem menos de 3600 e mais de 10000.
SELECT * FROM colaborador WHERE salario < 3600 OR salario > 10000;

