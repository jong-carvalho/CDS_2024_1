-- QUESTÃO CORRETA
SELECT nome || ' ' || sobrenome, TRUNC(MONTHS_BETWEEN(sysdate, data_de_contratacao)/12) AS "ANOS DE CONTRATO"
FROM colaborador
WHERE MONTHS_BETWEEN(sysdate,data_de_contratacao) > 60;


SELECT nome || ' ' || sobrenome, TRUNC(YEARS_BETWEEN(sysdate, data_de_contratacao)) AS "ANOS DE CONTRATO"
FROM colaborador
WHERE YEARS_BETWEEN(sysdate,data_de_contratacao) > (60/12);


SELECT nome || ' ' || sobrenome, TRUNC(YEARS_BETWEEN(sysdate, data_de_contratacao)) AS "ANOS DE CONTRATO"
FROM colaborador
WHERE YEARS_BETWEEN(sysdate,data_de_contratacao) > 5;


SELECT nome || ' ' || sobrenome, MONTHS_BETWEEN(sysdate, data_de_contratacao) AS "ANOS DE CONTRATO"
FROM colaborador
WHERE MONTHS_BETWEEN(sysdate,data_de_contratacao) > 60;


SELECT nome || ' ' || sobrenome, TRUNC(MONTHS_BETWEEN(sysdate, data_de_contratacao)/12) AS "ANOS DE CONTRATO"
FROM colaborador
WHERE MONTHS_BETWEEN(sysdate,data_de_contratacao) > 5/12;


SELECT nome || ' ' || sobrenome, MONTHS_BETWEEN(sysdate, data_de_contratacao)/12 AS "ANOS DE CONTRATO"
FROM colaborador
WHERE MONTHS_BETWEEN(sysdate,data_de_contratacao) > 60;