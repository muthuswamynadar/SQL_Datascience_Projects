
use swamy;
SET GLOBAL sql_safe_updates = 0;
select * from coursmax;

-- Inserting the values in the table

insert into coursmax 
values ("SM207","Clinical Data Scientist","Classes","100","Swamy");

-- Inserting multiple values in the tables
select * from coursmax;

insert into coursmax 
values ("SM208","Clinical Data Scientist","Classes","100","Swamy"),
values ("SM209","ClinicalData Scientist","Classesz","300","Swamy"),
values ("SM208","Clinical Data Scientistx","Classes","100","Swamyzz");

INSERT INTO coursmax (course_id, course_name, Mode_of_delivery, Student_intake, Faculty)
VALUES 
  ("SM301", "javax", "mqmm", 102, "Vijay"),
  ("SM301", "javaxx", "mmam", 103, "Mneyz"),
  ("SM501", "jaavax", "mhmm", 104, "Swamy"),
  ("SM381", "djavax", "mzmm", 105, "Monneyz");

-- updating the course max
select * from coursmax;

SET sql_safe_updates = 0;
	

UPDATE coursmax
SET course_name = "Swamy"
WHERE course_id = "SM202";







































