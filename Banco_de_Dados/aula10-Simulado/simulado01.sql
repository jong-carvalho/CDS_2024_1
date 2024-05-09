-- sabendo-se que existem 5 funções (ANALISTA, DBA, DESENVOLVEDOR, GERENTE, WEBMASTER), qual seria a consulta ideal para selecionarmos apenas funcionarios com as funções ANALISTA e WEBMASTER?
SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao NOT IN ('DESENVOLVEDOR', 'DBA', 'GERENTE');

SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao IN ('ANALISTA', 'GERENTE');

SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao = 'ANALISTA' AND 'WEBMASTER';

SELECT id_colaborador, nome, sobrenome, funcao, salario 
FROM colaborador
WHERE funcao = 'ANALISTA' && funcao = 'WEBMASTER';

