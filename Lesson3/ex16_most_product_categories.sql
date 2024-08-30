-- which category has the most products?

SELECT category, count(*) as product_count
FROM northwind.products
group by category
order by product_count DESC
limit 1;

SELECT count(*) as product_count
FROM northwind.products
group by category
order by product_count DESC
limit 1;

SELECT category, count(*) as product_count
FROM northwind.products
group by category
having count(*) = 8;

SELECT category, count(*) as product_count
FROM northwind.products
group by category
having count(*) = (
					SELECT count(*) as product_count
					FROM northwind.products
					group by category
					order by product_count DESC
					limit 1
				  );


--------------------

with category_count_t as (
	select category, count(*) as product_count
    from northwind.products
    group by category
)
select *
from category_count_t
where product_count = (select MAX(product_count) from category_count_t)



