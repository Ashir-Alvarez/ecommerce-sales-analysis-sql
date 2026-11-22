
-- Geographic Sales Performance Analysis
SELECT
    city,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY city
ORDER BY total_revenue DESC;
