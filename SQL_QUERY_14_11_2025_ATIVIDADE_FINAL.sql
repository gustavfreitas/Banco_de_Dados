SELECT *
FROM Brasileirao

SELECT *
FROM Disney

-- 1 - Em que ano o Ipatinga disputou o campeonato?

SELECT DISTINCT YEAR(CONVERT(DATE,DATA,103)) AS ANO_CAMPEONATO
FROM BRASILEIRAO
WHERE mandante like '%Ipatinga%' or visitante like '%Ipatinga%'

-- 2 - Qual o jogo com o maior número de gols marcados?

SELECT *
FROM BRASILEIRAO
Where mandante_Placar > 6 or visitante_Placar > 6

-- 3 - Qual o jogo com a maior diferença de placar?

SELECT *
FROM BRASILEIRAO
WHERE mandante_Placar <> visitante_Placar

-- 4 - Mostre uma lista com todos os times que já jogaram o campeonato

SELECT DISTINCT mandante as TIMES
FROM Brasileirao

-- 5 - Quantos filmes foram lançados em cada ano? Comece mostrando o ano que teve mais filmes

SELECT YEAR(dataLancto) AS Ano, COUNT(YEAR(dataLancto)) AS FILMES_LANÇADOS
FROM Disney
GROUP BY YEAR(dataLancto)
ORDER BY COUNT(YEAR(dataLancto)) DESC

-- 6 - Quais os 5 filmes de maior renda corrigida?

SELECT TOP 5 rendaCorrigida, titulo
FROM DISNEY
ORDER BY rendaCorrigida DESC

-- 7 - Quais os 10 filmes com o título mais longo?

SELECT TOP 10 with ties len(titulo) AS QUANTIDADE_FILMES, titulo
FROM Disney
ORDER BY LEN(TITULO) DESC

-- 8 - Quais as edições do brasileirão que tiveram mais de 1500 gols marcados? Exiba só as duas, sem usar TOP.

SELECT DISTINCT YEAR(CONVERT(DATE,DATA,103)) AS ANO_CAMPEONATO, (SUM(mandante_placar) + SUM(visitante_placar)) AS GOLS_NO_CAMPEONATO
FROM BRASILEIRAO
GROUP BY YEAR(CONVERT(DATE,DATA,103))
ORDER BY (SUM(mandante_placar) + SUM(visitante_placar)) DESC

-- 9 - Qual o filme mais antigo a ser lançado pela disney

SELECT titulo, dataLancto
FROM Disney
WHERE dataLancto = (SELECT MIN(dataLancto) FROM Disney)

-- 10 - Qual o filme com a maior renda corrigida pela inflação?

SELECT TOP 1 TITULO, RENDA, RENDACORRIGIDA
FROM Disney
WHERE rendaCorrigida > renda
ORDER BY rendaCorrigida DESC