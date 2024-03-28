-- SELECIONAR id_departamento, nome_departamento, pais, regiao, cidade, rua cep, numero
-- PARA AS COLUNAS QUE RETORNAREM VALORES NULOS, SUBSTITUIR POR NOME DA COLUNA INVÁLIDO, EXEMPLO: CEP INVÁLIDO
SELECT d.id_departamento, nome_departamento, pais, regiao, cidade, rua, cep, numero
FROM departamento d
INNER JOIN endereco e ON d.id_departamento = e.id_departamento 

--SUBSTIUINDO AS COLUNAS COM NULL 
SELECT d.id_departamento, nome_departamento, pais, COALESCE(regiao, 'REGIÃO INVÁLIDA'), cidade, rua, COALESCE(cep, 'CEP INVÁLIDO'), numero
FROM departamento d
INNER JOIN endereco e ON d.id_departamento = e.id_departamento 


-- SELECIONAR id_dependente, nome, sobrenome, id_colaborador, id_auxilio_creche, id_beneficio 
-- SELECIONAR APENAS OS REGISTROS QUE POSSUAM TODAS ESSAS COLUNAS PREENCHIDAS
SELECT d.id_dependente, nome, sobrenome, d.id_colaborador, ac.id_auxilio_creche, ac.id_beneficio 
FROM dependente d
INNER JOIN auxilio_creche ac ON d.id_dependente = ac.id_dependente

-- SELECIONAR TODOS OS CAMPOS DA QUERY ANTERIOR, PORÉM SELECIONAR TAMBÉM OS DEPENDENTES QUE NÃO POSSUEM AUXILIO CRECHE
SELECT d.id_dependente, nome, sobrenome, d.id_colaborador, ac.id_auxilio_creche, ac.id_beneficio 
FROM dependente d
LEFT OUTER JOIN auxilio_creche ac ON d.id_dependente = ac.id_dependente