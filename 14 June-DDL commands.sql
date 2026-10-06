# checking whether safe update
select @@autocommit;

#checking value of autocommit
select @@sql_safe_updates;

# disabling autocommit
set autocommit = 0;

use slm023;

# creating a new table admission
create table admission(
	id int primary key,
    sname varchar(20),
    age int not null,
    city varchar(50)
);

# now inserting data into the admission table
insert into admission values
(1, 'virat', 32, 'Delhi'),
(2, 'Dhoni', 40, 'Ranchi');

select * from admission;

use slm023;

select * from admission;

commit;

use slm023;

select * from admission;

insert into admission values
(3, 'Rishabh', 29, "Delhi"),
(4, "Jadega", 31, "Jamnagar");

select * from admission;

commit;

use slm023;

select * from admission;

rollback;

select * from admission;

# now enter two more rows
insert into admission values
(5, "R", 35, "M"),
(6, "S", 26, "A");

select * from admission;

select @@autocommit;

rollback;

select * from admission;

update admission
set age=25
where id=3;

select * from admission;

update admission 
set city='India'
where id=1 or id=2;

select * from admission;

update admission
set age = age+1;

set @@sql_safe_updates = 0;

select * from admission;