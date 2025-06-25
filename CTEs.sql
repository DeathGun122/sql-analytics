-- CTEs

WITH cte_example(gender, avg_sal, max_sal, min_sal, count_sal) AS
(
SELECT gender, AVG(salary)  , MAX(salary) , MIN(salary)  , COUNT(salary) 
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM cte_example;

-- using subquery
SELECT AVG(avg_sal)
FROM (
SELECT gender, AVG(salary) avg_sal , MAX(salary) max_sal, MIN(salary) min_sal , COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender
) example_subquery;

WITH cte_example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics 
WHERE birth_date > '1985-01-01'
),
cte_example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM cte_example
JOIN cte_example2
ON cte_example.employee_id = cte_example2.employee_id;

