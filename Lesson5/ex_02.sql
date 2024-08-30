select * from student S 
join grade G 
using (student_id)
where last_name = 'lea' and first_name = 'azulai'
;