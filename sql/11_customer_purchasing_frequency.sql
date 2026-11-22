
-- Customer Purchasing Frequency Analysis
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_spent,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY customer_id
ORDER BY total_orders DESC
LIMIT 10;
