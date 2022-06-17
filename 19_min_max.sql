-- left, min, max
-- find first time a movie was rented
SELECT f.title, min(r.rental_date) as "First rental date", max(r.rental_date) as "Last rental date"
FROM
    rental r, inventory i, film f
WHERE
    r.inventory_id = i.inventory_id
    and
    i.film_id = f.film_id
GROUP BY
    f.film_id 
;
