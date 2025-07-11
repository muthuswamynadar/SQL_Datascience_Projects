
create database selfz;
use selfz;

create table courses
(
	course_name varchar(50),
    course_id int,
    student_intake varchar(50),
    faculty varchar(20)
);

insert into courses values
("Data Analysis",1,"paid","IT"),
("Data Analysis",2,"unpaid","IT"),
("Data Analysis",3,"paid","IT"),
("Data Analysis",4,"paid","IT"),
("Data Scientist",5,"paid","BSIT"),
("Data Scientist",6,"unpaid","BSIT"),
("Data Scientist",7,"paid","BSIT");

select * from courses;

alter table courses change column course_name course varchar(50);

alter table courses change column course_id id int;

alter table courses rename to swamycourse;

select * from swamycourse;

-- Using the constraints

create table flowers
(
	ID int unique primary key,
    flow_name varchar(50) not null,
    deliveryway int
);

select * from swamycourse
where faculty="IT";

select * from swamycourse
where id >=2;

select * from swamycourse
group by course;

select * from swamycourse;































