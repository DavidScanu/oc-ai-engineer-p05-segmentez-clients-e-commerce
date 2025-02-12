-- Quels sont les 5 codes postaux, enregistrant plus de 30 reviews, avec le pire review score moyen sur les 12 derniers mois ?

SELECT
    c.customer_zip_code_prefix,
    ROUND(AVG(orvws.review_score), 2) AS avg_score,
    COUNT(DISTINCT orvws.review_id) AS total_reviews
FROM order_reviews AS orvws
JOIN orders AS o 
    ON orvws.order_id = o.order_id
JOIN customers AS c
    ON c.customer_id = o.customer_id
WHERE julianday(date('2018-10-17')) - julianday(orvws.review_creation_date) <= 365 
GROUP BY c.customer_zip_code_prefix
HAVING COUNT(DISTINCT orvws.review_id) > 30 
ORDER BY avg_score ASC
LIMIT 5;