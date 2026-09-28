SELECT 
c.customer_name, 
SUM(o.sales) AS celkova_hodnota, 
AVG(o.discount) AS priemerna_hodnota, 
COUNT(o.order_id) AS pocet_objednavok,
CASE 
        WHEN SUM(o.sales) > 2500 THEN 'VIP'
        ELSE 'REGULAR'
    END AS typ_zakaznika
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY celkova_hodnota DESC;