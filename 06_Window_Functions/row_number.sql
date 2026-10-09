/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: row_number.sql

CONCEPTS:
1. ROW_NUMBER()
2. PARTITION BY
3. ORDER BY within a window

OBJECTIVE:
Assign a unique sequential number to employees
within each department based on salary.
*/


-- Example 1: Rank employees within each department by salary

SELECT
    first_name,
    last_name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS row_num
FROM employees
ORDER BY department, row_num;

/*
Exercise 2: Find the top 2 highest-paid employees in each department
Task: Return only the two highest-paid employees from every department.

Include:
first_name
last_name
department
salary
row_num 
*/


SELECT
    first_name,
    last_name,
    department,
    salary,
    row_num
FROM (
    SELECT
        first_name,
        last_name,
        department,
        salary,
        ROW_NUMBER() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS row_num
    FROM employees
) AS ranked_employees
WHERE row_num <= 2
ORDER BY department, row_num;

--Key concept: You can't generally filter a window function's result directly in the same query's WHERE clause. 
--The inner query calculates row_num; the outer query filters it.

