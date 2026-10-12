/*
PROJECT: SQL Practice

MODULE: 10 - String and Date Functions

FILE: date_functions.sql

CONCEPTS:
1. EXTRACT()
2. CURRENT_DATE
3. Date calculations
4. DATE_TRUNC()
*/

-- Example 1: Extract year and month from hire date

SELECT
    first_name,
    hire_date,
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    EXTRACT(MONTH FROM hire_date) AS hire_month
FROM employees
ORDER BY hire_date;




-- Example 2: Calculate days since hire date

SELECT
    first_name,
    hire_date,
    CURRENT_DATE AS today,
    CURRENT_DATE - hire_date AS days_employed
FROM employees
ORDER BY days_employed DESC;



-- Example 3: Group hire dates by month

SELECT
    hire_date,
    DATE_TRUNC('month', hire_date) AS hire_month
FROM employees
ORDER BY hire_date;



-- Example 4: Truncate hire dates to the month

SELECT
    first_name,
    hire_date,
    DATE_TRUNC('month', hire_date) AS hire_month
FROM employees
ORDER BY hire_date;



-- Example 5: Format hire dates

SELECT
    first_name,
    hire_date,
    TO_CHAR(hire_date, 'DD-Mon-YYYY') AS formatted_hire_date
FROM employees
ORDER BY hire_date;



-- Example 6: Calculate employee tenure

SELECT
    first_name,
    hire_date,
    AGE(CURRENT_DATE, hire_date) AS employment_duration
FROM employees
ORDER BY hire_date;


-- Example 7: Extract the day of the month

SELECT
    first_name,
    hire_date,
    DATE_PART('day', hire_date) AS hire_day
FROM employees
ORDER BY hire_date;


-- Example 8: Find employees hired in 2022

SELECT
    employee_id,
    first_name,
    hire_date
FROM employees
WHERE hire_date >= DATE '2022-01-01'
  AND hire_date < DATE '2023-01-01'
ORDER BY hire_date;


-- Example 8: Find employees hired in June, regardless of year

SELECT
    employee_id,
    first_name,
    hire_date
FROM employees
WHERE EXTRACT(MONTH FROM hire_date) = 6
ORDER BY hire_date;

-- Example 9: Employees hired in the last 90 days

SELECT
    employee_id,
    first_name,
    hire_date
FROM employees
WHERE hire_date >= CURRENT_DATE - INTERVAL '90 days'
  AND hire_date <= CURRENT_DATE
ORDER BY hire_date DESC;

--result is empty -It means no employee in your sample data was hired within the last 90 days.

--i.e.
SELECT
    MIN(hire_date) AS earliest_hire,
    MAX(hire_date) AS latest_hire,
    CURRENT_DATE AS today
FROM employees;