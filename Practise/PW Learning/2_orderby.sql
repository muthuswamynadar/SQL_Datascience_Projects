
select * from courses;

### Check Constraints

create table courses
(Course_id Char(6) unique, 
Course_Name Varchar(40), 
Domain Char(20),
Students_Intake int check(Students_intake > 0), 
Delivery_Mode Varchar(20) Not null,
Faculty Varchar(30)); 

insert into courses values
("DS1001","Full Stack Data Science","Data Science",100,"Live","Saurabh"),
("DA1001","Full Stack Data Analytics","Data Analytics",70,"Live","Saurabh"),
("ML1001","Machine Learning Fundamentals","Machine Learning",170,"Hybrid","Subhash"),
("DL1001","Deepth of Deep Learning","Deep Learning",120,"Recorded","Nalini");

insert into courses (Course_id, Course_name,Domain,Students_Intake,Delivery_Mode) values
("ML1002","Machine Learning Models","Machine Learning",100,"Hybrid");

select * from courses;

i