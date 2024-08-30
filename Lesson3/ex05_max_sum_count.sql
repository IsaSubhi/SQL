-- find the highest price in shop.product

select price
from shop.product
order by price desc
limit 1
;

select MAX(price)
from shop.product
;

-- show the sum of all quantity
select SUM(quantity)
from shop.product;

-- MAX MIN SUM AVG COUNT

-- product cost more the 1000
select *
from product
where price >= 1000;

select COUNT(*)
from product
where price >= 1000;

-- average price in the store
select AVG(price)
from product;






