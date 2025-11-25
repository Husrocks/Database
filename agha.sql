--Assignment No: 3

--Name:        Agha Munim Ahmed Khan
--Roll no:     IAC-FA23-BSCS-005
--Submitted To:  Miss Sobia Iqbal


-- Part A: Basic SELECT Queries
-- 1. Display first name, last name, and email of all employees
SELECT first_name, last_name, email
FROM Employees;

-- 2. Display employee_id, job_id, and hire_date of all employees
SELECT employee_id, job_id, hire_date
FROM Employees;

-- 3. Show department_id and department_name from Departments table
SELECT department_id, department_name
FROM Departments;

-- 4. Display job_id and job_title from Jobs table
SELECT job_id, job_title
FROM Jobs;

-- 5. List all locations (location_id, city, state_province)
SELECT location_id, city, state_province
FROM Locations;





-- Part B: Restricting Data (WHERE Clause)


-- 1. Employees with salary greater than 10,000
SELECT last_name, salary
FROM Employees
WHERE salary > 10000;

-- 2. Employees who work in department 90
SELECT employee_id, last_name, department_id
FROM Employees
WHERE department_id = 90;

-- 3. Employees whose manager_id is 100, 101, or 201
SELECT *
FROM Employees
WHERE manager_id IN (100, 101, 201);

-- 4. Employees hired after 01-JAN-2005
SELECT first_name, job_id
FROM Employees
WHERE hire_date > '2005-01-01';

-- 5. Employees who work in the IT department
SELECT *
FROM Employees 
WHERE department_id=(
	SELECT department_id
	FROM departments
	WHERE department_name = 'IT');

-- 6. Employees whose salary is between 5,000 and 12,000
SELECT last_name, salary
FROM Employees
WHERE salary BETWEEN 5000 AND 12000;

-- 7. Employees whose last_name is 'King' or 'Grant'
SELECT *
FROM Employees
WHERE last_name IN ('King', 'Grant');

-- 8. Employees whose commission_pct is NULL
SELECT *
FROM Employees
WHERE commission_pct IS NULL;

-- 9. Employees hired in the year 2006
SELECT first_name, last_name
FROM Employees
WHERE hire_date like '%2006'

-- 10. Employees who do not work in department 50
SELECT *
FROM Employees
WHERE department_id !=50;






-- Part C: Sorting Data (ORDER BY Clause)

-- 1. Employee last names and salaries, sorted by salary ascending
SELECT last_name, salary
FROM Employees
ORDER BY salary ASC;

-- 2. Employee_id, last_name, hire_date sorted by hire_date descending
SELECT employee_id, last_name, hire_date
FROM Employees
ORDER BY hire_date DESC;

-- 3. All employee details sorted by department_id, then last_name ascending
SELECT *
FROM Employees
ORDER BY department_id ASC, last_name ASC;

-- 4. First name, last name, salary sorted by last name alphabetically
SELECT first_name, last_name, salary
FROM Employees
ORDER BY last_name ASC;

-- 5. All employees sorted by salary descending, then hire_date ascending
SELECT *
FROM Employees
ORDER BY salary DESC, hire_date ASC;


-- Part D: Combined SELECT, WHERE, and ORDER BY



-- 1. Last_name, salary, department_id of employees in department 60, sorted by salary descending
SELECT last_name, salary, department_id
FROM Employees
WHERE department_id = 60
ORDER BY salary DESC;

-- 2. Employees whose job_id = 'IT_PROG', sorted by hire_date
SELECT *
FROM Employees
WHERE job_id = 'IT_PROG'
ORDER BY hire_date ASC;


-- 3. Employee_id, first_name, salary for employees with salary > 7000, sorted by first name
SELECT employee_id, first_name, salary
FROM Employees
WHERE salary > 7000
ORDER BY first_name ASC;

-- 4. Last_name and job_id of employees whose last name starts with 'S', sorted alphabetically
SELECT last_name, job_id
FROM Employees
WHERE last_name LIKE 'S%'
ORDER BY last_name ASC;

-- 5. Employees hired before 01-JAN-2004, sorted by hire_date descending
SELECT *
FROM Employees
WHERE hire_date < '2004-01-01'
ORDER BY hire_date DESC;
