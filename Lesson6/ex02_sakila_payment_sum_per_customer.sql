# in sakila DB
# for each customer show the sum of their payments
# (cusomer's ID, FN, LN followed by the the sum)

# what tables are relevant for the answer:
# payment customer

# how to connect payment and customer
select *
from customer
join payment using (customer_id)
;

# or:
select *
from customer C
join payment P on C.customer_id = P.customer_id
;

#
select C.customer_id, C.first_name, C.last_name, P.amount
from customer as C
join payment as P
	using (customer_id)
;

select customer_id, C.first_name, C.last_name,  SUM(P.amount)
from customer as C
join payment as P
	using (customer_id)
group by customer_id
;

select 
	customer_id, 
    C.first_name, 
    C.last_name,  
    SUM(P.amount) as amount_sum
    
from customer as C
join payment as P
	using (customer_id)
    
group by customer_id

order by amount_sum desc
;

# find the customer who paid the most
select 
	customer_id, 
    C.first_name, 
    C.last_name,  
    SUM(P.amount) as amount_sum
    
from customer as C
join payment as P
	using (customer_id)
    
group by customer_id

order by amount_sum desc

limit 1
;


# find the customer who paid the most
select 
	customer_id, 
    C.first_name, 
    C.last_name,  
    SUM(P.amount) as amount_sum
    
from customer as C
join payment as P
	using (customer_id)
    
group by customer_id

order by amount_sum desc
;

#
# ...
# where amount_sum = (select MAX(amount_sum) from (...) T1)
# ...


with 
	cust_sum_tbl as (
		select 
			customer_id, 
			C.first_name, 
			C.last_name,  
			SUM(P.amount) as amount_sum
			
		from customer as C
		join payment as P
			using (customer_id)
			
		group by customer_id

		order by amount_sum desc
    )
select *
from cust_sum_tbl
where amount_sum = (select MAX(amount_sum) from cust_sum_tbl)
;

# without with ... :
select 
			customer_id, 
			C.first_name, 
			C.last_name,  
			SUM(P.amount) as amount_sum
from customer as C
join payment as P
		using (customer_id)
group by customer_id      

having amount_sum = (
		select 
			customer_id, 
			C.first_name, 
			C.last_name,  
			SUM(P.amount) as amount_sum
		from customer as C
		join payment as P
				using (customer_id)
		group by customer_id 
    )
;

# we can see th advantage of using WITH in these cases

