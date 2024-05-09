
-- 01
SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao NOT IN ('DESENVOLVEDOR', 'DBA', 'GERENTE');

-- 02
SELECT nome, sobrenome, funcao, salario
FROM colaborador 
WHERE (id_departamento = 111
OR id_departamento = 444)
AND salario > 1500.00; 

-- 03 
SELECT * FROM colaborador 
WHERE salario < 3600 OR salario > 10000;

-- 04


-- 05
-- 06
-- 07
-- 08
-- 09
-- 10
-- 11
-- 12

-- 13
SELECT DISTINCT(ID_COLABORADOR) AS "REGISTRO" 
FROM dependente