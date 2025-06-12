
use swamy;

select * from worldcountry;

-- Using the row number
select name,row_number() over (order by name) as ordernum , continent
from worldcountry;



-- using the rank
select row_number() over (partition by continent order by name) as row_num,
Rank() over (partition by continent order by lifeexpectancy) as rank_num,
name,continent from worldcountry;

-- using the denserank
select row_number() over (partition by continent order by name) as row_num,
dense_rank() over (partition by continent order by lifeexpectancy) as rank_num,
name,continent from worldcountry;



-- using Ntile
select * from worldcity;

select *,ntile(4) over (order by population) as pot_cat from worldcity;

-- lag function
select * from worldcountry;

select name,population, lag(population,1) over (order by population) 
from worldcountry;























































