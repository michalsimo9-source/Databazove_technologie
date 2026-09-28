SELECT p.category, AVG(o.discount) AS priemerna_hodnota
FROM products p
JOIN orders o ON p.product_id = o.product_id
GROUP BY p.category;