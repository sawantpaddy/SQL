-- we want to reward our first 10 paying customers.

-- So the question is, what are the customer IDs

-- of the first 10 customers who ever created a payment?

SELECT customer_id FROM payment
ORDER BY payment_date ASC LIMIT 10;


-- a customer wants

-- to quickly rent a video to watch

-- over their short lunch break.

-- What are the titles of the five shortest,

-- that is in length of runtime, movies?

SELECT title , length FROM film
ORDER BY length asc LIMIT 5 ;


-- if that previous customer can watch any movie

-- that is 50 minutes or less in runtime,

-- how many options does she or he have?


SELECT COUNT(title) FROM film 
WHERE length <= 50



-- How many payment transactions

-- were greater than $5?
SELECT count(payment_id) FROM payment 
WHERE amount> 5 ;


-- How many actors have a first name

-- that starts with the letter 'P'?

SELECT count(first_name) FROM actor 
WHERE first_name LIKE 'P%'

-- How many films have the word "Truman"

-- somewhere in the title?

SELECT count(title) FROM film 
WHERE title LIKE '%Truman%'


-- How many unique districts are our customers from?
SELECT COUNT(DISTINCT (district)) FROM address;


-- How many films have a rating of 'R'

-- and a replacement cost between $5 and $15?

SELECT COUNT(film_id) FROM film 
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15

