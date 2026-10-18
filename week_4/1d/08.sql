WITH first_purchases AS (
    SELECT 
        customer_id,
        DATE_TRUNC('month', MIN(order_date))::date AS first_month
    FROM orders
    GROUP BY customer_id
),
june_customers AS (
    SELECT customer_id
    FROM first_purchases
    WHERE first_month = '2024-06-01'
)
SELECT 
    COUNT(DISTINCT jc.customer_id) AS returning_customers_count
FROM june_customers jc
WHERE EXISTS (
    SELECT 1 
    FROM orders o 
    WHERE o.customer_id = jc.customer_id 
      AND DATE_TRUNC('month', o.order_date) > '2024-06-01'
);