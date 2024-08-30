-- how to create a table

create table product (
	product_id int primary key auto_increment not null,
    name varchar(255),
    price decimal(8,2),
    quantity int
);

-- how to drop a table (delete completely)
drop table product;

-- if we want only to delete the data
-- (table definition will remain)
truncate table product;

-- describes the table properties (columns etc)
-- may not work on workbench, works on MySQL-SHELL
describe table product;

-- prints the "create table" syntax to create this table
show create table product;