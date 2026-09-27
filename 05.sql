SELECT p.product_name, SUM(o.sales) AS celkova_hodnota
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
GROUP BY p.product_name;