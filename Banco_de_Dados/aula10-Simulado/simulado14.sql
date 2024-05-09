-- Executando todos os comandos abaixo (um por vez), qual seria a saída?

CREATE TABLE disciplina (   
  id_disciplina     number(4),   
  nome              varchar2(10),
  CONSTRAINT pk_disciplina PRIMARY KEY (id_disciplina)  
);

DROP TABLE disciplina;

CREATE TABLE disciplina (   
  id_disciplina     number(4),   
  nome              varchar2(33),
  CONSTRAINT pk_disciplina PRIMARY KEY (id_disciplina)  
);

SELECT * FROM disciplina

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1001, 'Banco de Dados');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1002, 'Programação Orientada a Objetos');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1003, 'Programação Web');


SELECT * FROM disciplina
WHERE nome LIKE UPPER('Programação');