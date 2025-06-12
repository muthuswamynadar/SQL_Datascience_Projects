
create table customerz
(
	"IDz" int8 primary key,
	"Namez" varchar(60) Not null,
	"Age" int not null,
	"City" char(50),
	"Salary" numeric
)

select * from customerz;

INSERT INTO customerz
("IDz", "Namez", "Age", "City", "Salary")
VALUES
(1, 'Swamy', 30, 'Delhi', 8000),
(2, 'Muthu', 40, 'Mumbai', 10000),
(3, 'Sammyz', 40, 'India', 30000);

-- updating the customers

update customerz
set "Namez" = 'Swamy', "Age" = 25
where "IDz" = 2;

-- Creating the tables in database

create table students
(
	"IDZ" int8 primary key,
	"Name" varchar(80) not null,
	"Age" int not null,
	"City" char(50),
	"Salary" numeric
	
)

select * from students

insert into students
("IDZ","Name","Age","City","Salary")
values
(1,'Muthu',30,'Mumbai',30000),
(2,'Xuthu',40,'India',40000),
(3,'Sammy',30,'Mumbai',60000),
(4,'Swamy',33,'Delhi',70000);

-- Updating the customers

insert into students
("IDZ","Name","Age","City","Salary")
values 
(5,'Money',44,'UB',44444);


update students
set "Age" = 30
where "IDZ" =4;


-- Deleteing the customer values

Delete from students
where "IDZ" =1;


-- Creating the tables 2

create table Tommyzx
(
	"myid" int8 primary key,
	"Name" varchar(50) not null,
	"Age" int not null,
	"Money" int not null,
	"Forms" varchar not null
)

insert into Tommyzx
("myid","Name","Age","Money","Forms")
values
(1,'Swamy Nadar',34,40000,'India'),
(2,'Swamy Nadar',34,40000,'India'),
(3,'Swamy Nadar',34,40000,'India'),
(4,'Swamy Nadar',34,40000,'India'),
(5,'Swamy Nadar',34,40000,'India');

select * from Tommyzx;

Alter table Tommyzx
Add swmytb int;

Alter table Tommyzx
Drop column swmytb; 

Alter table Tommyzx
ALTER column Money varchar(50);


-- Altering a table in SQL

create table SwamyN
(
	"myid" int8 primary key,
	"Name" varchar(50) not null,
	"Age" int not null,
	"Money" int not null,
	"Forms" varchar not null
)

insert into SwamyN
("myid","Name","Age","Money","Forms")
values
(1,'Swamy Nadar',34,40000,'India'),
(2,'Swamy Nadar',34,40000,'India'),
(3,'Swamy Nadar',34,40000,'India'),
(4,'Swamy Nadar',34,40000,'India'),
(5,'Swamy Nadar',34,40000,'India');

-- Altering the table in SQL

select * from SwamyN

alter table SwamyN
add phonenumber varchar(20);

-- Modify an Existing column

alter table SwamyN
alter column phonenumber type varchar(30);

select * from SwamyN

-- Renaming the column

alter table SwamyN
Rename column phonenumber to swamynumber;

select * from SwamyN

-- Removing the columns
Alter table SwamyN
Drop column swamynumber;
select * from SwamyN

-- Renaming the database
SELECT current_database();

select current_database();

Alter table swamy
rename to sammy;

-- Removing table & coloumns
select * from SwamyN

-- Empty the tables in truncate

TRUNCATE TABLE SwamyN

-- Removing the table in 
Drop table SwamyN





















































