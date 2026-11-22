
-- Customer Segmentation by Historical Spending
WITH customer_spending AS (
    SELECT
        customer_id,
        SUM(total_amount) AS total_spent
    FROM customer_sales
    GROUP BY customer_id
),

customer_segments AS (
    SELECT
        customer_id,
        total_spent,
        CASE
            WHEN total_spent >= 20000 THEN 'High Value'
            WHEN total_spent >= 10000 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS customer_segment
    FROM customer_spending
)

SELECT
    customer_segment,
    COUNT(customer_id) AS total_customers,
    ROUND(SUM(total_spent), 2) AS total_revenue,
    ROUND(AVG(total_spent), 2) AS average_customer_spending
FROM customer_segments
GROUP BY customer_segment
ORDER BY total_revenue DESC;
