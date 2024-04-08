--------------------------------------DROPS and SELECTS--------------------------------------
DROP TABLE auxilio_creche;

DROP TABLE dependente;

DROP TABLE beneficio;


DROP TABLE endereco;

DROP TABLE comissao;

DROP TABLE colaborador;

DROP TABLE departamento;


SELECT * FROM departamento;

SELECT * FROM colaborador;

SELECT * FROM comissao;

SELECT * FROM endereco;
--------------------------------------DROPS and SELECTS--------------------------------------

--------------------------------------CREATION DEPARTAMENTO, COLABORADOR, COMISSAO--------------------------------------
CREATE TABLE departamento(   
  id_departamento     number(3),   
  nome_departamento   varchar2(15), 
  pais  varchar2(15),
  cidade         varchar2(15),   
  CONSTRAINT pk_departamento PRIMARY KEY (id_departamento)   
);

CREATE TABLE colaborador(   
  id_colaborador    number(4),   
  nome              varchar2(10),
  sobrenome         varchar2(20),   
  funcao            varchar2(20),  
  data_de_contratacao date,   
  salario           number(7,2),
  id_departamento   number(3),   
  CONSTRAINT pk_colaborador PRIMARY KEY (id_colaborador),   
  CONSTRAINT fk_departamento FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento)   
);

CREATE TABLE comissao (
    id_pagamento      number(4),
    id_colaborador    number(4), 
    id_departamento   number(4),
    valor_vendas      number(7,2),
    comissao          number(2),
    data_pagamento_comissao date,
    CONSTRAINT pk_comissao PRIMARY KEY (id_pagamento),   
    CONSTRAINT fk_departamento_comissao FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento), 
    CONSTRAINT fk_colaborador_comissao FOREIGN KEY (id_colaborador) REFERENCES colaborador (id_colaborador)     
);
--------------------------------------CREATION DEPARTAMENTO, COLABORADOR, COMISSAO--------------------------------------

--------------------------------------INSERÇÕES DEPARTAMENTO--------------------------------------
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
--------------------------------------INSERÇÕES DEPARTAMENTO--------------------------------------

--------------------------------------INSERÇÕES COLABORADOR--------------------------------------
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
--------------------------------------INSERÇÕES COLABORADOR--------------------------------------


--------------------------------------INSERÇÕES COMISSAO--------------------------------------
INSERT INTO comissao(id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1784, 1345, 555, 2000.00, 7, TO_DATE('25-02-2024', 'dd-mm-yyyy'));
--------------------------------------INSERÇÕES COMISSAO--------------------------------------


--------------------------------------INSERÇÕES CHAT GPT--------------------------------------
INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6543, 'MARIA', 'SILVA', 'ANALISTA', TO_DATE('15-06-2019', 'dd-mm-yyyy'), 4200.50, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7890, 'JOAO', 'PEREIRA', 'DESENVOLVEDOR', TO_DATE('21-03-2020', 'dd-mm-yyyy'), 5000.75, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4321, 'ANA', 'OLIVEIRA', 'DBA', TO_DATE('08-09-2021', 'dd-mm-yyyy'), 4800.60, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5678, 'PEDRO', 'SANTOS', 'GERENTE', TO_DATE('05-11-2017', 'dd-mm-yyyy'), 6500.90, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8765, 'CARLA', 'COSTA', 'ANALISTA', TO_DATE('30-04-2018', 'dd-mm-yyyy'), 4200.25, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1234, 'FELIPE', 'MARTINS', 'DESENVOLVEDOR', TO_DATE('14-02-2019', 'dd-mm-yyyy'), 4900.40, 777);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2345, 'ISABELA', 'ROCHA', 'ANALISTA', TO_DATE('10-07-2020', 'dd-mm-yyyy'), 4300.20, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5578, 'VICTOR', 'COSTA', 'DESENVOLVEDOR', TO_DATE('19-09-2021', 'dd-mm-yyyy'), 5200.80, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6665, 'AMANDA', 'PEREIRA', 'ANALISTA', TO_DATE('10-01-2019', 'dd-mm-yyyy'), 4400.50, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7734, 'ROBERTO', 'OLIVEIRA', 'DBA', TO_DATE('27-04-2016', 'dd-mm-yyyy'), 4600.40, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8845, 'FERNANDA', 'SANTOS', 'ANALISTA', TO_DATE('15-11-2017', 'dd-mm-yyyy'), 4300.60, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9990, 'RICARDO', 'COSTA', 'GERENTE', TO_DATE('03-08-2018', 'dd-mm-yyyy'), 6700.75, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (0056, 'SABRINA', 'MARTINS', 'DESENVOLVEDOR', TO_DATE('20-02-2020', 'dd-mm-yyyy'), 5000.45, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6544, 'MARIO', 'SILVA', 'DBA', TO_DATE('14-07-2019', 'dd-mm-yyyy'), 4800.55, 777);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (9996, 'ISABEL', 'RODRIGUES', 'ANALISTA', TO_DATE('30-03-2022', 'dd-mm-yyyy'), 4100.35, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (8885, 'BRUNO', 'ALMEIDA', 'GERENTE', TO_DATE('25-05-2016', 'dd-mm-yyyy'), 6900.80, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (7778, 'RAFAELA', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('12-10-2021', 'dd-mm-yyyy'), 5300.60, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (6667, 'FELIPE', 'MENDONÇA', 'ANALISTA', TO_DATE('18-08-2020', 'dd-mm-yyyy'), 4500.40, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (5551, 'LAURA', 'OLIVEIRA', 'GERENTE', TO_DATE('05-12-2017', 'dd-mm-yyyy'), 6800.70, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (4446, 'GUSTAVO', 'SILVA', 'DESENVOLVEDOR', TO_DATE('21-04-2019', 'dd-mm-yyyy'), 5100.85, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (3336, 'SOFIA', 'COSTA', 'ANALISTA', TO_DATE('18-09-2022', 'dd-mm-yyyy'), 4400.25, 777);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2222, 'MATEUS', 'MARTINS', 'DBA', TO_DATE('27-06-2020', 'dd-mm-yyyy'), 4600.55, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1119, 'LUCIA', 'ALMEIDA', 'GERENTE', TO_DATE('14-02-2018', 'dd-mm-yyyy'), 6700.60, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (0007, 'HENRIQUE', 'ROCHA', 'DESENVOLVEDOR', TO_DATE('10-11-2016', 'dd-mm-yyyy'), 4900.45, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1217, 'ANA', 'SANTOS', 'ANALISTA', TO_DATE('03-05-2021', 'dd-mm-yyyy'), 4200.30, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1314, 'CARLOS', 'FERREIRA', 'DBA', TO_DATE('22-08-2019', 'dd-mm-yyyy'), 4800.75, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1417, 'BEATRIZ', 'ALVES', 'GERENTE', TO_DATE('09-04-2018', 'dd-mm-yyyy'), 6900.90, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1517, 'RAFAEL', 'MENDES', 'DESENVOLVEDOR', TO_DATE('15-10-2020', 'dd-mm-yyyy'), 5200.70, 777);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1615, 'VANESSA', 'RODRIGUES', 'ANALISTA', TO_DATE('05-12-2017', 'dd-mm-yyyy'), 4300.50, 111);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1718, 'RICARDO', 'SILVEIRA', 'DBA', TO_DATE('18-06-2019', 'dd-mm-yyyy'), 4600.40, 222);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1818, 'AMANDA', 'ALMEIDA', 'GERENTE', TO_DATE('02-03-2021', 'dd-mm-yyyy'), 6600.85, 333);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (1918, 'BRUNO', 'SANTOS', 'DESENVOLVEDOR', TO_DATE('14-11-2018', 'dd-mm-yyyy'), 5300.65, 444);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2129, 'LARISSA', 'FERREIRA', 'ANALISTA', TO_DATE('20-09-2016', 'dd-mm-yyyy'), 4500.60, 555);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2328, 'GABRIEL', 'COSTA', 'DBA', TO_DATE('27-04-2022', 'dd-mm-yyyy'), 4900.55, 666);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2429, 'RAFAELA', 'MARTINS', 'GERENTE', TO_DATE('10-08-2017', 'dd-mm-yyyy'), 7000.75, 777);

INSERT INTO colaborador (id_colaborador, nome, sobrenome, funcao, data_de_contratacao, salario, id_departamento)
VALUES (2529, 'MAURICIO', 'ROCHA', 'DESENVOLVEDOR', TO_DATE('03-05-2020', 'dd-mm-yyyy'), 5100.80, 111);


INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1785, 9876, 555, 2500.00, 8, TO_DATE('26-02-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1786, 6543, 555, 1800.00, 6, TO_DATE('27-02-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1787, 7890, 555, 3000.00, 10, TO_DATE('28-02-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1788, 4321, 555, 1500.00, 5, TO_DATE('29-02-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1789, 5678, 555, 2200.00, 9, TO_DATE('01-03-2024', 'dd-mm-yyyy'));


INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1790, 8765, 555, 2800.00, 9, TO_DATE('02-03-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1791, 1234, 555, 2000.00, 7, TO_DATE('03-03-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1792, 9876, 555, 3200.00, 11, TO_DATE('04-03-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1793, 8765, 555, 1800.00, 6, TO_DATE('05-03-2024', 'dd-mm-yyyy'));

INSERT INTO comissao (id_pagamento, id_colaborador, id_departamento, valor_vendas, comissao, data_pagamento_comissao)
VALUES (1794, 2345, 555, 2500.00, 8, TO_DATE('06-03-2024', 'dd-mm-yyyy'));
--------------------------------------INSERÇÕES CHAT GPT--------------------------------------

--------------------------------------UPDATE TABLE COLABORADOR--------------------------------------
UPDATE colaborador
SET funcao = 'GERENTE'
WHERE id_colaborador IN (1234, 8766, 8767, 2349);
--------------------------------------UPDATE TABLE COLABORADOR--------------------------------------

--------------------------------------ALTER TABLE DEPARTAMENTO--------------------------------------
ALTER TABLE departamento
ADD regiao varchar2(20);
--------------------------------------ALTER TABLE DEPARTAMENTO--------------------------------------

--------------------------------------UPDATE TABLE DEPARTAMENTO--------------------------------------
UPDATE departamento
SET regiao = 'SUDESTE'
WHERE id_departamento IN (111, 222, 555, 666);
--------------------------------------UPDATE TABLE DEPARTAMENTO--------------------------------------


--------------------------------------INSERTIONS DEPARTAMENTO--------------------------------------
INSERT INTO departamento 
VALUES(888, 'LIMPEZA', 'BRASIL', 'VITÓRIA', 'SUDESTE');

INSERT INTO departamento 
VALUES(999, 'MANUTENÇÃO', 'BRASIL', 'SALVADOR', 'NORDESTE');
--------------------------------------INSERTIONS DEPARTAMENTO--------------------------------------

--------------------------------------ALTER TABLE DEPARTAMENTO--------------------------------------
ALTER TABLE departamento
MODIFY id_departamento number(4);
--------------------------------------ALTER TABLE DEPARTAMENTO--------------------------------------


--------------------------------------INSERTIONS DEPARTAMENTO--------------------------------------
INSERT INTO departamento 
VALUES(1000, 'ELÉTRICA', 'BRASIL', 'PETROLINA', 'NORDESTE');

INSERT INTO departamento 
VALUES(1111, 'EXPORTAÇÃO', 'BRASIL', 'MANAUS', 'NORTE');

INSERT INTO departamento 
VALUES(2222, 'SEGURANÇA', 'PORTUGAL', 'ALGARVE', 'SUDESTE');
--------------------------------------INSERTIONS DEPARTAMENTO--------------------------------------

--------------------------------------CREATE ENDERECO--------------------------------------
CREATE TABLE endereco (
    id_endereco number(3),
    id_departamento number(4),
    rua varchar2(40),
    cep varchar2(8),
    numero varchar2(5),
    CONSTRAINT pk_endereco PRIMARY KEY (id_endereco),
    CONSTRAINT fk_id_departamento_endereco FOREIGN KEY (id_departamento) references departamento (id_departamento)
);
--------------------------------------CREATE ENDERECO--------------------------------------


--------------------------------------INSERTIONS ENDERECO--------------------------------------
INSERT INTO endereco 
VALUES(1, 111, 'Avenida Atlântica', '88330009', '1782');

INSERT INTO endereco 
VALUES(2, 222, 'Avenida Faria Lima', '01472900', '3561');

INSERT INTO endereco 
VALUES(3, 333, 'Mahatma Gandhi Road', null, '1782');

INSERT INTO endereco 
VALUES(4, 444, 'BroadWay', null, '8954');

INSERT INTO endereco 
VALUES(5, 555, 'Avenida Afonso Pena', '30190030', '1120');

INSERT INTO endereco 
VALUES(6, 666, 'Avenida Afonso Pena', '30190030', '1120');

INSERT INTO endereco 
VALUES(7, 777, 'Khreshchatyk', null, '137');

INSERT INTO endereco 
VALUES(8, 888, 'Rua da Várzea', '78145050', '760');

INSERT INTO endereco 
VALUES(9, 999, 'Avenida Sete de Setembro', '40254360', '3251');

INSERT INTO endereco 
VALUES(10, 1000, 'Rua Barbosa Lima', '56302020', '341');

INSERT INTO endereco 
VALUES(11, 1111, 'Avenida Eduardo Ribeiro', '69010900', '10');

INSERT INTO endereco 
VALUES(12, 2222, 'Avenida Sá Carneiro', null, '128');
--------------------------------------INSERTIONS ENDERECO--------------------------------------

--------------------------------------CREATE DEPENDENTE--------------------------------------
CREATE TABLE dependente(   
  id_dependente     number(4),   
  nome              varchar2(10),
  sobrenome         varchar2(20),   
  id_colaborador    number(4),    
  CONSTRAINT pk_dependente PRIMARY KEY (id_dependente),   
  CONSTRAINT fk_colaborador_dependente FOREIGN KEY (id_colaborador) REFERENCES colaborador (id_colaborador)   
);
--------------------------------------CREATE DEPENDENTE--------------------------------------

--------------------------------------CREATE BENEFICIO--------------------------------------
CREATE TABLE beneficio(
  id_beneficio      number(4),
  vr                number(1) DEFAULT '0',
  va                number(1) DEFAULT '0',
  vt                number(1) DEFAULT '0',
  id_colaborador    number(4),
  CONSTRAINT pk_beneficio PRIMARY KEY (id_beneficio),   
  CONSTRAINT fk_colaborador_beneficio FOREIGN KEY (id_colaborador) REFERENCES colaborador (id_colaborador)
);
--------------------------------------CREATE BENEFICIO--------------------------------------

--------------------------------------CREATE AUXILIO_CRECHE--------------------------------------
CREATE TABLE auxilio_creche(
    id_auxilio_creche      number(4),
    id_colaborador         number(4),
    id_dependente          number(4),
    id_beneficio          number(4),
    CONSTRAINT pk_auxilio_creche PRIMARY KEY (id_auxilio_creche),   
    CONSTRAINT fk_colaborador_auxilio_creche FOREIGN KEY (id_colaborador) REFERENCES colaborador (id_colaborador),
    CONSTRAINT fk_dependente_auxilio_creche FOREIGN KEY (id_dependente) REFERENCES dependente (id_dependente),
    CONSTRAINT fk_beneficio_auxilio_creche FOREIGN KEY (id_beneficio) REFERENCES beneficio (id_beneficio)
);
--------------------------------------CREATE AUXILIO_CRECHE--------------------------------------



--------------------------------------INSERTS DEPENDENTES--------------------------------------
INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1001, 'Maria', 'Gabane', 3548);

INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1002, 'Ana Maria', 'Gabane', 3548);

INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1003, 'Fernanda', 'Oliveira Carvalho', 1258);

INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1004, 'Fabiana', 'Oliveira Carvalho', 1258);

INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1005, 'Gilson', 'Vieira Dias', 1345);

INSERT INTO dependente(id_dependente, nome, sobrenome, id_colaborador)
VALUES (1006, 'Brenno', 'Vieira Dias', 1345);
--------------------------------------INSERTS DEPENDENTES--------------------------------------


--------------------------------------INSERTS BENEFICIO--------------------------------------
INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9999, 1, 0, 1, 3548);

INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9998, 1, 0, 1, 3548);

INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9997, 1, 0, 1, 1258);

INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9996, 1, 0, 1, 1258);

INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9995, 1, 0, 1, 1345);

INSERT INTO beneficio(id_beneficio, vr, va, vt, id_colaborador)
VALUES (9994, 1, 0, 1, 1345);
--------------------------------------INSERTS BENEFICIO--------------------------------------


--------------------------------------INSERTS AUXILIO CRECHE--------------------------------------
INSERT INTO auxilio_creche(id_auxilio_creche, id_colaborador, id_dependente, id_beneficio)
VALUES (5501, 3548, 1001, 9999);

INSERT INTO auxilio_creche(id_auxilio_creche, id_colaborador, id_dependente, id_beneficio)
VALUES (5502, 3548, 1002, 9998);
--------------------------------------INSERTS AUXILIO CRECHE--------------------------------------


