USE sakila;

-- Actors with non-repeated last names
SELECT DISTINCT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(actor_id) = 1;

-- Last names appearing more than once
SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(actor_id) > 1;

-- Number of rentals processed by each employee
SELECT staff_id, COUNT(rental_id) AS num_rentals
FROM rental
GROUP BY staff_id;

-- Number of films released each year
SELECT EXTRACT(YEAR FROM release_year) AS release_year, COUNT(film_id) AS num_films
FROM film
GROUP BY EXTRACT(YEAR FROM release_year);

-- Number of films for each rating
SELECT rating, COUNT(film_id) AS num_films
FROM film
GROUP BY rating;

-- Mean length of films for each rating
SELECT rating, ROUND(AVG(length), 2) AS mean_length
FROM film
GROUP BY rating;

-- Movies with mean duration of more than two hours
SELECT rating
FROM film
GROUP BY rating
HAVING AVG(length) > 120;





