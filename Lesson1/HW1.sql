/*
	create a customer table
    each customer will have:
		automatic customer id
		first name
        last name
        birth date
        city
*/
create table customer (
	customer_id int primary key auto_increment not null,
    first_name varchar(255),
    last_name varchar(255),
    birth_date date,
    city varchar(255)
);

/*
    fill the table with a sample of customers
    of your choice.
*/
insert into customer
values
(NULL, "david", "levi", "2000-05-15", "tel-aviv"),
(NULL, "david", "cohen", "2010-07-20", "jerusalem"),
(NULL, "david", "levi", "1999-01-01", "haifa"),
(NULL, "moshe", "azuali", "2005-02-03", "petach-tikvah"),
(NULL, "lea", "aharonovich", "2001-04-16", "tel-aviv")
;

/*
    try to show the customers in the table
*/
select * from customer;
/*
    try to delete some of the customers
*/
-- deleting david cohen id 2:
delete from customer
where customer_id = 2;

