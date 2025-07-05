use sort;

select * from courses;

select * from courses
where course_name like "M%";

select * from courses
where course_name like "%s";

select * from courses;

select * from courses
where course_name like "%l";

select * from courses;

select sum(students_intake) as mylevel, min(students_intake) as mins from courses;

select domain, count(domain) asmydomain, count(distinct domain), round(avg(students_intake)) 
from courses
group by domain
having count(domain) > 2;



















































































