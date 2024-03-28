SELECT d.id_departamento, nome_departamento, pais, regiao, cidade, rua, cep, numero
FROM departamento d
INNER JOIN endereco e ON d.id_departamento = e.id_departamento 



SELECT id_colaborador, nome || ' ' || sobrenome, id_dependente, vr, va, vt
FROM colaborador c
INNER JOIN auxilio_creche ac ON c.id_colaborador = ac.id_colaborador

