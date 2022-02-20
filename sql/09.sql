/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

WITH t AS
(
    SELECT unnest(special_features) AS "special_features"
    FROM film
)

SELECT special_features, COUNT(*) 
FROM t
GROUP BY special_features
ORDER BY special_features
