
-- Q1 Join the necessary tables to find the total quantity of 
-- each pizza category ordered.

select * from pizzas;
select * from order_details;
select * from pizza_types;
select * from orders;

select pizza_types.category,
sum(order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id=pizzas.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.category
order by quantity desc;

-- Q2 Determine the top 3 most ordered pizza 
-- types based on revenue.
select hour(order_time) as hour,
count(order_id) as order_count
from orders
group by hour(order_time);

-- Q3 Join relevant tables to find the category-wise 
-- distribution of pizzas.

select category,count(name) as my
from pizza_types
group by category;

-- Q4 Group the orders by date and calculate 
-- the average number of pizzas ordered per day..

select avg(quantity) from (
select orders.order_date,sum(order_details.quantity) as quantity
from orders join order_details
on orders.order_id = order_details.order_id
group by orders.order_date) as order_quantity;


-- Q5 

select pizza_types.name,
sum(order_details.quantity * pizzas.price) as revenue
from pizza_types join pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join order_details
on order_details.pizza_id=pizzas.pizza_id
group by pizza_types.name order by revenue desc limit 3;



















































