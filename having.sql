1) What are the customer IDs of customers who have spent more than $100 in payment transactions with our
staff?
select customer_id ,sum(amount) from payment where staff_id = 2
	group by customer_id 
	having sum(amount)>100 


	2) Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.

	select customer_id , sum(amount)from payment 
	where staff_id= 2
	group by customer_id 
	having sum(amount) >=110



1. Return the customer IDs of customers who have spent at least $110 with the staff member who has an ID of 2.

	select customer_id, sum(amount) from payment 
	where staff_id = 2
	group by customer_id
	having sum(amount)>=100

2. How many films begin with the letter J?

The answer should be 20.
	select title from film 
	where title LIke 'J%'
