SELECT kotlin AS "KOTLIN", xp_kotlin AS "EXPERIÊNCIA EM KOTLIN", docker AS "DOCKER", xp_docker AS "EXPERIÊNCIA EM DOCKER", kafka AS "KAFKA", xp_kafka AS "EXPERIÊNCIA EM KAFKA",  
nome || ' ' || sobrenome AS "NOME COMPLETO",
s.id_colaborador AS "REGISTRO DO COLABORADOR", anos_de_experiencia AS "ANOS DE EXPERIÊNCIA", 
    CASE junior
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END  AS "É JUNIOR?"
FROM senioridade s
INNER JOIN tecnologia t ON t.id_colaborador = s.id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = s.id_colaborador 
WHERE anos_de_experiencia >= 0 AND anos_de_experiencia <=2 and kotlin = 1 and docker = 1 and kafka = 1 