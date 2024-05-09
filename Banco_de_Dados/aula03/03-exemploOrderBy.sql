
-- selecionando e exibindo de forma ordenada todo o conteúdo da tabela emp de acordo com o conteúdo da coluna job em ordem crescente
SELECT * FROM colaborador 
ORDER BY funcao;


-- selecionando e exibindo de forma ordenada todo o conteúdo da tabela colaborador de acordo com o conteúdo das colunas nome e sobrenome
SELECT * FROM colaborador 
ORDER BY nome, sobrenome;

-- selecionando e exibindo de forma ordenada todo o conteúdo da tabela colaborador de acordo com o conteúdo das colunas nome e sobrenome em ordem decrescente
SELECT * FROM colaborador 
ORDER BY nome, sobrenome DESC;

-- selecionando e exibindo de forma ordenada os campos ename e job da tabela emp de acordo com o conteúdo da coluna job e ename em ordem crescente
SELECT nome, sobrenome, funcao 
FROM colaborador 
ORDER BY funcao, nome;

