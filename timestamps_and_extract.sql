-- During which months did payments occur?
-- Format your answer to return back the full month name.

select DISTINCT(TO_CHAR( payment_date , 'MONTH' ) )from payment ;	


-- How many payments occurred on a Monday?


SELECT COUNT(*)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;