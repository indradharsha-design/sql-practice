/*
PROJECT: SQL Practice
MODULE: 13 - Conditional Aggregation
FILE: sum_case.sql
CONCEPT: Calculate salary expenses by category
*/

SELECT
    department,
    SUM(CASE
        WHEN salary >= 80000 THEN salary
        ELSE 0
    END) AS high_salary_total,
    SUM(CASE
        WHEN salary < 80000 THEN salary
        ELSE 0
    END) AS lower_salary_total
FROM employees
GROUP BY department
ORDER BY department;