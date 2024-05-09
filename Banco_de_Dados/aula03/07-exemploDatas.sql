
-- data do sistema
SELECT SYSDATE FROM dual

-- selecionando os meses entre duas datas
SELECT MONTHS_BETWEEN
       (TO_DATE('01-01-2024','MM-DD-YYYY'),
        TO_DATE('01-01-2000','MM-DD-YYYY') ) "MESES ENTRE DATAS"
  FROM DUAL;