
/*
PROJECT: SQL Practice
MODULE: 13 - Conditional Aggregation
FILE: count_case.sql
CONCEPT: Count employees by salary category
*/

SELECT
    department,
    COUNT(CASE
        WHEN salary >= 80000 THEN 1
    END) AS high_salary_count,
    COUNT(CASE
        WHEN salary < 80000 THEN 1
    END) AS lower_salary_count
FROM employees
GROUP BY department
ORDER BY department;