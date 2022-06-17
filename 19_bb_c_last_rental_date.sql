-- Find every customers last rental date
select
    c.customer_id, concat(c.first_name," ",c.last_name) as name, max(r.rental_date) as "Last rental date"
from
    customer c, rental r
where
    c.customer_id = r.customer_id
group by 
    c.customer_id;
