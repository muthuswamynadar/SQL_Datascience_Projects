use  practise;
select * from worldcountry;


CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Alice', 70000, 1),
(2, 'Bob', 50000, 2),
(3, 'Charlie', 80000, 1),
(4, 'David', 60000, 2),
(5, 'Eve', 90000, 3);

# multi row subquery

SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);


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

