use salesdata;
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

 -- Using the duplicate & not null to add the values in data (which shows the eroor)
 insert into courses values
('PW111','cliical' , 'Live', 120, 'Delhi');










































