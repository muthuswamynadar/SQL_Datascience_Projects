-- This is DDL code 

create database swamy; 

use swamy;

-- Created the table name course under swamy database

create table courses
(course_id char(10), course_name varchar(30),
Mode_of_delivery varchar(10),
Student_intake varchar(10),
Faculty varchar(10)
)

-- Deleting the table after creating
drop table courses;
drop database swamy;

-- Altering the table coloumn name / changing it

alter table courses change column Mode_of_delivery Delivery_mode varchar(10);

select * from courses;

--  adding the coloumn using the alter one

alter table courses add column Location varchar(10);
select * from courses;

-- Deleting the coloumns using the drop 
alter table courses drop column Location;
select * from courses;

--  Renaming the tables

Alter table courses rename to Swamycourses;
select * from courses;














