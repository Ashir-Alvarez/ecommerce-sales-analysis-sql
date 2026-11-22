
-- Customer Purchasing Behavior Analysis
SELECT
    CASE
        WHEN is_returning_customer = TRUE
        THEN 'Returning Customer'
        ELSE 'New Customer'
    END AS customer_type,
    COUNT(order_id) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY is_returning_customer
ORDER BY total_revenue DESC;
