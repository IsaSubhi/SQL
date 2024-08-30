-- relational boolean operators
select 5 > 4;
select 5 < 4;
select 5 = 4;
select 5 <> 4;
select 5 != 4;

-- logical boolean operators
select 1 < 4 AND 2 = 3;
select 1 < 4 AND 2 = 2;
select 7 < 4 AND 2 = 2;

select 1 < 4 OR 2 = 3;
select 1 < 4 OR 2 = 2;
select 7 < 4 OR 2 = 2;
select 7 < 4 OR 2 = 3;

select 2 + 3 * 4;
select (2 + 3) * 4;

select FALSE or TRUE and FALSE;
select FALSE or (TRUE and FALSE);

select (FALSE or TRUE) and FALSE;




