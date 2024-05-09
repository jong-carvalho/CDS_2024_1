
-- Selecionar empregados que tenham salarios entre 3600 e 10000
SELECT * FROM colaborador 
WHERE salario > 3600 AND salario < 10000;

SELECT * FROM colaborador 
WHERE salario > 3600 OR salario < 10000;

SELECT * FROM colaborador 
WHERE salario IN (3600, 10000);

SELECT * FROM colaborador 
WHERE salario NOT IN (3600, 10000);

SELECT * FROM colaborador 
WHERE salario < 3600 AND salario < 10000;

SELECT * FROM colaborador 
WHERE salario > 3600 AND salario > 10000;