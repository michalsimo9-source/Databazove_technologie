CREATE DATABASE retail;

CREATE TABLE retail_sales (
    invoice_no VARCHAR(20),
    stock_code VARCHAR(50),
    description TEXT,
    quantity INT,
    invoice_date TIMESTAMP,
    unit_price NUMERIC(10, 2),
    customer_id INT,
    country VARCHAR(100)
);

ALTER TABLE retail_sales
ALTER COLUMN invoice_date TYPE TIMESTAMP 
USING TO_TIMESTAMP(invoice_date, 'DD.MM.YYYY HH24:MI');