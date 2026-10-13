/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: departments_above_company_avg.sql
CONCEPT: Compare department averages with the company average
*/

WITH department_avg AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
),
company_avg AS (
    SELECT AVG(salary) AS avg_salary
    FROM employees
)
SELECT
    d.department,
    ROUND(d.avg_salary, 2) AS department_avg_salary,
    ROUND(c.avg_salary, 2) AS company_avg_salary
FROM department_avg AS d
CROSS JOIN company_avg AS c
WHERE d.avg_salary > c.avg_salary
ORDER BY d.avg_salary DESC;



/*Key concepts:
- department_avg calculates one average per department.
- company_avg calculates one average for the whole company.
- CROSS JOIN attaches the single company-average row to every department row.
- WHERE keeps departments whose average exceeds the company average.*/