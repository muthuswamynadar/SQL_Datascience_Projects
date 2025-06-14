create database stages;

use stages;

create table customers
(
	customer_id int,
    customer_name varchar(50),
    customer_region varchar(50)
);

alter table customers
add primary key (customer_id);

select * from customers;

insert into customers values
(101,'Swamy','Mumbai'),
(102,'Money','Andheri'),
(103,'India','Raigad'),
(104,'Maharashtra','Pune'),
(105,'Delhi','India');

create table orders
( 
	order_id int primary key,
    customer_id int,
    product varchar(50),
    amount int
);

insert into orders values
(1,101,'Laptop',50000),
(2,102,'Phone',20000),
(3,101,'Tablet',30000),
(4,105,'Laptop',50000);

select customers.name, orders.amount
from customers
inner join orders on customer_id=orders.customer_id;

























































