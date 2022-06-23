-- Nestes queries
-- Super user
-- Figure out how much revenue coming from any user having over 20 rentals
-- We have no table that has info on how many total rentals per customer :(
-- Thus we need to create a query that creates this 'table' which we will nest into a second query
-- 1. calculate rentals per customer:
select
    rpc.num_rentals,
    count(distinct rpc.customer_id) as num_customer,
    sum(p.amount) as revenue
from
(
select
    r.customer_id, 
    count(distinct r.rental_id) as num_rentals
from
    rental r
group by 1
) as rpc,
payment p
where
    rpc.customer_id = p.customer_id -- joining on payment table
    and
    num_rentals >20  -- highly active users:7
group by
    1
;
