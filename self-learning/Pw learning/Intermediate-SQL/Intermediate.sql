select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

-- using the inner join

select *
from employee_demographics
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id
;

-- using inner join 

select *
from employee_demographics as dem
inner join employee_salary as sal
on dem.employee_id = sal.employee_id
;

-- Outer joins

select * 
from employee_demographics as dem
left join employee_salary as sal
on dem.employee_id=sal.employee_id;

-- Self-joins 

select * 
from employee_salary emp1
join employee_salary emp2
on emp1.employee_id =emp2.employee_id
;

-- joining multiple table

select *
from employee_demographics as dem
inner join employee_salary as sal
	on dem.employee_id = sal.employee_id
inner join parks_departments as pd
	on sal.dept_id=pd.department_id
;

-- unions 

select first_name, last_name
from employee_demographics
union 
select first_name, last_name
from employee_salary;

-- using union disticnt

select first_name,last_name
from employee_demographics
union distinct
select first_name,last_name
from employee_demographics;

-- using union all

select first_name, last_name
from employee_demographics
union all
select first_name,last_name
from employee_demographics;

-- Example 1

select first_name,last_name,'old' as label
from employee_demographics
where age>50;

-- Example 2

select first_name,last_name,'old' as label
from employee_demographics
where age >50
union
select first_name,last_name, 'Highly paid employee ' as label
from employee_salary
where salary >70000
;

-- Example 3

select first_name,last_name,'old man' as label
from employee_demographics
where age >40 and gender ='Male'
Union
select first_name,last_name,'old lady 'as label
from employee_demographics
where age>40 and gender='Female'
Union
Select first_name,last_name,'Highly Paid employee' as label
from employee_salary
where salary>30000
;

-- String function

select Length('skyfall');


-- using string in queries

select first_name,length(first_name)
from employee_demographics
order by 2;

-- using the lower & upper function

select upper('sky');
select lower ('skyAAAAA');

-- using TRIM function

select trim('		sky			');

-- using the LTRIM function

select LTRIM('   SKY  ');

-- using the right trim

select RTRIM('skybird           ');

-- using left & right 

select first_name,
left(first_name,4),
right(first_name,4)
from employee_demographics;

-- substring

select first_name,
left(first_name,4),
right(first_name,4),
substring(first_name,3,2),
birth_date,
substring(birth_date,6,2) as birth_month
from employee_demographics;

