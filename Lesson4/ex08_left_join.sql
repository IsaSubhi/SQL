select *
from student S
left join grade G
	using (student_id)
;

select *
from grade G 
right join student S
	using (student_id)
;

select *
from grade G 
right join student S
	on G.student_id = S.student_id
;