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

------------------------ CREATES E INSERTS DO PROJETO------------------------ 

--remover pais, cidade e regiao de departamento
ALTER TABLE departamento 
DROP COLUMN pais;

ALTER TABLE departamento 
DROP COLUMN cidade;

ALTER TABLE departamento 
DROP COLUMN regiao;



--inserir pais, cidade e regiao em endereco
ALTER TABLE endereco
ADD pais  varchar2(15);

ALTER TABLE endereco
ADD cidade varchar2(15);

ALTER TABLE endereco
ADD regiao varchar2(20);




-- criar a tabela senioridade, contendo as colunas id_senioridade, id_colaborador, anos_de_experiencia, junior, pleno, senior, especialista
CREATE TABLE senioridade (
    id_senioridade NUMBER(4),
    anos_de_experiencia NUMBER(2),
    junior NUMBER(1),
    pleno NUMBER(1),
    senior NUMBER(1),
    especialista NUMBER(1),
    id_colaborador NUMBER(4),
    constraint pk_senioridade primary key (id_senioridade),
    constraint fk_colaborador_senioridade foreign key(id_colaborador) references colaborador (id_colaborador)
);




-- criar tabela tecnologias tabela deve conter as colunas 
-- kotlin, xp_kotlin,
-- oracle_db, xp_oracle_db
-- docker, xp_docker
-- kafka, xp_kafka
-- html, xp_html
-- css, xp_css 
-- javascript, xp_javascript 
-- bootstrap, xp_bootstrap
CREATE TABLE tecnologia(
    id_tecnologia NUMBER(4),
    kotlin NUMBER(1),
    xp_kotlin NUMBER(2),
    oracle_db NUMBER(1),
    xp_oracle_db NUMBER(2),
    docker NUMBER(1),
    xp_docker NUMBER(2),
    kafka NUMBER(1),
    xp_kafka NUMBER(2),
    html NUMBER(1),
    xp_html NUMBER(2),
    css NUMBER(1),
    xp_css NUMBER(2),
    javascript NUMBER(1),
    xp_javascript NUMBER(2),
    bootstrap NUMBER(1),
    xp_bootstrap NUMBER(2),
    id_colaborador NUMBER(4),
    constraint pk_tecnologia primary key (id_tecnologia),
    constraint fk_colaborador_tecnologia foreign key(id_colaborador) references colaborador (id_colaborador)
);

--criar tabela endereco_colaborador
-- pais, cidade, regiao, rua, numero, cep
CREATE TABLE endereco_colaborador (
    id_endereco_colaborador NUMBER(4),
    pais VARCHAR2(15),
    cidade VARCHAR2(15),
    regiao VARCHAR2(15),
    rua VARCHAR2(15),
    numero NUMBER(5),
    cep VARCHAR2(8),
    id_colaborador NUMBER(4),
    constraint pk_endereco_colaborador primary key (id_endereco_colaborador),
    constraint fk_colaborador_endereco_colaborador foreign key(id_colaborador) references colaborador (id_colaborador)
);



----
UPDATE endereco 
SET pais = 'BRASIL', cidade = 'SÃO PAULO', regiao = 'SUDESTE' 
WHERE id_departamento IN (111, 222, 555, 666);

UPDATE endereco 
SET pais = 'BRASIL', cidade = 'VITÓRIA', regiao = 'SUDESTE' 
WHERE id_departamento = 888;

UPDATE endereco 
SET pais = 'BRASIL', cidade = 'SALVADOR', regiao = 'NORDESTE' 
WHERE id_departamento = 999;

UPDATE endereco 
SET pais = 'BRASIL', cidade = 'PETROLINA', regiao = 'NORDESTE' 
WHERE id_departamento = 1000;

UPDATE endereco 
SET pais = 'BRASIL', cidade = 'MANAUS', regiao = 'NORTE' 
WHERE id_departamento = 1111;

UPDATE endereco 
SET pais = 'PORTUGAL', cidade = 'ALGARVE', regiao = 'SUDESTE' 
WHERE id_departamento = 2222;


--Selecionar  id_colaborador dos funcionarios com as funções ENGENHEIRO SENIOR, FRONT END JUNIOR, DESENVOLVEDOR
SELECT id_colaborador 
FROM colaborador 
WHERE funcao IN ('ENGENHEIRO SENIOR', 'FRONT END JUNIOR','DESENVOLVEDOR'); 

--Selecionar  id_colaborador dos funcionarios com as funções DEV OPS, ANALISTA
SELECT id_colaborador 
FROM colaborador 
WHERE funcao IN ('DEV OPS' , 'ANALISTA');

--Selecionar  id_colaborador dos funcionarios com as funções DBRE, DBA
SELECT id_colaborador 
FROM colaborador 
WHERE funcao IN ('DBRE', 'DBA');

--Atualizar a coluna funcao da tabela colaborador para 'DEV FRONTEND'
UPDATE colaborador
SET funcao = 'DEV FRONTEND'
WHERE id_colaborador IN (3548, 1258, 7890, 5578, 56, 7778, 4446, 7, 1517, 1918, 2529);

--Atualizar a coluna funcao da tabela colaborador para 'DEV BACKEND'
UPDATE colaborador
SET funcao = 'DEV BACKEND'
WHERE id_colaborador IN (4156, 6543, 8765, 2345, 6665, 8845, 9996, 6667, 3336, 1217, 1615, 2129);

--Atualizar a coluna funcao da tabela colaborador para 'DBA'
UPDATE colaborador
SET funcao = 'DBA'
WHERE id_colaborador IN (1987, 4321, 7734, 6544, 2222, 1314, 1718, 2328);

------------------------ CREATES E INSERTS DO PROJETO------------------------ 

--------------------------------------INSERTS DE TECS PARA DBAS--------------------------------------

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1002, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2328);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1003, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1314);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1001, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1718);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1004, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7734);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1007, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4321);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1005, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1987);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1006, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6544);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1008, 0, 0, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2222);

--------------------------------------INSERTS DE TECS PARA DBAS--------------------------------------


--------------------------------------INSERTS DE TECS PARA FRONTEND --------------------------------------
INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1009, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 3548);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1010, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 1258);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1011, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 1, 2, 1, 2, 1, 2, 7890);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1012, 0, 0, 0, 0, 0, 0, 0, 0, 1, 3, 1, 3, 1, 3, 1, 3, 5578);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1013, 0, 0, 0, 0, 0, 0, 0, 0, 1, 4, 1, 4, 1, 4, 1, 4, 56);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1014, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 1, 5, 1, 5, 1, 5, 7778);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1015, 0, 0, 0, 0, 0, 0, 0, 0, 1, 5, 1, 5, 1, 5, 1, 5, 4446);

 INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1016, 0, 0, 0, 0, 0, 0, 0, 0, 1, 6, 1, 6, 1, 6, 1, 6, 7);

 INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1017, 0, 0, 0, 0, 0, 0, 0, 0, 1, 7, 1, 7, 1, 7, 1, 7, 1517);

 INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1018, 0, 0, 0, 0, 0, 0, 0, 0, 1, 8, 1, 8, 1, 8, 1, 8, 1918);
 
INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1019, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 1, 10, 1, 10, 1, 10, 2529);

--------------------------------------INSERTS DE TECS PARA FRONTEND --------------------------------------

--------------------------------------INSERTS DE TECS PARA BACKEND --------------------------------------
INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1020, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 4156);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1021, 1, 2, 0, 0, 1, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 6543);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1022, 1, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8765);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1023, 1, 2, 0, 0, 1, 2, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 2345);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1024, 1, 3, 0, 0, 1, 3, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 6665);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1025, 1, 4, 0, 0, 1, 4, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 8845);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1026, 1, 4, 0, 0, 1, 4, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 9996);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1027, 1, 5, 0, 0, 1, 5, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 6667);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1028, 1, 6, 0, 0, 1, 6, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 3336);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1029, 1, 7, 0, 0, 1, 7, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 1217);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1030, 1, 8, 0, 0, 1, 8, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1615);

INSERT INTO tecnologia (id_tecnologia, kotlin, xp_kotlin, oracle_db, xp_oracle_db, docker, xp_docker, kafka, xp_kafka, html, xp_html, css, xp_css, javascript, xp_javascript, bootstrap, xp_bootstrap, id_colaborador) VALUES (1031, 1, 10, 0, 0, 1, 10, 1, 10, 0, 0, 0, 0, 0, 0, 0, 0, 2129);
--------------------------------------INSERTS DE TECS PARA BACKEND --------------------------------------


--------------------------------------INSERTS SENIORIDADE --------------------------------------

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9001, 2, 1, 0, 0, 0, 2328);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9002, 1, 1, 0, 0, 0, 1314);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9003, 2, 1, 0, 0, 0, 3548);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9004, 2, 1, 0, 0, 0, 1258);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9005, 2, 1, 0, 0, 0, 7890);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9006, 1, 1, 0, 0, 0, 4156);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9007, 2, 1, 0, 0, 0, 6543);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9008, 1, 1, 0, 0, 0, 8765);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9009, 1, 1, 0, 0, 0, 2345);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9010, 3, 0, 1, 0, 0, 1718);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9011, 5, 0, 1, 0, 0, 7734);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9012, 3, 0, 1, 0, 0, 4321);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9013, 3, 0, 1, 0, 0, 5578);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9014, 4, 0, 1, 0, 0, 56);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9015, 5, 0, 1, 0, 0, 7778);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9016, 5, 0, 1, 0, 0, 4446);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9017, 3, 0, 1, 0, 0, 6665);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9018, 4, 0, 1, 0, 0, 8845);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9019, 4, 0, 1, 0, 0, 9996);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9020, 5, 0, 1, 0, 0, 6667);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9021, 6, 0, 0, 1, 0, 1987);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9022, 7, 0, 0, 1, 0, 6544);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9023, 6, 0, 0, 1, 0, 7);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9024, 7, 0, 0, 1, 0, 1517);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9025, 8, 0, 0, 1, 0, 1918);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9026, 8, 0, 0, 1, 0, 3336);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9027, 7, 0, 0, 1, 0, 1217);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9028, 8, 0, 0, 1, 0, 1615);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9029, 10, 0, 0, 0, 1, 2222);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9030, 10, 0, 0, 0, 1, 2529);

INSERT INTO senioridade (id_senioridade, anos_de_experiencia, junior, pleno, senior, especialista, id_colaborador)
VALUES (9031, 10, 0, 0, 0, 1, 2129);
--------------------------------------INSERTS SENIORIDADE --------------------------------------

--------------------------------------ALTER ENDERECO_COLABORADOR --------------------------------------
ALTER TABLE endereco_colaborador
MODIFY rua  varchar2(50);

ALTER TABLE endereco_colaborador
MODIFY regiao  varchar2(50);

ALTER TABLE endereco_colaborador
MODIFY cidade  varchar2(50);
--------------------------------------ALTER ENDERECO_COLABORADOR --------------------------------------



-------------------------------------- INSERTS ENDERECO_COLABORADOR --------------------------------------
INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1001,'Brasil','São Paulo','Sudeste','Rua dos Bobos',123,'01010010', 2328);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1002,'Estados Unidos','Nova York','Nordeste','Broadway',456,'10001', 1314);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1003,'Canadá','Toronto','Ontário','Queen Street',789,'M5V 2Z4', 2129);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1004,'Alemanha','Berlim','Berlim','Unter denLinden',321,'10117', 2529);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1005,'França','Paris','Île-de-France','Avenue des Champs-Élysées',654,'75008', 2222);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1006,'Japão','Tóquio','Kanto','Shibuya Crossing',987,'1500042', 1615);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1007,'Reino Unido','Londres','Inglaterra','Downing Street',101,'SW1A2AA', 3548);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1008,'Austrália','Sydney','Nova Gales do Sul','George Street',234,'2000', 1258);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1009,'China','Pequim','Pequim','Tiananmen Square',567,'100050', 7890);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1010,'Índia','Mumbai','Maharashtra','Marine Drive',890,'400001', 4156);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1011,'México','Cidade do México','Cidade do México','Paseo de la Reforma',111,'06500', 6543);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1012,'Rússia','Moscou','Moscou','Red Square',222,'109012', 1217);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1013,'Brasil','Rio de Janeiro','Sudeste','Copacabana Beach',333,'22070002', 3336);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1014,'Estados Unidos','Los Angeles','Califórnia','Hollywood Boulevard',444,'90028', 1918);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1015,'Canadá','Vancouver','Colúmbia Britânica','Granville Street',555,'V6C 1X8', 1517);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1016,'Alemanha','Frankfurt','Hesse','Zeil',666,'60313', 7);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1017,'França','Lyon','Auvergne-Rhône-Alpes','Rue de la République',777,'69002', 6544);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1018,'Japão','Osaka','Kansai','Dotonbori',888,'542-0071', 1987);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1019,'Reino Unido','Manchester','Inglaterra','Market Street',999,'M1 1PD', 6667);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1020,'Austrália','Melbourne','Victoria','Bourke Street',1010,'3000', 9996);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1021,'China','Xangai','Xangai','The Bund',1212,'200002', 8845);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1022,'Índia','Nova Deli','Deli','Connaught Place',1313,'110001', 4446);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1023,'México','Guadalajara','Jalisco','Avenida Vallarta',1414,'44130', 6665);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1024,'Rússia','São Petersburgo','São Petersburgo','Nevsky Prospect',1515,'191186', 7778);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1025,'Brasil','Belo Horizonte','Minas Gerais','Avenida Afonso Pena',1616,'30130007', 56);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1026,'Estados Unidos','Chicago','Illinois','Michigan Avenue',1717,'60611', 5578);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1027,'Canadá','Montreal','Quebec','Rue Sainte-Catherine',1818,'H3B 4G5', 4321);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1028,'Alemanha','Hamburgo','Hamburgo','Reeperbahn',1919,'20359', 7734);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1029,'França','Marselha','Provença-Alpes-Costa Azul','Vieux Port',2020,'13001', 1718);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1030,'Japão','Nagoya','Aichi','Sakae',2121,'4600008', 2345);

INSERT INTO endereco_colaborador (id_endereco_colaborador, pais, cidade, regiao, rua, numero, cep, id_colaborador)
VALUES (1031,'Reino Unido','Liverpool','Inglaterra','Penny Lane',2323,'L1 1EE', 8765);

-------------------------------------- INSERTS ENDERECO_COLABORADOR --------------------------------------