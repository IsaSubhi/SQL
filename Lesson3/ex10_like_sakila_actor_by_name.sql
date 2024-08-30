use sakila;

select * from actor;

-- show all the actors with a 3 letter first name
select *
from actor
where first_name like "___";
-- where first_name like "_" "_" "_";

-- show all the actors with a 3 letter first name
-- and also start with J
select *
from actor
where first_name like "J__";
-- where first_name like "J" "_" "_";

select *
from actor
where first_name regexp "^J..$";

select *
from actor
where first_name regexp "^J.*$";

