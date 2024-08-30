-- show students not learning any course

use school4;

select *
from student
left join grade using (student_id)
;

select *
from student
left join grade using (student_id)
where grade_id is NULL
;

