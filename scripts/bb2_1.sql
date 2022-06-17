-- which rating do we have the most films in?
select rating, count(rating)
from film
group by rating;
