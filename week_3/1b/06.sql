WITH RECURSIVE date_bounds AS (
    SELECT 
        MIN(sale_date::date) AS min_date,
        MAX(sale_date::date) AS max_date
    FROM flourmills_sales
),
date_range AS (
    SELECT min_date AS calendar_date, max_date
    FROM date_bounds
    UNION ALL
    SELECT (calendar_date + INTERVAL '1 day')::date, max_date
    FROM date_range
    WHERE calendar_date < max_date
)
SELECT calendar_date
FROM date_range
ORDER BY calendar_date ASC;