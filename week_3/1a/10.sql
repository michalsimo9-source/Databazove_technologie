CREATE PROCEDURE get_sales_between(start_date DATE, end_date DATE)
LANGUAGE plpgsql
AS $procedure$
DECLARE
    v_total_sales NUMERIC(10, 2);
BEGIN 
    SELECT SUM(sales)
    INTO v_total_sales
    FROM orders
    WHERE order_date BETWEEN start_date AND end_date;

    RAISE NOTICE 'Obdobie od % do %, Celkový predaj: %', start_date, end_date, v_total_sales;
END;
$procedure$;