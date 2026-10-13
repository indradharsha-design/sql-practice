/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: department_payroll_percentage.sql
CONCEPT: Calculate each department's share of total payroll
*/

SELECT
    department,
    SUM(salary) AS department_payroll,
    ROUND(
        100.0 * SUM(salary) / SUM(SUM(salary)) OVER (),
        2
    ) AS payroll_percentage
FROM employees
GROUP BY department
ORDER BY payroll_percentage DESC;


/*
Key concept
- SUM(salary) calculates each department's payroll.
- SUM(SUM(salary)) OVER () calculates total company payroll across 
the grouped department results.
- The percentage shows how much each department contributes to total payroll.
Remember: GROUP BY first produces one row per department; 
the window function then calculates the company-wide total across those rows.
*/