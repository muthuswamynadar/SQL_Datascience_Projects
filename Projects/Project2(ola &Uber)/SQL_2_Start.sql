select * from bookings;

alter table bookings
drop column `Vehicle Images`;

-- 		1. How many total ride records are there in the dataset?
-- 		2. What columns are present and what are their data types?
-- 		3. How many unique customers are there?
-- 		4. How many unique drivers are there?
	--  5. How many unique pickup locations and drop locations exist?

-- 		1. How many total ride records are there in the dataset?
select count(*) as TotalRideRecrod
from bookings;

-- 		2. What columns are present and what are their data types?

describe bookings;

-- 		3. How many unique customers are there?
select * from bookings;

select count( Distinct Customer_ID ) as unq
from bookings;

-- 		4. How many unique drivers are there?
select * from bookings;

select count( distinct Vehicle_Type ) as driv
from bookings;

--  5. How many unique pickup locations and drop locations exist?

select * from bookings;

SELECT
    COUNT(DISTINCT pickup_location) AS unique_pickup_locations,
    COUNT(DISTINCT drop_location) AS unique_drop_locations
FROM bookings;


























