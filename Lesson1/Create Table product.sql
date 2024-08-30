create table product (
	product_id int primary key auto_increment not null,
    name varchar(255),
    price decimal(8, 2),
    quantity int
);

select * from product;