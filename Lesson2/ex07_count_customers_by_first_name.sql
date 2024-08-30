-- show for each last name how 
-- many customers have that last name

select last_name, count(*)
from customer
group by last_name
;

-- -- -- 

select last_name, count(*)
from customer
group by last_name
;


