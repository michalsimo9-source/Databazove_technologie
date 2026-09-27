SELECT c.region, SUM(o.sales) AS celkova_hodnota, AVG(o.discount) AS priemerna_hodnota, COUNT(o.order_id) AS pocet_objednavok
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.region;