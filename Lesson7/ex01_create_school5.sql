drop schema if exists school5;
create schema school5;
use school5;

create table student(
	student_id int not null primary key auto_increment,
    first_name varchar(45),
    last_name varchar(45)
);

create table student_address(
	address_id int not null primary key auto_increment,
    student_id int not null unique,
    city varchar(45),
    street varchar(45),
	street_number int,
    
    constraint fk_student_address_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade on delete cascade
);

create table course(
	course_id int not null primary key auto_increment,
    name varchar(45)
);

create table student_course(
	course_id int not null ,
    student_id int not null,
    
    constraint pk_student_course_id
    primary key (course_id,student_id),
    
    constraint fr_student_course_course_id
    foreign key (course_id)
    references course (course_id)
    on update cascade on delete cascade,
    
    constraint fr_student_course_student_id
    foreign key (student_id)
    references student (student_id)
    on update cascade on delete cascade
);

create table grade(
	grade_id int not null primary key auto_increment,
    course_id int not null,
    student_id int not null,
    `value` decimal(5,2),
    
    constraint fk_grade_student_course_id
    foreign key (student_id, course_id)
    references student_course (student_id, course_id)
    on update cascade on delete cascade
);