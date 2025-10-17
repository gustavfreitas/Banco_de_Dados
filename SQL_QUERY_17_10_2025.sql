-- 1.
select au_lname, au_fname, city, state
from authors
where NOT STATE = 'CA'
-- 2.
select *
from authors
where au_fname like 's%'
-- 3.
select title, price
from titles
where price BETWEEN 12 AND 19
-- 4.
select *
from titles
where ytd_sales < 10000
-- 5.
select *
from titles
where NOT title = '%A%'
-- 6.
select *
from titles
where price between 5 and 15
order by type desc



