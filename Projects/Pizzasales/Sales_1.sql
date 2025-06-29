
-- Basic:
-- Retrieve the total number of orders placed.
-- Calculate the total revenue generated from pizza sales.
-- Identify the highest-priced pizza.
-- Identify the most common pizza size ordered.
-- List the top 5 most ordered pizza types along with their quantities.


create database	pizzahut;

USE PIZZAHUT;

create table orders (
order_id int not null,
order_date date not null,
order_time time not null,
primary key (order_id)
);

select * from orders;

create table order_details
(
order_details_id int not null,
order_id int not null,
pizza_id text not null,
quantity int not null,
primary key (order_details_id) );

select * from orders;

select avg(list_price) from product;

select * from product
where list_price > (select avg(list_price) from product);

select product_name,model_year,product_id
from product
where product_id in (select order_id from orders);















































































































