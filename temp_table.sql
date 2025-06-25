-- temporary tables

CREATE TEMPORARY TABLE temp_table
(
first_name VARCHAR(50),
last_name VARCHAR(50),
favorite_movie VARCHAR(100)
);

SELECT *
FROM temp_table;

INSERT INTO temp_table
VALUES('Rohan', 'Biswas', 'Sonic 3');

-- real use case
SELECT * 
FROM employee_salary;

CREAte TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
from salary_over_50k;