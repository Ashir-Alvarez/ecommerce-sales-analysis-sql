
-- Customer Rating Analysis
SELECT
    customer_rating,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY customer_rating
ORDER BY customer_rating DESC;
