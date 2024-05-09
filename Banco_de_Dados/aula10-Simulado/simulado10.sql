
-- Selecionar registros da tabela que estejam na região SUDESTE e que não seja SÃO PAULO




SELECT * FROM endereco
WHERE regiao = 'SUDESTE' AND cidade <> 'SÃO PAULO';

SELECT * FROM endereco
WHERE regiao = 'SUDESTE' AND cidade != 'SÃO PAULO';

SELECT * FROM endereco
WHERE regiao = 'SUDESTE' AND cidade NOT IN 'SÃO PAULO';

SELECT * FROM endereco
WHERE regiao = 'SUDESTE' AND cidade NOT IN 'SÃO PAULO';

