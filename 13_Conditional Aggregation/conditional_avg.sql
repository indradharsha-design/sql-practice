/*
PROJECT: SQL Practice
MODULE: 13 - Conditional Aggregation
FILE: conditional_avg.sql
CONCEPT: Compare average salaries by employee category
*/

SELECT
    department,
    AVG(CASE
        WHEN salary >= 80000 THEN salary
    END) AS avg_high_salary,
    AVG(CASE
        WHEN salary < 80000 THEN salary
    END) AS avg_lower_salary
FROM employees
GROUP BY department
ORDER BY department;

--Key concept: Unlike the SUM() example, we omit ELSE 0.
--Why? AVG() ignores NULL, so it averages only the salaries that meet each condition. 
--If we used ELSE 0, the zeros would incorrectly lower the averages.