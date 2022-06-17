-- distinct, be sure to not double count
-- Finding distinct renters per month
select 
    left(r.rental_date,7) as 'date',
    count(r.rental_id) as 'total rentals',
    count(distinct r.customer_id) as 'unique renters',
    count(r.rental_id)/count(distinct r.customer_id) as 'average n rentals per customer'
from
    rental r 
group by 1
;
