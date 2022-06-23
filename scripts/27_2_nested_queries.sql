-- Nested queries:
-- Rentals per customer
select
  rpc.n_rentals,
  count(distinct rpc.customer_id) as num_customers,
  sum(p.amount) as total_revenue
from
  (
    select
      r.customer_id,
      count(distinct r.rental_id) as n_rentals
    from
      rental r
    group by
      1
  ) as rpc,
  payment p
where
  rpc.customer_id = p.customer_id
  and rpc.n_rentals > 20
 group by
 	1;

