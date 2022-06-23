-- 25 Comparisson operators
-- <,> =
-- weird fact: in SQL <> == !=
select
    c.name as category, 
    count(r.rental_id) as "n rentals"
from
    rental r, inventory i, film f, film_category fc, category c
where
    r.inventory_id = i.inventory_id
    and
    i.film_id = f.film_id
    and
    f.film_id = fc.film_id
    and 
    fc.category_id = c.category_id
    and
    c.name !="Comedy" -- all but "Comedy"
group by
   1
;
