What are the customer IDs of customers who have spent more than $100 in payment transactions with our

staff?


select customer_id ,sum(amount) from payment where staff_id = 2
	group by customer_id 
	having sum(amount)>100 
