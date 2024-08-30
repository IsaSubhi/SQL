# show rows of student information and each grade

select *
from student S
join grade G 
	on S.student_id = G.student_id
;

-- because the refrenced column name is the same
-- in both tables, we can use "using" instead of "on
-- when joining

select *
from student S
join grade G
	using (student_id)
;

select
	S.student_id, S.last_name, S.first_name,
    G.course_name, G.`value`
from student S
join grade G
	using (student_id)
;