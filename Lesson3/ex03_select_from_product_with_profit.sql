select * from product;

select
	name, 
    price, 
    quantity, 
    price * quantity as potential_profit
from product;

select
	name, 
	price, 
	quantity, 
    price * quantity as potential_profit
from product
order by potential_profit desc;

select
	name, 
	price, 
	quantity, 
    price * quantity as potential_profit
from product
order by potential_profit desc
limit 1;

select
	name, 
	price, 
	quantity, 
    price * quantity as potential_profit
from product
order by potential_profit desc
limit 3;

-- pagination

