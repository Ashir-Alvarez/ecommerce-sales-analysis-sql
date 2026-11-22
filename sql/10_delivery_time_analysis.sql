
-- Delivery Time Analysis
SELECT
    product_category,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(delivery_time_days), 2) AS average_delivery_days,
    MIN(delivery_time_days) AS fastest_delivery_days,
    MAX(delivery_time_days) AS slowest_delivery_days
FROM customer_sales
GROUP BY product_category
ORDER BY average_delivery_days DESC;
