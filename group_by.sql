SELECT 
	COUNT(*) AS total_customers,
	country
FROM customers
GROUP BY country;

SELECT 
	COUNT(*) AS total_customers,
	country
FROM customers
GROUP BY country
ORDER BY COUNT(*) ASC;

SELECT 
	MAX(score) AS max_score,
	country
FROM customers
GROUP BY country
ORDER BY MAX(score) DESC;

	