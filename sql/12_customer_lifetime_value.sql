
-- Customer Lifetime Value (Historical Spending)
SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS customer_lifetime_value,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY customer_id
ORDER BY customer_lifetime_value DESC
LIMIT 10;
