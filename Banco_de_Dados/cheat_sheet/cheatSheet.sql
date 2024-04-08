-- BETWEEN 
SELECT * FROM colaborador
WHERE salario BETWEEN 3000 AND 5000;

-- IN 
SELECT * FROM colaborador 
WHERE funcao IN('DEV OPS', 'ANALISTA', 'DBA');

-- LIKE 
SELECT * FROM  colaborador 
WHERE nome LIKE 'A%'

SELECT * FROM  colaborador 
WHERE nome LIKE '_NA'

SELECT * FROM  colaborador 
WHERE nome LIKE '%O'

SELECT * FROM  colaborador 
WHERE nome LIKE '%UN_'

-- IS NULL
SELECT * FROM departamento 
WHERE regiao IS NULL

-- ORDER BY - ordenar pelo número da coluna
SELECT * FROM DEPARTAMENTO
ORDER BY 4 ASC

-- seleção dinamica 
SELECT * FROM colaborador 
WHERE id_colaborador = &id_colaborador

-- DEVEMOS ADICIONAR AS '  ' PARA QUE A CONSULTA NÃO FALHE
SELECT * FROM colaborador 
WHERE nome = &nome


-- DEFINE 
DEFINE id_colaborador = 4156; 

SELECT * FROM colaborador 
WHERE id_colaborador = &&id_colaborador;

--UNDEFINE
UNDEFINE id_colaborador; 

SELECT * FROM colaborador 
WHERE id_colaborador = &&id_colaborador;

-- UPPER 
SELECT UPPER('jonatas gomes de carvalho') FROM dual;

-- INITCAP 
SELECT INITCAP('jonatas gomes de carvalho') FROM dual;

-- LOWER 
SELECT LOWER('JONATAS GOMES DE CARVALHO') FROM dual;

-- CONCAT 
SELECT CONCAT('OLÁ JONATAS,', ' SEJA BEM VINDO!') FROM dual;

-- SUBSTR 
SELECT SUBSTR('Aprendendo Banco de Dados com Oracle', 12, 30) FROM dual;

--LENGTH 
SELECT LENGTH('Aprendendo Banco de Dados com Oracle') FROM dual; 

-- INSTR 
SELECT  INSTR('Aprendendo Banco de Dados com Oracle', 'Banco') FROM dual;

-- LPAD 
SELECT LPAD(sobrenome, 30, '*')
FROM colaborador;

-- RPAD 
SELECT RPAD(sobrenome, 30, '_')
FROM colaborador;

-- REPLACE 
SELECT  REPLACE('Aprendendo Banco de Dados com Oracle', 'Oracle', 'Postgres') FROM dual;

-- TRIM 
SELECT TRIM(';' FROM ';nome@gmail.com;') FROM dual; 

-- RTRIM 
SELECT RTRIM(';' FROM ';nome@gmail.com;') FROM dual;

-- LTRIM 
SELECT LTRIM(';' FROM ';nome@gmail.com;') FROM dual; 

----------------------------------------funcoes matematicas----------------------------------------
--ROUND 
SELECT ROUND(3.5) FROM dual;

SELECT ROUND(3.4) FROM dual;

--TRUNC 
SELECT TRUNC(3.5) FROM dual; 

SELECT TRUNC(3.4) FROM dual; 

--MOD 
SELECT MOD(126, 2) FROM dual;

SELECT MOD(257, 2) FROM dual;

--ABS
SELECT ABS(-7) FROM dual;

SELECT ABS(7) FROM dual;

--SQRT
SELECT SQRT(25) FROM dual;

SELECT SQRT(100) FROM dual;

----------------------------------------datas----------------------------------------

SELECT TO_DATE('05/07/2019', 'dd/MM/YYYY') FROM dual;

SELECT TO_CHAR(TO_DATE('05/07/2019', 'dd/MM/YY')) FROM dual;

SELECT to_char(to_date('15-11-2010', 'DD-MM-YYYY'), 'Month') FROM dual;

SELECT sysdate FROM dual;

SELECT sysdate + 3 FROM dual;

SELECT sysdate - 2 FROM dual;

--retorna a diferença em dias
SELECT sysdate - TO_DATE('05/07/2019' , 'dd/MM/YYYY') FROM dual;

SELECT MONTHS_BETWEEN(SYSDATE , TO_DATE('05/07/2019' , 'dd/MM/YYYY')) FROM dual;

SELECT ADD_MONTHS(TO_DATE('05/07/2019' , 'dd/MM/YYYY'), 3) FROM dual;

SELECT NEXT_DAY(SYSDATE, 'MONDAY') FROM dual;

SELECT LAST_DAY(SYSDATE) FROM dual;


--COMPARADORES COM VALORES NULOS 
INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas,  data_pagamento_comissao)
VALUES (1799, 9876, 555, 2500.00, TO_DATE('26-02-2024', 'dd-mm-yyyy'));

--se for nulo vira 5
SELECT comissao, NVL(comissao, 5) FROM comissao;

--se comissao for nulo vira 10, se tiver outro valor diferente de nulo vira 5
SELECT comissao, NVL2(comissao, 5, 10) FROM comissao;

SELECT COALESCE(regiao, 'REGIÃO INVÁLIDA') FROM departamento;

SELECT NULLIF('IGUAIS', 'IGUAIS') FROM DUAL;

SELECT NULLIF('DIFERENTES', 'IGUAIS') FROM DUAL;

--
SELECT AVG(salario) FROM colaborador;

SELECT COUNT(regiao) FROM departamento;

SELECT COUNT(*) FROM departamento;

SELECT MAX(salario) FROM colaborador;

SELECT MIN(salario) FROM colaborador;

SELECT SUM(salario) FROM colaborador;

--desvio padrao
SELECT STDDEV(salario) FROM colaborador;

--variancia
SELECT VARIANCE(salario) FROM colaborador;

SELECT id_colaborador FROM dependente;

SELECT DISTINCT(id_colaborador) FROM dependente;


--ESTRUTURA DE DECISAO
SELECT funcao, salario,
    CASE funcao
        WHEN 'ANALISTA' THEN 2.10*salario 
        WHEN 'GERENTE' THEN 2.50*salario 
        WHEN 'DBA' THEN 1.90*salario
    ELSE salario 
    END AS "PLR"
FROM colaborador;

SELECT funcao, salario,
    DECODE(
        funcao, 
         'ANALISTA', 2.10*salario,
         'GERENTE', 2.50*salario,
         'DBA', 1.90*salario,
        salario
    ) AS "PLR"
FROM colaborador;

