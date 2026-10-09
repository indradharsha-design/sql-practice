
/*
PROJECT: SQL Practice

MODULE: 07 - CTEs

FILE: basic_cte.sql

CONCEPTS:
1. Common Table Expressions (CTEs)
2. WITH clause

OBJECTIVE:
Use a CTE to make a query easier to read.
*/

-- Example 1: Find employees earning more than 80000

WITH high_salary_employees AS (
    SELECT
        first_name,
        last_name,
        department,
        salary
    FROM employees
    WHERE salary > 80000
)
SELECT *
FROM high_salary_employees;



-- Example 2: Find departments whose average salary is above 70000

WITH department_salary AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT
    department,
    avg_salary
FROM department_salary
WHERE avg_salary > 70000;



-- Example 3: Find the highest-paid employee in each department

WITH ranked_employees AS (
    SELECT
        first_name,
        last_name,
        department,
        salary,
        RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    first_name,
    last_name,
    department,
    salary
FROM ranked_employees
WHERE salary_rank = 1;


-- Example 4: Find departments with more than 2 employees
-- whose average salary is above 70000

WITH department_summary AS (
    SELECT
        department,
        COUNT(*) AS employee_count,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
),
qualified_departments AS (
    SELECT
        department,
        employee_count,
        avg_salary
    FROM department_summary
    WHERE employee_count > 2
      AND avg_salary > 70000
)
SELECT *
FROM qualified_departments;



-- Example 5: Employees earning above their department average

WITH department_averages AS (
    SELECT
        department,
        AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department
)
SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary,
    d.avg_salary
FROM employees AS e
JOIN department_averages AS d
    ON e.department = d.department
WHERE e.salary > d.avg_salary
ORDER BY e.department, e.salary DESC;