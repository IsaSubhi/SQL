use northwind;

select city, ifnull(a_count, 0) a_count
from (
	select distinct(city) as city
	from customers
) AS T1
left join (
	select city, count(C.id) a_count
	from customers AS C
	where first_name like "A%"
	group by city
) AS T2

-- ON T1.city = T2.city
USING (city)

order by a_count desc
;

-- using with:
WITH T1 AS (
	select distinct(city) as city
	from customers
),
T2 AS (
	select city, count(C.id) a_count
	from customers AS C
	where first_name like "A%"
	group by city
)
select city, ifnull(a_count, 0) a_count
from T1 left join T2 using (city)
order by a_count DESC
;


(
	select city, count(C.id) a_count
	from customers AS C
	where first_name like "A%"
	group by city
)
UNION
(
	select distinct(city) as city, 0 as a_count
	from customers
    where city not in (
				select distinct(city)
                from customers
                where first_name like "A%"
			)
)
;