-- Ecommerce SQL projects

-- product table
create table products
(
	product_id int primary key,
	product_name varchar(255) not null,
	description text,
	price decimal(10,2) not null,
	stock_quantity int not null default 0
);

-- customer table
create table customer
(
	customer_id int primary key,
	customer_name varchar(255) not null,
	customer_email varchar(255) unique not null,
	customer_password varchar(255) not null,
	customer_address text
);

-- order table
create table orders
(
	order_id int primary key,
	customer_id int not null,
	customer_order_id int not null,
	customer_order_date date not null,
	total decimal (10,2) not null,
	status varchar(50) not null,
	foreign key (customer_id) references customer(customer_id)
);

-- order item table

create table order_items
(
	order_item_id int primary key,
	order_id int not null,
	product_id int not null,
	quantity int not null,
	foreign key (order_id) references orders(order_id),
	foreign key (product_id) references products(product_id)
);


-- transactions table

create table transactions
(
	transcation_id int primary key,
	order_id int not null,
	payment_method varchar(50) not null,
	payment_date date not null,
	amount decimal(10,2) not null,
	foreign key(order_id) references orders(order_id)
);


-- inseting the data in table

insert into products (product_id,product_name,description,price,stock_quantity)
values
(1,'Colgate','The product is good',30,2000),
(2,'Brush','The future of cloth',40,1500),
(3,'Books','The study books',50,1000),
(4,'Laptop','The best laptop',70,500);

select * from products;

-- inserting the data in customer
insert into customer (customer_id,customer_name,customer_email,customer_password,customer_address)
values
(1,'Swamy','my@gmail.com',123456,'Mumbai 400101'),
(2,'Balan','balan@gmail.com',2501200,'Delhi 400888'),
(3,'Muthu','muthukumar@gmail.com',5600901,'Pune 400101'),
(4,'Money','moneyswamy@gmail.com',115544,'Chennail 200101');

-- inserting the data into orders

insert into orders(order_id,customer_id,customer_order_id,customer_order_date,total,status)
values
(1,1,1,'2021-12-01',400,'Shipped'),
(2,2,2,'2021-12-01',400,'delivered'),
(3,3,3,'2021-12-01',500,'pending'),
(4,4,4,'2021-12-01',600,'delivered');

select * from orders

-- inserting into order items

insert into order_items
values
(1,1,1,50),
(2,2,2,500),
(3,3,3,500),
(4,4,4,700);

select * from order_items

-- Transaction of the id

insert into transactions(transcation_id,order_id,payment_method,payment_date,amount)
values
(1,1,'online-cash','2025-01-24',40000),
(2,2,'offline-cash','2024-01-24',50000),
(3,3,'online-cash','2024-10-24',56000),
(4,4,'offline-cash','2024-12-24',50000);

select * from transactions

-- find the customer who have placed order
 




























