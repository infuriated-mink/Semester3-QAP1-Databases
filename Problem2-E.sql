-- -- Customer, rental, inventory, and film tables to acquire film title and rating for each customer rental. 

SELECT customer.first_name, customer.last_name, film.title, film.rating
FROM film
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN customer ON rental.customer_id = customer.customer_id

