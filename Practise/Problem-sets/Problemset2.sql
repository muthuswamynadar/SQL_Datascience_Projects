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

CREATE TABLE sales (
  sale_id INT,
  employee_id INT,
  sale_amount INT,
  sale_date DATE
);

INSERT INTO sales VALUES
(1, 1, 3000, '2024-01-10'),
(2, 2, 5000, '2024-01-11'),
(3, 1, 2000, '2024-01-15'),
(4, 3, 4000, '2024-01-18'),
(5, 2, 3000, '2024-01-22');

WITH sales_summary AS (
  SELECT employee_id, SUM(sale_amount) AS total_sales
  FROM sales
  GROUP BY employee_id
)



































































































