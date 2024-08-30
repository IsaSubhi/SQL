
-- this is a line comment

/*
	this is a multi-
    -line comment
*/

-- show all databases available
show schemas;
show databases;

-- make sakila the dafault database for other queries
use sakila;

-- let's create our own database for a shop
CREATE SCHEMA shop;
USE shop;
-- how to drop a schema
DROP SCHEMA SHOP;

