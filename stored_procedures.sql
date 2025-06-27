SELECT *
FROM employee_salary
WHERE salary >=50000;

CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >=50000;

CALL large_salaries();

DELIMITER $$
CREATE PROCEDURE large_salaries4()
BEGIN
	SELECT *
	FROM employee_salary
	WHERE salary >= 50000;
	SELECT *
	FROM employee_salary
	WHERE salary >= 100000;
END $$
DELIMITER ;

CALL large_salaries2();
CALL large_salaries4();

-- parameter
DELIMITER $$
CREATE PROCEDURE large_salaries2(p_employee_id INT)
BEGIN
	SELECT *
	FROM employee_salary
    WHERE employee_id = p_employee_id;
END $$
DELIMITER ;

CALL large_salaries2(1);

SELECT *
FROM employee_salary;