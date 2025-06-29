


create table employee
(
id serial primary key,
empname varchar(50),
age int,
department varchar(30),
salary numeric(10,2),
manager_id int
);

insert into employee values
(102,'sammy',20,'IT',50000,2),
(103,'monney',30,'GD',60000,3),
(104,'Marry',40,'IT',50000,4),
(105,'Terry',50,'IT',60000,5);

select * from employee;

select salary from employee where department= 'IT';

select * from employee order by salary desc;

select * from employee limit 1000;
select distinct salary from employee;

-- Retriving the single data from the sql
select salary from employee;


select * from employee where salary=50000 ;

create table product
(
	product_id int not null,
    product_name text not null,
    brand_id int not null,
    categroy_id int not null,
    model_year year,
    list_price decimal(10,2),
    primary key (product_id)
);






















