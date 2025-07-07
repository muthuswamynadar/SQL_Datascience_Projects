use sort;

select * from courses;

select 
	if(Max(Students_Intake) >= 100,"The RIght","Below Expected") as collegestatus,
	course_name,count(students_intake) as lmr
from courses
group by course_name;


SELECT 
  IF(MAX(Students_Intake) >= 100, 'The Right', 'Below Expected') AS collegestatus,
  
  course_name
FROM courses
GROUP BY course_name;


select * from courses;

-- using the ifnull

select * from courses;

select 
	course_name,
    domain
from courses
group by course_name;

SELECT course_name, domain , 
	ifnull(course_id) as nnz
FROM courses;

select course_name,domain,students_intake,
case
	when students_intake <= 70 then "High"
    when students_intake between 70 and 150 then "mid"
    else "Very hight"
end as pop_cat
from courses;

select students_intake,coalesce(students_intake,3) as imi
from courses;















