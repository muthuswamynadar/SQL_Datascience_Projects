use stages;

create table customer
(
	id int8 primary key,
    country varchar(25),
    date date,
    item_name varchar(50),
    iap_price int
)
select * from customer;

COPY customer(id, country, date, item_name, iap_price)
FROM 'F:/SQL/Assignments/items_bought.csv'
DELIMITER ','
CSV 
HEADER;

LOAD DATA LOCAL INFILE 'F:/SQL/Assignments/items_bought.csv'
INTO TABLE customer
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;



























