-- Logical functions
	-- 1) If
	-- 2) Null-if
	-- 3) If null
	-- 4) Casc+ when
	-- 5) coalsce

use swamy;

select * from worldcity;

-- USing the IF statements
select Name,District,CountryCode,
if(Population>35000,"Good global AVG","below global AVG") as mypop
from worldcity;

select if(Population>35000,"Good global AVG","below global AVG") as mypop
,count(Name) as noofcity
from worldcity
group by mypop;

-- Using the col is not null or what

select * from worldcountry;

select Name,Continent,Region,ifnull(IndepYear,"unknown") as Newyear
from worldcountry;

-- Using the nullif

select * from worldcountry;

select name,Region,GNP,GNPold,nullif(GNP,GNPold) as check_GNP from worldcountry;


--  using the case 

select * from worldcity;

select name, Population,
Case
	when Population <=50000 then "low"
    when Population between 50000 and 300000 then "Mid"
    when Population between 300000 and 1000000 then "High"
    else "Very High"
End as Pop_category
from worldcity;

select 
Case
	when Population <=50000 then "low"
    when Population between 50000 and 300000 then "Mid"
    when Population between 300000 and 1000000 then "High"
    else "Very High"
End as Pop_category,
count(name) as noofcity
from worldcity
group by pop_category
;

## coalesece

select * from worldcountry;

select GNP,GNPOld,coalesce(GNP,GNPOld,"NA") as GNP_check from worldcountry;












