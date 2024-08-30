SELECT
	category, 
    AVG(standard_cost) AS cost_average,
    COUNT(*) product_count
FROM northwind.products
group by category;

-- show how many producs exist per category
-- but only for categories with an average standard cost
-- of 20 and up

SELECT
	category, 
    COUNT(*) product_count
FROM northwind.products
group by category
HAVING AVG(standard_cost) >= 20;
