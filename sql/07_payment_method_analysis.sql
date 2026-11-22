
-- Payment Method Analysis
SELECT
    payment_method,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value,
    ROUND(
        COUNT(order_id) * 100.0 /
        SUM(COUNT(order_id)) OVER (), 2
    ) AS order_percentage
FROM customer_sales
GROUP BY payment_method
ORDER BY total_revenue DESC;
