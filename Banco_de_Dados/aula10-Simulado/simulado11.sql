
-- Sabendo que a coluna VT possui 3 registros iguais a 1, 2 registros iguais a 0, e 4 registros nulos, após a seleção quantos - irão ser eibidos?
SELECT VA, COALESCE(TO_CHAR(VT), "-"), VR 
FROM  beneficio

4

3

2

1

0