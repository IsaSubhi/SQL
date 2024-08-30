-- show a discount of 5%

select product_id, name, price * 0.95, quantity
from product;

-- show an increase of 5%
select product_id, name, price * 1.05, quantity
from product;

-- all half off
select product_id, name, price * 0.5, quantity
from product;

-- show how much we will earn if we sell all products with 5% off.

select price * 0.95
from product;

select (price * 0.95) * quantity AS rev
from product;

select SUM(price * 0.95 * quantity) AS rev
from product;


