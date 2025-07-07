use sort;

Select * from courses;

select course_name, course_id, row_number() over (partition by course_name order by course_id) as row_num
from courses;

select course_name, course_id, rank() over (partition by course_name order by course_id) as row_num
, dense_rank() over (partition by course_name order by course_id) as Dense_num
from courses;

## NTILE
-- It divides into 4 category

select * from courses;
select *, ntile(5) over (order by Domain) as mydom from courses;

select *, lead(Domain,2) over (order by Domain) as mydom from courses;














































