-- delete
SELECT *
FROM customers;

DELETE FROM customers
WHERE customer_id IN (6,7);

-- TRUNCATE (faster)
TRUNCATE customers;