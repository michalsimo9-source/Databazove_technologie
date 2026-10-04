SELECT product_name, total_amount, product_category
FROM flourmills_sales f1
WHERE total_amount > (
    SELECT AVG(total_amount)
    FROM flourmills_sales f2
    WHERE f1.product_category = f2.product_category
);