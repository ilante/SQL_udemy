-- left, min, max
-- left() gives you the leftmost segment from an item
-- How many rentals we had each month
SELECT count(r.rental_id), left(r.rental_date,7)
FROM
    rental r
GROUP BY
    2 des 
ORDER BY
    1 descc
;
