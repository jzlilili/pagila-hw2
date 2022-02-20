/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */

SELECT DISTINCT t.title
FROM film
INNER JOIN 
(
    SELECT title, COUNT(title) AS "rent"
    FROM film
    JOIN inventory USING (film_id)
    JOIN rental USING (inventory_id)
    WHERE customer_id = 1
    GROUP BY title
) t ON (t.rent > 1)
ORDER BY t.title

