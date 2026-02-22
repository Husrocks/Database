

/* 
Task: Home Activity 8

Submitted To: Miss Sobia
Submitted By: Hussnain Bashir
Roll No: IAC-FA23-BSCS-035

*/

use HR

--Home activity 1

SELECT 
    ROUND(MAX(salary), 0) AS Max_salary,
    ROUND(MIN(salary), 0) AS Min_salalry,
    ROUND(SUM(salary), 0) AS Sum,
    ROUND(AVG(salary), 0) AS Average_salary
FROM employees;

--Home activity 2

SELECT job_id, COUNT(*) AS Num_People
FROM employees
GROUP BY job_id
ORDER BY job_id;

--Home activity 3

SELECT COUNT(*) AS Number_of_Managers
FROM employees
WHERE job_id = 'AC_MGR';

--Home activity 4

SELECT MAX(salary) - MIN(salary) AS DIFFERENCE
FROM employees;

--Home activity 5

SELECT manager_id, MIN(salary) AS Lowest_Salary
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING MIN(salary) > 6000
ORDER BY Lowest_Salary DESC;

--Home activity 6

SELECT 
    department_id AS Department,
    job_id AS Job,
    salary AS Individual_Salary,
    SUM(salary) OVER (PARTITION BY department_id, job_id) AS Total_Salary
FROM employees
WHERE department_id IN (20, 50, 80, 90)
ORDER BY department_id, job_id;

