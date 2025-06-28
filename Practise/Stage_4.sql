create database sukoon;
use sukoon;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    join_date DATE,
    dept VARCHAR(50),
    salary INT,
    manager_id INT
);

INSERT INTO employees (emp_id, name, join_date, dept, salary, manager_id) VALUES
(1, 'alice JOHNSON', '2022-01-10', 'HR', 50000, NULL),
(2, 'BOB SMITH', '2023-02-15', 'Finance', NULL, 1),
(3, 'john.doe', '2021-08-20', 'IT', 60000, 2),
(4, 'sara O''connor', NULL, 'Finance', 55000, 1);

SELECT 
  name,
  LOWER(name) AS lower_case,
  UPPER(name) AS upper_case,
  TRIM(name) AS trimmed_name,
  SUBSTRING(name, 1, 4) AS first_four_letters,
  REPLACE(name, '.', ' ') AS cleaned_name,
  LENGTH(name) AS name_length
FROM employees;

SELECT 
  name,
  CURDATE() AS today,
  join_date,
  DATEDIFF(CURDATE(), join_date) AS days_since_joined,
  EXTRACT(YEAR FROM join_date) AS join_year
FROM employees
WHERE join_date IS NOT NULL;

-- PostgreSQL example using DATE_TRUNC
SELECT 
  name,
  DATE_TRUNC('month', join_date) AS month_start
FROM employees
WHERE join_date IS NOT NULL;


SELECT 
  name,
  dept,
  CASE 
    WHEN dept = 'Finance' THEN ' Money Team'
    WHEN dept = 'HR' THEN 'People Ops'
    WHEN dept = 'IT' THEN '💻 Tech Team'
    ELSE 'Unknown'
  END AS team_nickname
FROM employees;

-- *******************************-- 
use muthu;
create table customer
(
	customer_id int primary key,
    myname varchar(50),
    region varchar(50)
);

insert into customer values
(101,'Alice','West'),
(102, 'Bob', 'East'),
(103, 'Charlie', 'West'),
(104, 'David', 'North');

select * from customer;

create table orders
(
	order_id int primary key,
    customer_id int,
    product varchar(50),
    amount decimal(10,2)
);

insert into orders values
(1,101,'Laptop',50000),
(2, 102, 'Phone', 20000),
(3, 101, 'Tablet', 30000),
(4, 105, 'Laptop', 50000);


select * from customer;
select * from orders;

select c.name,c.product












































