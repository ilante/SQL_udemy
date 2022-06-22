-- Find number of distinct films rented each month
select
    left(r.rental_date,7) as month,
    count(r.rental_id) as "total rentals",
    count(distinct i.film_id) as "n unique films rented",
    count(r.rental_id)/count(distinct i.film_id) as "rentals per film"
from
    inventory i, rental r
where
    i.inventory_id = r.inventory_id 
group by 1
;
