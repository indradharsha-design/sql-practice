/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: salary_vs_department_avg.sql
CONCEPT: Compare individual salary with department average
*/

SELECT
    employee_id,
    first_name,
    department,
    salary,
    ROUND(
        AVG(salary) OVER (
            PARTITION BY department
        ),
        2
    ) AS department_avg_salary,
    ROUND(
        salary - AVG(salary) OVER (
            PARTITION BY department
        ),
        2
    ) AS difference_from_avg
FROM employees
ORDER BY department, salary DESC;

/*
Key concept:
- AVG(salary) OVER (PARTITION BY department) calculates each department's average 
without collapsing employee rows.
- difference_from_avg shows how far each employee's salary is above or below that average.
- Positive difference = above average; negative = below average.
*/