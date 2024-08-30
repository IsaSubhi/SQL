-- show all shop customers
-- but if city is null show "unknown" instead

select
	customer_id,
    first_name,
    last_name,
    birth_date,
    IFNULL(city, "unkown") AS city
from customer
;

select
	customer_id,
    first_name,
    last_name,
    birth_date,
    COALESCE(city, "unkown") AS city
from customer
;