---Simple queries
--Payment transactions greater than $5.00
SELECT COUNT(amount) FROM payment
WHERE amount > 5;

--List of actors with a first name that starts with 'P'
SELECT first_name, last_name FROM actor
WHERE first_name LIKE 'P%'
GROUP BY first_name, last_name;

--Unique districs for customers
SELECT DISTINCT(district)
FROM address;

--Number of films with a rating of R and a replacement cost between $5 and $15
SELECT COUNT(*) FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

--List of those films
SELECT title FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

--Number of films with the word 'Truman' in the title
SELECT COUNT(*) FROM film
WHERE title LIKE '%Truman%';

--List of those films
SELECT title FROM film
WHERE title LIKE '%Truman%';

--IDs of customers who have spent at least $110 with the staff member who has and ID of 2
SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 110;

--Customer that has the higest customer ID whose name starts with 'E' and address ID lower than 500
SELECT first_name, last_name FROM customer
WHERE first_name Like 'E%'
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1;

---JOIN queries
--Emails of customers who live in California
SELECT district, email FROM address
INNER JOIN customer ON
address.address_id = customer.address_id
WHERE district = 'California';

--List of all films 'Nick Wahlberg' has been in
SELECT title, first_name, last_name
FROM film_actor INNER JOIN actor
ON film_actor.actor_id = actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Nick'
AND last_name = 'Wahlberg';

---Case expression
--Amounts of films per rating
SELECT
SUM(
CASE rating
	WHEN 'R' THEN 1 ELSE 0
	END
) AS r,
SUM(
CASE rating
	WHEN 'PG' THEN 1 ELSE 0
	END
) AS pg,
SUM(
CASE rating
	WHEN 'PG-13' THEN 1 ELSE 0
	END
) AS pg13
FROM film;


---Timestamps and extract
--Months in which payments occurred
SELECT
DISTINCT(TO_CHAR(payment_date,'MONTH'))
FROM payment;

--Number of payments that occurred on a Monday
SELECT COUNT(*) FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1;
