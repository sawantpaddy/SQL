
California sales tax law has changed
and we need to alert our customers to this through email.
So the question is, what are the emails
of the customers who live in California?


select first_name , last_name ,email ,district 
from customer 
inner join address 
on customer.address_id = address.address_id
where district = 'California';


-- A customer walks into the store

-- and they're a huge fan of this actor Nick Wahlberg.

-- And they want to know,

-- which movies has Nick Wahlberg been in?

-- So your task is to basically get a list of all the movies

-- Nick Wahlberg has been in.title ,firt_name ,last_name

select title ,first_name ,last_name
from film 
left join film_actor
on film.film_id = film_actor.film_id
left join actor
on actor.actor_id = film_actor.actor_id
where first_name ='Nick' and last_name ='Wahlberg';
