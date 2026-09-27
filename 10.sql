SELECT c.customer_name, SUM(o.sales) AS celkova_hodnota
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING SUM(o.sales) > 2000;