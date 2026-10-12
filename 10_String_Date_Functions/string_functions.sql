
/*
PROJECT: SQL Practice

MODULE: 10 - String and Date Functions

FILE: string_functions.sql

CONCEPTS:
1. UPPER()
2. LOWER()
3. LENGTH()
4. TRIM()

OBJECTIVE:
Clean and transform text values in SQL.
*/

-- Example 1: Change text case

SELECT
    first_name,
    UPPER(first_name) AS uppercase_name,
    LOWER(first_name) AS lowercase_name
FROM employees;



-- Example 2: Find name lengths and remove extra spaces

SELECT
    first_name,
    LENGTH(first_name) AS name_length,
    TRIM(first_name) AS cleaned_name
FROM employees;



-- Example 3: Combine employee names

SELECT
    first_name,
    last_name,
    CONCAT(first_name, ' ', last_name) AS full_name
FROM employees;


-- Example 4: Extract part of an employee's first name

SELECT
    first_name,
    SUBSTRING(first_name, 1, 3) AS short_name
FROM employees;


--Write a query to display each employee's first_name and 
--extract the last 3 characters of that name using SUBSTRING() and LENGTH().

SELECT
    first_name,
    SUBSTRING(first_name, LENGTH(first_name)-2, 3) AS short_name
FROM employees;

/*The formula to remember:
- Last 3 characters → LENGTH(name) - 2
- Last 2 characters → LENGTH(name) - 1
- Last 4 characters → LENGTH(name) - 3

general formula:
Starting position =Length - n + 1. */


-- Example 5: Replace text in a string

SELECT
    first_name,
    REPLACE(first_name, 'a', '@') AS modified_name
FROM employees;


-- Example 6: Display employee hire dates

SELECT
    first_name,
    hire_date,
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    EXTRACT(MONTH FROM hire_date) AS hire_month
FROM employees
ORDER BY hire_date;
