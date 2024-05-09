SELECT html AS "HTML", xp_html AS "EXPERIÊNCIA EM HTML", css AS "CSS", xp_css AS "EXPERIÊNCIA EM CSS", javascript AS "JAVASCRIPT", xp_javascript AS "EXPERIÊNCIA EM JAVASCRIPT",  bootstrap AS "BOOTSTRAP", xp_bootstrap AS "EXPERIÊNCIA EM BOOTSTRAP" ,
nome || ' ' || sobrenome AS "NOME COMPLETO",
s.id_colaborador AS "REGISTRO DO COLABORADOR", anos_de_experiencia AS "ANOS DE EXPERIÊNCIA", 
    CASE junior
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END  AS "É PLENO?"
FROM senioridade s
INNER JOIN tecnologia t ON t.id_colaborador = s.id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = s.id_colaborador 
WHERE anos_de_experiencia >= 3 AND anos_de_experiencia <=5 and html = 1 and css = 1 and javascript = 1 and bootstrap = 1