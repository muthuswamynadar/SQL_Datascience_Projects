create database ola;

use ola;

select count(*) as my from bookings;

select * from bookings;

describe bookings;

-- Renaming the table date


ALTER TABLE bookings 
rename COLUMN `ï»¿Date`  to `DATES`;

-- 1) Now making the Dates to 'Date' format

set sql_safe_updates=0;

update bookings
set `DATES`=str_to_date(`DATES`, '%m/%d/%Y %H:%i');

alter table bookings
modify column `DATES` date;

-- 2) The time part

select * from bookings;

alter table bookings
modify column `Time` time;

-- 3) Ride distance
select * from bookings;

alter table bookings
modify column `Ride_Distance` float;

-- 4) Dropping the vechicle images
alter table bookings
drop column `Vehicle Images`;


