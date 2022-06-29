-- Nestes queries perform better on sql snack
-- Sometimes you could write it as nested as well as a temporary table...
create temporary table rpc as 
select 
    r.customer_id,
    count(distinct r.rental_id) as num_rentals
from
    rental r
group by
1;
select 
    sum(p.amount) as total_rev
from
    rpc,
    payment p
where 
    rpc.customer_id = p.customer_id
    and
    rpc.num_rentals > 20;
    --63157.64
