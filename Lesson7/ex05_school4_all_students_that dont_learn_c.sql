--  for school 4: show which student don't learn C

use school4;

/*

select * from grade where course_name = "C";

select *
from student S
join (
	select * 
    from grade 
    where course_name = "C"
    ) C_G
		ON S.student_id = C_G.student_id;
        
select *
from student S
left join (
	select * 
    from grade 
    where course_name = "C"
    ) C_G
		ON S.student_id = C_G.student_id;
*/

select *
from student S
left join (
	select * 
    from grade 
    where course_name = "C"
    ) C_G
		ON S.student_id = C_G.student_id
WHERE C_G.grade_id IS NULL
;

select S.*
from student S
left join (
		select * 
		from grade 
		where course_name = "C"
    ) AS C_G
    ON S.student_id = C_G.student_id
WHERE C_G.grade_id IS NULL
;