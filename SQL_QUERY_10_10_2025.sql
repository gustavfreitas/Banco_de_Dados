-- 1. Exiba todos os livros de psicologia.
select *
from titles
where type = 'psychology'

-- 2. Exiba todos os livros de psicologia que custam mais que 10.
select *
from titles
where type = 'psychology' AND price > 10

-- 3. Exiba as Editoras que não são dos Estados Unidos
select *
from publishers
where not country = 'USA'

-- 4. Nome do Livro com o código TC7777
select *
from titles
where title_id = 'TC7777'