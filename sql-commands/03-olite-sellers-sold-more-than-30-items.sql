-- - Qui sont les nouveaux vendeurs (moins de 3 mois d'ancienneté)
-- qui sont déjà très engagés avec la plateforme (ayant déjà vendu plus de 30 produits) ?

WITH seller_stats AS (
    SELECT 
        s.seller_id,
        s.seller_city,
        MIN(o.order_purchase_timestamp) as first_sale,
        SUM(oi.order_item_id) as total_items_sold -- order_item_id : nombre d'articles dans une commande
    FROM sellers AS s
    JOIN order_items AS oi ON s.seller_id = oi.seller_id
    JOIN orders AS o ON oi.order_id = o.order_id
    GROUP BY s.seller_id, s.seller_city
),
recent_sellers AS (
SELECT 
    seller_id,
    seller_city,
    first_sale,
    total_items_sold,
    ROUND(julianday(date('2018-10-17')) - julianday(first_sale), 2) as active_days
FROM seller_stats
)
SELECT *
FROM recent_sellers AS rs
WHERE 
    rs.active_days <= 90  -- moins de 3 mois d'ancienneté
    AND rs.total_items_sold > 30  -- plus de 30 produits vendus
ORDER BY rs.total_items_sold DESC;