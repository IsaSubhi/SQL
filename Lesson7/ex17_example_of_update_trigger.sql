select * from product;

update product
set price = -999
where product_code = 'P000001212'
;

create table product2 (
	id int primary key auto_increment,
    name varchar(45),
    price decimal(7,2) CHECK (price >= 0)
);

insert into product2
values
(NULL, 'aaa', -3)
;
select * from product2;

CREATE TABLE t1 (c1 INTEGER CHECK (c1 > 0));

INSERT INTO t1 VALUES (0);


