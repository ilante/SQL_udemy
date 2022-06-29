-- left join
select
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
from
    active_customer ac,
        left join reward_customer rc on ac.customer_id = rc.customer_id
;
