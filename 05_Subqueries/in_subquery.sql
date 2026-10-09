/*
PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: in_subquery.sql

CONCEPTS:
1. IN operator with a subquery
2. Filtering using department budgets
3. IN with GROUP BY and HAVING

OBJECTIVE:
Practise using IN subqueries to filter records
based on conditions from one or more queries.
*/


-- Example 1: Employees in departments located in New York

SELECT
    first_name,
    last_name,
    department
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
    WHERE location = 'New York'
)
ORDER BY department, last_name;


-- Example 2: Employees in departments with a budget above $500,000

SELECT
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department IN (
    SELECT department_name
    FROM departments
    WHERE annual_budget > 500000
)
ORDER BY salary DESC;


-- Example 3: Employees in departments with at least 3 employees

SELECT
    first_name,
    last_name,
    department
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING COUNT(*) >= 3
)
ORDER BY department, last_name;
