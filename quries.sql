use smart_tourism_db;

select r.hotel_id,h.hotel_name,count(b.room_type_id)as  total_booking
from
bookings b 
inner join
room_types r
on b.room_type_id = r.room_type_id
inner join
hotels h
on h.hotel_id = r.hotel_id

group by r.hotel_id, h.hotel_name;




use smart_tourism_db;

select  r.hotel_id , h.hotel_name ,
avg (r.price_per_night ) as average_price
from 
room_types r
inner join
hotels h
on r.hotel_id = h.hotel_id

group by r.hotel_id, h.hotel_name ;



1)  questions for homework

use smart_tourism_db;

select t.full_name,h.hotel_name,rt.room_type_name,b.check_in_date , b.check_out_date , b.booking_status 
from tourists t
join
bookings b
on t.tourist_id = b.tourist_id 
join
room_types rt
on rt.room_type_id = b.room_type_id
join
hotels h
on h.hotel_id = rt.hotel_id;

2)   use smart_tourism_db;

select h.hotel_name , h.hotel_type ,h.rating ,d.destination_name , d.state , d.city
from hotels h
join
destinations d
on d.destination_id = h.destination_id;


3)   use smart_tourism_db;

select h.hotel_name ,rt.room_type_name , rt.price_per_night , rt.total_rooms
from hotels h
join
room_types rt
on h.hotel_id = rt.hotel_id;

4)   use smart_tourism_db;

select t.full_name , d.destination_name , h.hotel_name , rt.room_type_name , b.booking_status , b.check_in_date , b.check_out_date
from
destinations d
inner join
hotels h
on d.destination_id = h.destination_id
inner join
room_types rt
on h.hotel_id = rt.hotel_id
inner join
bookings b
on rt.room_type_id = b.room_type_id 
inner join
tourists t
on b.tourist_id = t.tourist_id ;

5)    use smart_tourism_db;

select t.full_name , h.hotel_name, rt.room_type_name, b.booking_date
from hotels h
inner join
room_types rt
on h.hotel_id = rt.hotel_id
inner join
bookings b
on rt.room_type_id = b.room_type_id 
inner join
tourists t
on t.tourist_id = b.tourist_id;

6)     use smart_tourism_db;

select h.hotel_name, rt.room_type_name, rt.price_per_night
from hotels h
inner join
room_types rt
on h.hotel_id = rt.hotel_id;

7)   use smart_tourism_db;

select t.tourist_id , t.full_name , t.city , b.booking_status 
from 
tourists t
inner join 
bookings b
on t.tourist_id = b.tourist_id
where b.booking_status ="pending";

8 )   use smart_tourism_db;

select d.destination_name , count(h.hotel_id) as total_no
from
destinations d
inner join
hotels h
on d.destination_id = h.destination_id 
group by d.destination_id ;


-- 9)    use smart_tourism_db;

select b.booking_id , t.full_name , h.hotel_name , rt.room_type_name , b.booking_date , b.booking_status
from 
tourists t
inner join
bookings b
on t.tourist_id = b.tourist_id 
inner join
room_types rt
on b.room_type_id = rt.room_type_id
inner join 
hotels h 
on rt.hotel_id = h.hotel_id;


 
-- 10)  use smart_tourism_db;

select t.full_name , b.check_in_date
from tourists t
join
bookings b
on t.tourist_id = b.tourist_id
order by b.check_in_date   desc limit 50;

