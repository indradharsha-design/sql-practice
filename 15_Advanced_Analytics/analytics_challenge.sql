/*Business question: Which employees earn more than their department's average salary, 
and what is their rank within that department?
Write one query that displays:
    1. employee_id
    2. first_name
    3. department
    4. salary
    5. Department's average salary
    6. Salary rank within the department
Requirements:
- Use a CTE to calculate department averages.
- Use DENSE_RANK() to rank salaries within each department.
- Show only employees earning above their department average.
- Sort by department and then salary from highest to lowest.*/


WITH department_average AS (
    SELECT
        department,
        AVG(salary) AS department_average_salary
    FROM employees
    GROUP BY department
)
SELECT
    e.employee_id,
    e.first_name,
    e.department,
    e.salary,
    d.department_average_salary,
    DENSE_RANK() OVER (
        PARTITION BY e.department
        ORDER BY e.salary DESC
    ) AS salary_rank
FROM employees e
JOIN department_average d
on e.department = d.department
WHERE e.salary > d.department_average_salary
ORDER BY e.department, e.salary DESC;