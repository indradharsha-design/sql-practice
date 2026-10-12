/*A view is a saved SQL query that you can use like a table.
 It usually stores the query definition, not a separate copy of the result data.

Feature     	                View	                    CTE	                                  Query

Meaning	            Saved SQL query	            Temporary named result 	                 SQL instruction to retrieve 
                                                    within a statement                      or modify data

Exists beyond       Yes, until dropped          No, only for that statement                 Depends on the statement
the statement?	

Reusable?	        Yes, across queries	        Only within its statement	                Depends on what it does

Stores result 	    Usually no, stores 	         Usually no, defined for 	                Depends on the operation
data?               the query definition        that statement
*/


-- Example 1: Create a view of IT employees

CREATE VIEW it_employees AS
SELECT
    employee_id,
    first_name,
    last_name,
    salary
FROM employees
WHERE department = 'IT';

SELECT *
FROM it_employees;


-- Example 2: Create a view for high-salary employees

CREATE VIEW high_salary_employees AS
SELECT
    employee_id,
    first_name,
    department,
    salary
FROM employees
WHERE salary > 80000;

SELECT *
FROM high_salary_employees
ORDER BY salary DESC;

--View: save a query for repeated use.
CREATE VIEW it_employees AS
SELECT *
FROM employees
WHERE department = 'IT';

--CTE: name a result temporarily while running one query.
WITH it_employees AS (
    SELECT *
    FROM employees
    WHERE department = 'IT'
)
SELECT *
FROM it_employees;


-- Example 3: Replace an existing view

CREATE OR REPLACE VIEW it_employees AS
SELECT
    employee_id,
    first_name,
    last_name,
    salary,
    hire_date
FROM employees
WHERE department = 'IT';

SELECT *
FROM it_employees;

-- Example 4: Drop a view

DROP VIEW IF EXISTS high_salary_employees;