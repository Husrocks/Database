ALTER SCHEMA dbo TRANSFER hr.countries;
ALTER SCHEMA dbo TRANSFER hr.departments;
ALTER SCHEMA dbo TRANSFER hr.employees;
ALTER SCHEMA dbo TRANSFER hr.job_history;
ALTER SCHEMA dbo TRANSFER hr.jobs;
ALTER SCHEMA dbo TRANSFER hr.locations;
ALTER SCHEMA dbo TRANSFER hr.regions;

--Basic Select Queries 
-- ===========================================================
-- SQL Server Practice Script: HR Schema Queries
-- ===========================================================

-- ===========================================================
-- Part A: Basic SELECT Queries
-- ===========================================================

-- A1. Display first name, last name, and email of all employees
SELECT first_name, last_name, email
FROM Employees;

-- A2. Display employee_id, job_id, and hire_date of all employees
SELECT employee_id, job_id, hire_date
FROM Employees;

-- A3. Show department_id and department_name from Departments table
SELECT department_id, department_name
FROM Departments;

-- A4. Display job_id and job_title from Jobs table
SELECT job_id, job_title
FROM Jobs;

-- A5. List all locations (location_id, city, state_province)
SELECT location_id, city, state_province
FROM Locations;

-- ===========================================================
-- Part B: Restricting Data (WHERE Clause)
-- ===========================================================

-- B1. Employees with salary greater than 10,000
SELECT last_name, salary
FROM Employees
WHERE salary > 10000;

-- B2. Employees who work in department 90
SELECT employee_id, last_name, department_id
FROM Employees
WHERE department_id = 90;

-- B3. Employees whose manager_id is 100, 101, or 201
SELECT *
FROM Employees
WHERE manager_id IN (100, 101, 201);

-- B4. Employees hired after 01-JAN-2005
SELECT first_name, job_id
FROM Employees
WHERE hire_date > '2005-01-01';

-- B5. Employees who work in the IT department
SELECT e.*
FROM Employees e
JOIN Departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

-- B6. Employees whose salary is between 5,000 and 12,000
SELECT last_name, salary
FROM Employees
WHERE salary BETWEEN 5000 AND 12000;

-- B7. Employees whose last_name is 'King' or 'Grant'
SELECT *
FROM Employees
WHERE last_name IN ('King', 'Grant');

-- B8. Employees whose commission_pct is NULL
SELECT *
FROM Employees
WHERE commission_pct IS NULL;

-- B9. Employees hired in the year 2006
SELECT first_name, last_name
FROM Employees
WHERE YEAR(hire_date) = 2006;

-- B10. Employees who do not work in department 50
SELECT *
FROM Employees
WHERE department_id <> 50;

-- ===========================================================
-- Part C: Sorting Data (ORDER BY Clause)
-- ===========================================================

-- C1. Employee last names and salaries, sorted by salary ascending
SELECT last_name, salary
FROM Employees
ORDER BY salary ASC;

-- C2. Employee_id, last_name, hire_date sorted by hire_date descending
SELECT employee_id, last_name, hire_date
FROM Employees
ORDER BY hire_date DESC;

-- C3. All employee details sorted by department_id, then last_name ascending
SELECT *
FROM Employees
ORDER BY department_id ASC, last_name ASC;

-- C4. First name, last name, salary sorted by last name alphabetically
SELECT first_name, last_name, salary
FROM Employees
ORDER BY last_name ASC;

-- C5. All employees sorted by salary descending, then hire_date ascending
SELECT *
FROM Employees
ORDER BY salary DESC, hire_date ASC;

-- ===========================================================
-- Part D: Combined SELECT, WHERE, and ORDER BY
-- ===========================================================

-- D1. Last_name, salary, department_id of employees in department 60, sorted by salary descending
SELECT last_name, salary, department_id
FROM Employees
WHERE department_id = 60
ORDER BY salary DESC;

-- D2. Employees whose job_id = 'IT_PROG', sorted by hire_date
SELECT *
FROM Employees
WHERE job_id = 'IT_PROG'
ORDER BY hire_date ASC;

-- D3. Employee_id, first_name, salary for employees with salary > 7000, sorted by first name
SELECT employee_id, first_name, salary
FROM Employees
WHERE salary > 7000
ORDER BY first_name ASC;

-- D4. Last_name and job_id of employees whose last name starts with 'S', sorted alphabetically
SELECT last_name, job_id
FROM Employees
WHERE last_name LIKE 'S%'
ORDER BY last_name ASC;

-- D5. Employees hired before 01-JAN-2004, sorted by hire_date descending
SELECT *
FROM Employees
WHERE hire_date < '2004-01-01'
ORDER BY hire_date DESC;
