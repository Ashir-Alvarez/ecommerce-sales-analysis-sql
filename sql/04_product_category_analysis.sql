
-- Product Category Performance Analysis
SELECT
    product_category,
    COUNT(order_id) AS total_orders,
    SUM(quantity) AS total_quantity_sold,
    SUM(total_amount) AS total_revenue,
    ROUND(AVG(total_amount), 2) AS average_order_value
FROM customer_sales
GROUP BY product_category
ORDER BY total_revenue DESC;
