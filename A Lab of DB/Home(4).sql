
/* 
Task: Home Activity 4

Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035

*/


-- Ensure we are using the correct database (HR)
USE HR;


-- 1. Populate the DEPT table with data from the DEPARTMENTS table.
-- This creates a new table 'DEPT' and copies all data from 'dbo.departments'.
SELECT * INTO dbo.DEPT
FROM dbo.departments;

-- 2. Create the EMPLOYEES2 table based on the structure of EMPLOYEES.
-- We select specific columns, rename them using 'AS', and use 'WHERE 1 = 0'
-- to create the empty table structure without copying old data.
SELECT 
    employee_id AS ID, 
    first_name AS FIRST_NAME, 
    last_name AS LAST_NAME, 
    salary AS SALARY, 
    department_id AS DEPT_ID
INTO dbo.EMPLOYEES2
FROM dbo.employees
WHERE 1 = 0;

-- 3. Insert one row in EMPLOYEES2.
-- You can adjust these values as needed.
INSERT INTO dbo.EMPLOYEES2 (ID, FIRST_NAME, LAST_NAME, SALARY, DEPT_ID)
VALUES (200, 'Jennifer', 'Whalen', 4400, 10);

-- 4. Drop table EMPLOYEES2.
DROP TABLE dbo.EMPLOYEES2;