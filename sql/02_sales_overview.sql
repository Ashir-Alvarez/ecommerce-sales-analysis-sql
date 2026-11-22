
-- Overall Sales Performance Overview
SELECT
    COUNT(*) AS total_orders,
    COUNT(DISTINCT customer_id) AS unique_customers,
    MIN(date) AS first_order,
    MAX(date) AS latest_order,
    SUM(total_amount) AS total_sales
FROM customer_sales;
