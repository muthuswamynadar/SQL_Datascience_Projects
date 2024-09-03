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

Insert into employee_demographics(employee_id,first_name,last_name,age,gender,birth_date)
values
(1,'Leslie','Knope',44,'Female','1979-09-25'),
(3,'Tom','Haverford',36,'Male','1987-03-04'),
(4,'April','Ludgate',61,'Male','1994-03-27'),
(5,'Jerry','Gergich',61,'Male','1962-08-28'),
(6,'Donna','Meagle',46,'Female','1977-07-30'),
(9,'Ben','Wyatt',38,'Male','1985-03-25');













































































