-- At least 30 rentals
-- customer_id, n rentals, last rental
select 
    r.customer_id,
    count(r.rental_id) as num_rentals,
    max(rental_date)
from            -- join == inner join
    rental r 
group by 1 -- do I really need to group by 1 - it is "all cols" of c
having num_rentals >= 30
;
