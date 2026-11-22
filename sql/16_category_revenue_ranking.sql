
-- Product Category Revenue Ranking
WITH category_sales AS (
    SELECT
        product_category,
        COUNT(order_id) AS total_orders,
        SUM(total_amount) AS total_revenue
    FROM customer_sales
    GROUP BY product_category
)

SELECT
    product_category,
    total_orders,
    ROUND(total_revenue, 2) AS total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM category_sales
ORDER BY revenue_rank;
