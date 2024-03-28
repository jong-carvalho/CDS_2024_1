
-- SELECIONAR ID_COLABORADOR, NOME, SOBRENOME SALARIO, VR, VA, VT
SELECT c.id_colaborador, nome, sobrenome, salario, vr, va, vt
FROM colaborador c
LEFT OUTER JOIN beneficio b ON (c.id_colaborador = b.id_colaborador)

-- SELECIONAR APENAS OS DADOS QUE ESTEJAM PRESENTES NA TABELA DA DIREITA
SELECT c.id_colaborador, nome, sobrenome, salario, vr, va, vt
FROM colaborador c
RIGHT OUTER JOIN beneficio b ON (c.id_colaborador = b.id_colaborador)

-- SELECIONAR APENAS OS DADOS QUE ESTEJAM PRESENTES NAS DUAS TABELAS
SELECT c.id_colaborador, nome, sobrenome, salario, vr, va, vt
FROM colaborador c
INNER JOIN beneficio b ON (c.id_colaborador = b.id_colaborador)


-- SELECIONAR ID_COLABORADOR, NOME E SOBRENOME COMO NOME COMPLETO, ID_DEPARTAMENTO, VR, VA, VT
SELECT c.id_colaborador, nome || ' ' || sobrenome AS "NOME COMPLETO", COALESCE(TO_CHAR(id_dependente), '-') AS "ID_DEPENDENTE", COALESCE(vr, 0) AS "VR", COALESCE(va, 0) AS "VA", COALESCE(vt, 0) AS "VT"
FROM colaborador c
LEFT OUTER JOIN auxilio_creche ac ON c.id_colaborador = ac.id_colaborador
LEFT OUTER JOIN beneficio b ON c.id_colaborador = b.id_colaborador;


