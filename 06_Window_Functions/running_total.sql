
/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: running_total.sql

CONCEPTS:
1. SUM() as a window function
2. PARTITION BY
3. Running totals

OBJECTIVE:
Calculate cumulative salary totals within each department
ordered by employee salary.
*/


-- Example 1: Calculate a running salary total within each department

SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_salary_total
FROM employees
ORDER BY department, salary DESC;


/*
Exercise 2: Cumulative employee count by department
Task: Show each employee alongside the cumulative number of employees within their department, ordered by hire_date from earliest to latest.

Return:
first_name
last_name
department
hire_date
employee_number */


SELECT
    first_name,
    last_name,
    department,
    hire_date,
    COUNT(*) OVER (
        PARTITION BY department
        ORDER BY hire_date DESC
    ) AS employee_number
FROM employees
ORDER BY department, hire_date;

--What does ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW mean?
It defines which rows are included in the calculation for a window function.
--i.e.include every row from the beginning of the current department's ordered rows through the current row.

/*There are different levels of SQL learning:
    Core window functions: ROW_NUMBER(), RANK(), DENSE_RANK(), SUM() OVER(), AVG() OVER(), and PARTITION BY.
    Window ordering: using ORDER BY inside OVER() to define the order for ranking or calculations.
    Window frames: ROWS BETWEEN ... AND ..., which control exactly which rows contribute to a calculation. 

Window frames become especially useful for running totals, moving averages, and rolling calculations.*/