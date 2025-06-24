-- Inner join
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id;

-- Left join
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- Right Join
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;

-- FULL Join
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
UNION
SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers AS c
RIGHT JOIN orders AS o
ON c.customer_id = o.customer_id;	