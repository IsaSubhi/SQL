select student_id, first_name, last_name, course_name
from student S 
left join grade G 
using (student_id)
where student_id = '1'
;