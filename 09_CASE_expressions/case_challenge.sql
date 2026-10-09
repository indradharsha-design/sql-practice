
/*
PROJECT: SQL Practice

MODULE: 09 - CASE Expressions

FILE: case_challenge.sql

CHALLENGE:
Create a department salary report using CASE.

REQUIREMENTS:
1. Display each employee's department.
2. Classify salary:
   - salary >= 80000: 'High'
   - salary >= 60000: 'Medium'
   - otherwise: 'Low'
3. Calculate a bonus:
   - High: 15% of salary
   - Medium: 10% of salary
   - Low: 5% of salary
4. Display first_name, department, salary,
   salary_category, and bonus_amount.
5. Sort by bonus_amount in descending order.
*/


SELECT
    first_name,
    department,
    salary,
    CASE
        WHEN salary >= 80000 THEN 'High'
        WHEN salary >= 60000 THEN 'Medium'
        ELSE 'Low'
    END AS salary_category,
    CASE
        WHEN salary >= 80000 THEN salary * 0.15
        WHEN salary >= 60000 THEN salary * 0.10
        ELSE salary * 0.05
    END AS bonus_amount
FROM employees
ORDER BY bonus_amount DESC;

