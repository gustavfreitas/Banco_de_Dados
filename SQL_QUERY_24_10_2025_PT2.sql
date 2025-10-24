-- 8 - Quantos funcionários estão em cada profissão? Agrupe por JobId.
SELECT COUNT(*) AS DISTRUIÇÃO_DE_FUNCIONÁRIOS_POR_SETOR, job_id
FROM Employee
group by job_id

-- 9 - Qual o preço do livro mais barato de cada tipo?
SELECT MIN(PRICE) AS MENOR_PREÇO, type
FROM TITLES
GROUP BY type

-- 10 - Quantos autores vivem em cada estado?
SELECT COUNT(*) AS AUTORES_RESIDENTES, state
FROM authors
GROUP BY state

-- 11 - Quantos livros foram publicados em cada ano?
SELECT COUNT(*) AS LIVROS_PUBLICADOS, pubdate
FROM titles
GROUP BY pubdate
ORDER BY pubdate ASC

-- 12 (Hard) - Crie uma relação que mostra quantos livros começam com cada letra.
SELECT UPPER(SUBSTRING(title, 1,1)) AS LETRA_INICIAL, COUNT(*) AS TOTAL
FROM titles
GROUP BY UPPER(SUBSTRING(title, 1,1))
ORDER BY LETRA_INICIAL

-- Exercício Extra
SELECT TOP 1 COUNT(city) AS TOTAL_CIDADES,state_name
FROM City
GROUP BY state_name
ORDER BY COUNT(CITY) DESC
