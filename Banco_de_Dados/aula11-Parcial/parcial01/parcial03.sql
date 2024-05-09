-- QUESTÃO CORRETA
SELECT c.nome || ' ' || c.sobrenome AS "NOME COLABORADOR", d.nome || ' ' || d.sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
RIGHT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);


SELECT c.nome || ' ' || c.sobrenome AS "NOME COLABORADOR", nome || ' ' || sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
RIGHT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);


SELECT nome || ' ' || sobrenome AS "NOME COLABORADOR", d.nome || ' ' || d.sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
RIGHT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);


SELECT d.nome || ' ' || d.sobrenome AS "NOME COLABORADOR", c.nome || ' ' || c.sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
RIGHT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);


SELECT c.nome || ' ' || c.sobrenome AS "NOME COLABORADOR", d.nome || ' ' || d.sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
LEFT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);


SELECT d.nome || ' ' || d.sobrenome AS "NOME COLABORADOR", c.nome || ' ' || c.sobrenome AS "NOME DEPENDENTE"
FROM colaborador c
LEFT OUTER JOIN dependente d ON (c.id_colaborador = d.id_colaborador);
