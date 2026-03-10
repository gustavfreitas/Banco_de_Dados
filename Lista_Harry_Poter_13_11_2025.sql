-- 1. Quantos personagens estão cadastrados?
SELECT COUNT(*) AS TOTAL_PERSONAGENS
FROM HP_Personagens

-- 2. Quantas magias?
SELECT COUNT(*) AS TOTAL_MAGIAS
FROM HP_Magias

-- 3. A maioria dos personagens é homem ou mulher?
SELECT Gender, Count(*) AS TOTAL_GENEROS
FROM HP_PERSONAGENS
GROUP BY Gender
ORDER BY COUNT(*) DESC

-- 4. Qual a profissão mais comum dentre os personagens?
SELECT JOB, COUNT(*) AS TOTAL_EMPREGOS
FROM HP_Personagens
GROUP BY JOB
ORDER BY COUNT(*) desc

-- 5. Quais as casas existentes no cadastro?
SELECT DISTINCT HOUSE
FROM HP_Personagens
ORDER BY HOUSE DESC

-- 6. Quantos estudantes tem em cada casa?
SELECT DISTINCT HOUSE, COUNT(JOB) as TOTAL_ESTUDANTES
FROM HP_Personagens
WHERE JOB = 'Student'
GROUP BY HOUSE

-- 7. Quantos personagens já morreram?
SELECT COUNT(DEATH) AS ESCALAÇÃO_VASCO
FROM HP_Personagens

-- 8. Há personagens com Patronos que são cães ou gatos?
SELECT DISTINCT PATRONUS, Name
FROM HP_Personagens
WHERE Patronus = 'Cat' or Patronus = 'Wolf'

-- 9. Dentre as espécies de personagens que não são humanos, quantos personagens cada uma tem?
SELECT DISTINCT SPECIES, COUNT(SPECIES) AS TOTAL
FROM HP_Personagens
WHERE NOT Species = 'HUMAN'
GROUP BY Species
ORDER BY COUNT(SPECIES) DESC

-- 10. Um professor tem uma teoria, que nenhum personagem half-blood tem cabelo preto. Ele está certo? --> Errado.
SELECT DISTINCT [Hair colour], COUNT([Blood status]) AS  TOTAL
FROM HP_Personagens
WHERE [Blood status] = 'Half-blood'
GROUP BY [Hair colour]
ORDER BY COUNT([Blood status]) DESC

-- 11. Quem são os personagens que utilizam uma varinha com algum elemento relacionado à dragões?
SELECT WAND, Name
FROM HP_Personagens
WHERE WAND like '%dragon%'

-- 12. Quantas magias existem de cada tipo?
SELECT DISTINCT TYPE, COUNT(TYPE) AS TOTAL
FROM HP_Magias
GROUP BY Type
ORDER BY COUNT(TYPE) DESC

-- 13. Qual o efeito da magia Orchideous? E qual a cor da luz que ela emite?
SELECT *
FROM HP_Magias
WHERE NAME = 'ORCHIDEOUS'

-- 14. Quais são magias que possuem efeitos relacionados à água?
SELECT DISTINCT EFFECT, Name
FROM HP_Magias
WHERE EFFECT LIKE '%Water%'

SELECT *
FROM HP_Personagens

SELECT *
FROM HP_Magias
