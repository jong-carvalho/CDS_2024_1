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
