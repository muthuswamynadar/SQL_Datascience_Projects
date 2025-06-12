
use swamy;

select * from worldcity;
select * from worldcountry;

select count(distinct countrycode) from worldcity;

select count(distinct code) from worldcountry;

-- using the inner join
SELECT worldcity.*, worldcountry.Name AS CountryName
FROM worldcity 
INNER JOIN worldcountry 
ON worldcity.countrycode = worldcountry.code;

-- left join 
SELECT worldcity.*, worldcountry.Name AS CountryName
FROM worldcity 
left JOIN worldcountry 
ON worldcity.countrycode = worldcountry.code;

SELECT worldcity.*, worldcountry.Name AS CountryName
FROM worldcity 
Right JOIN worldcountry 
ON worldcity.countrycode = worldcountry.code;










































































