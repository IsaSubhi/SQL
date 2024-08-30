select first_name, last_name, city
from customers
order by city
;

select city, group_concat(first_name)
from customers
group by city
;

select city, group_concat(concat(first_name, " ", last_name)) as name_list
from customers
group by city
;