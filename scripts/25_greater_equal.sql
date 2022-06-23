-- 25 Comparisson operators
-- <,> =
-- weird fact: in SQL <> == !=
-- How many people have rented at least 3 times >=3
select
    r.customer_id as customer,
    count(r.rental_id) as "n rentals"
from
    rental r
-- where -- you are not allowed to put a function in the where clause
--    count(r.rental_id) >= 3
group by
   1
having
    count(r.rental_id) >= 3
;
