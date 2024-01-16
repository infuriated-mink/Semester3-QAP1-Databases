SELECT fllm.rating, COUNT(*) AS "Number of Movies"
FROM film
GROUP BY film.rating