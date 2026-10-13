
/*
PROJECT: SQL Practice
MODULE: 17 - Query Optimization
FILE: explain_analyze.sql
CONCEPT: EXPLAIN ANALYZE
*/

EXPLAIN ANALYZE
SELECT employee_id, first_name, salary
FROM employees
WHERE salary > 70000;

/*
Understand the output
- Seq Scan: PostgreSQL scans the table's rows.
- Index Scan: PostgreSQL uses an index to find rows.
- Planning Time: Time spent planning the query.
- Execution Time: Time spent executing the query.
*/