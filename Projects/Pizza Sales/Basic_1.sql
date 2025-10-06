-- Q1 Retrive totla number of orders placed
use pizzahut;
select * from orders;

select count(*) as my 
from orders;

-- Q2 Calculate the total revenue generated from pizza sales

select * from pizzas;
select * from order_details;
select * from pizza_types;
select * from orders;

select round(sum(d.quantity*p.price),2) as totalsales
from order_details d join pizzas p
on p.pizza_id=d.pizza_id;

-- Q3 Identify the highest priced pizza

select * from pizzas;
select * from order_details;
select * from pizza_types;
select * from orders;

select pizza_types.name,pizzas.price
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
order by pizzas.price desc limit 1;

-- Q4 Identify the most common pizza size ordered.
select pizzas.size,count(order_details.order_details_id) as order_count
from pizzas join order_details
on pizzas.pizza_id=order_details.pizza_id
group by pizzas.size order by order_count desc;

-- Q5 List the top 5 most ordered pizza types along with their quantities.
select pt.name,
	sum(od.quantity) as quantity
from pizza_types pt
join pizzas p 
	on pt.pizza_type_id=p.pizza_type_id
join order_details od
	on od.pizza_id=p.pizza_id
group by pt.name
order by quantity
desc limit 5;









































































