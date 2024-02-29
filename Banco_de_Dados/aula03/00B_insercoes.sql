-- INSERÇÕES DEPARTAMENTO
INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (111, 'DEV OPS', 'BRASIL', 'RIO DE JANEIRO');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (222, 'ENGENHARIA', 'BRASIL', 'SÃO PAULO');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (333, 'FRONT-END', 'INDIA', 'BANGALORE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (444, 'BANCO DE DADOS', 'USA', 'ASHEVILLE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (555, 'VENDAS', 'BRASIL', 'BELO HORIZONTE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (666, 'COMPRAS', 'BRASIL', 'BELO HORIZONTE');

INSERT INTO departamento (id_departamento, nome_departamento, pais, cidade) 
VALUES (777, 'GERENCIA', 'RÚSSIA', 'KIEVSKAYA');



-- INSERÇOES COLABORADOR
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4156, 'KAIO', 'MONARK', 'DEV OPS', TO_DATE('11-12-2018', 'dd-mm-yyyy'), 3585.38, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3548, 'ANA JULIA', 'GABANE', 'ENGENHEIRO SENIOR', TO_DATE('13-05-2015', 'dd-mm-yyyy'), 15670.59, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1258, 'ISLANY', 'CARVALHO', 'FRONT END JUNIOR', TO_DATE('27-01-2019', 'dd-mm-yyyy'), 4586.69, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1987, 'BRENNO', 'DIAS SÁ', 'DBRE', TO_DATE('22-07-2023', 'dd-mm-yyyy'), 7850.87, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1345, 'GILSON', 'VIEIRA', 'VENDEDOR', TO_DATE('01-12-2021', 'dd-mm-yyyy'), 5267.36, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3125, 'PAULO', 'NASCIMENTO', 'COMPRADOR', TO_DATE('03-03-2015', 'dd-mm-yyyy'), 3587.79, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9876, 'BRUNO', 'PADOVEZE', 'GERENTE', TO_DATE('13-12-2007', 'dd-mm-yyyy'), 23587.36, 777);


-- INSERCOES COMISSAO
INSERT INTO comissao(id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1784, 1345, 555, 2000.00, 7, TO_DATE('25-02-2024', 'dd-mm-yyyy'));