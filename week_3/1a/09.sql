CREATE PROCEDURE apply_regional_discount(p_region_name VARCHAR(50), p_discount_rate NUMERIC(10, 2))
LANGUAGE plpgsql
AS $procedure$
BEGIN
    UPDATE orders
    SET sales = sales * (1 - p_discount_rate)
    WHERE region = p_region_name;

    RAISE NOTICE 'Zľava % bola úspešne aplikovaná pre región %.', p_discount_rate, p_region_name;
END;
$procedure$;