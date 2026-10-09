/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: last_value.sql

CONCEPTS:
1. LAST_VALUE()
2. PARTITION BY
3. ORDER BY inside OVER()

OBJECTIVE:
Find the lowest salary in each department.
*/

-- Example 1: Find the lowest salary in each department

SELECT
    first_name,
    last_name,
    department,
    salary,
    LAST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary ASC
    ) AS last_salary
FROM employees
ORDER BY department, salary ASC;