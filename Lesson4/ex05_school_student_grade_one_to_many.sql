create schema school4;
use school4;

create table student (
	student_id int primary key auto_increment,
    last_name varchar(255),
	first_name varchar(255),
    city varchar(255),
    gender char(1)
);

insert into student
values
(NULL, 'moshe', 'cohen', 'tel-aviv', 'M'),
(NULL, 'david', 'levi', 'haifa', 'M'),
(NULL, 'moshe', 'cohen', 'jerusalem', 'M'),
(NULL, 'lea', 'cohen', 'tel-aviv', 'F'),
(NULL, 'lea', 'azulai', 'haifa', 'F'),
(NULL, 'rachel', 'levi', 'jerusalem', 'F'),
(NULL, 'shlomo', 'azulai', 'tel-aviv', 'M')
;

