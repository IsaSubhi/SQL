select id
from employees
where first_name = 'nancy'
and last_name = 'freehafer';

select *
from orders
where employee_id = 1;

select count(*)
from orders
where employee_id = 1;