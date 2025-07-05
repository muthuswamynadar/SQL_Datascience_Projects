
use sort;

-- Using the concat

select * from courses;
select course_name,Domain, concat(Course_name," + ",Mode_of_Delivery) as fulldetails
from courses;

-- Using the Upper / Lower

select upper(course_name) as lm,lower(course_name) as ls
from courses;

-- Using the replace

select replace("Hello World","World","Mysql")as newo;

-- Using the left / right

select * from courses;

select course_id, left(course_name,8) from courses;

select course_id, right(course_name,8) from courses;

-- using the substring
select *,substring(course_name,1,7) as zz from courses;

-- using the trim ,left trim & right trim
select trim(concat("                        ","Swamy"));

-- Using the reverse
select * from courses;

select reverse(course_name) as mycourse from courses;

-- Using the length
select length(course_name) as myleng from courses;

































































































