-- DESCREVER TABELAS
DESC clientes; 

DESCRIBE atendimentos;

-- ORDENANDO SELEÇÃO
SELECT * FROM atendimentos  
ORDER BY tipo_de_pagamento;

SELECT * FROM atendimentos  
ORDER BY procedimentos ASC;

SELECT * FROM atendimentos  
ORDER BY valor_atendimento DESC;

-- CONTANDO LINHAS
SELECT count (*)
FROM clientes; 

SELECT count (*)
FROM atendimentos; 

SELECT count (*)
FROM comissao;