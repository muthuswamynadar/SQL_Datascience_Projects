create database zepto;

use zepto;

drop table if exists zepto;

create table zepto
(
	 sku_id serial primary key,
     Category varchar(120),
     name varchar(150) not null,
     mrp numeric(8,2),
     discountPercent numeric(5,2),
     availableQuantity integer,
     disocuntedSellingPrice numeric(8,2),
     weightInGms integer,
     outOfStock varchar(5),
     quantity int
);

-- Data Exploration

select * from zepto;

select count(*) from zepto;

-- Checking the null values

SELECT *
FROM zepto
WHERE name IS NULL
   OR Category IS NULL
   OR mrp IS NULL
   OR discountPercent IS NULL
   OR disocuntedSellingPrice IS NULL
   OR outOfStock IS NULL
   OR quantity IS NULL
   OR availableQuantity IS NULL
   OR weightInGms IS NULL;

-- Distinct product category from the zepto
select * from zepto;

select distinct Category as my ,count(Category) as tt
from zepto
group by category
order by category;



-- Product in stock vs out of stock
select  outOfStock,count(sku_id)
from zepto
group by outOfStock;



-- Product names present multiple times
select  name,count(sku_id) as "Number of SKU"
from zepto
group by name
having count(sku_id) >1
order by count(sku_id) desc;

-- data cleaning

-- products with price =0

select *from zepto
where mrp=0 or disocuntedSellingPrice=0;

-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- Now run your delete
DELETE FROM zepto
WHERE mrp = 0;

-- Re-enable safe updates (optional)
SET SQL_SAFE_UPDATES = 1;



-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;





-- Run your update
UPDATE zepto
SET 
    mrp = mrp / 100.0,
    disocuntedSellingPrice = disocuntedSellingPrice / 100.0;

-- Re-enable safe updates (optional)
SET SQL_SAFE_UPDATES = 1;

select mrp, disocuntedSellingPrice from zepto;











































