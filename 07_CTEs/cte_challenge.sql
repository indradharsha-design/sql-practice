
/*
PROJECT: SQL Practice

MODULE: 07 - CTEs

FILE: cte_challenge.sql

CHALLENGE:
Find departments whose total salary expense exceeds 200000.

REQUIREMENTS:
1. Create a CTE named department_expenses.
2. Calculate total salary for each department.
3. In the main query, show only departments
   where total salary exceeds 200000.
4. Display department and total_salary.
5. Sort by total_salary in descending order.
*/


WITH department_expenses AS (
    SELECT
        department,
        SUM(salary) AS total_salary
    FROM employees
    GROUP BY department
)
SELECT
    department,
    total_salary
FROM department_expenses
WHERE total_salary > 200000
ORDER BY total_salary DESC;