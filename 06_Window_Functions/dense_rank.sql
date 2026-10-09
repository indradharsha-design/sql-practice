/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: dense_rank.sql

CONCEPTS:
1. DENSE_RANK()
2. PARTITION BY
3. Ranking tied values without gaps

OBJECTIVE:
Rank employees by salary within each department
without skipping rank numbers when salaries tie.
*/


-- Example 1: Rank employees by salary within each department

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
ORDER BY department, salary_rank;


/*
ROW_NUMBER() gives every row a unique number.

RANK() leaves gaps after ties.

DENSE_RANK() does not leave gaps after ties.
*/