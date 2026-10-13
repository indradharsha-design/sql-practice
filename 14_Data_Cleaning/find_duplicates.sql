/*
PROJECT: SQL Practice
MODULE: 14 - Data Cleaning
FILE: find_duplicates.sql
CONCEPT: Identify duplicate employee names
*/

SELECT
    first_name,
    last_name,
    COUNT(*) AS duplicate_count
FROM employees
GROUP BY
    first_name,
    last_name
HAVING COUNT(*) > 1;

/*
Matching names don't necessarily mean duplicate employees. This query identifies potential duplicates for investigation; it doesn't delete anything.
If the result is empty, your sample data has no repeated full names*/