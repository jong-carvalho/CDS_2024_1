ALTER TABLE attendance
MODIFY attendance_procedure number(2);

ALTER TABLE attendance 
ADD  nova_coluna number(3);

ALTER TABLE attendance 
DROP COLUMN nova_coluna;

ALTER TABLE attendance 
RENAME TO atendimentos;

SELECT * FROM atendimentos;

ALTER TABLE atendimentos 
RENAME COLUMN attendance_procedure TO procedimentos;

