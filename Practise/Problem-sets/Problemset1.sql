
-- Subquery 10 questions
create database problem;

use problem;

CREATE TABLE Employees (
    emp_id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT
);

INSERT INTO Employees VALUES
(1, 'Alice', 50000, 1),
(2, 'Bob', 60000, 2),
(3, 'Charlie', 55000, 1),
(4, 'David', 70000, 2),
(5, 'Eve', 48000, 3);


-- Question 1 : Get the name of employees whose salary is above average salary ?
select name, salary from Employees
where salary > (select avg(salary) as myavg from Employees);


-- &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
CREATE TABLE Customers (
    customer_id INT,
    name VARCHAR(50)
);

CREATE TABLE Orders (
    order_id INT,
    customer_id INT,
    order_date DATE
);

INSERT INTO Customers VALUES
(1, 'John'),
(2, 'Mia'),
(3, 'Liam'),
(4, 'Emma');

INSERT INTO Orders VALUES
(101, 1, '2024-06-01'),
(102, 2, '2024-06-02'),
(103, 1, '2024-06-05'),
(104, 3, '2024-06-07');

-- Find the name of the customer who have placed more than one order

select C.customer_id, C.name 
from Customers as C
inner join Orders as O 
on C.customer_id = O.customer_id
group by C.customer_id,C.name
Having count(C.customer_id) >1;


-- &&&&&&^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

-- Finding the highest number in each category
CREATE TABLE Products (
    product_id INT,
    product_name VARCHAR(50),
    category_id INT,
    price INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 101, 1000),
(2, 'Mouse', 101, 50),
(3, 'Shirt', 102, 30),
(4, 'Jacket', 102, 120),
(5, 'Shoes', 103, 90),
(6, 'Socks', 103, 10);

select * from Products;

select *,max(price) as highes_price
from Products
group by price;

select product_id,max(price) as high
from Products
group by price;

select * from Products
where price = (select max(price) from Products);

SELECT *
FROM Products P
WHERE price = (
    SELECT MAX(price)
    FROM Products
    WHERE product_id = P.product_id
);

-- &&&&&&^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-- Get the names of employees who work in the same department as 'John', excluding 'John' himself.
CREATE TABLE Employeez (
    emp_id INT,
    name VARCHAR(50),
    department_id INT
);

INSERT INTO Employeez VALUES
(1, 'John', 1),
(2, 'Maya', 1),
(3, 'Luke', 2),
(4, 'Nina', 1),
(5, 'Sara', 3);

select * from Employeez
where department_id = 1;

select * from Employeez
where department_id= 
(select department_id from Employeez
where name ='John');


-- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
CREATE TABLE Productz (
    product_id INT,
    product_name VARCHAR(50)
);

CREATE TABLE Orderx (
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO Productz VALUES
(1, 'Laptop'),
(2, 'Phone'),
(3, 'Tablet'),
(4, 'Monitor');

INSERT INTO Orderx VALUES
(201, 1, 2),
(202, 2, 1),
(203, 1, 1);

select P.product_name
from Productz as P
left join Orderx O on P.product_id=O.product_id
where O.product_id is null;










































