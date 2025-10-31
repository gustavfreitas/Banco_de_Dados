-- Qual é o Estado com a maior quantidade de municipios
SELECT *
FROM Estado

SELECT * 
FROM Municipio

select TOP 1 COUNT(M.estado_codigo) AS QUANTIDADE_MUNICIOS, E.estado_nNome
FROM Estado as E FULL JOIN Municipio as M ON E.estado_codigo = M.estado_codigo
GROUP BY E.estado_nNome
ORDER BY COUNT(M.estado_codigo) DESC

