/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: department_salary_ranking.sql
CONCEPT: Rank employees within departments
*/

SELECT
    employee_id,
    first_name,
    department,
    salary,
    DENSE_RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees
ORDER BY department, salary_rank;