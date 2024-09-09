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




































