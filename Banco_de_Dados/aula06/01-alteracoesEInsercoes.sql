-- alterar o cargo dos colaboradores com id 1234, 8766, 8767 e 2349 para GERENTE
UPDATE colaborador
SET funcao = 'GERENTE'
WHERE id_colaborador IN (1234, 8766, 8767, 2349)

--Alterar tabela departamento, inserir coluna chamada regiao do tipo texto que comporte 20 caracteres
ALTER TABLE departamento
ADD regiao varchar2(20);

--Atualizar a regiao dos departamentos 111, 222, 555 e 666 para SUDESTE
UPDATE departamento
SET regiao = 'SUDESTE'
WHERE id_departamento IN (111, 222, 555, 666);

--Inserir os dados abaixo
INSERT INTO departamento 
VALUES(888, 'LIMPEZA', 'BRASIL', 'VITÓRIA', 'SUDESTE');

INSERT INTO departamento 
VALUES(999, 'MANUTENÇÃO', 'BRASIL', 'SALVADOR', 'NORDESTE');

-- Alterar id_departamento da tabela departamento para 4 caracteres
ALTER TABLE departamento
MODIFY id_departamento number(4);

--Inserir os dados abaixo
INSERT INTO departamento 
VALUES(1000, 'ELÉTRICA', 'BRASIL', 'PETROLINA', 'NORDESTE');

INSERT INTO departamento 
VALUES(1111, 'EXPORTAÇÃO', 'BRASIL', 'MANAUS', 'NORTE');

INSERT INTO departamento 
VALUES(2222, 'SEGURANÇA', 'PORTUGAL', 'ALGARVE', 'SUDESTE')