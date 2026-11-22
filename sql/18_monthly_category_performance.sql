
-- Monthly Revenue Performance by Product Category
SELECT
    DATE_TRUNC('month', date)::DATE AS sales_month,
    product_category,
    COUNT(order_id) AS total_orders,
    ROUND(SUM(total_amount), 2) AS monthly_revenue
FROM customer_sales
GROUP BY
    DATE_TRUNC('month', date),
    product_category
ORDER BY
    sales_month,
    monthly_revenue DESC;
