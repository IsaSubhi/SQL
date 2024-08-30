drop schema if exists pet_shelter;
create schema pet_shelter;
 
use pet_shelter;

create table pet(
	id int not null primary key auto_increment,
    kind varchar(45),
    color varchar(45),
    birth_date date,
    arrival_date date
);

create table owner(
	id int not null primary key auto_increment,
    fname varchar(45),
    lname varchar(45),
    gender char(1)
);

create table adoption(
	owner_id int not null ,
    pet_id int not null,
    adoption_date date,
    
    constraint pk_owner_pet_id
    primary key (owner_id,pet_id),
    
    constraint fr_owner_id
    foreign key (owner_id)
    references owner (id)
    on update cascade on delete cascade,
    
    constraint fr_pet_id
    foreign key (pet_id)
    references pet (id)
    on update cascade on delete cascade
);