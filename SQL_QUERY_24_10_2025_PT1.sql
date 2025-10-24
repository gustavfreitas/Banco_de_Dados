-- 0 - Quantos dias se passaram desde o seu nascimento?
SELECT DATEDIFF(DAY,'20041121',GETDATE()) AS 'Cálculo_Dias_de_Vida'

-- 1 - Qual o peso do pokemon mais pesado?
SELECT MAX(peso) as Peso_Pokemon, nome
FROM Pokemon
GROUP BY nome
ORDER BY Peso_Pokemon DESC

-- 2 - Quantos tipos de pokemons temos cadastrados?
select COUNT(*) AS 'QUANTIDADE_DE_TIPOS'
from Tipo

-- 3 - Quantos pokemons tem menos de 10 Kg?
SELECT MIN(peso) as Peso_Pokemon, nome
from pokemon
WHERE peso <= 10
group by nome
ORDER BY Peso_Pokemon DESC

-- 4 - Qual a altura média dos pokemons da categoria 160?
SELECT AVG(altura) as Altura_Média
from Pokemon
where codCategoria = '160'

-- 5 - Qual a altura do pokemon mais baixo?
SELECT MIN(altura) as Menor_Altura
from Pokemon

-- 6 - Liste todos os pokemons e o cáculo do seu IMC começando pelo maior.
SELECT *, (peso / (altura * altura)) AS CALCULO_IMC
FROM POKEMON
ORDER BY CALCULO_IMC DESC

-- 7 - Qual o peso médio e a altura média de cada categoria de pokemon? (exibindo o código da categoria)
SELECT AVG(peso) AS PESO_MEDIO, AVG(altura) AS ALTURA_MEDIA, codCategoria
FROM Pokemon
GROUP BY codCategoria
ORDER BY codCategoria



