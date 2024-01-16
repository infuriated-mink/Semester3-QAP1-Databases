SELECT customer.first_name, customer.last_name, film.title, film.rating
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id
WHERE customer.last_name = 'Smith'
GROUP BY film.rating, film.title, customer.customer_id, customer.last_name
ORDER BY film.rating, film.title DESC

-- Used WHERE filter to only show rentals for customers with the last name of Smith, and used GROUP BY 
-- to group by rating, title, customer_id, and last_name. 
-- Used ORDER BY to order by rating ascending and title in descending order.