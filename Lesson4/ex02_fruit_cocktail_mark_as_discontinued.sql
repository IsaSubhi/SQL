select *
from products
where product_name = 'Northwind Traders Fruit Cocktail'
;

UPDATE products
set discontinued = 1
where id = 17
;

UPDATE products
set discontinued = 1
where id = (
	select *
	from products
	where product_name = 'Northwind Traders Fruit Cocktail')
;

-- or using a variable
select @fruit_cocktail_id := id
from products
where product_name = 'Northwind Traders Fruit Cocktail'
;

UPDATE products
set discontinued = 1
where id = @fruit_cocktail_id
;



