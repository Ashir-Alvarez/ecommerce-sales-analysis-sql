
-- Monthly Sales Performance Analysis
SELECT
    DATE_TRUNC('month', date)::DATE AS sales_month,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS monthly_sales,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY DATE_TRUNC('month', date)
ORDER BY sales_month;
