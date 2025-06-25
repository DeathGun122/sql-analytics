CREATE TABLE db_sql_tutorial.persons(
id INT PRIMARY KEY AUTO_INCREMENT,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT *
FROM persons;

DESCRIBE persons