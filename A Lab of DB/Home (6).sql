USE HR;

-- Question 1: Retrieve the last name and department number for employee number 176
SELECT last_name, department_id
FROM employees
WHERE employee_id = 176;

-- Question 2: Retrieve the last name and salary for employees whose salary is not between 5000 and 12000
SELECT last_name, salary
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;

-- Question 3: Retrieve last name, job ID, and hire date for employees with last names Matos or Taylor
-- Sort the result in ascending order by hire date
SELECT last_name, job_id, hire_date
FROM employees
WHERE last_name IN ('Matos', 'Taylor')
ORDER BY hire_date ASC;

-- Question 4: Retrieve the last name and department ID of employees in departments 20 or 50
-- Sort in ascending alphabetical order by last name
SELECT last_name, department_id
FROM employees
WHERE department_id IN (20, 50)
ORDER BY last_name ASC;

-- Question 5: Retrieve the last name and job title of employees whose department ID is unknown
SELECT last_name, job_id AS job_title
FROM employees
WHERE department_id IS NULL;

-- Question 6: Retrieve the last name, salary, and commission of employees who earn commission
SELECT last_name, salary, commission_pct
FROM employees
WHERE commission_pct IS NOT NULL;

-- Question 7: Retrieve employee ID, last name, salary, and department for a given manager ID
-- Sorted in ascending order by the specified column
SELECT employee_id, last_name, salary, department_id
FROM employees
WHERE manager_id = 103
ORDER BY last_name ASC;

-- Question 8: Retrieve the last names of employees who have both 'a' and 'e' in their last name
SELECT last_name
FROM employees
WHERE last_name LIKE '%a%' AND last_name LIKE '%e%';

-- Question 9: Retrieve last name, job, and salary for Sales Representatives or Stock Clerks
-- Exclude salaries 2500, 3500, and 7000
SELECT last_name, job_id AS job, salary
FROM employees
WHERE job_id IN ('SA_REP', 'ST_CLERK')
  AND salary NOT IN (2500, 3500, 7000)
ORDER BY 2 DESC, commission_pct DESC;
