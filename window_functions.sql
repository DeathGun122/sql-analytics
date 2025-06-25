SELECT gender, AVG(salary) AS avg_salary
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id
GROUP BY gender;

-- window function
SELECT dem.employee_id ,dem.first_name, dem.last_name, gender, salary,
SUM(salary) OVER(PARTITION BY gender ORDER BY dem.employee_id) AS rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id; 

-- row number, rank and dense rank
SELECT dem.employee_id ,dem.first_name, dem.last_name, gender, salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC) AS row_num,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num, -- postional rank
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS rank_num  -- numeric order
FROM employee_demographics dem
JOIN employee_salary sal
ON dem.employee_id = sal.employee_id; 