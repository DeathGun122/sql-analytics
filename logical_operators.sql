SELECT *
FROM customers
WHERE country = 'Germany' AND score < 400;

SELECT *
FROM customers
WHERE country = 'Germany' OR score < 400;

SELECT *
FROM customers
WHERE NOT score < 400;

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500;

SELECT *
FROM customers
WHERE score >= 100 AND score <= 500;

SELECT *
FROM customers
WHERE customer_id IN (1, 2, 5);

SELECT *
FROM customers
WHERE customer_id = 1 OR customer_id = 2 OR customer_id = 5;

-- Like
SELECT *
FROM customers
WHERE first_name LIKE 'M%';

SELECT *
FROM customers
WHERE first_name LIKE '%n';

SELECT *
FROM customers
WHERE first_name LIKE '%r%';

SELECT *
FROM customers
WHERE first_name LIKE '__r%';