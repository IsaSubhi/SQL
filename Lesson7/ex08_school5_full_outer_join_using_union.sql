-- school 5
-- show all student and their courses
-- also all students without courses
-- also all courses witohut students

use school5;

select * from student_course;

select student_id, first_name, last_name, course_id, name as course_name
from student
left join student_course 
	using (student_id)
left join course C
	using (course_id)
    
UNION 

select student_id, first_name, last_name, course_id, name as course_name
from student S
right join student_course SC
	using (student_id)
right join course C
	using (course_id)
where student_id IS NULL
;
