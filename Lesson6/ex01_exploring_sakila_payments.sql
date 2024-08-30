using sakila;

select *
from payment;

select *
from payment
order by rental_id;

select rental_id, count(rental_id) as c
from payment
group by rental_id
having c > 1
;

select MAX(c)
from (
	select rental_id, count(rental_id) as c
	from payment
	group by rental_id
	) as T1
;

