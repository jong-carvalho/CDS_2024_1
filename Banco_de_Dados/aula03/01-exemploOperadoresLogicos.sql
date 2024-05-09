
-- operador AND
SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador 
WHERE salario >= 1100 AND funcao = 'DBA';

-- operador OR
SELECT id_colaborador, nome, sobrenome, funcao, salario, 
FROM colaborador 
WHERE funcao = 'DESENVOLVEDOR' OR funcao = 'DBA';


-- operador NOT IN
SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao NOT IN ('DESENVOLVEDOR', 'DBA', 'GERENTE');
