/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

WITH sf AS
(
    SELECT title, unnest(special_features) AS "special_features"
    FROM film
), bts AS 
(
    SELECT title
    FROM sf
    WHERE special_features = 'Behind the Scenes'
), t AS 
(
    SELECT title
    FROM sf
    WHERE special_features = 'Trailers'
)

SELECT title
FROM bts
INNER JOIN t USING (title)
ORDER BY title

