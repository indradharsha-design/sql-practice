
/*Task: Create a temporary table named temp_high_earners that:
    1. Selects employee_id, first_name, department, and salary from employees.
    2. Includes only employees earning more than 75000.
    3. Queries the temporary table to show employees ordered by salary from highest to lowest.

Write both SQL statements yourself. Use CREATE TEMP TABLE ... AS SELECT and then a separate SELECT.*/



CREATE TEMP TABLE temp_high_earners AS
SELECT
    employee_id,
    first_name,
    department,
    salary
FROM employees
WHERE salary > 75000;

SELECT *
FROM temp_high_earners
ORDER BY salary DESC;
