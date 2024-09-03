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















































































