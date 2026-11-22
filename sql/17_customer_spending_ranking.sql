
-- Customer Spending Ranking
WITH customer_spending AS (
    SELECT
        customer_id,
        COUNT(order_id) AS total_orders,
        SUM(total_amount) AS total_spent
    FROM customer_sales
    GROUP BY customer_id
)

SELECT
    customer_id,
    total_orders,
    ROUND(total_spent, 2) AS total_spent,
    RANK() OVER (
        ORDER BY total_spent DESC
    ) AS spending_rank
FROM customer_spending
ORDER BY spending_rank
LIMIT 10;
