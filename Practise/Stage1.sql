use muthu;


-- *********************************************************************************************************Creating the tables *******************************************************

create table employees(
id serial primary key,
name varchar(50),
age int,
department varchar (30),
salary numeric (10,2),
managerid int
);


select * from employees;


CREATE TABLE mlover (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price NUMERIC(10,2) NOT NULL,
    stock INT NOT NULL,
    tags VARCHAR(255) NOT NULL
);

CREATE TABLE mswamy(
	id serial primary key,
    name varchar(100) not null,
    price numeric(10,2) not null,
    stock int not null,
    tags varchar(255) not null
);

create table mine (
	id serial primary key,
    namez varchar(100) not null,
    price numeric(10,2) not null,
    stock int not null,
    tags varchar(255) not null
);
    
select * from mine;

-- ********************************************************************************************************* INserting in the tables *******************************************************


insert into mine (id,namez,price,stock,tags) values
(102,'Swamy',2200,2,'India'),
(103,'Manish',2400,3,'India'),
(104,'Rohit',2600,4,'India');


select id,namez from mine;

select * from mine where id = 102;

select * from mine order by id desc;
select * from mine limit 3;

select * from mine where price=2000;

select * from mine where id>=103;



















