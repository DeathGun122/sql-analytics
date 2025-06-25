DESCRIBE customers;

INSERT INTO customers
VALUE(DEFAULT, 'Anna', 'Nixon', 'UK', NULL);

SELECT *
FROM customers;

INSERT INTO customers
(first_name, last_name)
VALUE('Max', 'Lang');