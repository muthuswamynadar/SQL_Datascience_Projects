
use stages;

-- Creating sample tables
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT
);

-- Inserting sample data
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Marketing');

INSERT INTO employees VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', NULL),
(4, 'David', 2);

SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d
ON e.dept_id = d.dept_id;

select e.emp_name ,d.dept_name
from employees e
inner join departments d
on e.dept_id=d.dept_id;


create table teachers
(
	dept_id int primary key,
    dept_name varchar(50)
);

create table students
(
	stud_id int primary key,
    stud_name varchar (50),
    dept_id int
);

insert into teachers values
(1,'IT'),
(2,'HR'),
(3,'Science'),
(4,'Maths'),
(5,'English');

insert into students values
(1,'swamy',1),
(2,'Raj',3),
(3,'Tom',null),
(4,'Age',5);


select s.stud_name,t.dept_name
from students s
inner join teachers t
on t.dept_id=s.dept_id;

select s.stud_name , t.dept_name
from students s
left join teachers t
on t.dept_id=s.dept_id;

select s.stud_name , t.dept_name
from students s
right join teachers t
on s.dept_id=t.dept_id;



-- full join
SELECT s.stud_name, t.dept_name
FROM students s
LEFT JOIN teachers t ON s.dept_id = t.dept_id

UNION

SELECT s.stud_name, t.dept_name
FROM students s
RIGHT JOIN teachers t ON s.dept_id = t.dept_id;



select s.stud_name, t.dept_name
from students s
cross join teachers t ;











































