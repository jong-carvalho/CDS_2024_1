SELECT * FROM colaborador;

SELECT * FROM colaborador where id_departamento = 777

--Um bom motivo é que podemos ter outros ids do departamento correspondencia a GERENCIA também

SELECT * FROM colaborador WHERE id_departamento = (
SELECT id_departamento FROM departamento WHERE nome_departamento = 'GERENCIA')

--Selecionar comissoes menores ou iguais a 100 com colaboradores com o id iniciados com 1
--exibir colunas id_colaborador, valor_vendas, comissao 
--criar coluna de exibição: Valor Comissao com o valor da comissao
SELECT id_colaborador, valor_vendas, comissao, valor_vendas*(comissao/100) as "Valor Comissao" 
FROM comissao  
WHERE id_colaborador > 999 AND id_colaborador < 2000

SELECT id_colaborador, valor_vendas, comissao, valor_vendas*(comissao/100) as "Valor Comissao" 
FROM comissao  
WHERE id_colaborador IN (
    SELECT id_colaborador  FROM comissao 
    WHERE id_colaborador > 999 AND id_colaborador < 2000
    )

--Selecionar comissoes que deram menos de 10% mas que o valor pago foi maior que 140 reais
--exibir colunas id_colaborador, valor_vendas, comissao 
--criar coluna de exibição: Valor Comissao com o valor da comissao

SELECT id_colaborador, valor_vendas, comissao, valor_vendas*(comissao/100) as "Valor Comissao"
FROM comissao
WHERE comissao < 10 AND valor_vendas*(comissao/100) > 140

SELECT id_colaborador, valor_vendas, comissao, valor_vendas*(comissao/100) as "Valor Comissao"
FROM comissao
WHERE id_pagamento IN (
    SELECT id_pagamento FROM comissao
    WHERE comissao < 10 AND valor_vendas*(comissao/100) > 140
)


--Selecionar todas as colunas departamentos que sejam no Brasil, Região Sudeste exceto São Paulo
SELECT * FROM departamento
WHERE regiao = 'SUDESTE' AND cidade <> 'SÃO PAULO'

SELECT * FROM departamento 
WHERE id_departamento IN (
    SELECT id_departamento FROM departamento
    WHERE pais = 'SUDESTE' AND regiao = 'SUDESTE' AND cidade <> 'SÃO PAULO'
)

--Selecionar todas as colunas de departamentos que sejam no Brasil e que possuam os ids impares
SELECT id_departamento, nome_departamento, pais, cidade, regiao, MOD(id_departamento, 2) as "Impar"  FROM departamento
WHERE pais = 'BRASIL' AND MOD(id_departamento, 2) = 1

SELECT * FROM departamentos
WHERE id_departamento IN (
    SELECT id_departamento
     FROM departamento
    WHERE pais = 'BRASIL' AND MOD(id_departamento, 2) = 1
)

--selecionar todas as colunas da tabela colaborador no qual os funcionários possuam mais de dois anos de contratação e que sejam dos setores ENGENHARIA, FRONT-END, BANCO DE DADOS
SELECT id_colaborador, (nome || ' ' || sobrenome) AS "NOME_COMPLETO", id_departamento, salario, TRUNC(MONTHS_BETWEEN(sysdate, data_de_contratacao)) as "MESES_DE_CONTRATO" 
FROM colaborador 
WHERE MONTHS_BETWEEN(sysdate, data_de_contratacao) > 24 AND id_departamento IN (222, 333, 444)

SELECT id_colaborador, (nome || ' ' || sobrenome) AS "NOME_COMPLETO", salario, id_departamento, TRUNC(MONTHS_BETWEEN(sysdate, data_de_contratacao)) as "MESES_DE_CONTRATO"
FROM colaborador 
WHERE id_colaborador IN (
    SELECT id_colaborador FROM colaborador
    WHERE MONTHS_BETWEEN(sysdate, data_de_contratacao) > 24 AND id_departamento IN (222, 333, 444)
)


