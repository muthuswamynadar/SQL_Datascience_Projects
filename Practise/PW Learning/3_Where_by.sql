use sort;


select * from courses;

select * from courses
where Students_Intake>=100
order by Students_Intake;

-- using not equal to 

select * from courses
where Students_Intake <>100
order by Students_Intake;

select * from courses
where course_name in ("Full Stack Data Science","Machine Learning Fundamentals");

insert into courses values
("DS121","Full Stack Data Science","Data Science",100,"Live","Saurabh"),
("DS111","Full Stack Data Science","Data Science",100,"Live","Saurabh");

select * from courses;

select * from courses
where students_intake between 70 and 130;











































