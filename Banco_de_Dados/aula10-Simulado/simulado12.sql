-- Crie uma seleção em que se o cargo do funcionario for VENDEDOR o salario deve possuir um acréscimo de 50%

SELECT nome, salario, funcao, 
    CASE funcao
        WHEN 'VENDEDOR' THEN salario * 1.50
    ELSE salario
    END AS "Comissão"
FROM colaborador


SELECT nome, salario, funcao, 
    CASE salario
        WHEN 'VENDEDOR' THEN salario * 1.50
    ELSE salario
    END AS "Comissão"
FROM colaborador

SELECT nome, salario, funcao, 
    CASE salario
        WHEN 'VENDEDOR' THEN salario * 0.5
    ELSE salario
    END AS "Comissão"
FROM colaborador

SELECT nome, salario, funcao, 
    CASE funcao
        WHEN 'VENDEDOR' THEN salario * 50 / 100
    ELSE salario
    END AS "Comissão"
FROM colaborador