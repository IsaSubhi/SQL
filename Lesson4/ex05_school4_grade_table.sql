use school4;

drop table grade;

create table grade (
	grade_id int primary key auto_increment,
    student_id int,
    course_name varchar(255),
    `value` decimal(4,1),
    
    constraint fk_grade_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade
    on delete cascade
);

insert into grade
values
(NULL, 1, 'SQL', 90),
(NULL, 1, 'C', 80),
(NULL, 1, 'SQL', 75),
(NULL, 4, 'JAVA', 60),
(NULL, 4, 'SQL', 80),
(NULL, 2, 'C', 40),
(NULL, 5, 'SQL', 94),
(NULL, 6, 'SQL', 65)
;
