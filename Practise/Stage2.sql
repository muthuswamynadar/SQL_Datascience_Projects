

create table sales
(
	salesid int primary key,
    customer_id int,
    product varchar(50),
    quantity int,
    price decimal(10,2),
    region varchar(50)
);

insert into sales (salesid,customer_id,product,quantity,price,region) values
(3, 103, 'Phone', 3, 20000.00, 'West'),
(4, 104, 'Tablet', 1, 30000.00, 'North'),
(5, 101, 'Phone', 1, 20000.00, 'West');

select * from sales;

select 
count(salesid) as totalsales,
sum(price) as totalpriece,
avg(price) as avg_price,
min(price) as min_price,
max(price) as max_price
from sales;

-- ********************************* Using the group by ***************************

select price,region,sum(quantity) as totalquantity
from sales
group by region,price;

-- ********************************* Using the group by having ***************************

select * from sales;


select customer_id, product, quantity, price
from sales
group by 
having price >2000;

SELECT customer_id, product, quantity, price, region  
FROM sales  
GROUP BY customer_id, product, quantity, price, region  
HAVING price > 2000;

































































