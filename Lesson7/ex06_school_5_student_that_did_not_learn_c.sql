-- school 5 find all student that don't learn C:

use school5;

/*

set @ccid = (select course_id from course where name = "C");

select *
from student
join student_course using (student_id)
join course using (course_id)
order by student_id
;

select *
from student_course
join course using (course_id)
where name = "C"
;

*/

with
CG AS (
	select *
	from student_course
	join course using (course_id)
	where name = "C")
select *
from student
left join CG using (student_id)
where course_id IS NULL
;
