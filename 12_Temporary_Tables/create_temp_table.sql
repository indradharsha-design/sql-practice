/*For AI/ML data preparation: A view is useful for a reusable query; 
a temporary table is useful when you need an intermediate dataset to work with.


Feature	                                View	                        Temporary Table

Stores	                        SQL query definition	            Actual data rows
When underlying data changes	Shows the updated data              Existing rows remain as they were 
                                    when queried	                    when copied

Lifetime	                    Until dropped	                    Usually until the database session ends
Can you modify the data?	    Depends on the view and 	        Yes, using INSERT, UPDATE, and DELETE
                                database rules

Main purpose	                Reuse a query	                    Store intermediate data for processing

*/

-- View
CREATE VIEW it_employees AS
SELECT *
FROM employees
WHERE department = 'IT';

--Temporary table
CREATE TEMP TABLE temp_it_employees AS
SELECT *
FROM employees
WHERE department = 'IT';




-- Example 1: Create a temporary table of IT employees

CREATE TEMP TABLE temp_it_employees AS
SELECT
    employee_id,
    first_name,
    department,
    salary
FROM employees
WHERE department = 'IT';

SELECT *
FROM temp_it_employees;



-- Example 2: Find high-salary employees in the temporary table

SELECT
    first_name,
    department,
    salary
FROM temp_it_employees
WHERE salary > 70000
ORDER BY salary DESC;

-- Example 3: Insert a row into the temporary table
--INSERT INTO adds a row to the temporary table. It does not insert that row into the original employees table.

INSERT INTO temp_it_employees (
    employee_id,
    first_name,
    department,
    salary
)
VALUES (
    999,
    'TestEmployee',
    'IT',
    85000
);

SELECT *
FROM temp_it_employees
WHERE employee_id = 999;


-- Example 4: Increase salary in the temporary table
--This changes only the temporary table, not the original employees table.


UPDATE temp_it_employees
SET salary = salary + 5000
WHERE employee_id = 999;

SELECT *
FROM temp_it_employees
WHERE employee_id = 999;


-- Example 5: Delete the test employee

DELETE FROM temp_it_employees
WHERE employee_id = 999;

SELECT *
FROM temp_it_employees
WHERE employee_id = 999;