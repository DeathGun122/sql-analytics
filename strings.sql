-- concat
SELECT
	CONCAT(first_name, ' ' , last_name) AS customer_name
FROM customers;

-- uppercase / lowercase
SELECT
	UPPER(first_name) AS upper_fname,
    LOWER(last_name) AS lower_lname
FROM customers;

-- Trim (ltrim / rtrim / trim)
SELECT
	TRIM(last_name) AS clean_lname
FROM customers;

-- length
SELECT
	last_name,
	TRIM(last_name) AS clean_lname,
    LENGTH(last_name) AS len_lname,
    length(TRIM(last_name)) AS clean_length
FROM customers;

-- SUBSTRING (Numbering starts from 1)(string, start, length)
SELECT
	last_name,
    SUBSTRING(last_name, 3, 3) AS sub_lname
FROM customers;
