-- find all customers whose first name is five charcters
select *
from shop.customer
where first_name like "_____"
;

/*
 LIKE  "a__" 3 characters start with a
 LIKE  "a*" starts with a (no limit on charcaters)
 LIKE "a__*_b_*____c"
 		starts with a then 2 chars min
		then character  then  "b" then another character
      then any number of characters
      then four characters then ending with with "c"
*/