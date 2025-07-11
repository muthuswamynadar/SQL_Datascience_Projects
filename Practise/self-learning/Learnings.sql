
create database muthu;

use muthu;

-- ******************************** Created table
create table swamy
(
course_id int ,
course_name varchar(30),
name_delivery varchar(100),
students_intake int,
faculty varchar(50)
);

-- ******************************** Changing table type 

select * from swamy;

alter table swamy change column course_id cours varchar(3);

alter table swamy change column students_intake studen varchar(30);




































































