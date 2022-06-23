-- How many people have rented at least 3 times >=3
select
    f.rating, 
    i.store_id, 
    sum(p.amount) "Revenue per age rating"
from
    film f, 
    payment p, 
    rental r, 
    inventory i
where -- you are not allowed to put a function in the where clause
    f.film_id = i.film_id
    and
    i.inventory_id = r.inventory_id
    and 
    f.rating in("PG-13", "R")
    and 
    p.rental_id = r.rental_id
    and
    i.store_id = 1
group by 2, 1
order by 3 desc
;
