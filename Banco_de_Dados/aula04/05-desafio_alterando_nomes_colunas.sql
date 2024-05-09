-- alterar nome da tabela cliente

ALTER TABLE client 
RENAME TO clientes;


-- alterar nome das colunas de cliente 

ALTER TABLE clientes 
RENAME COLUMN client_id TO id_cliente;

ALTER TABLE clientes 
RENAME COLUMN client_cellphone TO celular_cliente;

ALTER TABLE clientes 
RENAME COLUMN client_name TO nome_cliente;


--alterar nome das colunas de atendimentos

ALTER TABLE atendimentos 
RENAME COLUMN attendance_id TO id_atendimento;

ALTER TABLE atendimentos 
RENAME COLUMN attendance_date TO data_atendimento;

ALTER TABLE atendimentos 
RENAME COLUMN attendance_payment_type TO tipo_de_pagamento;

ALTER TABLE atendimentos 
RENAME COLUMN attendance_value TO valor_atendimento;

ALTER TABLE atendimentos 
RENAME COLUMN client_id TO id_cliente;