-- QUESTÃO CORRETA
SELECT id_endereco, rua, cep
FROM endereco 
WHERE TO_CHAR(cep) LIKE '0%'


SELECT id_endereco, rua, cep
FROM endereco 
WHERE TO_CHAR(cep) LIKE '0_'


SELECT id_endereco, rua, cep
FROM endereco 
WHERE cep > 0


SELECT id_endereco, rua, cep
FROM endereco 
WHERE cep LIKE 0%


SELECT id_endereco, rua, cep
FROM endereco 
WHERE cep LIKE 0%_

