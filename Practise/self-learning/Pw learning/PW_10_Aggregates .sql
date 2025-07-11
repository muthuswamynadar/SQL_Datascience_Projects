use swamy;

select * from worldcountry;

select name from worldcountry;


-- Using the sum functions

select sum(GNP) as final from worldcountry;

-- Using the average population

select avg(gnp) as myavg from worldcountry;

select round(avg(gnp)) as myavg from worldcountry;

select 
round(avg(gnp)) as myavg,
sum(GNP) as myagg
 from worldcountry;

select count(name) as overal from worldcountry;





























