create schema shop2;
use shop2;

create table product(
	product_code varchar(10) PRIMARY KEY,
    priduct_name VARCHAR(45),
    price DECIMAL(7,2), 
    quantity INT
);

alter table product
change column priduct_name
	product_name VARCHAR(45);

select concat('P', 1);
select 'P' '1';
set @x = '2';
select concat('P', @x);

select LPAD('1', 9, '0');
select LPAD(@x, 9, '0');
select CONCAT('P', LPAD(@x, 9, '0'));



