-- Use rentals

use swamy;

select current_date();

select current_time();

select current_timestamp()

select * from rentalsz;

select now();

 -- specifing the dates
 
 select rental_id,date(rental_date) as onlydate,return_date
 from rentalsz;

-- specifing the times

 select rental_id,date(rental_date) as onlydate,time(rental_date) as mytime,
 return_date, rental_date
 from rentalsz;

-- specifying the day

select rental_id,rental_date,
Day(Rental_date) as rentday,
month(rental_date) as rentalmonth
from rentalsz;

-- using hour minutes sec

select rental_id,time(rental_date) as rent_time,
hour(rental_date) as rentalhour,
minute(rental_date) as minutedate,
second(rental_date) as rentalsec
from rentalsz;

-- Rentals id

select rental_id,customer_id,date(rental_date) as rental_date,
date(return_date) as return_date,
datediff(return_date,rental_date) as holding_days
from rentalsz;

select customer_id,
if(datediff(return_date,rental_date)>7,"Late","Not-Late") as return_status
from rentalsz;


SELECT customer_id, 
       IF(DATEDIFF(return_date, rental_date) > 7, "Late", "Not-Late") AS return_status
FROM rentalsz
WHERE DATEDIFF(return_date, rental_date) > 7;






































































