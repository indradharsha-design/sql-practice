
/*Using the employees table, write one query that shows, for each department:
    1. Total number of employees.
    2. Number earning at least 80000.
    3. Total salary paid to employees earning at least 80000.
    4. Percentage of employees earning at least 80000, rounded to two decimal places.
Sort by the high-salary percentage, highest first.
Rules: Use GROUP BY, COUNT(CASE WHEN...), SUM(CASE WHEN...), and ROUND().*/

SELECT
    department,
    COUNT(*) AS total_employees,
    COUNT(CASE
        WHEN salary >= 80000 THEN 1
    END) AS high_salary_count,
     SUM(CASE
        WHEN salary >= 80000 THEN salary
        ELSE 0
    END) AS high_salary_total,
    ROUND(
        100.0 * COUNT(CASE
            WHEN salary >= 80000 THEN 1
        END) / NULLIF(COUNT(*), 0),
        2
    ) AS high_salary_percentage
FROM employees
GROUP BY department
ORDER BY high_salary_percentage DESC;