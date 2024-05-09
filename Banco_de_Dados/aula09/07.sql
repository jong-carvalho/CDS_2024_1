
SELECT oracle_db AS "ORACLE DB", xp_oracle_db AS "EXPERIÊNCIA EM ORACLE", nome || ' ' || sobrenome AS "NOME COMPLETO", s.id_colaborador AS "REGISTRO DO COLABORADOR", anos_de_experiencia AS "ANOS DE EXPERIÊNCIA", 
    CASE senior
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END  AS "É SENIOR?"
FROM senioridade s
INNER JOIN tecnologia t ON t.id_colaborador = s.id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = s.id_colaborador 
WHERE anos_de_experiencia >= 6 AND anos_de_experiencia <=8 and oracle_db = 1