-- En excluant les commandes annulées,
-- quelles sont les commandes récentes de moins de 3 mois
-- que les clients ont reçues avec au moins 3 jours de retard ?

WITH recent_orders AS (
        SELECT
                o.order_id,
                o.customer_id,
                o.order_status,
                o.order_status,
                o.order_purchase_timestamp,
                o.order_delivered_customer_date,
                o.order_estimated_delivery_date,
                ROUND(julianday(date('2018-10-17')) - julianday(o.order_purchase_timestamp), 2) AS days_since_order, 
                ROUND(julianday(o.order_delivered_customer_date) - julianday(o.order_estimated_delivery_date), 2) AS delay_days
        FROM orders o
        WHERE o.order_delivered_customer_date IS NOT NULL -- Exclure les commandes non livrées
        AND o.order_status != 'canceled' -- Exclure les commandes annulées
),
delayed_orders AS (
        SELECT
        *
        FROM
        recent_orders
        WHERE delay_days >= 3 -- Retard d'au moins 3 jours
        AND days_since_order <= 90 -- Commandes de mois de 3 mois (90 jours)
)
SELECT
        do.order_id,
        do.customer_id,
        do.order_status,
        do.order_purchase_timestamp,
        do.order_delivered_customer_date,
        do.order_estimated_delivery_date,
        do.delay_days,
        do.days_since_order
FROM delayed_orders do
ORDER BY do.order_purchase_timestamp DESC;
