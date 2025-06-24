-- having clause after group by and before order by

SELECT 
	COUNT(*) AS total_customers,
	country
FROM customers
WHERE country <> 'USA'
GROUP BY country
HAVING COUNT(*) > 1;

