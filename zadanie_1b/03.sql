SELECT product_name,
       total_amount, 
       (
        SELECT AVG(total_amount)
        FROM flourmills_sales
       ) as avg_amount
FROM flourmills_sales;