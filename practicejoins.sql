select * 
from invoice i 
join invoice_line il 
on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i 
join customer c on i.customer_id = c.customer_id;

select c.first_name, c.last_name, e.first_name, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

select al.title, ar.name
from album album
join artist ar on al.artist_id = ar.artist_id;

select pt.track_id
from playlist_track pt 
join playlist p on p.playlist_id = pt.playlist_id
where p.name = 'Music';

select t.name
from track t 
join playlist_track pt on pt.track_id = t.track_id
where pt.playlist_id = 5;

select t.name, p.name
from track t 
join playlist_track pt on t.track_id = pt.track_id
join playlist p on pt.playlist_id = p.playlist_id;

select t.name, a.title
from track t 
join album a on t.album_id = a.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';