--63157.64
-- Nestes queries perform better on sql snack
-- Sometimes you could write it as nested as well as a temporary table...
-- Temporary tables look however cleaner

select 
    sum(p.amount) as total_rev
from
    (select 
    r.customer_id,
    count(distinct r.rental_id) as num_rentals
from
    rental r
group by
1) as rpc,
    payment p
where 
    rpc.customer_id = p.customer_id
    and
    rpc.num_rentals > 20;
