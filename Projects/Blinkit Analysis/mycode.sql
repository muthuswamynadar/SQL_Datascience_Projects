
use blinkit;

select * from myblinkdata;


create table employees (
id serial primary key,
name varchar(50),
age int,
department varchar(30),
salary numeric(10,2),
manager_id int
);

create table manager
(
mang_id int,
mang_name varchar(50),
mang_salary int,
mang_exp decimal
);
select * from manager;

-- The decimal code is not showing on it

insert into manager values
(1,'Swamy Nadar',50000,1.4),
(2,'Mayur salvi',60000,2),
(3,'Shubham singh',70000,4),
(4,'Avnish singh',30000,0.3);

select * from manager
where mang_salary < 60000;

select * from manager
where mang_name like 'A%';

select
count(*) as total,
sum(mang_salary) as totalz
from manager;

select * from manager;

select
count(*) as sizeofdata,
sum(mang_salary) as total,
avg(mang_salary) as salary,
min(mang_salary)as min_price,
max(mang_salary) as max_salary
from manager;

select * from myblinkdata;

select mang_name,sum(mang_salary) as totalsalary
from manager
group by  mang_name;

select * from manager;

select mang_name,mang_exp,max(mang_salary) as maxsal
from manager
group by mang_exp, mang_name;


select * from manager;

-- Want to add the double group in it but couldn'table

select mang_id, mang_name, mang_salary
from manager
group by mang_id,mang_name
limit 500;



create table managers
(
mang_id int,
mang_name varchar(50),
mang_salary int,
mang_exp decimal(10,2)
);

insert into managers values
(1,'Swamy Nadar',50000,1.4),
(2,'Mayur salvi',60000,2),
(3,'Shubham singh',70000,4),
(4,'Avnish singh',30000,0.3);

select * from managers

































