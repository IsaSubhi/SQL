drop schema if exists school5;
create schema school5;
use school5;

create table student (
	student_id INT primary key auto_increment not null,
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);

-- for this challenge we want the student and student_address relation
-- to be one-to-one (even if not realistic)
create table student_address (
	address_id INT primary key auto_increment not null,
    student_id INT not null unique, -- <-- the unique makes this 1-1 relation
    city VARCHAR(45),
    street VARCHAR(45),
    street_number INT,
    
    constraint fk_student_address_ref_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade
    on delete cascade
);

-- alternative solution (not used)
/*
create table student_address (
    student_id INT not null primary key,
    city VARCHAR(45),
    street VARCHAR(45),
    street_number INT,
    
    constraint fk_student_address_ref_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade
    on delete cascade
);
*/


create table course (
	course_id INT not null primary key auto_increment,
    name VARCHAR(45)
);



create table student_course(
	course_id INT not null,
    student_id INT not null,
    
    
    constraint pk_student_course
    primary key (course_id, student_id),
    
    constraint fk_student_course_ref_course_id
    foreign key (course_id)
    references course (course_id)
    on update cascade on delete cascade,
    
    constraint fk_student_course_ref_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade on delete cascade
);

create table grade(
	grade_id int not null primary key auto_increment,
    course_id int not null,
    student_id int not null,
    `value` decimal(5,2),
    
    constraint fk_grade_student_course
    foreign key (course_id, student_id)
    references student_course (course_id, student_id)
    on update cascade on delete cascade
);
