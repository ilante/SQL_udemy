-- Join temporary tables 584 lines
-- All cols from active customer (active = 1)
-- and 
-- Phone number from address
-- customer_id, active, phone_number
select 
    c.*,
    a.phone
from            -- join == inner join
    customer c
    join address a on c.address_id = a.address_id
where
    c.active = 1
group by 1 -- do I really need to group by 1 - it is "all cols" of c
;
