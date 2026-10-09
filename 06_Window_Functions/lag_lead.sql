/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: lag_lead.sql

CONCEPTS:
1. LAG()
2. LEAD()
3. OVER()
4. ORDER BY inside a window function

OBJECTIVE:
Compare each employee's salary with the previous and next employee's salary.
*/

-- Example 1: LAG() --LAG() gets a value from a previous row.

SELECT
    first_name,
    last_name,
    salary,
    LAG(salary) OVER (
        ORDER BY salary DESC
    ) AS previous_salary
FROM employees;

-- Example 2: LEAD()--LEAD() gets a value from a following row.

SELECT
    first_name,
    last_name,
    salary,
    LEAD(salary) OVER (
        ORDER BY salary DESC
    ) AS previous_salary
FROM employees;