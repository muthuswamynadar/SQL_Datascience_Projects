
use salesdata;


create table courses
(
course_id char(10),
course_name varchar (50),
mode_of_delivery varchar(20),
student_intake varchar(10),
Faculty varchar(10)
);

select * from swamy_courses;

alter table courses change column mode_of_delivery Delivery_Mode varchar(10);
alter table courses change column student_intake studentpurchase varchar(50);

alter table courses change column course_id student_id varchar(50);

alter table courses change column Faculty Campus varchar(30);

alter table courses drop column campus;

alter table courses rename to Swamy_courses;

alter table Swamy_courses add column Teaching varchar(20);



