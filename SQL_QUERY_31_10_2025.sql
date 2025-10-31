SELECT *
FROM publishers

SELECT *
FROM employee

SELECT *
FROM jobs

SELECT *
FROM titles

-- 1 - Utilize as tabelas Employee e Jobs e exiba cada empregado com seu respectivo cargo
SELECT fname, job_desc
FROM employee as E INNER JOIN jobs AS J on E.job_id = J.job_id
ORDER BY fname ASC

-- 2 - Utilize as tabelas Publishers e Employee, e exiba cada editora com seus respectivos funcionários.
SELECT fname, pub_name
FROM publishers AS P INNER JOIN employee AS E ON E.pub_id = P.pub_id
ORDER BY fname ASC

-- 3 - Exiba uma lista com os cargos, e a quantidade de funcionários de cada cargo.
SELECT job_desc, COUNT(*) AS FUNCIONARIOS_POR_CARGO
FROM employee as E INNER JOIN jobs AS J on E.job_id = J.job_id 
GROUP BY job_desc
ORDER BY COUNT(*) DESC

-- 4 - Exiba a quantidade de livros publicados por cada editora.
SELECT pub_name, COUNT(title) as LIVROS
FROM publishers as P FULL JOIN titles as T ON P.pub_id = T.pub_id
WHERE pub_name IS NOT NULL
GROUP BY pub_name
ORDER BY COUNT(title) DESC

-- 5 - Exiba o nome das editoras que possuem um funcionário "Designer" contratado em 1990
SELECT
FROM 
	publishers as P 
Inner Join 
	employee as E ON E.pub_id = P.pub_id 
Inner Join 
	jobs as J ON P.pub_id = J.job_id 







