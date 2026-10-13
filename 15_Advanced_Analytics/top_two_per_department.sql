/*
PROJECT: SQL Practice
MODULE: 15 - Advanced Analytical Queries
FILE: top_two_per_department.sql
CONCEPT: Filter ranked results using a CTE
*/

WITH ranked_employees AS (
    SELECT
        employee_id,
        first_name,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    employee_id,
    first_name,
    department,
    salary,
    salary_rank
FROM ranked_employees
WHERE salary_rank <= 2
ORDER BY department, salary_rank;


/*Key concept: You can't normally filter a window-function alias like 
salary_rank in the same query's WHERE clause. The CTE calculates the rank first; 
the outer query filters it.
Note: DENSE_RANK() <= 2 returns the top two salary ranks, 
so ties can mean more than two employees per department*/