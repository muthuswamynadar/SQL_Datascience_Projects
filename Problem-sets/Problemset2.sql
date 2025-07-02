use problem;

CREATE TABLE employex (
  emp_id INT,
  emp_name VARCHAR(50),
  department VARCHAR(50),
  salary INT
);

INSERT INTO employex VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 70000),
(3, 'Charlie', 'HR', 60000),
(4, 'David', 'IT', 80000),
(5, 'Eve', 'Finance', 75000);


select * from employex;

with swamy as
( 
	select * from employex
)
select * from swamy;
drop database problem;

create database CTE;

use CTE;

CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  department VARCHAR(50),
  salary INT
);
INSERT INTO employees VALUES
(1, 'Alice', 'HR', 50000),
(2, 'Bob', 'IT', 70000),
(3, 'Charlie', 'HR', 60000),
(4, 'David', 'IT', 80000),
(5, 'Eve', 'Finance', 75000);




































































































