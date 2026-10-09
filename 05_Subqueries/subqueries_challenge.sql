
/*
PROJECT: SQL Practice

MODULE: 05 - Subqueries

FILE: subqueries_challenge.sql

OBJECTIVE:
Apply scalar, IN, EXISTS, and correlated subqueries
to solve practical SQL problems.
*/

/*Challenge 1: Above-average earners
Find employees whose salary is greater than the company-wide average salary.

Return:
first_name
last_name
department
salary 
Sort by salary from highest to lowest.*/

SELECT
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
)
ORDER BY salary DESC;

/*Challenge 2: Departments with above-average salaries
Find employees who belong to departments whose average salary is greater than the company-wide average salary.

Return:
first_name
last_name
department
salary 
Sort by department, then salary descending.*/

SELECT
    first_name,
    last_name,
    department,
    salary
FROM employees
WHERE department IN (
    SELECT department
    FROM employees
    GROUP BY department
    HAVING AVG(salary) > (SELECT AVG(salary) FROM employees)
)
ORDER BY department, salary DESC;

/*
Challenge 3: Departments with no employees
Find departments that have no employees.

Return:
department_name
location
annual_budget
Sort by department_name. */

SELECT
    d.department_name,
    d.location,
    d.annual_budget
FROM departments AS d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees AS e
    WHERE e.department = d.department_name
)
ORDER BY d.department_name;

/*
Challenge 4: Highest-paid employee in each department
Find the highest-paid employee or employees in every department.

Return:
first_name
last_name
department
salary
Sort by department.
*/

SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary = (
SELECT max(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department
)
ORDER BY e.department;

/*
Challenge 5: Employees earning above their department average
Find employees whose salary is greater than their department's average salary.

Return:
first_name
last_name
department
salary
Sort by department, then salary descending.
*/

SELECT
    e.first_name,
    e.last_name,
    e.department,
    e.salary
FROM employees AS e
WHERE e.salary > (SELECT avg(e2.salary)
    FROM employees AS e2
    WHERE e2.department = e.department)
ORDER BY e.department, e.salary DESC;