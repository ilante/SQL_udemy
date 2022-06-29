-- unfortunately udemy chose to show queries of invented tables
-- Little silly considering they could have used real ones.
-- Long story short JOIN and "where x.c_id = y.c_id is the same
-- Her an example of 2 made up queries
select
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
from
    active_customer ac,
    reward_customer rc
where
    ac.customer_id = rc.customer_id -- could also use join instead!!!
;

-- Join example:
select
    ac.customer_id,
    ac.fav_color,
    rc.num_purchases
from
    active_customer ac
        join reward_customer rc on ac.customer_id = rc.customer_id
;
