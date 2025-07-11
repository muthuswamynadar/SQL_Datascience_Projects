use  practise;
select * from worldcountry;



SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

select * from employees;

-- Create customer & order tables

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO customers (id, name) VALUES
(1, 'John'),
(2, 'Sarah'),
(3, 'Mike');

-- Creating the orders

CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO orders (id, customer_id, total_amount) VALUES
(1, 1, 250),
(2, 2, 400),
(3, 1, 150),
(4, 3, 300);


SELECT name
FROM customers
WHERE id IN (SELECT customer_id FROM orders);

SELECT name, 
       (SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.id) AS total_orders
FROM customers;

SELECT department_id, MAX(salary) AS highest_salary
FROM (SELECT department_id, salary FROM employees) AS dept_salaries
GROUP BY department_id;


-- ***************************************************** CTE in SQL

-- Table run in temporary state & then vanish it
-- In SQL, CTE stands for Common Table Expression. 

-- It's a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE statement.
-- Syntax:
-- 	WITH cte_name AS (
-- 	    SELECT column1, column2
-- 	    FROM table_name
-- 	    WHERE condition
-- 	)
-- 	SELECT *
-- FROM cte_name;
























































