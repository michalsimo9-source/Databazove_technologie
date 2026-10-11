WITH ranked_purchases AS (
    SELECT 
        customer_id,
        product_name,
        sale_date,
        total_amount,
        ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY sale_date DESC) AS row_num
    FROM flourmills_sales
)
SELECT 
    customer_id,
    product_name,
    sale_date,
    total_amount,
    row_num
FROM ranked_purchases
WHERE row_num = 1
ORDER BY customer_id ASC;