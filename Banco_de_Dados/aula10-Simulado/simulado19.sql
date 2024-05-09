-- Executando todos os comandos abaixo (todos de uma vez), qual seria a saída?

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

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1004, 'Aplicações Web');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1005, 'Tecnologias Web Avançadas');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1006, 'Análise de Dados Web');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1007, 'Web Design');

INSERT INTO disciplina(id_disciplina, nome)
VALUES (1008, 'Estratégias de Marketing Digital para a Web');

SELECT * FROM disciplina
WHERE nome LIKE '%Web%';

