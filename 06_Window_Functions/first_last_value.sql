/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: first_last_value.sql

CONCEPTS:
1. FIRST_VALUE()
2. LAST_VALUE()
3. PARTITION BY
4. ORDER BY inside OVER()

OBJECTIVE:
Identify the highest-paid employee's salary
within each department.
*/

-- Example 1: First salary in each department
--FIRST_VALUE() - Returns the value from the first row in the window according to its ordering.

SELECT
    first_name,
    last_name,
    department,
    salary,
    FIRST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS highest_department_salary
FROM employees
ORDER BY department, salary DESC;

-- Example 2: the lowest salary in each department.
SELECT
    first_name,
    last_name,
    department,
    salary,
    FIRST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary 
    ) AS highest_department_salary
FROM employees
ORDER BY department, salary DESC;
