/*
PROJECT: SQL Practice
MODULE: 13 - Conditional Aggregation
FILE: conditional_percentage.sql
CONCEPT: Calculate the percentage of high-salary employees
*/

SELECT
    department,
    COUNT(*) AS total_employees,
    COUNT(CASE
        WHEN salary >= 80000 THEN 1
    END) AS high_salary_count,
    ROUND(
        100.0 * COUNT(CASE
            WHEN salary >= 80000 THEN 1
        END) / NULLIF(COUNT(*), 0),
        2
    ) AS high_salary_percentage
FROM employees
GROUP BY department
ORDER BY high_salary_percentage DESC;