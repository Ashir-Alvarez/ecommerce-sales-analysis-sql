
-- Cumulative Monthly Revenue Analysis
WITH monthly_sales AS (
    SELECT
        DATE_TRUNC('month', date)::DATE AS sales_month,
        SUM(total_amount) AS monthly_revenue
    FROM customer_sales
    GROUP BY DATE_TRUNC('month', date)
)

SELECT
    sales_month,
    ROUND(monthly_revenue, 2) AS monthly_revenue,
    ROUND(
        SUM(monthly_revenue) OVER (
            ORDER BY sales_month
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ), 2
    ) AS cumulative_revenue
FROM monthly_sales
ORDER BY sales_month;
