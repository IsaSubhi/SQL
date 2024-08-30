select *
from student;

select student_id, final_grade
from student;

select *
from student
where final_grade >= 80;

select *
from student
where final_grade >= 70 and final_grade <= 90;

select
	*
from
	student
where final_grade >= 70
and final_grade <= 90;

select *
from student
where final_grade BETWEEN 70 and 90;

select *
from student
where final_grade NOT BETWEEN 70 and 90;


select *
from student
where last_name = 'cohen';

select *
from student
where last_name LIKE 'c%'; -- % is wildcard
-- finds all students whose last name starts with "c"



/*
	> < = <= >= <> !=
    AND  OR   () NOT
    
    this:
    S1 OR S2 AND S3
    is the same as this:
    S1 OR (S2 AND S3)
    
    to change priority:
    (S1 OR S2) AND S3
*/


