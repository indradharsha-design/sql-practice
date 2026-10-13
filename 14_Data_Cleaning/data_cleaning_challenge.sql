
/*Using the employees table, write one query that:
    1. Displays employee_id, first_name, department, and salary.
    2. Replaces missing department values with 'Unknown' using COALESCE().
    3. Creates a salary_status column using CASE:
    - NULL salary → 'Missing'
    - Salary equal to 0 → 'Zero'
    - Otherwise → 'Available'
    4. Shows only employees whose department or salary is NULL.
Hint: Use COALESCE(), CASE, and WHERE ... IS NULL.
*/

SELECT
    employee_id,
    first_name,
    COALESCE(department, 'Unknown') AS department,
    salary,
    CASE
        WHEN salary IS NULL THEN 'Missing Salary'
        WHEN salary = 0 THEN 'Zero Salary'
        ELSE 'Salary Available'
    END AS salary_status
FROM employees
WHERE department IS NULL
   OR salary IS NULL;