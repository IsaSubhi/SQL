select *
from product
where price > 100
order by price
;

select *
from product
where price > 100
order by price asc 
;

select *
from product
where price > 100
order by price DESC
;

-- find a product with the highest price
select *
from product
order by price desc
limit 1;