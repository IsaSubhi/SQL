select "abc" = "abc";

-- LIKE pattern
--      % --> 0 or more characters
--      _ --> exactly 1 character

-- show only products from apple

select *
from `product`
where `name` LIKE "%apple%"
;

-- find all phones
select *
from product
where name like "%phone%"
;
