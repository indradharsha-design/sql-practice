/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: above_department_average.sql
CONCEPT: Filter employees using a department average
*/

WITH department_stats AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT
    e.employee_id,
    e.first_name,
    e.department,
    e.salary,
    ROUND(d.avg_salary, 2) AS department_avg_salary
FROM employees AS e
JOIN department_stats AS d
    ON e.department = d.department
WHERE e.salary > d.avg_salary
ORDER BY e.department, e.salary DESC;


/*
Key concept:
- The CTE calculates one average per department.
- The JOIN attaches that average to each employee in the department.
- The WHERE clause keeps employees earning above their department average.*/