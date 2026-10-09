/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: ntile.sql

CONCEPTS:
1. NTILE()
2. OVER()
3. ORDER BY inside a window function

OBJECTIVE:
Divide employees into four salary groups.
*/

-- Example 1: Divide employees into four groups

--NTILE(4) divides the rows into 4 approximately equal groups. 
--If the number of rows cannot be divided evenly, some groups get one extra row.

SELECT
    first_name,
    last_name,
    department,
    salary,
    NTILE(4) OVER (
        ORDER BY salary DESC
    ) AS salary_group
FROM employees
ORDER BY salary DESC;

-- Example 2: Divide employees into three salary groups within each department.
SELECT
    first_name,
    last_name,
    department,
    salary,
    NTILE(3) OVER (partition by department
        ORDER BY salary DESC
    ) AS salary_group
FROM employees
ORDER BY salary DESC;