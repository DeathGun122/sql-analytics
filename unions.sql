-- Union (remove duplicates)
SELECT 
	first_name,
    last_name,
    country
FROM
	customers AS c
UNION
SELECT 
	first_name,
    last_name,
    emp_country
FROM
	employees AS e;
    
-- UNION ALL
SELECT 
	first_name,
    last_name,
    country
FROM
	customers AS c
UNION ALL
SELECT 
	first_name,
    last_name,
    emp_country
FROM
	employees AS e;