drop database slm023;

create database slm023;

use slm023;

create table student_info(
	id varchar(10) primary key,
    name varchar(255),
    age int,
    city float,
    mobile varchar(255)
);

# adding new column state
alter table student_info
add column state varchar(100);

# lets drop state
alter table student_info
drop column state;

# add state after city column also add not null contraint
alter table student_info
add column state varchar(255) not null
after city;

# modify mobile number column data tyoe to char(10) and add unique contraint
alter table student_info
modify column mobile char(10) unique;

# rename column name to student_name
alter table student_info
rename column name to student_name;

# change datatype of city to varchar(50)
alter table student_info
change city city varchar(50);

# change datatype of city to varchar(100) using modify
alter table student_info
modify column city varchar(100);

# add column named city
alter table student_info
add column city varchar(100);

# change datatype of id column from student_info to int
alter table student_info
modify column id int;

# create another table course_Details
create table course_details(
	courseid int primary key,
    coursename varchar(50),
    id int,
    foreign key (id) references student_info(id)
);

# drop column id from course details
alter table course_details
drop column id;

# drop courseid
alter table course_details
drop column courseid;

# drop column id from student info
alter table student_info 
drop column id;

# drop foreign key constraint
alter table course_details
drop foreign key course_details_ibfk_1;

# drop column id from course details
alter table course_details
drop column id;



