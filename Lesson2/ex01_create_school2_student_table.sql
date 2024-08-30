create schema school2; -- schema/database
use school2;

create table student (
	student_id
		INT SIGNED
        PRIMARY KEY 
        AUTO_INCREMENT,
        
    first_name  VARCHAR(45),
    last_name   VARCHAR(45),
    final_grade DECIMAL(5,2)
);

-- integer decimal(?,?) char(???) varchar(???)

-- indexing --> form of optimization