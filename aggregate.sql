-- count
SELECT COUNT(score) AS total_customers
FROM customers;

-- sum
SELECT SUM(quantity) AS total_quantity
FROM orders;

-- average
SELECT AVG(score) AS avg_score
FROM customers;

-- min / max
SELECT 
	MAX(score) AS max_score,
    MIN(score) AS min_score
FROM customers;

SELECT MIN(order_date) AS min_order_date
FROM orders;
