
-- Monthly Revenue Difference
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
        LAG(monthly_revenue) OVER (ORDER BY sales_month), 2
    ) AS previous_month_revenue,
    ROUND(
        monthly_revenue -
        LAG(monthly_revenue) OVER (ORDER BY sales_month), 2
    ) AS revenue_difference
FROM monthly_sales
ORDER BY sales_month;


-- Monthly Revenue Growth Percentage
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
        LAG(monthly_revenue) OVER (ORDER BY sales_month), 2
    ) AS previous_month_revenue,
    ROUND(
        (
            monthly_revenue -
            LAG(monthly_revenue) OVER (ORDER BY sales_month)
        ) * 100.0 /
        NULLIF(
            LAG(monthly_revenue) OVER (ORDER BY sales_month), 0
        ), 2
    ) AS revenue_growth_percentage
FROM monthly_sales
ORDER BY sales_month;
