

# String functions

-- Concat
-- Replace
-- Left/Right
-- Upper/Lower
-- Substring
-- TRim /LTrim /RTrinm
-- Reverse
-- Length 


use swamy;

select * from worldcity;

-- Using the concat functions
select Name , concat(countrycode," ",District) as fullcity
from worldcity;


-- USing the lower & upper functions

select upper(name) as Upper, lower(Countrycode) as lower,District
from worldcity;

-- Using the replace function

select replace("Hello world","world","SQL")new_0;

--  using the left & right
-- Takes the character from left side & Right side

select * from worldcity;

select ID, name, left(Name,4) as leftname, right(Name,5) as rightside
from worldcity;

-- Using the substring
select id, name, substring(name,1,9) as subname
from worldcity;

 -- using the left trim & right trim
select trim(concat("             ",name,"              ")) as myname
from worldcity;

-- Using the reverse

select reverse("Swamy");

-- Using the length functions

select * from worldcity;

select id, name,District , length(Name) as myname
from worldcity;



















































