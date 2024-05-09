
-- OPERADOR IGUAL
SELECT * FROM clientes
WHERE nome_cliente = 'Maria Silva';

-- OPERADORES > >= < <= <>
SELECT * FROM atendimentos
WHERE valor_atendimento > 200;

SELECT * FROM atendimentos
WHERE valor_atendimento < 100;

-- OPERADOR EM UMA LISTA
SELECT * FROM atendimentos
WHERE procedimentos IN  (8, 9, 10);

-- OPERADOR NAO ESTA EM UMA LISTA
SELECT * FROM atendimentos
WHERE procedimentos NOT IN  (4, 5, 6, 7, 8, 9, 10);

-- OPERADOR DE BUSCA APROXIMADA
SELECT * FROM atendimentos 
WHERE tipo_de_pagamento LIKE 3;

SELECT * FROM atendimentos 
WHERE tipo_de_pagamento NOT LIKE 3;

-- OPERADOR ENTRE DOIS VALORES
SELECT * FROM atendimentos 
WHERE valor_atendimento BETWEEN  100 AND 150;

SELECT * FROM atendimentos 
WHERE valor_atendimento NOT BETWEEN  100 AND 150;

