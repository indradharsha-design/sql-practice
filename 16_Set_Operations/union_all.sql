/*
PROJECT: SQL Practice
MODULE: 16 - Set Operations
FILE: union_all.sql
CONCEPT: UNION ALL
*/

SELECT department
FROM employees

UNION ALL

SELECT department_name
FROM departments;

/*What happens?
- Both queries' results are combined into one column.
- Duplicate values are retained.
- Both queries must return the same number of columns, with compatible data types.


UNION combines, UNION ALL combines and keeps duplicates, 
and INTERSECT finds the overlap. Three operators, three distinct jobs.*/