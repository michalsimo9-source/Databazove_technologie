SELECT c.region, SUM(o.sales) AS celkova_hodnota
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.region;