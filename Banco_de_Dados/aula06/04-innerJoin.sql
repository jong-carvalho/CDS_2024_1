
--
SELECT colaborador.id_colaborador, (nome || ' ' || sobrenome) AS "NOME_COMPLETO", salario, valor_vendas, comissao
FROM colaborador 
INNER JOIN comissao ON colaborador.id_colaborador = comissao.id_colaborador


--Selecionar id_colaborador, nome com sobrenome, salario, nome_departamento, pais e cidade
SELECT id_colaborador, (nome || ' ' || sobrenome) AS "NOME_COMPLETO", salario, nome_departamento, pais, cidade
FROM colaborador
INNER JOIN departamento ON colaborador.id_departamento = departamento.id_departamento


--Selecionar todas as colunas da tabela departamento e as colunas rua, cep e número da tabela endereco
SELECT d.id_departamento, nome_departamento, pais, regiao, cidade, rua, cep, numero
FROM departamento d
INNER JOIN endereco e ON d.id_departamento = e.id_departamento 