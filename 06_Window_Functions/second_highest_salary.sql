
/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: second_highest_salary.sql

CONCEPTS:
1. DENSE_RANK()
2. Common Table Expressions (CTEs)
3. Filtering window function results

OBJECTIVE:
Find the second-highest distinct salary in each department.

--exercise: Find employees who earn the second-highest distinct salary in their department.

Return:
first_name
last_name
department
salary
Use DENSE_RANK() and a CTE named ranked_employees. */

WITH ranked_employees AS (
    SELECT
        first_name,
        last_name,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    first_name,
    last_name,
    department,
    salary
FROM ranked_employees
WHERE salary_rank = 2
ORDER BY department, salary DESC;
