SELECT *
FROM customers;

UPDATE customers
SET country = 'Germany'
WHERE customer_id = 7;

UPDATE customers
SET score =  100,
	country = 'USA'
WHERE customer_id = 6;