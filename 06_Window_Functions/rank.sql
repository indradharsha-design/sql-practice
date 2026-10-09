/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: rank.sql

CONCEPTS:
1. RANK()
2. PARTITION BY
3. Handling tied salaries

OBJECTIVE:
Rank employees within each department based on salary
and understand how ties affect ranking.
*/


-- Example 1: Rank employees by salary within each department

SELECT
    first_name,
    last_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees
ORDER BY department, salary_rank;