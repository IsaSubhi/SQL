select * from school4.student;
select * from school5.student;

-- insert students into school 5 from school 4
insert into school5.student 
(student_id, first_name, last_name)
select student_id, first_name, last_name
from school4.student;

select distinct(course_name) as course_name
from school4.grade
order by course_name;

select distinct(course_name) as course_name
from school4.grade
order by course_name;

select NULL, course_name
FROM
	(select distinct(course_name) as course_name
	from school4.grade
	order by course_name) X;

insert into school5.course
select NULL, X.course_name
FROM
	(select distinct(course_name) as course_name
	from school4.grade
	order by course_name) X;
    
-- or:
insert into school5.course (name)
select distinct(course_name) as course_name
from school4.grade
order by course_name;

select * from school5.course;


