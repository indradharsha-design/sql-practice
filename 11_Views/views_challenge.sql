/*

Task: Create a view named department_high_earners that:
    1. Selects employee_id, first_name, department, and salary.
    2. Includes employees whose salary is greater than $70,000.
    3. Lets you query the view to display results ordered by salary from highest to lowest.

Your job: Write the CREATE VIEW statement, then query the view separately.*/



CREATE VIEW department_high_earners AS
SELECT
    employee_id,
    first_name,
    department,
    salary
FROM employees
WHERE salary > 70000;

SELECT *
FROM department_high_earners
ORDER BY salary DESC;