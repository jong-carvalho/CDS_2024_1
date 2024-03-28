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
VALUES (5501, 3458, 1001, 9999);

INSERT INTO auxilio_creche(id_auxilio_creche, id_colaborador, id_dependente, id_beneficio)
VALUES (5502, 3548, 1002, 9998);
--------------------------------------INSERTS AUXILIO CRECHE--------------------------------------


