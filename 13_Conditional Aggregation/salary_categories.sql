
/*
PROJECT: SQL Practice
MODULE: 13 - Conditional Aggregation
FILE: salary_categories.sql
CONCEPT: Count employees in three salary bands
*/

SELECT
    department,
    COUNT(CASE
        WHEN salary < 60000 THEN 1
    END) AS low_salary_count,
    COUNT(CASE
        WHEN salary >= 60000 AND salary < 90000 THEN 1
    END) AS medium_salary_count,
    COUNT(CASE
        WHEN salary >= 90000 THEN 1
    END) AS high_salary_count
FROM employees
GROUP BY department
ORDER BY department;