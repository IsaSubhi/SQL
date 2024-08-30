select student_id, first_name, last_name, 
count(course_name) as courses
from student S 
left join grade G 
using (student_id)
group by student_id
order by courses desc
;