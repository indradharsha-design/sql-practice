/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: payroll_comparison.sql
CONCEPT: Compare grouped results using LAG()
*/

WITH department_payroll AS (
    SELECT
        department,
        SUM(salary) AS total_payroll
    FROM employees
    GROUP BY department
)
SELECT
    department,
    total_payroll,
    LAG(total_payroll) OVER (
        ORDER BY total_payroll DESC
    ) AS previous_payroll,
    total_payroll
        - LAG(total_payroll) OVER (
            ORDER BY total_payroll DESC
        ) AS payroll_difference
FROM department_payroll
ORDER BY total_payroll DESC;


/*
Key concept:
- The CTE calculates total payroll for each department.
- LAG() retrieves the previous row's payroll in the specified ranking.
- payroll_difference shows the difference from that previous row.
- The first row has NULL for the previous payroll because no earlier row exists.
Here, “previous” means the previous department when sorted by payroll, not a previous date.
*/