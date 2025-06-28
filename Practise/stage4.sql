use stages;

create table emp(
emp_id int primary key,
emp_name varchar(50),
join_date varchar(50),
dept varchar(50),
salary int,
manager_id varchar(25)
);

insert into emp values
(1,'Swamy','25-05-2022','IT',30000,101),
(2,'Mom','20-02-20022','HR',40000,102);

select emp_name,
lower(emp_name) as lower_case,
upper(emp_name) as upper_case,
Trim(emp_name) as Trim_name,
length(emp_name) as name_leng
from emp;



SELECT 
  emp_name,
  CURDATE() AS today,
  join_date,
  DATEDIFF(CURDATE(), join_date) AS days_since_joined,
  EXTRACT(YEAR FROM join_date) AS join_year
FROM emp
WHERE join_date IS NOT NULL;




























































































































































