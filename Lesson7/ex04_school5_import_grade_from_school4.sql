select G.*, C.*
from school4.grade G
join    school5.course C
ON G.course_name = C.name;

select G.grade_id, C.course_id, G.student_id, G.value
from school4.grade G
join    school5.course C
ON G.course_name = C.name;

-- import school 5 grade from school 4 (requires student_course table to be filled first!)
insert into school5.grade 
select G.grade_id, C.course_id, G.student_id, G.value
from school4.grade G
join    school5.course C
ON G.course_name = C.name;

select * from school5.grade;

select *
from student
join student_course using (student_id)
join course using (course_id)
join grade using (course_id, student_id)
;


    