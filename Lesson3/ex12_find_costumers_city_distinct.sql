-- show all the different cities listedin customer table

select city
from customer;

-- city is not marked as NULL
select *
from customer
where city is not NULL;

select count(city)
from customer;

select distinct city
from customer;

-- combining distinct & not null:
select distinct city
from customer
where city is not NULL;

-- count distinct cities are available:
select count(distinct city)
from customer
where city is not null;

-- count(EXPRESSION) won't count NULL values
-- ( but count(*) will count NULL values)
select count(distinct city)
from customer;

-- how many customers have a city listed?
select count(*)
from customer
where city is not null;