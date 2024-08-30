-- drop schema shop;
create schema shop;

use shop;

create table product (
	product_id INT UNSIGNED PRIMARY KEY NOT NULL auto_increment,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255),
    price DECIMAL(8,2),
    quantity INT
);

-- truncate table product;
-- deletes all the data in product

-- drop table product;
-- deletes all the data in product and also
-- deletes the table itself

