/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: window_functions_challenge.sql

CONCEPTS:

1. ROW_NUMBER()
2. RANK()
3. DENSE_RANK()
4. LAG()
5. LEAD()
6. NTILE()

OBJECTIVE:
Practice window functions using the employees table.
*/

-- Exercise 1:
-- Assign a unique row number to employees within each department,
-- ordered by salary from highest to lowest.
SELECT
    first_name,
    last_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees;


-- Exercise 2:
-- Rank employees by salary within each department.
-- Tied salaries should receive the same rank, with gaps after ties.
SELECT
    first_name,
    last_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- Exercise 3:
-- Find the second-highest DISTINCT salary in each department.
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
WHERE salary_rank = 2;


-- Exercise 4:
-- Display each employee's salary and the previous employee's salary
-- when all employees are ordered by salary from highest to lowest.

SELECT
    first_name,
    last_name,
    salary,
    LAG(salary) OVER (
        ORDER BY salary DESC
    ) AS previous_salary
FROM employees;


-- Exercise 5:
-- Divide employees into four approximately equal salary groups
-- within each department.
SELECT
    first_name,
    last_name,
    department,
    salary,
    NTILE(4) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_group
FROM employees
ORDER BY department, salary DESC;