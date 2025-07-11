-- Created the table name course under swamy database
use swamy;

create table coursex
(course_id char(30) not null, 
course_name varchar(30) unique,
Mode_of_delivery varchar(30),
Student_intake int check(Student_intake >= 90),
Faculty varchar(30)
);

INSERT INTO coursex VALUES
('SM201', 'Data-Analyst', 'Recorded', '120', 'Vijay'),
('Sm202', 'Data-Operator', 'Data manipulation', '120', 'Vijay'),
('SM203', 'Data-Engineer', 'Swamy', '120', 'Vijay'),
('SM204', 'Data-Analys', 'MOney', '120', 'Vijay'),
('SM205', 'Data-Scientist', 'Recorded', '120', 'Vijay');

select * from coursex;

--  Adding the additional tables
INSERT INTO coursex VALUES
('SM206', 'Clinical SAS', 'Recorded', '90', 'SAm');


-- Using the default values

create table coursmaxx
(course_id char(30) not null, 
course_name varchar(30) unique,
Mode_of_delivery varchar(30) default 'Home',
Student_intake int check(Student_intake >= 90),
Faculty varchar(30)
);
INSERT INTO coursmaxx VALUES
('SM201', 'Data-Analyst', 'Recorded', '120', 'Vijay'),
('SM202', 'Data-Operator', 'Data manipulation', '120', 'Vijay'),
('SM203', 'Data-Engineer', 'Swamy', '120', 'Vijay'),
('SM204', 'Data-Analys', '', '120', 'Vijay'),
('SM205', 'Data-Scientist', 'Recorded', '120', 'Vijay');

select * from coursmaxx;

INSERT INTO coursmaxx VALUES
('SM103', 'Data-sAnalysz','' , 120, 'Vijay');

drop table coursmaxxz

-- Step 1: Create the table with DEFAULT
CREATE TABLE coursmaxxz (
    course_id CHAR(30) NOT NULL, 
    course_name VARCHAR(30) UNIQUE,
    Mode_of_delivery VARCHAR(30) DEFAULT 'Home',
    Student_intake INT CHECK (Student_intake >= 90),
    Faculty VARCHAR(30)
);

-- Step 2: Insert data (note NULL instead of '')
INSERT INTO coursmaxxz VALUES
('SM201', 'Data-Analyst', 'Recorded', 120, 'Vijay'),
('SM202', 'Data-Operator', 'Data manipulation', 120, 'Vijay'),
('SM203', 'Data-Engineer', 'Swamy', 120, 'Vijay'),
('SM204', 'Data-Analys', NULL, 120, 'Vijay'),  -- Will use default 'Home'
('SM205', 'Data-Scientist', 'Recorded', 120, 'Vijay');

select * from coursmaxxz;

INSERT INTO coursmaxxz (course_id, course_name, Student_intake, Faculty)
VALUES ('SM208', 'Data-Analyzs', 120, 'Vijay');



















