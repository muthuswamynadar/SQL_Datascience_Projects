
create database practise;

use practise;

create table courses
(
course_id char(10),
course_name varchar (50),
mode_of_delivery varchar(20),
student_intake varchar(10),
Faculty varchar(10)
);


alter table courses change column course_id mycourse varchar(10);

select * from courses;

alter table courses change column student_intake studentpurchase int; 

alter table courses change column Faculty faculty varchar(10);

create table courses
(
Course_ID char(10) unique,
Course_name varchar(30) not null,
Delivery_mode varchar(15),
Students_Intake int,
Faculty varchar(30)
);

insert into courses values
('PW101','Data Analytics','Recroded',100,'Swamy');

insert into courses values
('PW102', 'Python for Beginners', 'Live', 120, 'Delhi'),
('PW103', 'SQL Mastery', 'Recorded', 80, 'Bangalore'),
('PW104', 'Machine Learning Basics', 'Live', 95, 'Chennai'),
('PW105', 'Power BI Advanced', 'Recorded', 110, 'Hyderabad'),
('PW106', 'Excel for Data Analysis', 'Live', 130, 'Pune'),
('PW107', 'Full Stack Web Development', 'Recorded', 115, 'Ahmedabad'),
('PW108', 'AWS Cloud Essentials', 'Live', 90, 'Jaipur'),
('PW109', 'Introduction to Cyber Security', 'Recorded', 105, 'Kolkata');

select * from courses;



 select course_name, count(course_name) as myname from courses;













































































