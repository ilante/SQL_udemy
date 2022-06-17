-- Revenue by each month
select 
    left(p.payment_date,7) as "Payment date", 
    sum(p.amount) as "total monthly revenue"
from
    payment p
group by
    left(p.payment_date,7)
;
