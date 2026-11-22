

-- 1. Check for missing values
SELECT
    COUNT(*) FILTER (WHERE order_id IS NULL) AS missing_order_id,
    COUNT(*) FILTER (WHERE customer_id IS NULL) AS missing_customer_id,
    COUNT(*) FILTER (WHERE date IS NULL) AS missing_date,
    COUNT(*) FILTER (WHERE total_amount IS NULL) AS missing_total_amount
FROM customer_sales;


-- 2. Check for duplicate order IDs
SELECT
    order_id,
    COUNT(*) AS occurrences
FROM customer_sales
GROUP BY order_id
HAVING COUNT(*) > 1;


-- 3. Check for invalid numerical values
SELECT *
FROM customer_sales
WHERE quantity <= 0
   OR unit_price < 0
   OR discount_amount < 0
   OR total_amount < 0;

