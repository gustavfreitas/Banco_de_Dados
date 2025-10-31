SELECT *
FROM Pokemon

SELECT *
FROM Categoria

SELECT *
FROM Fraqueza

SELECT *
FROM Tipo

SELECT *
FROM TIPOPOKEMON

-- 7 - Para cada pokemon, exiba seu nome e o nome de quem ele evolui

SELECT PRIMARIO.nome, EVOLUCAO.evoluiDe
FROM Pokemon AS PRIMARIO INNER JOIN POKEMON AS EVOLUCAO ON PRIMARIO.codPokemon = EVOLUCAO.evoluiDe

-- 8 - Exiba uma relação de cada pokémon e seus tipos.

SELECT P.nome, T.nmTipo
FROM Pokemon as P Inner Join TipoPokemon as TP ON P.codPokemon = TP.codPokemon INNER JOIN Tipo AS T ON TP.codTipo = T.codTipo
ORDER BY P.codPokemon ASC

-- 9 - Exiba uma relação de todos os pokemon que tem fraqueza para "steel".

SELECT P.nome, T.nmTipo
FROM Pokemon as P Inner Join Fraqueza as F ON P.codPokemon = F.codPokemon INNER JOIN Tipo AS T ON F.codTipo = T.codTipo
ORDER BY P.codPokemon ASC

-- 10 - Quantos pokemons existem em cada categoria? (exiba uma relação com o nome da categoria e a quantidade de pokemons)

SELECT C.nmCategoria, COUNT(P.codPokemon) as QUANTIDADE_POKEMONS
FROM Pokemon AS P INNER JOIN Categoria AS C ON P.codCategoria = C.codCategoria
GROUP BY C.nmCategoria
ORDER BY COUNT(P.codPokemon) DESC
