-- Qui sont les vendeurs ayant généré un chiffre d'affaires de plus de 100 000 Real sur des commandes livrées via Olist ?

SELECT 
    s.seller_id,
    s.seller_city,
    SUM(op.payment_value) as total_revenue
FROM sellers AS s
JOIN order_items AS oi
    ON oi.seller_id = s.seller_id
JOIN orders AS o
    ON o.order_id = oi.order_id
JOIN order_pymts AS op
    ON op.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY s.seller_id, s.seller_city
HAVING SUM(op.payment_value) > 100000
ORDER BY total_revenue DESC;