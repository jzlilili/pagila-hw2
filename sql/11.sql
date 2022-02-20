/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */

WITH t AS 
(
    SELECT film_id, unnest(special_features) AS "special_features"
    FROM film
)

SELECT DISTINCT first_name || ' ' || last_name AS "Actor Name"
FROM actor
JOIN film_actor USING (actor_id)
JOIN t USING (film_id)
WHERE special_features = 'Behind the Scenes'
ORDER BY "Actor Name"
