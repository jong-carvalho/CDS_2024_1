--faixas
--juniors - 0 a 2
--plenos - 3 a 5
--seniors - 6 a 8 
--especialista > 10
SELECT 
    nome || ' ' || sobrenome AS "NOME COMPLETO",
    s.id_colaborador AS "REGISTRO DO COLABORADOR", 
    anos_de_experiencia AS "ANOS DE EXPERIÊNCIA", 
    funcao AS "FUNÇÃO",
    CASE kotlin
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE KOTLIN?"
        , 
    CASE xp_kotlin
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM KOTLIN"
        , 
    CASE docker
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE DOCKER?"
        , 
    CASE xp_docker
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM DOCKER"
        ,
    CASE kafka
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE KAFKA?"
        , 
    CASE xp_kafka
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM KAFKA"
        ,
    CASE oracle_db
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE ORACLE DB?"
        , 
    CASE xp_oracle_db
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM ORACLE DB"
        ,
    CASE html
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE HTML?"
        , 
    CASE xp_html
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM HTML"
        ,
    CASE css
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE CSS?"
        , 
    CASE xp_css
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM CSS"
        ,
    CASE javascript
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE JAVASCRIPT?"
        , 
    CASE xp_javascript
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM JAVASCRIPT"
        ,
    CASE bootstrap
        WHEN 1 THEN 'SIM'
        ELSE 'NÃO'
        END AS "CONHECE BOOTSTRAP?"
        , 
    CASE xp_bootstrap
        WHEN 0 THEN 'NÃO POSSUI'
        WHEN 1 THEN 'NÍVEL JUNIOR'
        WHEN 2 THEN 'NÍVEL JUNIOR'
        WHEN 3 THEN 'NÍVEL PLENO'
        WHEN 4 THEN 'NÍVEL PLENO'
        WHEN 5 THEN 'NÍVEL PLENO'
        WHEN 6 THEN 'NÍVEL SENIOR'
        WHEN 7 THEN 'NÍVEL SENIOR'
        WHEN 8 THEN 'NÍVEL SENIOR'
        WHEN 9 THEN 'NÍVEL SENIOR'
        WHEN 10 THEN 'NÍVEL ESPECIALISTA'
        ELSE 'NÍVEL NÃO RECONHECIDO'
        END AS "EXPERIÊNCIA EM BOOTSTRAP"
FROM senioridade s
INNER JOIN tecnologia t ON t.id_colaborador = s.id_colaborador
INNER JOIN colaborador c ON c.id_colaborador = s.id_colaborador 