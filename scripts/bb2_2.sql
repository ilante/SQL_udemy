-- Films by rating & rental price
select rating, rental_rate, count(rating)
from film
-- group by rating, rental_rate;
group by 1, 2;

