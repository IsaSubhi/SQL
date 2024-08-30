-- filling student_course relations

select C.course_id, S.student_id
from school4.student S
join school4.grade G using (student_id)
join school5.course C
-- using group by to get a unique pair of student ID, course ID
group by C.course_id, S.student_id
order by C.course_id, S.student_id
;

-- import student course relation from school4:
insert into school5.student_course
select C.course_id, S.student_id
from school4.student S
join school4.grade G using (student_id)
join school5.course C
-- using group by to get a unique pair of student ID, course ID
group by C.course_id, S.student_id
order by C.course_id, S.student_id
;

select * from school5.student_course;

select *
from school5.student
join school5.student_course using (student_id)
join school5.course using (course_id)
;

