/*

PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: in_subquery.sql

OBJECTIVE:examples and exercises using IN

Practise SQL subqueries using the IN operator
to find employees working in departments
located in New York.

*/
--Write a query to find employees who belong to departments located in New York.
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

--Task: Find employees who work in departments with an annual budget greater than $500,000.
--Hint: The inner query should retrieve department names from departments where annual_budget > 500000. Use those names in the outer query with IN.

SELECT
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department IN (
    SELECT department_name from departments where annual_budget>50000
)
ORDER BY salary DESC;