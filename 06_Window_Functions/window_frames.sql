/*
PROJECT: SQL Practice

MODULE: 06 - Window Functions

FILE: window_frames.sql

CONCEPTS:
1. Window frames
2. ROWS
3. UNBOUNDED PRECEDING
4. CURRENT ROW

OBJECTIVE:
Understand how a window frame determines which rows
are included in a window calculation.
*/
-- Example 1: Running total using a window frame

SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS running_salary_total
FROM employees
ORDER BY department, salary DESC;


-- ROWS: Define the frame using individual rows.

-- UNBOUNDED PRECEDING:
-- Starts the frame from the first row of the ordered partition.
-- CURRENT ROW:
-- Ends the frame at the row currently being calculated.

-- CURRENT ROW:
-- Marks the current row as the ending boundary of this frame.
-- As SQL processes each row, the frame's ending point moves forward.

--1 PRECEDING - includes the previous row and current row.
-- Example 2: Sum the current and previous row's salaries

SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN 1 PRECEDING AND CURRENT ROW
    ) AS two_row_salary_total
FROM employees
ORDER BY department, salary DESC;

/*
Compare the two frames:
    UNBOUNDED PRECEDING AND CURRENT ROW: Includes every row from the start through the current row.
    1 PRECEDING AND CURRENT ROW: Includes at most two rows, the previous row and the current row.
*/


-- Example 3: Sum the current row and two preceding rows
--2 PRECEDING means two rows before the current row, not two rows in total.

SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
    ) AS three_row_salary_total
FROM employees
ORDER BY department, salary DESC;

/*1 FOLLOWING
    PRECEDING refers to rows before the current row.
    FOLLOWING refers to rows after the current row.*/

-- Example 4: Sum the current row and one following row

SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING
    ) AS two_row_salary_total
FROM employees
ORDER BY department, salary DESC;

-- A frame around the current row
-- Example 5: Sum the previous row, current row, and next row
--ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING --This means from one row before the current row through one row after it, inclusive.


SELECT
    first_name,
    last_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING
    ) AS three_row_salary_total
FROM employees
ORDER BY department, salary DESC;


--Understanding LAST_VALUE()
SELECT
    first_name,
    department,
    salary,
    LAST_VALUE(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS last_salary
FROM employees;

/*You might expect last_salary to show the lowest salary in each department. But the result can be surprising.
How to get the actual last salary
To explicitly include every row in the department's ordered partition, use this:*/

LAST_VALUE(salary) OVER (
    PARTITION BY department
    ORDER BY salary DESC
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
) AS lowest_department_salary

--UNBOUNDED PRECEDING: Start from the first row.
--UNBOUNDED FOLLOWING: End at the last row, rather than the current row.
--Because salaries are ordered descending, the last row has the lowest salary.


--UNBOUNDED FOLLOWING- This includes every row in the department, from the first row to the last.
/*Display each employee's salary alongside the total salary of their entire department, 
using SUM() as a window function and an explicit frame covering the whole partition*/

SELECT
    first_name,
    department,
    salary,
    SUM(salary) OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
    ) AS department_total_salary
FROM employees;
