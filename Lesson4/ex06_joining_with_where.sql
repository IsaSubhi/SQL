select *
from student, grade
;

select student_id
from student
;

select student_id
from grade
;

select student.student_id, grade.student_id
from student, grade
;

select S.student_id, G.student_id
from student AS S, grade AS G
;

select S.student_id, G.student_id
from student S, grade G
;

select S.student_id, G.grade_id, G.student_id
from student S, grade G
;

select S.student_id, G.grade_id, G.student_id
from student S, grade G
where S.student_id = G.student_id
;

select *
from student S, grade G
where S.student_id = G.student_id
;

select *
from student S, grade G
where S.student_id = G.student_id
order by course_name
;
