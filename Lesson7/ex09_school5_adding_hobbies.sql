use school5;

create table hobby (
	hobby_name varchar(45) PRIMARY KEY
);

insert into hobby values 
('cycling'), ('hiking'), ('programming');

select * from hobby;

create table student_hobby (
	student_id INT NOT NULL,
    hobby_name VARCHAR(45) NOT NULL,
    
    CONSTRAINT fk_student_hobby_ref_student
    FOREIGN KEY (student_id)
    REFERENCES student (student_id),
    
    CONSTRAINT fk_student_hobby_ref_hobby
    FOREIGN KEY (hobby_name)
    REFERENCES hobby (hobby_name),
    
    CONSTRAINT pk_student_hobby
    PRIMARY KEY  (student_id, hobby_name)
);

insert into student_hobby values
(1, 'hiking'),
(1, 'cycling'),
(2, 'hiking'),
(2, 'programming'),
(3, 'programming')
;

select S.* , H.*
from student S
join student_hobby
	using (student_id)
join hobby H
	using (hobby_name)
;

with X as (
	select S.* , H.*
	from student S
	join student_hobby
		using (student_id)
	join hobby H
		using (hobby_name)
)
select T1.hobby_name, T1.student_id, T2.student_id
from X AS T1
join X AS T2
ON T1.hobby_name = T2.hobby_name
WHERE T1.student_id <> T2.student_id
;

with X as (
	select S.* , H.*
	from student S
	join student_hobby
		using (student_id)
	join hobby H
		using (hobby_name)
)
select T1.hobby_name, T1.student_id S1, T2.student_id S2
from X AS T1
join X AS T2
ON T1.hobby_name = T2.hobby_name
WHERE T1.student_id < T2.student_id
;
