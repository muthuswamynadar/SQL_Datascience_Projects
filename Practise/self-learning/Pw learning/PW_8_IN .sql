
use swamy;

select * from worldcountry;

-- In operators
select * from worldcountry
where continent in ("Asia","Africa");

-- Between operators

select * from worldcountry
where name between "Aruba" and "France"
order by name;

































