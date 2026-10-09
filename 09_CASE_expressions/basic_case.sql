
/*
PROJECT: SQL Practice

MODULE: 09 - CASE Expressions

FILE: basic_case.sql

CONCEPTS:
1. CASE
2. WHEN
3. THEN
4. ELSE
5. END

OBJECTIVE:
Classify employees based on salary.
*/

-- Example 1: Categorize employees by salary

SELECT
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary >= 90000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category
FROM employees
ORDER BY salary DESC;



-- Example 2: Create salary bands

SELECT
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 50000 THEN 'Entry Level'
        WHEN salary BETWEEN 50000 AND 79999 THEN 'Mid Level'
        WHEN salary BETWEEN 80000 AND 99999 THEN 'Senior Level'
        ELSE 'Executive Level'
    END AS salary_band
FROM employees
ORDER BY salary;



-- Example 3: Count employees by salary category

SELECT
    CASE
        WHEN salary >= 90000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    COUNT(*) AS employee_count
FROM employees
GROUP BY
    CASE
        WHEN salary >= 90000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END
ORDER BY employee_count DESC;



-- Example 4: Count employees in each salary category

SELECT
    COUNT(CASE
        WHEN salary >= 90000 THEN 1
    END) AS high_salary_count,

    COUNT(CASE
        WHEN salary >= 60000 AND salary < 90000 THEN 1
    END) AS medium_salary_count,

    COUNT(CASE
        WHEN salary < 60000 THEN 1
    END) AS low_salary_count
FROM employees;



-- Example 5: Calculate bonus based on salary

SELECT
    first_name,
    last_name,
    department,
    salary,
    CASE
        WHEN salary >= 90000 THEN salary * 0.15
        WHEN salary >= 60000 THEN salary * 0.10
        ELSE salary * 0.05
    END AS bonus_amount
FROM employees
ORDER BY bonus_amount DESC;

