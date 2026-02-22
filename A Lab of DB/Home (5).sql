/* 
Task: Home Activity 5
Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035
*/

USE HR;

-- 1. Display employee_id, last_name, job_id and hire_date (renamed as STARTDATE)
SELECT employee_id, last_name, job_id, hire_date AS STARTDATE
FROM employees;

-- 2. Display last_name concatenated with job_id
SELECT last_name + ', ' + job_id AS Employee, job_id AS Title
FROM employees;

-- 3. Display the structure of the departments table
SELECT *
FROM departments;

-- 4. Display only distinct job_id values from employees table
SELECT DISTINCT job_id
FROM employees;

-- 5. Display first_name and last_name after concatenation
SELECT first_name + ' ' + last_name AS Name
FROM employees;

-- 6. Display first_name and annual salary of employees
SELECT first_name, salary * 12 AS annual_salary
FROM employees;
