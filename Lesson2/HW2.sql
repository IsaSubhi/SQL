/*
create a shop schema
create a product table
  each product will have:
	product id
	name
	price
	type
	quantity
*/
create schema shop;

create table product (
	product_id INT UNSIGNED PRIMARY KEY NOT NULL auto_increment,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255),
    price DECIMAL(8,2),
    quantity INT
);

insert into shop.product
	(name, category, price, quantity)
values 
('usb c phone charger', 'charger', '40.5', '100'),
('android phone', 'phone', 2000, 200),
('apple iphone', 'phone', 3000, 456),
('apple ipad', 'tablet', 4500, 300),
('laptop', 'laptop', 2000, 222),
('apple macbook', 'laptop', 6500, 333)
;


/*
    what is the potintial profit from each product
*/
select price * quantity as a from product;

