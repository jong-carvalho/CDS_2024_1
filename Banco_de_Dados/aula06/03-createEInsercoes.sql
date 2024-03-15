--Criar a tabela endereco:
--id_endereco tipo numérico com tamanho 3
--ide_departamento igual da tabela departamento 
--rua tipo string com tamanho 40 caracteres 
--cep tipo string com tamanho 8 caracteres 
--numero tipo string com tamanho de 5 caracteres
--id_endereco vai ser a chave primaria
--id_departamento vai ser a chave estrangeira, referenciando a primary key da tabela departamento
CREATE TABLE endereco (
    id_endereco number(3),
    id_departamento number(4),
    rua varchar2(40),
    cep varchar2(8),
    numero varchar2(5)
    CONSTRAINT pk_endereco PRIMARY KEY (id_endereco)
    CONSTRAINT fk_id_departamento FOREIGN KEY (id_departamento) references departamento (id_departamento)
);


--fazer inserções
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

