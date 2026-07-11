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
