
-- created the two table of employee demographics & employee_salary

Create table employee_demographics
(
	employee_id int not null,
	first_name varchar(50),
	last_name varchar(50),
	age int,
	gender varchar(10),
	birth_date date,
	Primary key (employee_id)
);

Create table employee_salary
(
	employee_id int not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	occupation varchar(50),
	salary int,
	dept_id int
);

-- added the value inside the table

Insert into employee_demographics(employee_id,first_name,last_name,age,gender,birth_date)
values
(1,'Leslie','Knope',44,'Female','1979-09-25'),
(3,'Tom','Haverford',36,'Male','1987-03-04'),
(4,'April','Ludgate',61,'Male','1994-03-27'),
(5,'Jerry','Gergich',61,'Male','1962-08-28'),
(6,'Donna','Meagle',46,'Female','1977-07-30'),
(9,'Ben','Wyatt',38,'Male','1985-03-25');

insert into employee_salary(employee_id,first_name,last_name,occupation,salary,dept_id)
values
(1,'Leslie','Knope','Deputy Director of parks and recreation',75000,1),
(2,'Ron','Swanson','Director of parks and recreation',70000,1),
(3,'Tom','Haverford','Enterprenur',50000,1),
(4,'April','Ludgate','Assistant to director of park',25000,1),
(5,'Jerry','Gergich','Office Manager',50000,1),
(6,'Donna','Meagle','Office Manager',60000,1),
(9,'Ben','Wyatt','State Auditor',70000,6);

-- Added another table in it 

Create table parks_departments
(
	department_id int not null,
	department_name varchar(50) not null,
	Primary key (department_id)
);

insert into parks_departments(department_id,department_name)
values
(1,'Parks & Recreation'),
(2,'Animal Control'),
(3,'Public Workds'),
(4,'Healthcare'),
(5,'library'),
(6,'finance');

-- using select queries

select * from parks_departments;
select * from employee_demographics;
select * from employee_salary;

-- using where clause

select * from employee_salary
where first_name='Leslie';

select * from employee_demographics
where birth_date>'1985-01-02' or gender ='male'
;

select * from employee_salary
where salary >= 35000;

select * from employee_demographics
where gender != 'Female';

-- adding multiple condition

select * from employee_demographics
where (first_name='Leslie' and age=44) or age>55;

-- Like Statement

select * from employee_demographics
where first_name like 'L%';
















































