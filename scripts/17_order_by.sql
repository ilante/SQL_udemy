-- sort largest to smalles "order by"
-- How many times has each movie been rented out
-- How much money has each movie generated (revenue = rate * times rented "price x quantity")

SELECT
    f.title as "Movie Title", f.rental_rate as "Rental Rate", count(r.rental_id) as "Times Rented out", f.rental_rate * count(r.rental_id) as Revenue
FROM
    film f, rental r, inventory i
WHERE
    i.inventory_id = r.inventory_id
    AND
    f.film_id = i.film_id
GROUP BY 1 
ORDER BY 4 desc
;
