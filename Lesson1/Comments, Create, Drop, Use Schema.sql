-- this is a line comment
/*
	this is a multi-
    -line comment
*/

-- ctrl T: open a new query file
-- ctrl W: close a query window
-- ctrl enter: run query

-- make sakila the default database for other queries
use sakila;

create schema shop;
use shop;
-- how to drop a schema
drop schema shop;
