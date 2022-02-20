/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

WITH t AS
(
    SELECT title, rating, unnest(special_features) AS "special_features"
    FROM film
)

SELECT title
FROM t
WHERE special_features = 'Trailers'
AND rating = 'G'
ORDER BY title

