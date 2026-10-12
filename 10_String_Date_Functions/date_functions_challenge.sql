/*
Task: Write one query that displays:
1. Employee's first_name
2. hire_date
3. Hire year
4. Hire month
5. Days employed as of today
Then:
- Include only employees hired before January 1, 2022.
- Sort by hire_date, newest first.
Rules: Use EXTRACT(), CURRENT_DATE, date subtraction, and ORDER BY. */

SELECT
    first_name,
    hire_date,
    EXTRACT(YEAR FROM hire_date) AS hire_year,
    EXTRACT(MONTH FROM hire_date) AS hire_month,
    CURRENT_DATE - hire_date AS days_employed
FROM employees
WHERE hire_date < DATE '2022-01-01'
ORDER BY hire_date DESC;