
-- arredondar valores para o número de casas decimais
SELECT ROUND (45.925, 2) FROM dual;

-- trunca valores para o número de casas decimais
SELECT TRUNC (45.925, 2) FROM dual;

-- resto da divisao
SELECT MOD (1600, 300) FROM dual;

SELECT MOD (10, 2) FROM dual;

SELECT MOD (13, 2) FROM dual;


-- converte um nulo em um valor definido
SELECT nome || ' ' || sobrenome as "NOME COMPLETO", salario, (salario*12) AS "SALARIO ANUAL" 
FROM colaborador;