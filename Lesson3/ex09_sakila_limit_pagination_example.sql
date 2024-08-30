-- first ten actors
SELECT * 
FROM sakila.actor
LIMIT 10;

SELECT * 
FROM sakila.actor
LIMIT 10 OFFSET 0;

SELECT * 
FROM sakila.actor
LIMIT 0, 10;

SELECT * 
FROM sakila.actor
LIMIT 10 OFFSET 40; 
-- pick 10 results after skipping 40 lines (so lines 41-50)

-- pagination - splitting result into pages

SELECT * 
FROM sakila.actor
LIMIT 20 OFFSET 80;

 SELECT * 
FROM sakila.film
order by title asc
-- limit 0, 10;
-- limit 10,  10;

-- limit 20,  10;
limit 10 OFFSET 20;
