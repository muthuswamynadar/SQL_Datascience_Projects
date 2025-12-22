-- 	🔹 Booking Status Analysis
-- 		1. How many rides are completed, cancelled, and no-shows?
-- 		2. What percentage of total rides are completed?
-- 		3. What percentage of rides are cancelled?
-- 		4. How many rides are cancelled by customers vs drivers?
-- What are the most common cancellation reasons?


-- 		1. How many rides are completed, cancelled, and no-shows?
select * from bookings;

select
sum(case when Booking_Status="Success" then 1 else 0 end) as Completed_Ride,
sum(case when Booking_Status="Canceled by Driver" then 1 else 0 end) as CanceledbyDriver,
sum(case when Booking_Status="Canceled by Customer" then 1 else 0 end) as CanceledbyCustomer,
sum(case when Booking_Status="Driver Not Found" then 1 else 0 end) as NoRides
from bookings;

-- 		2. What percentage of total rides are completed?

select * from bookings;

select 
sum(case when Booking_status="Success" then 1 else 0 end) as TotalRides,
round(
	100 * sum(case when Booking_status="Success" then 1 else 0 end) / Count(*) ,2) as completed_percentage
from bookings;

-- 		3. What percentage of rides are cancelled?

select 
round(
	100*
    (	
		sum(case when Booking_Status='Canceled by Driver' then 1 else 0 end)
        +sum(case when Booking_Status='Canceled by Customer' then 1 else 0 end)
	)
    / Count(*),
    2
) as cancelled_percentage
from bookings;

-- 	4. How many rides are cancelled by customers vs drivers?
select * from bookings;

select 
	sum(case when Booking_Status='Canceled by Driver' then 1 else 0 end) as cancelledByDriver,
    sum(case when Booking_Status='Canceled by Customer' then 1 else 0 end) as cancelledByCustomer
from bookings;


-- 5. What are the most common cancellation reasons?

select * from bookings;

select distinct Canceled_Rides_by_Customer from 
bookings
where Canceled_Rides_by_Customer is not null;

select
	CancellationRasons,
    count(*) as total_count
from 
(
	select Canceled_Rides_by_Customer as CancellationRasons
    from bookings
    where Canceled_Rides_by_Customer is not null
    union all
    select Canceled_Rides_by_Driver 
    from bookings
    where Canceled_Rides_by_Driver is not null
) t
group by CancellationRasons
order by total_count desc;




