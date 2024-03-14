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

DROP TABLE comissao;

DROP TABLE colaborador;

DROP TABLE departamento;




SELECT * FROM departamento;

SELECT * FROM colaborador;

SELECT * FROM comissao;


